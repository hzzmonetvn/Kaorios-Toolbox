.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Callback;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$SigningDetails;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;,
        Landroid/content/pm/PackageParser$SplitDependencyLoader;,
        Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;,
        Landroid/content/pm/PackageParser$SplitAssetLoader;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$CachedComponentArgs;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$ParseFlags;,
        Landroid/content/pm/PackageParser$CallbackImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final greylist-max-o ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final blacklist APEX_FILE_EXTENSION:Ljava/lang/String; = ".apex"

.field public static final greylist-max-o APK_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field public static final greylist-max-o CHILD_PACKAGE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DEBUG_BACKUP:Z = false

.field public static final greylist-max-o DEBUG_JAR:Z = false

.field public static final greylist-max-o DEBUG_PARSER:Z = false

.field private static final blacklist DEFAULT_MIN_SDK_VERSION:I = 0x1

.field public static final greylist-max-o DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field private static final blacklist DEFAULT_TARGET_SDK_VERSION:I = 0x0

.field public static final greylist-max-o LOG_PARSE_TIMINGS:Z

.field public static final greylist-max-o LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field public static final greylist-max-o LOG_UNSAFE_BROADCASTS:Z = false

.field public static final blacklist METADATA_ACTIVITY_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "android.activity_window_layout_affinity"

.field public static final greylist-max-o METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field public static final blacklist METADATA_SUPPORTS_SIZE_CHANGES:Ljava/lang/String; = "android.supports_size_changes"

.field public static final greylist-max-o MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field public static final greylist-max-o MULTI_PACKAGE_APK_ENABLED:Z

.field public static final greylist NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final greylist-max-o PARSE_CHATTY:I = -0x80000000

.field public static final greylist-max-o PARSE_COLLECT_CERTIFICATES:I = 0x20

.field public static final greylist-max-o PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final greylist-max-o PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final greylist-max-o PARSE_ENFORCE_CODE:I = 0x40

.field public static final greylist-max-o PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final greylist-max-o PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final greylist-max-o PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final greylist-max-o PARSE_MUST_BE_APK:I = 0x1

.field private static final greylist-max-o PROPERTY_CHILD_PACKAGES_ENABLED:Ljava/lang/String; = "persist.sys.child_packages_enabled"

.field public static final greylist-max-o RIGID_PARSER:Z = false

.field public static final greylist-max-o SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o SDK_CODENAMES:[Ljava/lang/String;

.field public static final greylist-max-o SDK_VERSION:I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageParser"

.field public static final greylist-max-o TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field public static final greylist-max-o TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final blacklist TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field public static final greylist-max-o TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field public static final greylist-max-o TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field public static final greylist-max-o TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field public static final greylist-max-o TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field public static final greylist-max-o TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field public static final greylist-max-o TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field public static final greylist-max-o TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field public static final greylist-max-o TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final greylist-max-o TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final greylist-max-o TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field public static final greylist-max-o TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final greylist-max-o TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field public static final greylist-max-o TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field public static final blacklist TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field public static final greylist-max-o TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field public static final blacklist TAG_QUERIES:Ljava/lang/String; = "queries"

.field public static final greylist-max-o TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field public static final greylist-max-o TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field public static final greylist-max-o TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field public static final greylist-max-o TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field public static final greylist-max-o TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field public static final greylist-max-o TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field public static final greylist-max-o TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field public static final greylist-max-o TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field public static final greylist-max-o TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field public static final greylist-max-o TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field public static final greylist-max-o TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field public static greylist-max-o sCompatibilityModeEnabled:Z

.field public static final greylist-max-o sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist sUseRoundIcon:Z


# instance fields
.field public greylist-max-o mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mCacheDir:Ljava/io/File;

.field public whitelist mCallback:Landroid/content/pm/PackageParser$Callback;

.field private greylist-max-o mMetrics:Landroid/util/DisplayMetrics;

.field private greylist-max-o mOnlyCoreApps:Z

.field public greylist-max-o mParseError:I

.field private greylist-max-o mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field public greylist-max-o mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smparsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 168
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    .line 174
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 175
    const-string/jumbo v0, "persist.sys.child_packages_enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    sput-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    .line 228
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    .line 230
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "application"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "compatible-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "eat-comment"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "feature-group"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "instrumentation"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-input"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-configuration"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-feature"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-gl-texture"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-23"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-m"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-sdk"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    .line 251
    sget-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v3, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v3, v0, v2

    new-instance v3, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-direct {v3, v4, v5, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v3, v0, v1

    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 306
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 310
    sput-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 311
    sput-boolean v2, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 931
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser-IA;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 572
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 573
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 574
    return-void
.end method

.method private greylist-max-o adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V
    .registers 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 2561
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 2562
    .local v1, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 2563
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2564
    .end local v1    # "a":Landroid/content/pm/PackageParser$Activity;
    goto :goto_6

    .line 2565
    :cond_22
    return-void
.end method

.method public static greylist-max-o buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    .line 2917
    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_3f

    .line 2921
    :cond_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2922
    .local v1, "cls":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2923
    .local v0, "c":C
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_28

    .line 2924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2926
    :cond_28
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3e

    .line 2927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2928
    .local v3, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2929
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2930
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2932
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_3e
    return-object v1

    .line 2918
    .end local v0    # "c":C
    .end local v1    # "cls":Ljava/lang/String;
    :cond_3f
    :goto_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty class name in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 2919
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "procSeq"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2937
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2938
    .local v0, "proc":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2939
    .local v2, "c":C
    const-string v3, ": "

    const-string v4, "Invalid "

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, " in package "

    const-string v8, " name "

    if-eqz p0, :cond_94

    const/16 v9, 0x3a

    if-ne v2, v9, :cond_94

    .line 2940
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_4c

    .line 2941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": must be at least two characters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2943
    return-object v6

    .line 2945
    :cond_4c
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2946
    .local v5, "subName":Ljava/lang/String;
    invoke-static {v5, v1, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v9

    .line 2947
    .local v9, "nameError":Ljava/lang/String;
    if-eqz v9, :cond_82

    .line 2948
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2950
    return-object v6

    .line 2952
    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2954
    .end local v5    # "subName":Ljava/lang/String;
    .end local v9    # "nameError":Ljava/lang/String;
    :cond_94
    invoke-static {v0, v5, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 2955
    .local v5, "nameError":Ljava/lang/String;
    if-eqz v5, :cond_cf

    const-string/jumbo v9, "system"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cf

    .line 2956
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2958
    return-object v6

    .line 2960
    :cond_cf
    return-object v0
.end method

.method public static greylist-max-o buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .line 2966
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_13

    const-string/jumbo v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2967
    if-eqz p1, :cond_11

    move-object v0, p1

    goto :goto_12

    :cond_11
    move-object v0, p0

    :goto_12
    return-object v0

    .line 2969
    :cond_13
    if-eqz p4, :cond_33

    .line 2970
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_33

    .line 2971
    aget-object v1, p4, v0

    .line 2972
    .local v1, "sp":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_32

    .line 2970
    .end local v1    # "sp":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 2973
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_32
    :goto_32
    return-object p0

    .line 2977
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_33
    if-eqz p2, :cond_48

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_3c

    goto :goto_48

    .line 2980
    :cond_3c
    const-string/jumbo v0, "process"

    invoke-static {p0, p2, v0, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2978
    :cond_48
    :goto_48
    return-object p1
.end method

.method public static greylist-max-o buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2985
    if-nez p2, :cond_3

    .line 2986
    return-object p1

    .line 2988
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 2989
    const/4 v0, 0x0

    return-object v0

    .line 2991
    :cond_b
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "rawPropNames"    # Ljava/lang/String;
    .param p1, "rawPropValues"    # Ljava/lang/String;

    .line 2523
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "="

    const-string v2, "PackageParser"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_5d

    .line 2535
    :cond_13
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2536
    .local v5, "propNames":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2538
    .local v0, "propValues":[Ljava/lang/String;
    array-length v6, v5

    array-length v7, v0

    if-eq v6, v7, :cond_46

    .line 2539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling overlay - property :\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue lists to have the same size."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    return v4

    .line 2544
    :cond_46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_47
    array-length v2, v5

    if-ge v1, v2, :cond_5c

    .line 2546
    aget-object v2, v5, v1

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2547
    .local v2, "currValue":Ljava/lang/String;
    aget-object v6, v0, v1

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_59

    .line 2548
    return v4

    .line 2544
    .end local v2    # "currValue":Ljava/lang/String;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 2551
    .end local v1    # "i":I
    :cond_5c
    return v3

    .line 2524
    .end local v0    # "propValues":[Ljava/lang/String;
    .end local v5    # "propNames":[Ljava/lang/String;
    :cond_5d
    :goto_5d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_6b

    .line 2532
    :cond_6a
    return v3

    .line 2526
    :cond_6b
    :goto_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling overlay - incomplete property :\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue to be specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    return v4
.end method

.method private static blacklist checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .registers 8
    .param p0, "flags"    # I
    .param p1, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 648
    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 649
    invoke-interface {p1}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_14

    if-eqz p2, :cond_14

    iget-boolean v1, p2, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v1, :cond_14

    .line 651
    return v2

    .line 656
    :cond_14
    int-to-long v3, p0

    invoke-static {p1, v3, v4}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_2e

    if-eqz p2, :cond_2d

    .line 657
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_2d

    const v1, 0x402000

    and-int/2addr v1, p0

    if-nez v1, :cond_2c

    and-int/2addr v0, p0

    if-eqz v0, :cond_2d

    :cond_2c
    goto :goto_2e

    :cond_2d
    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v2, 0x1

    .line 656
    :goto_2f
    return v2
.end method

.method private static whitelist collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    .registers 13
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1413
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1415
    .local v0, "apkPath":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v1

    .line 1417
    .local v1, "minSignatureScheme":I
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isStaticSharedLibrary()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1419
    const/4 v1, 0x2

    .line 1421
    :cond_15
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v2

    .line 1423
    .local v2, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    const/4 v1, 0x1

    if-eqz p2, :cond_21

    .line 1425
    invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    goto :goto_25

    .line 1428
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_21
    invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 1430
    .restart local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :goto_25
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-nez v4, :cond_79

    .line 1438
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SigningDetails;

    .line 1439
    .local v4, "verified":Landroid/content/pm/SigningDetails;
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v6, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v5, v6, :cond_4f

    .line 1440
    new-instance v5, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    .line 1441
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v7

    .line 1442
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v8

    .line 1443
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_5d

    .line 1445
    :cond_4f
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v5, v5, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 1446
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    .line 1445
    invoke-static {v5, v6}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1452
    :goto_5d
    return-void

    .line 1447
    :cond_5e
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has mismatched certificates"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x68

    invoke-direct {v5, v7, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1431
    .end local v4    # "verified":Landroid/content/pm/SigningDetails;
    :cond_79
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v5

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    .line 1432
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static greylist collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1384
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V

    .line 1385
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1386
    .local v0, "childCount":I
    :goto_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_21

    .line 1387
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1388
    .local v2, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1386
    .end local v2    # "childPkg":Landroid/content/pm/PackageParser$Package;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1390
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method private static greylist-max-o collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 7
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1394
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1396
    const-string v0, "collectCertificates"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1398
    :try_start_c
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V

    .line 1400
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_33

    .line 1402
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 1401
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1406
    .end local v0    # "i":I
    :cond_33
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1407
    nop

    .line 1408
    return-void

    .line 1406
    :catchall_38
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1407
    throw v0
.end method

.method public static greylist-max-o computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .param p0, "minVers"    # I
    .param p1, "minCode"    # Ljava/lang/String;
    .param p2, "platformSdkVersion"    # I
    .param p3, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p4, "outError"    # [Ljava/lang/String;

    .line 2692
    const/4 v0, -0x1

    const-string v1, ")"

    const/4 v2, 0x0

    if-nez p1, :cond_2d

    .line 2693
    if-gt p0, p2, :cond_9

    .line 2694
    return p0

    .line 2698
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requires newer sdk version #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (current version is #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v2

    .line 2700
    return v0

    .line 2705
    :cond_2d
    invoke-static {p3, p1}, Landroid/content/pm/PackageParser;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2706
    const/16 v0, 0x2710

    return v0

    .line 2711
    :cond_36
    array-length v3, p3

    if-nez v3, :cond_68

    const-string v3, "CinnamonBun"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package requires min development platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returning current version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageParser"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0

    .line 2718
    :cond_68
    array-length v3, p3

    const-string v4, "Requires development platform "

    if-lez v3, :cond_93

    .line 2719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (current platform is any of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2721
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v2

    goto :goto_ac

    .line 2723
    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but this is a release platform."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v2

    .line 2726
    :goto_ac
    return v0
.end method

.method public static blacklist computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p0, "targetVers"    # I
    .param p1, "targetCode"    # Ljava/lang/String;
    .param p2, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2620
    if-nez p1, :cond_3

    .line 2621
    return p0

    .line 2626
    :cond_3
    invoke-static {p2, p1}, Landroid/content/pm/PackageParser;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2627
    const/16 v0, 0x2710

    return v0

    .line 2632
    :cond_c
    array-length v0, p2

    if-nez v0, :cond_3e

    const-string v0, "CinnamonBun"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package requires development platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returning current version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageParser"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0

    .line 2639
    :cond_3e
    array-length v0, p2

    const-string v1, "Requires development platform "

    const/4 v2, 0x0

    if-lez v0, :cond_6c

    .line 2640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (current platform is any of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2642
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    goto :goto_85

    .line 2644
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but this is a release platform."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    .line 2647
    :goto_85
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z
    .registers 10
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 7977
    const/4 v0, 0x1

    if-eqz p4, :cond_4

    .line 7980
    return v0

    .line 7982
    :cond_4
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 7983
    nop

    .line 7984
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v1

    if-ne v1, v0, :cond_14

    move v1, v0

    goto :goto_15

    :cond_14
    move v1, v2

    .line 7985
    .local v1, "enabled":Z
    :goto_15
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v3, v1, :cond_1c

    .line 7986
    return v0

    .line 7989
    .end local v1    # "enabled":Z
    :cond_1c
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_27

    move v1, v0

    goto :goto_28

    :cond_27
    move v1, v2

    .line 7990
    .local v1, "suspended":Z
    :goto_28
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isSuspended()Z

    move-result v3

    if-eq v3, v1, :cond_2f

    .line 7991
    return v0

    .line 7993
    :cond_2f
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_73

    .line 7996
    :cond_3c
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 7997
    return v0

    .line 7999
    :cond_43
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result v3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4

    if-eq v3, v4, :cond_50

    .line 8000
    return v0

    .line 8002
    :cond_50
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_5b

    if-nez p3, :cond_5a

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v3, :cond_5b

    .line 8004
    :cond_5a
    return v0

    .line 8006
    :cond_5b
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_64

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v3, :cond_64

    .line 8008
    return v0

    .line 8010
    :cond_64
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_6d

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_6d

    .line 8012
    return v0

    .line 8014
    :cond_6d
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v3, :cond_72

    .line 8015
    return v0

    .line 8017
    :cond_72
    return v2

    .line 7994
    :cond_73
    :goto_73
    return v0
.end method

.method public static final blacklist generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 6
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8309
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8310
    :cond_4
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 8311
    return-object v0

    .line 8315
    :cond_d
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 8316
    .end local p0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8317
    return-object v0
.end method

.method public static final greylist generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8282
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;
    .registers 7
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 8287
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8288
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 8289
    return-object v0

    .line 8291
    :cond_f
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 8292
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8293
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 8296
    :cond_23
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 8297
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 8299
    if-nez p4, :cond_36

    .line 8300
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 8302
    :cond_36
    iput-object p4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8304
    return-object v0
.end method

.method private blacklist generateAppDetailsHiddenActivity(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;
    .registers 11
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "outError"    # [Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .line 4278
    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    sget-object v1, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    new-instance v2, Landroid/content/pm/ActivityInfo;

    invoke-direct {v2}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V

    .line 4280
    .local v0, "a":Landroid/content/pm/PackageParser$Activity;
    iput-object p1, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 4281
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 4283
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const v2, 0x1030055

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4284
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4285
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    sget-object v3, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4286
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4287
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v3, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4288
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v5, ":app_details"

    invoke-static {v3, v4, v5, p3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4290
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 4291
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4292
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 4293
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4294
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v3, v3}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4295
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4296
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v2, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4297
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, -0x1

    iput v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4298
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4299
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4300
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v3, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4301
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v2, v1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 4302
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 4303
    if-eqz p4, :cond_8e

    .line 4304
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4306
    :cond_8e
    return-object v0
.end method

.method public static blacklist generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8123
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8124
    :cond_4
    invoke-static {p1, p2, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 8125
    return-object v0

    .line 8129
    :cond_b
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 8130
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 8131
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result p0

    if-eqz p0, :cond_21

    .line 8132
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr p0, v1

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_29

    .line 8134
    :cond_21
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x200001

    and-int/2addr p0, v1

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8136
    :goto_29
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8137
    return-object v0
.end method

.method public static greylist generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 8023
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static greylist generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8083
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8084
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_66

    .line 8087
    :cond_13
    invoke-static {p1, p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2e

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_26

    .line 8089
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2e

    .line 8098
    :cond_26
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8099
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 8103
    :cond_2e
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 8104
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 8105
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_40

    .line 8106
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 8108
    :cond_40
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_4c

    .line 8109
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 8110
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 8112
    :cond_4c
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 8113
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_62

    .line 8115
    :cond_5a
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8117
    :goto_62
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8118
    return-object v0

    .line 8085
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_66
    :goto_66
    return-object v0
.end method

.method public static final greylist generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .registers 4
    .param p0, "i"    # Landroid/content/pm/PackageParser$Instrumentation;
    .param p1, "flags"    # I

    .line 8585
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 8586
    :cond_4
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_b

    .line 8587
    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object v0

    .line 8589
    :cond_b
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 8590
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 8591
    return-object v0
.end method

.method public static blacklist generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;
    .registers 14
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p2, "flags"    # I

    .line 700
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    .line 701
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Landroid/content/pm/pkg/FrameworkPackageUserState;->DEFAULT:Landroid/content/pm/pkg/FrameworkPackageUserState;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 700
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .end local p0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p1    # "apexInfo":Landroid/apex/ApexInfo;
    .end local p2    # "flags":I
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    .local v1, "apexInfo":Landroid/apex/ApexInfo;
    .local v3, "flags":I
    invoke-static/range {v0 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 31
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p2, "gids"    # [I
    .param p3, "flags"    # I
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p9, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/apex/ApexInfo;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/pkg/FrameworkPackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 707
    .local p8, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v4, v6}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_33b

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v6

    if-nez v6, :cond_1d

    const/4 v7, 0x0

    goto/16 :goto_33c

    .line 712
    :cond_1d
    and-int/lit8 v6, v2, 0xf

    if-eqz v6, :cond_26

    .line 714
    invoke-static {v0, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .local v6, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_27

    .line 716
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_26
    const/4 v6, 0x0

    .line 719
    .restart local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_27
    new-instance v8, Landroid/content/pm/PackageInfo;

    invoke-direct {v8}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 720
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 721
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 722
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 723
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 724
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 725
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 726
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 727
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 728
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 729
    invoke-static {v0, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 730
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 731
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->isStub:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 732
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 733
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-nez v9, :cond_72

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_76

    .line 735
    :cond_72
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 737
    :cond_76
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 738
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 739
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 740
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 741
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 742
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 743
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 744
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 745
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 746
    move-wide/from16 v11, p4

    iput-wide v11, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 747
    move-wide/from16 v13, p6

    iput-wide v13, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 748
    and-int/lit16 v9, v2, 0x100

    if-eqz v9, :cond_ab

    .line 749
    move-object/from16 v9, p2

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->gids:[I

    goto :goto_ad

    .line 748
    :cond_ab
    move-object/from16 v9, p2

    .line 751
    :goto_ad
    and-int/lit16 v15, v2, 0x4000

    if-eqz v15, :cond_108

    .line 752
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    if-eqz v15, :cond_bc

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    goto :goto_bd

    :cond_bc
    const/4 v15, 0x0

    .line 753
    .local v15, "N":I
    :goto_bd
    if-lez v15, :cond_cf

    .line 754
    const/16 v16, 0x0

    new-array v7, v15, [Landroid/content/pm/ConfigurationInfo;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 755
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move/from16 v17, v10

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_d3

    .line 753
    :cond_cf
    move/from16 v17, v10

    const/16 v16, 0x0

    .line 757
    :goto_d3
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v7, :cond_de

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_e0

    :cond_de
    move/from16 v7, v16

    .line 758
    .end local v15    # "N":I
    .local v7, "N":I
    :goto_e0
    if-lez v7, :cond_ed

    .line 759
    new-array v10, v7, [Landroid/content/pm/FeatureInfo;

    iput-object v10, v8, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 760
    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 762
    :cond_ed
    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    if-eqz v10, :cond_f8

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    goto :goto_fa

    :cond_f8
    move/from16 v10, v16

    .line 763
    .end local v7    # "N":I
    .local v10, "N":I
    :goto_fa
    if-lez v10, :cond_10c

    .line 764
    new-array v7, v10, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 765
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_10c

    .line 751
    .end local v10    # "N":I
    :cond_108
    move/from16 v17, v10

    const/16 v16, 0x0

    .line 768
    :cond_10c
    :goto_10c
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_160

    .line 769
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 770
    .restart local v7    # "N":I
    if-lez v7, :cond_15e

    .line 771
    const/4 v10, 0x0

    .line 772
    .local v10, "num":I
    new-array v15, v7, [Landroid/content/pm/ActivityInfo;

    .line 773
    .local v15, "res":[Landroid/content/pm/ActivityInfo;
    const/16 v18, 0x0

    move/from16 v9, v18

    .local v9, "i":I
    :goto_11f
    if-ge v9, v7, :cond_151

    .line 774
    move/from16 v18, v7

    .end local v7    # "N":I
    .local v18, "N":I
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Activity;

    .line 775
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    move/from16 v19, v9

    .end local v9    # "i":I
    .local v19, "i":I
    iget-object v9, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    int-to-long v11, v2

    invoke-static {v4, v9, v11, v12}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v9

    if-eqz v9, :cond_14a

    .line 776
    sget-object v9, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_141

    .line 777
    goto :goto_14a

    .line 779
    :cond_141
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "num":I
    .local v9, "num":I
    invoke-static {v7, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    aput-object v11, v15, v10

    move v10, v9

    .line 773
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v9    # "num":I
    .restart local v10    # "num":I
    :cond_14a
    :goto_14a
    add-int/lit8 v9, v19, 0x1

    move-wide/from16 v11, p4

    move/from16 v7, v18

    .end local v19    # "i":I
    .local v9, "i":I
    goto :goto_11f

    .end local v18    # "N":I
    .local v7, "N":I
    :cond_151
    move/from16 v18, v7

    move/from16 v19, v9

    .line 782
    .end local v7    # "N":I
    .end local v9    # "i":I
    .restart local v18    # "N":I
    invoke-static {v15, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/pm/ActivityInfo;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_160

    .line 770
    .end local v10    # "num":I
    .end local v15    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v18    # "N":I
    .restart local v7    # "N":I
    :cond_15e
    move/from16 v18, v7

    .line 785
    .end local v7    # "N":I
    :cond_160
    :goto_160
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_199

    .line 786
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 787
    .restart local v7    # "N":I
    if-lez v7, :cond_199

    .line 788
    const/4 v9, 0x0

    .line 789
    .local v9, "num":I
    new-array v10, v7, [Landroid/content/pm/ActivityInfo;

    .line 790
    .local v10, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_170
    if-ge v11, v7, :cond_191

    .line 791
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Activity;

    .line 792
    .local v12, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v15, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    int-to-long v13, v2

    invoke-static {v4, v15, v13, v14}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v13

    if-eqz v13, :cond_18c

    .line 793
    add-int/lit8 v13, v9, 0x1

    .end local v9    # "num":I
    .local v13, "num":I
    invoke-static {v12, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    aput-object v14, v10, v9

    move v9, v13

    .line 790
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v13    # "num":I
    .restart local v9    # "num":I
    :cond_18c
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v13, p6

    goto :goto_170

    .line 796
    .end local v11    # "i":I
    :cond_191
    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/pm/ActivityInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 799
    .end local v7    # "N":I
    .end local v9    # "num":I
    .end local v10    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_199
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_1d0

    .line 800
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 801
    .restart local v7    # "N":I
    if-lez v7, :cond_1d0

    .line 802
    const/4 v9, 0x0

    .line 803
    .restart local v9    # "num":I
    new-array v10, v7, [Landroid/content/pm/ServiceInfo;

    .line 804
    .local v10, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1a9
    if-ge v11, v7, :cond_1c8

    .line 805
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Service;

    .line 806
    .local v12, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v13, v12, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    int-to-long v14, v2

    invoke-static {v4, v13, v14, v15}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v13

    if-eqz v13, :cond_1c5

    .line 807
    add-int/lit8 v13, v9, 0x1

    .end local v9    # "num":I
    .restart local v13    # "num":I
    invoke-static {v12, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v14

    aput-object v14, v10, v9

    move v9, v13

    .line 804
    .end local v12    # "s":Landroid/content/pm/PackageParser$Service;
    .end local v13    # "num":I
    .restart local v9    # "num":I
    :cond_1c5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a9

    .line 810
    .end local v11    # "i":I
    :cond_1c8
    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/pm/ServiceInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 813
    .end local v7    # "N":I
    .end local v9    # "num":I
    .end local v10    # "res":[Landroid/content/pm/ServiceInfo;
    :cond_1d0
    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_207

    .line 814
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 815
    .restart local v7    # "N":I
    if-lez v7, :cond_207

    .line 816
    const/4 v9, 0x0

    .line 817
    .restart local v9    # "num":I
    new-array v10, v7, [Landroid/content/pm/ProviderInfo;

    .line 818
    .local v10, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1e0
    if-ge v11, v7, :cond_1ff

    .line 819
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Provider;

    .line 820
    .local v12, "pr":Landroid/content/pm/PackageParser$Provider;
    iget-object v13, v12, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    int-to-long v14, v2

    invoke-static {v4, v13, v14, v15}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v13

    if-eqz v13, :cond_1fc

    .line 821
    add-int/lit8 v13, v9, 0x1

    .end local v9    # "num":I
    .restart local v13    # "num":I
    invoke-static {v12, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    aput-object v14, v10, v9

    move v9, v13

    .line 818
    .end local v12    # "pr":Landroid/content/pm/PackageParser$Provider;
    .end local v13    # "num":I
    .restart local v9    # "num":I
    :cond_1fc
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e0

    .line 825
    .end local v11    # "i":I
    :cond_1ff
    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/pm/ProviderInfo;

    iput-object v11, v8, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 828
    .end local v7    # "N":I
    .end local v9    # "num":I
    .end local v10    # "res":[Landroid/content/pm/ProviderInfo;
    :cond_207
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_22d

    .line 829
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 830
    .restart local v7    # "N":I
    if-lez v7, :cond_22d

    .line 831
    new-array v9, v7, [Landroid/content/pm/InstrumentationInfo;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 832
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_218
    if-ge v9, v7, :cond_22d

    .line 833
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 834
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Instrumentation;

    .line 833
    invoke-static {v11, v2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v11

    aput-object v11, v10, v9

    .line 832
    add-int/lit8 v9, v9, 0x1

    goto :goto_218

    .line 838
    .end local v7    # "N":I
    .end local v9    # "i":I
    :cond_22d
    and-int/lit16 v7, v2, 0x1000

    if-eqz v7, :cond_28d

    .line 839
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 840
    .restart local v7    # "N":I
    if-lez v7, :cond_253

    .line 841
    new-array v9, v7, [Landroid/content/pm/PermissionInfo;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 842
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_23e
    if-ge v9, v7, :cond_253

    .line 843
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Permission;

    invoke-static {v11, v2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v11

    aput-object v11, v10, v9

    .line 842
    add-int/lit8 v9, v9, 0x1

    goto :goto_23e

    .line 846
    .end local v9    # "i":I
    :cond_253
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 847
    if-lez v7, :cond_28d

    .line 848
    new-array v9, v7, [Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 849
    new-array v9, v7, [I

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 850
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_264
    if-ge v9, v7, :cond_28d

    .line 851
    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 852
    .local v10, "perm":Ljava/lang/String;
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object v10, v11, v9

    .line 854
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v12, v11, v9

    or-int/lit8 v12, v12, 0x1

    aput v12, v11, v9

    .line 855
    if-eqz v3, :cond_28a

    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28a

    .line 856
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v12, v11, v9

    or-int/lit8 v12, v12, 0x2

    aput v12, v11, v9

    .line 850
    .end local v10    # "perm":Ljava/lang/String;
    :cond_28a
    add-int/lit8 v9, v9, 0x1

    goto :goto_264

    .line 862
    .end local v7    # "N":I
    .end local v9    # "i":I
    :cond_28d
    if-eqz v1, :cond_2d7

    .line 863
    new-instance v7, Ljava/io/File;

    iget-object v9, v1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 865
    .local v7, "apexFile":Ljava/io/File;
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 866
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 867
    iget-boolean v9, v1, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v9, :cond_2b3

    .line 868
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_2bb

    .line 870
    :cond_2b3
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 872
    :goto_2bb
    iget-boolean v9, v1, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v9, :cond_2c9

    .line 873
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    or-int/2addr v10, v11

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_2d3

    .line 875
    :cond_2c9
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v11, -0x800001

    and-int/2addr v10, v11

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 877
    :goto_2d3
    move/from16 v9, v17

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 881
    .end local v7    # "apexFile":Ljava/io/File;
    :cond_2d7
    and-int/lit8 v7, v2, 0x40

    if-eqz v7, :cond_30f

    .line 882
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v7}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v7

    if-eqz v7, :cond_2f3

    .line 885
    const/4 v9, 0x1

    new-array v7, v9, [Landroid/content/pm/Signature;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 886
    iget-object v7, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v9, v9, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v9, v9, v16

    aput-object v9, v7, v16

    goto :goto_30f

    .line 887
    :cond_2f3
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v7}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v7

    if-eqz v7, :cond_30f

    .line 889
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v7, v7, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    .line 890
    .local v7, "numberOfSigs":I
    new-array v9, v7, [Landroid/content/pm/Signature;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 891
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v9, v9, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move/from16 v11, v16

    invoke-static {v9, v11, v10, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 896
    .end local v7    # "numberOfSigs":I
    :cond_30f
    :goto_30f
    const/high16 v7, 0x8000000

    and-int/2addr v7, v2

    if-eqz v7, :cond_33a

    .line 897
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v9, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v7, v9, :cond_337

    .line 899
    new-instance v7, Landroid/content/pm/SigningInfo;

    new-instance v9, Landroid/content/pm/SigningDetails;

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v10, v10, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v11, v11, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v12, v12, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v13, v13, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    invoke-direct {v7, v9}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_33a

    .line 905
    :cond_337
    const/4 v7, 0x0

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 908
    :cond_33a
    :goto_33a
    return-object v8

    .line 707
    .end local v6    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :cond_33b
    const/4 v7, 0x0

    .line 708
    :goto_33c
    return-object v7
.end method

.method public static greylist generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;)Landroid/content/pm/PackageInfo;
    .registers 19
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/pkg/FrameworkPackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 677
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 678
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 677
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    return-object v9
.end method

.method public static greylist generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 21
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/pkg/FrameworkPackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 686
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1
.end method

.method public static final greylist generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    .line 8155
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 8156
    :cond_4
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_b

    .line 8157
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object v0

    .line 8159
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 8160
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 8161
    return-object v0
.end method

.method public static final greylist generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .registers 4
    .param p0, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p1, "flags"    # I

    .line 8143
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 8144
    :cond_4
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_b

    .line 8145
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object v0

    .line 8147
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 8148
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 8149
    return-object v0
.end method

.method public static final greylist generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ProviderInfo;
    .registers 5
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8492
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;
    .registers 8
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 8497
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8498
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 8499
    return-object v0

    .line 8501
    :cond_f
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2d

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_23

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_2d

    .line 8504
    :cond_23
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8505
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object v0

    .line 8508
    :cond_2d
    new-instance v1, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 8509
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 8510
    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_3e

    .line 8511
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 8514
    :cond_3e
    if-nez p4, :cond_46

    .line 8515
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 8517
    :cond_46
    iput-object p4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8519
    return-object v1
.end method

.method public static final greylist generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8384
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;
    .registers 7
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 8389
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8390
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 8391
    return-object v0

    .line 8393
    :cond_f
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 8394
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8395
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 8398
    :cond_23
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 8399
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 8401
    if-nez p4, :cond_36

    .line 8402
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 8404
    :cond_36
    iput-object p4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8406
    return-object v0
.end method

.method public static greylist-max-o getActivityConfigChanges(II)I
    .registers 4
    .param p0, "configChanges"    # I
    .param p1, "recreateOnConfigChanges"    # I

    .line 4813
    not-int v0, p1

    sget v1, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->RECREATE_ON_CONFIG_CHANGES_MASK:I

    and-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0
.end method

.method public static blacklist getSeinfoUser(Landroid/content/pm/pkg/FrameworkPackageUserState;)Ljava/lang/String;
    .registers 2
    .param p0, "userState"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 9383
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9384
    const-string v0, ":ephemeralapp:complete"

    return-object v0

    .line 9386
    :cond_9
    const-string v0, ":complete"

    return-object v0
.end method

.method private static greylist-max-o hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .registers 12
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 4014
    const/4 v0, 0x0

    if-eqz p0, :cond_55

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    goto :goto_55

    .line 4015
    :cond_8
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 4016
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4017
    .local v2, "countActivities":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_f
    if-ge v3, v2, :cond_54

    .line 4018
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    .line 4019
    .local v4, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 4020
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_1c

    goto :goto_51

    .line 4021
    :cond_1c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4022
    .local v6, "countFilters":I
    const/4 v7, 0x0

    .local v7, "m":I
    :goto_21
    if-ge v7, v6, :cond_51

    .line 4023
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 4024
    .local v8, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_32

    goto :goto_4c

    .line 4025
    :cond_32
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_39

    goto :goto_4c

    .line 4026
    :cond_39
    const-string/jumbo v9, "http"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4f

    .line 4027
    const-string/jumbo v9, "https"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4c

    goto :goto_4f

    .line 4022
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_4c
    :goto_4c
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 4028
    .restart local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_4f
    :goto_4f
    const/4 v0, 0x1

    return v0

    .line 4017
    .end local v4    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "countFilters":I
    .end local v7    # "m":I
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_51
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4032
    .end local v3    # "n":I
    :cond_54
    return v0

    .line 4014
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    .end local v2    # "countActivities":I
    :cond_55
    :goto_55
    return v0
.end method

.method public static final greylist-max-o isApkFile(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 633
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isApkPath(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 637
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z
    .registers 3
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 663
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z
    .registers 10
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "flags"    # J

    .line 9251
    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v4

    .line 9252
    .local v0, "matchAnyUser":Z
    :goto_f
    const-wide/16 v5, 0x2000

    and-long/2addr v5, p1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_18

    move v2, v1

    goto :goto_19

    :cond_18
    move v2, v4

    .line 9253
    .local v2, "matchUninstalled":Z
    :goto_19
    if-nez v0, :cond_2c

    .line 9254
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 9255
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz v2, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v4

    goto :goto_2d

    :cond_2c
    :goto_2c
    nop

    .line 9253
    :goto_2d
    return v1
.end method

.method public static blacklist isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 11
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J

    .line 9269
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v5, p2

    .end local p0    # "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .end local p2    # "flags":J
    .local v1, "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .local v5, "flags":J
    invoke-static/range {v1 .. v6}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static blacklist isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZLandroid/content/pm/ComponentInfo;J)Z
    .registers 11
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isPackageEnabled"    # Z
    .param p2, "parsedComponent"    # Landroid/content/pm/ComponentInfo;
    .param p3, "flags"    # J

    .line 9275
    invoke-virtual {p2}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v2

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-wide v4, p3

    .end local p0    # "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .end local p1    # "isPackageEnabled":Z
    .end local p3    # "flags":J
    .local v0, "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .local v1, "isPackageEnabled":Z
    .local v4, "flags":J
    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static blacklist isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z
    .registers 13
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isPackageEnabled"    # Z
    .param p2, "isComponentEnabled"    # Z
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 9285
    const-wide/16 v0, 0x200

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 9286
    return v1

    .line 9291
    :cond_b
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_30

    :pswitch_13
    goto :goto_21

    .line 9296
    :pswitch_14
    const-wide/32 v5, 0x8000

    and-long/2addr v5, p4

    cmp-long v0, v5, v2

    if-nez v0, :cond_1e

    .line 9297
    return v4

    .line 9294
    :pswitch_1d
    return v4

    .line 9301
    :cond_1e
    :pswitch_1e
    if-nez p1, :cond_21

    .line 9302
    return v4

    .line 9311
    :cond_21
    :goto_21
    invoke-interface {p0, p3}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isComponentEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 9312
    return v1

    .line 9313
    :cond_28
    invoke-interface {p0, p3}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isComponentDisabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 9314
    return v4

    .line 9317
    :cond_2f
    return p2

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_13
        :pswitch_1d
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method private greylist-max-o isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/pm/PackageParser$IntentInfo;

    .line 5628
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5629
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5630
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5631
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 5628
    :goto_24
    return v0
.end method

.method public static blacklist isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 13
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J

    .line 9203
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-boolean v5, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v7, p2

    .end local p0    # "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .end local p2    # "flags":J
    .local v1, "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .local v7, "flags":J
    invoke-static/range {v1 .. v8}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static blacklist isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLandroid/content/pm/ComponentInfo;J)Z
    .registers 14
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isSystem"    # Z
    .param p2, "isPackageEnabled"    # Z
    .param p3, "component"    # Landroid/content/pm/ComponentInfo;
    .param p4, "flags"    # J

    .line 9210
    invoke-virtual {p3}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v3

    iget-boolean v4, p3, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v5, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p4

    .end local p0    # "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .end local p1    # "isSystem":Z
    .end local p2    # "isPackageEnabled":Z
    .end local p4    # "flags":J
    .local v0, "state":Landroid/content/pm/pkg/FrameworkPackageUserState;
    .local v1, "isSystem":Z
    .local v2, "isPackageEnabled":Z
    .local v6, "flags":J
    invoke-static/range {v0 .. v7}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static blacklist isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z
    .registers 20
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isSystem"    # Z
    .param p2, "isPackageEnabled"    # Z
    .param p3, "isComponentEnabled"    # Z
    .param p4, "isComponentDirectBootAware"    # Z
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "flags"    # J

    .line 9226
    move-wide/from16 v4, p6

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_10

    move v0, v8

    goto :goto_11

    :cond_10
    move v0, v9

    :goto_11
    move v10, v0

    .line 9227
    .local v10, "matchUninstalled":Z
    invoke-static {p0, v4, v5}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz p1, :cond_1c

    if-nez v10, :cond_21

    .line 9228
    :cond_1c
    invoke-static {v9, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 9231
    :cond_21
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object/from16 v3, p5

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result v11

    if-nez v11, :cond_31

    .line 9232
    invoke-static {v9, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 9235
    :cond_31
    const-wide/32 v0, 0x100000

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_40

    .line 9236
    if-nez p1, :cond_40

    .line 9237
    invoke-static {v9, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 9241
    :cond_40
    const-wide/32 v0, 0x40000

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4c

    if-nez p4, :cond_4c

    move v0, v8

    goto :goto_4d

    :cond_4c
    move v0, v9

    .line 9243
    .local v0, "matchesUnaware":Z
    :goto_4d
    const-wide/32 v1, 0x80000

    and-long/2addr v1, v4

    cmp-long v1, v1, v6

    if-eqz v1, :cond_59

    if-eqz p4, :cond_59

    move v1, v8

    goto :goto_5a

    :cond_59
    move v1, v9

    .line 9245
    .local v1, "matchesAware":Z
    :goto_5a
    if-nez v0, :cond_60

    if-eqz v1, :cond_5f

    goto :goto_60

    :cond_5f
    move v8, v9

    :cond_60
    :goto_60
    invoke-static {v8, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v2

    return v2
.end method

.method static synthetic blacklist lambda$parseBaseApplication$0(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .registers 4
    .param p0, "a1"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "a2"    # Landroid/content/pm/PackageParser$Activity;

    .line 3987
    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$parseBaseApplication$1(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .registers 4
    .param p0, "r1"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "r2"    # Landroid/content/pm/PackageParser$Activity;

    .line 3990
    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$parseBaseApplication$2(Landroid/content/pm/PackageParser$Service;Landroid/content/pm/PackageParser$Service;)I
    .registers 4
    .param p0, "s1"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "s2"    # Landroid/content/pm/PackageParser$Service;

    .line 3993
    iget v0, p1, Landroid/content/pm/PackageParser$Service;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static blacklist matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "codeNames"    # [Ljava/lang/String;
    .param p1, "targetCode"    # Ljava/lang/String;

    .line 2577
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2578
    .local v0, "targetCodeIdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 2579
    move-object v1, p1

    .local v1, "targetCodeName":Ljava/lang/String;
    goto :goto_10

    .line 2581
    .end local v1    # "targetCodeName":Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2583
    .restart local v1    # "targetCodeName":Ljava/lang/String;
    :goto_10
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static greylist-max-o newConfiguredAssetManager()Landroid/content/res/AssetManager;
    .registers 22

    .line 1455
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    move-object v1, v0

    .line 1456
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/16 v20, 0x0

    sget v21, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT_FULL:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v1 .. v21}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V

    .line 1458
    return-object v1
.end method

.method private greylist-max-o parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;
    .registers 37
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .param p7, "receiver"    # Z
    .param p8, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4313
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v1, p6

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 4315
    .local v2, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v3, :cond_32

    .line 4316
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v12, 0x11

    const/4 v13, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x2c

    const/16 v8, 0x17

    const/16 v9, 0x1e

    const/4 v11, 0x7

    move-object/from16 v3, p5

    move-object/from16 v14, p6

    move-object v15, v2

    move-object/from16 v2, p1

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v15, "sa":Landroid/content/res/TypedArray;
    invoke-direct/range {v1 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object v7, v2

    move-object v6, v3

    iput-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    goto :goto_38

    .line 4315
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    :cond_32
    move-object/from16 v7, p1

    move-object/from16 v6, p5

    move-object v14, v1

    move-object v15, v2

    .line 4329
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    :goto_38
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_3f

    const-string v2, "<receiver>"

    goto :goto_41

    :cond_3f
    const-string v2, "<activity>"

    :goto_41
    iput-object v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4330
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v15, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4331
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4333
    new-instance v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v9, v1

    .line 4334
    .local v9, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v10, 0x0

    aget-object v1, v6, v10

    const/4 v11, 0x0

    if-eqz v1, :cond_64

    .line 4335
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 4336
    return-object v11

    .line 4339
    :cond_64
    const/4 v1, 0x6

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 4340
    .local v12, "setExported":Z
    if-eqz v12, :cond_73

    .line 4341
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4344
    :cond_73
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4346
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    const/16 v3, 0x1a

    invoke-virtual {v15, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4349
    const/16 v1, 0x1b

    const/16 v2, 0x400

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 4352
    .local v13, "parentName":Ljava/lang/String;
    const-string v1, "Activity "

    const-string v3, "PackageParser"

    if-eqz v13, :cond_d3

    .line 4353
    iget-object v4, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v13, v6}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4354
    .local v4, "parentClassName":Ljava/lang/String;
    aget-object v5, v6, v10

    if-nez v5, :cond_ac

    .line 4355
    iget-object v5, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    move-object/from16 v16, v11

    goto :goto_d5

    .line 4357
    :cond_ac
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v16, v11

    iget-object v11, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " specified invalid parentActivityName "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    aput-object v16, v6, v10

    goto :goto_d5

    .line 4352
    .end local v4    # "parentClassName":Ljava/lang/String;
    :cond_d3
    move-object/from16 v16, v11

    .line 4364
    :goto_d5
    const/4 v11, 0x4

    invoke-virtual {v15, v11, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 4365
    .local v4, "str":Ljava/lang/String;
    if-nez v4, :cond_e7

    .line 4366
    iget-object v5, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v17, v11

    iget-object v11, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v11, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto :goto_fe

    .line 4368
    :cond_e7
    move/from16 v17, v11

    iget-object v5, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_fa

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    goto :goto_fc

    :cond_fa
    move-object/from16 v11, v16

    :goto_fc
    iput-object v11, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4371
    :goto_fe
    const/16 v5, 0x8

    invoke-virtual {v15, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 4374
    .end local v4    # "str":Ljava/lang/String;
    .local v11, "str":Ljava/lang/String;
    iget-object v4, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v18, v5

    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v5, v2, v11, v6}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4380
    nop

    .line 4381
    const/16 v2, 0x30

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 4382
    .local v2, "splitName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, " at "

    if-nez v4, :cond_15c

    .line 4383
    invoke-static {v2, v10, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 4384
    .local v4, "error":Ljava/lang/String;
    if-eqz v4, :cond_158

    .line 4385
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " specified invalid splitName "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15c

    .line 4388
    :cond_158
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 4393
    .end local v4    # "error":Ljava/lang/String;
    :cond_15c
    :goto_15c
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x0

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4394
    const/16 v1, 0x9

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_171

    .line 4396
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v4, v10

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4399
    :cond_171
    const/16 v1, 0xa

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v21, 0x2

    if-eqz v1, :cond_184

    .line 4400
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4403
    :cond_184
    const/16 v1, 0xb

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_195

    .line 4404
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4407
    :cond_195
    const/16 v1, 0x15

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 4408
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4411
    :cond_1a6
    const/16 v1, 0x12

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 4412
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4415
    :cond_1b7
    const/16 v1, 0xc

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x10

    if-eqz v1, :cond_1cc

    .line 4416
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v18, v10

    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v10, v4

    iput v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_1ce

    .line 4415
    :cond_1cc
    move/from16 v18, v10

    .line 4419
    :goto_1ce
    const/16 v1, 0xd

    const/4 v10, 0x0

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1e2

    .line 4420
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v22, 0x20

    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_1e4

    .line 4419
    :cond_1e2
    const/16 v22, 0x20

    .line 4423
    :goto_1e4
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1ef

    move/from16 v1, v18

    goto :goto_1f0

    :cond_1ef
    const/4 v1, 0x0

    :goto_1f0
    const/16 v10, 0x13

    invoke-virtual {v15, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v10, 0x40

    if-eqz v1, :cond_201

    .line 4425
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v4, v10

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4428
    :cond_201
    const/16 v1, 0x16

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_212

    .line 4429
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4432
    :cond_212
    const/16 v1, 0x1d

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_223

    .line 4433
    const/16 v1, 0x27

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_22c

    .line 4434
    :cond_223
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v10, 0x400

    or-int/2addr v4, v10

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4437
    :cond_22c
    const/16 v1, 0x18

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_23d

    .line 4438
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4441
    :cond_23d
    const/16 v1, 0x40

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_24f

    .line 4442
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v10, 0x20000000

    or-int/2addr v4, v10

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4445
    :cond_24f
    if-nez p7, :cond_3c3

    .line 4446
    const/16 v4, 0x19

    move/from16 v10, p8

    invoke-virtual {v15, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_263

    .line 4448
    iget-object v4, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4451
    :cond_263
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v4, 0xe

    move-object/from16 v24, v2

    const/4 v2, 0x0

    .end local v2    # "splitName":Ljava/lang/String;
    .local v24, "splitName":Ljava/lang/String;
    invoke-virtual {v15, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4453
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v4, 0x21

    invoke-virtual {v15, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 4456
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4458
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v2

    .line 4456
    const/16 v4, 0x22

    invoke-virtual {v15, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4459
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4460
    const/16 v2, 0x10

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 4461
    move-object/from16 v23, v3

    const/16 v3, 0x2f

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 4459
    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4462
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x14

    invoke-virtual {v15, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4465
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v2, v22

    invoke-virtual {v15, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4469
    const/16 v1, 0x1f

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2c4

    .line 4470
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4473
    :cond_2c4
    const/16 v1, 0x23

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2d5

    .line 4474
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4477
    :cond_2d5
    const/16 v1, 0x24

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2e6

    .line 4478
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4481
    :cond_2e6
    const/16 v1, 0x25

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2f7

    .line 4482
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4485
    :cond_2f7
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0xf

    const/4 v3, -0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4489
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1, v15, v7}, Landroid/content/pm/PackageParser;->setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V

    .line 4491
    const/16 v1, 0x29

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_319

    .line 4493
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x400000

    or-int/2addr v2, v4

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4496
    :cond_319
    const/16 v1, 0x32

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_331

    .line 4497
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    move/from16 v4, v17

    if-ne v2, v4, :cond_331

    .line 4499
    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-static {v9, v1}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4503
    :cond_331
    const/16 v1, 0x35

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_348

    .line 4504
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_348

    .line 4506
    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-static {v9, v1}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMinAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4510
    :cond_348
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4511
    const/16 v2, 0x26

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4513
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x2a

    invoke-virtual {v15, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4517
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4518
    const/16 v2, 0x2b

    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4520
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4521
    const/16 v2, 0x2e

    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 4523
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x31

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 4526
    const/16 v1, 0x38

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_38d

    .line 4528
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4531
    :cond_38d
    const/16 v1, 0x33

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_39f

    .line 4532
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4535
    :cond_39f
    const/16 v1, 0x34

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3b1

    .line 4536
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4539
    :cond_3b1
    const/16 v1, 0x36

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3ee

    .line 4540
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    goto :goto_3ee

    .line 4543
    .end local v24    # "splitName":Ljava/lang/String;
    .restart local v2    # "splitName":Ljava/lang/String;
    :cond_3c3
    move/from16 v10, p8

    move-object/from16 v24, v2

    move-object/from16 v23, v3

    .end local v2    # "splitName":Ljava/lang/String;
    .restart local v24    # "splitName":Ljava/lang/String;
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x0

    iput v4, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4544
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v4, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4546
    const/16 v1, 0x1c

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3e3

    .line 4547
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4550
    :cond_3e3
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x2a

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4555
    :cond_3ee
    :goto_3ee
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v1, :cond_3fc

    .line 4556
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4561
    :cond_3fc
    nop

    .line 4562
    const/16 v1, 0x2d

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 4563
    .local v19, "visibleToEphemeral":Z
    const/high16 v22, 0x100000

    if-eqz v19, :cond_414

    .line 4564
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v2, v2, v22

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4565
    move/from16 v1, v18

    iput-boolean v1, v7, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 4568
    :cond_414
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 4570
    if-eqz p7, :cond_433

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_433

    .line 4574
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v1, v2, :cond_430

    .line 4575
    const-string v1, "Heavy-weight applications can not have receivers in main process"

    const/16 v20, 0x0

    aput-object v1, v6, v20

    goto :goto_435

    .line 4574
    :cond_430
    const/16 v20, 0x0

    goto :goto_435

    .line 4570
    :cond_433
    const/16 v20, 0x0

    .line 4579
    :goto_435
    aget-object v1, v6, v20

    if-eqz v1, :cond_43a

    .line 4580
    return-object v16

    .line 4583
    :cond_43a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 4585
    .local v1, "outerDepth":I
    :goto_43e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    .local v3, "type":I
    if-eq v2, v4, :cond_6c3

    const/4 v2, 0x3

    if-ne v3, v2, :cond_45e

    .line 4587
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_450

    goto :goto_45e

    :cond_450
    move-object/from16 v2, p3

    move/from16 v17, v1

    move/from16 v25, v3

    move-object/from16 v23, v11

    const/16 v26, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_6cf

    .line 4588
    :cond_45e
    :goto_45e
    if-eq v3, v2, :cond_6a4

    const/4 v2, 0x4

    if-ne v3, v2, :cond_464

    .line 4589
    goto :goto_43e

    .line 4592
    :cond_464
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "intent-filter"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, " "

    if-eqz v2, :cond_517

    .line 4593
    new-instance v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v2, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 4594
    .local v2, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    move/from16 v25, v3

    .end local v3    # "type":I
    .local v25, "type":I
    const/4 v3, 0x1

    move-object/from16 v26, v4

    const/4 v4, 0x1

    move-object/from16 v8, v23

    move-object/from16 v23, v11

    move-object v11, v8

    move/from16 v17, v1

    move-object v8, v5

    move-object/from16 v10, v26

    const/16 v18, 0x4

    const/16 v26, 0x1

    move-object/from16 v1, p2

    move-object v5, v2

    move-object/from16 v2, p3

    .end local v1    # "outerDepth":I
    .end local v2    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v11    # "str":Ljava/lang/String;
    .local v5, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v17, "outerDepth":I
    .local v23, "str":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_498

    .line 4596
    return-object v16

    .line 4598
    :cond_498
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v1

    if-nez v1, :cond_4c3

    .line 4599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No actions in intent filter at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4601
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4599
    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d4

    .line 4603
    :cond_4c3
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v1

    iget v2, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 4604
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4607
    :goto_4d4
    if-eqz v19, :cond_4d9

    .line 4608
    move/from16 v4, v26

    goto :goto_4e6

    .line 4609
    :cond_4d9
    if-nez p7, :cond_4e4

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v1

    if-eqz v1, :cond_4e4

    .line 4610
    move/from16 v4, v21

    goto :goto_4e6

    .line 4611
    :cond_4e4
    move/from16 v4, v20

    :goto_4e6
    nop

    .line 4612
    .local v4, "visibility":I
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4613
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_4f8

    .line 4614
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v2, v2, v22

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4616
    :cond_4f8
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_507

    .line 4617
    iget-object v1, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4631
    .end local v4    # "visibility":I
    .end local v5    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_507
    move-object/from16 v1, v23

    move-object/from16 v23, v11

    move-object v11, v1

    move-object/from16 v6, p5

    move/from16 v10, p8

    move-object v5, v8

    move/from16 v1, v17

    move/from16 v8, p4

    goto/16 :goto_43e

    .end local v17    # "outerDepth":I
    .end local v23    # "str":Ljava/lang/String;
    .end local v25    # "type":I
    .restart local v1    # "outerDepth":I
    .restart local v3    # "type":I
    .restart local v11    # "str":Ljava/lang/String;
    :cond_517
    move-object/from16 v8, v23

    move-object/from16 v23, v11

    move-object v11, v8

    move/from16 v17, v1

    move/from16 v25, v3

    move-object v10, v4

    move-object v8, v5

    const/16 v18, 0x4

    const/16 v26, 0x1

    .end local v1    # "outerDepth":I
    .end local v3    # "type":I
    .end local v11    # "str":Ljava/lang/String;
    .restart local v17    # "outerDepth":I
    .restart local v23    # "str":Ljava/lang/String;
    .restart local v25    # "type":I
    if-nez p7, :cond_5c6

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "preferred"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c6

    .line 4632
    new-instance v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v5, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 4633
    .restart local v5    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_549

    .line 4635
    return-object v16

    .line 4637
    :cond_549
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v3

    if-nez v3, :cond_574

    .line 4638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in preferred at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4640
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4638
    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_584

    .line 4642
    :cond_574
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v3, :cond_57f

    .line 4643
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 4645
    :cond_57f
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4648
    :goto_584
    if-eqz v19, :cond_589

    .line 4649
    move/from16 v4, v26

    goto :goto_596

    .line 4650
    :cond_589
    if-nez p7, :cond_594

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v3

    if-eqz v3, :cond_594

    .line 4651
    move/from16 v4, v21

    goto :goto_596

    .line 4652
    :cond_594
    move/from16 v4, v20

    :goto_596
    nop

    .line 4653
    .restart local v4    # "visibility":I
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4654
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_5a8

    .line 4655
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v10, v10, v22

    iput v10, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4657
    :cond_5a8
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_5b8

    .line 4658
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v27, 0x200000

    or-int v10, v10, v27

    iput v10, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4660
    .end local v4    # "visibility":I
    .end local v5    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_5b8
    move-object/from16 v1, v23

    move-object/from16 v23, v11

    move-object v11, v1

    move/from16 v10, p8

    move-object v5, v8

    move/from16 v1, v17

    move/from16 v8, p4

    goto/16 :goto_43e

    .line 4631
    :cond_5c6
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    .line 4660
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f2

    .line 4661
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_5e4

    .line 4663
    return-object v16

    .line 4661
    :cond_5e4
    move-object/from16 v1, v23

    move-object/from16 v23, v11

    move-object v11, v1

    move/from16 v10, p8

    move-object v5, v8

    move/from16 v1, v17

    move/from16 v8, p4

    goto/16 :goto_43e

    .line 4665
    :cond_5f2
    if-nez p7, :cond_612

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "layout"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_612

    .line 4666
    invoke-direct {v0, v1, v2, v9}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    move-object/from16 v1, v23

    move-object/from16 v23, v11

    move-object v11, v1

    move/from16 v10, p8

    move-object v5, v8

    move/from16 v1, v17

    move/from16 v8, p4

    goto/16 :goto_43e

    .line 4669
    :cond_612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    if-eqz p7, :cond_663

    .line 4671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <receiver>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4673
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4671
    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_693

    .line 4675
    :cond_663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <activity>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4677
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4675
    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4679
    :goto_693
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4680
    move-object/from16 v1, v23

    move-object/from16 v23, v11

    move-object v11, v1

    move/from16 v10, p8

    move-object v5, v8

    move/from16 v1, v17

    move/from16 v8, p4

    goto/16 :goto_43e

    .line 4588
    .end local v17    # "outerDepth":I
    .end local v23    # "str":Ljava/lang/String;
    .end local v25    # "type":I
    .restart local v1    # "outerDepth":I
    .restart local v3    # "type":I
    .restart local v11    # "str":Ljava/lang/String;
    :cond_6a4
    move-object/from16 v2, v23

    move-object/from16 v23, v11

    move-object v11, v2

    move-object/from16 v2, p3

    move/from16 v17, v1

    move/from16 v25, v3

    move-object v8, v5

    const/16 v18, 0x4

    const/16 v26, 0x1

    move-object/from16 v1, p2

    .end local v1    # "outerDepth":I
    .end local v3    # "type":I
    .end local v11    # "str":Ljava/lang/String;
    .restart local v17    # "outerDepth":I
    .restart local v23    # "str":Ljava/lang/String;
    .restart local v25    # "type":I
    move-object/from16 v1, v23

    move-object/from16 v23, v11

    move-object v11, v1

    move/from16 v10, p8

    move/from16 v1, v17

    move/from16 v8, p4

    goto/16 :goto_43e

    .line 4585
    .end local v17    # "outerDepth":I
    .end local v23    # "str":Ljava/lang/String;
    .end local v25    # "type":I
    .restart local v1    # "outerDepth":I
    .restart local v3    # "type":I
    .restart local v11    # "str":Ljava/lang/String;
    :cond_6c3
    move-object/from16 v2, p3

    move/from16 v17, v1

    move/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v23, v11

    move-object/from16 v1, p2

    .line 4692
    .end local v1    # "outerDepth":I
    .end local v3    # "type":I
    .end local v11    # "str":Ljava/lang/String;
    .restart local v17    # "outerDepth":I
    .restart local v23    # "str":Ljava/lang/String;
    .restart local v25    # "type":I
    :goto_6cf
    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser;->resolveWindowLayout(Landroid/content/pm/PackageParser$Activity;)V

    .line 4694
    if-nez v12, :cond_6e5

    .line 4695
    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6e1

    move/from16 v10, v26

    goto :goto_6e3

    :cond_6e1
    move/from16 v10, v20

    :goto_6e3
    iput-boolean v10, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4698
    :cond_6e5
    return-object v9
.end method

.method private greylist-max-o parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;
    .registers 35
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4907
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p6

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    invoke-virtual {v14, v15, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 4910
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x7

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 4913
    .local v5, "targetActivity":Ljava/lang/String;
    const/16 v16, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_26

    .line 4914
    const-string v6, "<activity-alias> does not specify android:targetActivity"

    aput-object v6, v3, v7

    .line 4915
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 4916
    return-object v16

    .line 4919
    :cond_26
    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v5, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4921
    if-nez v5, :cond_34

    .line 4922
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 4923
    return-object v16

    .line 4926
    :cond_34
    iget-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v8, :cond_66

    .line 4927
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v12, 0x6

    const/4 v13, 0x4

    move-object v8, v4

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    move-object v9, v5

    .end local v5    # "targetActivity":Ljava/lang/String;
    .local v9, "targetActivity":Ljava/lang/String;
    const/4 v5, 0x0

    move v11, v6

    const/4 v6, 0x1

    move/from16 v17, v7

    const/16 v7, 0xb

    move-object/from16 v18, v8

    .end local v8    # "sa":Landroid/content/res/TypedArray;
    .local v18, "sa":Landroid/content/res/TypedArray;
    const/16 v8, 0x8

    move-object/from16 v19, v9

    .end local v9    # "targetActivity":Ljava/lang/String;
    .local v19, "targetActivity":Ljava/lang/String;
    const/16 v9, 0xa

    move/from16 v20, v11

    const/4 v11, 0x0

    move-object/from16 v14, p6

    move-object/from16 v15, v18

    move-object/from16 v0, v19

    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .end local v19    # "targetActivity":Ljava/lang/String;
    .local v0, "targetActivity":Ljava/lang/String;
    .local v15, "sa":Landroid/content/res/TypedArray;
    invoke-direct/range {v1 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object v7, v2

    iput-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4938
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v2, "<activity-alias>"

    iput-object v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_6c

    .line 4926
    .end local v0    # "targetActivity":Ljava/lang/String;
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "targetActivity":Ljava/lang/String;
    :cond_66
    move-object v14, v1

    move-object v15, v4

    move-object v0, v5

    move/from16 v17, v7

    move-object v7, v2

    .line 4941
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "targetActivity":Ljava/lang/String;
    .restart local v0    # "targetActivity":Ljava/lang/String;
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    :goto_6c
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v15, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4942
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4944
    const/4 v1, 0x0

    .line 4946
    .local v1, "target":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4947
    .local v9, "NA":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7e
    if-ge v2, v9, :cond_98

    .line 4948
    iget-object v4, v7, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    .line 4949
    .local v4, "t":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 4950
    move-object v1, v4

    .line 4951
    move-object v10, v1

    goto :goto_99

    .line 4947
    .end local v4    # "t":Landroid/content/pm/PackageParser$Activity;
    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_98
    move-object v10, v1

    .line 4955
    .end local v1    # "target":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "i":I
    .local v10, "target":Landroid/content/pm/PackageParser$Activity;
    :goto_99
    if-nez v10, :cond_ba

    .line 4956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<activity-alias> target activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v17

    .line 4958
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 4959
    return-object v16

    .line 4962
    :cond_ba
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object v11, v1

    .line 4963
    .local v11, "info":Landroid/content/pm/ActivityInfo;
    iput-object v0, v11, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 4964
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4965
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4966
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 4967
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->icon:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->icon:I

    .line 4968
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->logo:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->logo:I

    .line 4969
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->banner:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->banner:I

    .line 4970
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 4971
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4972
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4973
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4974
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4975
    iget v1, v11, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v1, :cond_10e

    .line 4976
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 4978
    :cond_10e
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4979
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4980
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->theme:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4981
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4982
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4983
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 4984
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4985
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4986
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4987
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 4988
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 4989
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    iput-boolean v1, v11, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 4990
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v1, v11, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4992
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v1, v11, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4994
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/pm/pkg/component/flags/Flags;->enableActivityAliasPersistableModeBugfix()Z

    move-result v1

    if-eqz v1, :cond_174

    .line 4995
    iget-object v1, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    iput v1, v11, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4998
    :cond_174
    new-instance v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    invoke-direct {v1, v2, v11}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v12, v1

    .line 4999
    .local v12, "a":Landroid/content/pm/PackageParser$Activity;
    aget-object v1, v3, v17

    if-eqz v1, :cond_184

    .line 5000
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5001
    return-object v16

    .line 5004
    :cond_184
    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    .line 5006
    .local v13, "setExported":Z
    if-eqz v13, :cond_196

    .line 5007
    iget-object v2, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v4, v17

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    goto :goto_198

    .line 5006
    :cond_196
    move/from16 v4, v17

    .line 5012
    :goto_198
    const/4 v1, 0x3

    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 5014
    .local v18, "str":Ljava/lang/String;
    if-eqz v18, :cond_1b4

    .line 5015
    iget-object v2, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1b0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_1b2

    :cond_1b0
    move-object/from16 v4, v16

    :goto_1b2
    iput-object v4, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 5018
    :cond_1b4
    const/16 v2, 0x9

    const/16 v4, 0x400

    invoke-virtual {v15, v2, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5021
    .local v2, "parentName":Ljava/lang/String;
    const-string v4, "PackageParser"

    if-eqz v2, :cond_1fb

    .line 5022
    iget-object v5, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v2, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5023
    .local v5, "parentClassName":Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v6, v3, v17

    if-nez v6, :cond_1d3

    .line 5024
    iget-object v6, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v5, v6, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_1fb

    .line 5026
    :cond_1d3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity alias "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " specified invalid parentActivityName "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5028
    const/16 v17, 0x0

    aput-object v16, v3, v17

    .line 5033
    .end local v5    # "parentClassName":Ljava/lang/String;
    :cond_1fb
    :goto_1fb
    iget-object v1, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v20, 0x100000

    and-int v1, v1, v20

    const/4 v5, 0x1

    if-eqz v1, :cond_208

    move v1, v5

    goto :goto_209

    :cond_208
    const/4 v1, 0x0

    :goto_209
    move/from16 v21, v1

    .line 5036
    .local v21, "visibleToEphemeral":Z
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5038
    const/16 v17, 0x0

    aget-object v1, v3, v17

    if-eqz v1, :cond_215

    .line 5039
    return-object v16

    .line 5042
    :cond_215
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 5044
    .local v1, "outerDepth":I
    :goto_219
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move/from16 v22, v6

    .local v22, "type":I
    if-eq v6, v5, :cond_3a2

    move/from16 v6, v22

    const/4 v5, 0x3

    .end local v22    # "type":I
    .local v6, "type":I
    if-ne v6, v5, :cond_240

    .line 5046
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_22d

    goto :goto_240

    :cond_22d
    move-object/from16 v19, v0

    move/from16 v23, v1

    move-object/from16 v22, v2

    move/from16 v24, v6

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v6, v3

    goto/16 :goto_3b3

    .line 5047
    :cond_240
    :goto_240
    const/4 v5, 0x3

    if-eq v6, v5, :cond_380

    const/4 v5, 0x4

    if-ne v6, v5, :cond_248

    .line 5048
    const/4 v5, 0x1

    goto :goto_219

    .line 5051
    :cond_248
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v0

    .end local v0    # "targetActivity":Ljava/lang/String;
    .local v23, "targetActivity":Ljava/lang/String;
    const-string/jumbo v0, "intent-filter"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, " "

    if-eqz v0, :cond_2fe

    .line 5052
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v12}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 5053
    .local v0, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x1

    move-object/from16 v24, v4

    const/4 v4, 0x1

    move-object/from16 v22, v2

    move-object v7, v5

    move-object/from16 v19, v23

    move-object/from16 v8, v24

    const/16 v25, 0x3

    const/16 v26, 0x1

    move-object/from16 v2, p3

    move-object v5, v0

    move/from16 v23, v1

    move/from16 v24, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p5

    .end local v0    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v1    # "outerDepth":I
    .end local v2    # "parentName":Ljava/lang/String;
    .end local v6    # "type":I
    .local v5, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .restart local v19    # "targetActivity":Ljava/lang/String;
    .local v22, "parentName":Ljava/lang/String;
    .local v23, "outerDepth":I
    .local v24, "type":I
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_281

    .line 5055
    return-object v16

    .line 5057
    :cond_281
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v3

    if-nez v3, :cond_2ac

    .line 5058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in intent filter at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5060
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5058
    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2bd

    .line 5062
    :cond_2ac
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v3

    iget v4, v12, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v12, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 5063
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5066
    :goto_2bd
    if-eqz v21, :cond_2c2

    .line 5067
    move/from16 v7, v26

    goto :goto_2cc

    .line 5068
    :cond_2c2
    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v3

    if-eqz v3, :cond_2ca

    .line 5069
    const/4 v7, 0x2

    goto :goto_2cc

    .line 5070
    :cond_2ca
    move/from16 v7, v17

    :goto_2cc
    nop

    .line 5071
    .local v7, "visibility":I
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5072
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_2de

    .line 5073
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v4, v4, v20

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 5075
    :cond_2de
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_2ee

    .line 5076
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v27, 0x200000

    or-int v4, v4, v27

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 5078
    .end local v5    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v7    # "visibility":I
    :cond_2ee
    move-object/from16 v7, p1

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v0, v19

    move-object/from16 v2, v22

    move/from16 v1, v23

    move/from16 v5, v26

    move/from16 v8, p4

    goto/16 :goto_219

    .end local v19    # "targetActivity":Ljava/lang/String;
    .end local v22    # "parentName":Ljava/lang/String;
    .end local v24    # "type":I
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parentName":Ljava/lang/String;
    .restart local v6    # "type":I
    .local v23, "targetActivity":Ljava/lang/String;
    :cond_2fe
    move-object/from16 v0, p0

    move-object/from16 v22, v2

    move-object v8, v4

    move-object v7, v5

    move/from16 v24, v6

    move-object/from16 v19, v23

    const/16 v25, 0x3

    const/16 v26, 0x1

    move-object/from16 v2, p3

    move/from16 v23, v1

    move-object v6, v3

    move-object/from16 v1, p2

    .end local v1    # "outerDepth":I
    .end local v2    # "parentName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v19    # "targetActivity":Ljava/lang/String;
    .restart local v22    # "parentName":Ljava/lang/String;
    .local v23, "outerDepth":I
    .restart local v24    # "type":I
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33b

    .line 5079
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v12, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_32b

    .line 5081
    return-object v16

    .line 5079
    :cond_32b
    move-object/from16 v7, p1

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v0, v19

    move-object/from16 v2, v22

    move/from16 v1, v23

    move/from16 v5, v26

    move/from16 v8, p4

    goto/16 :goto_219

    .line 5085
    :cond_33b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <activity-alias>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5087
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5085
    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5088
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5089
    move-object/from16 v7, p1

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v0, v19

    move-object/from16 v2, v22

    move/from16 v1, v23

    move/from16 v5, v26

    move/from16 v8, p4

    goto/16 :goto_219

    .line 5047
    .end local v19    # "targetActivity":Ljava/lang/String;
    .end local v22    # "parentName":Ljava/lang/String;
    .end local v23    # "outerDepth":I
    .end local v24    # "type":I
    .local v0, "targetActivity":Ljava/lang/String;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parentName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_380
    move-object/from16 v19, v0

    move/from16 v23, v1

    move-object/from16 v22, v2

    move-object v8, v4

    move/from16 v25, v5

    move/from16 v24, v6

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v6, v3

    .end local v0    # "targetActivity":Ljava/lang/String;
    .end local v1    # "outerDepth":I
    .end local v2    # "parentName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v19    # "targetActivity":Ljava/lang/String;
    .restart local v22    # "parentName":Ljava/lang/String;
    .restart local v23    # "outerDepth":I
    .restart local v24    # "type":I
    move-object/from16 v7, p1

    move-object/from16 v0, v19

    move-object/from16 v2, v22

    move/from16 v1, v23

    move/from16 v5, v26

    move/from16 v8, p4

    goto/16 :goto_219

    .line 5044
    .end local v19    # "targetActivity":Ljava/lang/String;
    .end local v23    # "outerDepth":I
    .end local v24    # "type":I
    .restart local v0    # "targetActivity":Ljava/lang/String;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parentName":Ljava/lang/String;
    .local v22, "type":I
    :cond_3a2
    move-object/from16 v19, v0

    move/from16 v23, v1

    move-object v6, v3

    move/from16 v26, v5

    move/from16 v24, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v22, v2

    move-object/from16 v2, p3

    .line 5097
    .end local v0    # "targetActivity":Ljava/lang/String;
    .end local v1    # "outerDepth":I
    .end local v2    # "parentName":Ljava/lang/String;
    .restart local v19    # "targetActivity":Ljava/lang/String;
    .local v22, "parentName":Ljava/lang/String;
    .restart local v23    # "outerDepth":I
    .restart local v24    # "type":I
    :goto_3b3
    if-nez v13, :cond_3c6

    .line 5098
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v12, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3c2

    move/from16 v7, v26

    goto :goto_3c4

    :cond_3c2
    move/from16 v7, v17

    :goto_3c4
    iput-boolean v7, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 5101
    :cond_3c6
    return-object v12
.end method

.method private greylist-max-o parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2815
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2817
    .local v0, "certSha256Digests":[Ljava/lang/String;
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2819
    .local v1, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_78

    const/4 v2, 0x3

    if-ne v3, v2, :cond_17

    .line 2820
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_78

    .line 2821
    :cond_17
    if-eq v3, v2, :cond_6

    const/4 v2, 0x4

    if-ne v3, v2, :cond_1d

    .line 2822
    goto :goto_6

    .line 2825
    :cond_1d
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2826
    .local v2, "nodeName":Ljava/lang/String;
    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 2827
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2829
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 2831
    .local v6, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2833
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 2834
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p3, v5

    .line 2836
    const/16 v5, -0x6c

    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2837
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2838
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2839
    const/4 v5, 0x0

    return-object v5

    .line 2844
    :cond_5e
    const-string v5, ":"

    const-string v7, ""

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2845
    .end local v6    # "certSha256Digest":Ljava/lang/String;
    .local v5, "certSha256Digest":Ljava/lang/String;
    const-class v6, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    .line 2847
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    goto :goto_77

    .line 2848
    :cond_74
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2850
    .end local v2    # "nodeName":Ljava/lang/String;
    :goto_77
    goto :goto_6

    .line 2852
    :cond_78
    return-object v0
.end method

.method private greylist-max-o parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .registers 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "tag"    # Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5636
    .local p4, "outInfo":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 5638
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_78

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 5640
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_78

    .line 5641
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 5642
    goto :goto_4

    .line 5645
    :cond_1b
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 5646
    iget-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v1, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 5648
    const/4 v1, 0x0

    return v1

    .line 5652
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5653
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5654
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5652
    const-string v3, "PackageParser"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5655
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5656
    goto :goto_4

    .line 5663
    :cond_78
    return v3
.end method

.method public static greylist-max-o parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .registers 3
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1471
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "debugPathName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1485
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;
    .registers 43
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1622
    move-object/from16 v0, p2

    invoke-static/range {p1 .. p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v1

    .line 1624
    .local v1, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 1625
    .local v2, "installLocation":I
    const/4 v3, 0x0

    .line 1626
    .local v3, "versionCode":I
    const/4 v4, 0x0

    .line 1627
    .local v4, "versionCodeMajor":I
    const/4 v5, 0x0

    .line 1628
    .local v5, "targetSdkVersion":I
    const/4 v6, 0x1

    .line 1629
    .local v6, "minSdkVersion":I
    const/4 v7, 0x0

    .line 1630
    .local v7, "revisionCode":I
    const/4 v8, 0x0

    .line 1631
    .local v8, "coreApp":Z
    const/4 v9, 0x0

    .line 1632
    .local v9, "debuggable":Z
    const/16 v26, 0x0

    .line 1633
    .local v26, "profilableByShell":Z
    const/4 v10, 0x0

    .line 1634
    .local v10, "multiArch":Z
    const/4 v11, 0x0

    .line 1635
    .local v11, "use32bitAbi":Z
    const/4 v12, 0x1

    .line 1636
    .local v12, "extractNativeLibs":Z
    const/4 v13, 0x0

    .line 1637
    .local v13, "isolatedSplits":Z
    const/4 v14, 0x0

    .line 1638
    .local v14, "isFeatureSplit":Z
    const/4 v15, 0x0

    .line 1639
    .local v15, "isSplitRequired":Z
    const/16 v16, 0x0

    .line 1640
    .local v16, "useEmbeddedDex":Z
    const/16 v17, 0x0

    .line 1641
    .local v17, "configForSplit":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1642
    .local v18, "usesSplitName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1643
    .local v19, "targetPackage":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1644
    .local v20, "overlayIsStatic":Z
    const/16 v21, 0x0

    .line 1645
    .local v21, "overlayPriority":I
    const/16 v22, 0x0

    .line 1647
    .local v22, "rollbackDataPolicy":I
    const/16 v23, 0x0

    .line 1648
    .local v23, "requiredSystemPropertyName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1650
    .local v24, "requiredSystemPropertyValue":Ljava/lang/String;
    const/16 v25, 0x0

    move-object/from16 v31, v17

    move/from16 v17, v15

    move-object/from16 v15, v31

    move/from16 v31, v13

    move/from16 v13, v25

    .local v13, "i":I
    .local v15, "configForSplit":Ljava/lang/String;
    .local v17, "isSplitRequired":Z
    .local v31, "isolatedSplits":Z
    :goto_34
    move/from16 v25, v2

    .end local v2    # "installLocation":I
    .local v25, "installLocation":I
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move/from16 v27, v3

    .end local v3    # "versionCode":I
    .local v27, "versionCode":I
    if-ge v13, v2, :cond_101

    .line 1651
    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1652
    .local v2, "attr":Ljava/lang/String;
    const-string/jumbo v3, "installLocation"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1653
    const/4 v3, -0x1

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    move v2, v3

    move/from16 v3, v27

    .end local v25    # "installLocation":I
    .local v3, "installLocation":I
    goto/16 :goto_fd

    .line 1655
    .end local v3    # "installLocation":I
    .restart local v25    # "installLocation":I
    :cond_55
    const-string/jumbo v3, "versionCode"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 1656
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    move/from16 v2, v25

    .end local v27    # "versionCode":I
    .local v3, "versionCode":I
    goto/16 :goto_fd

    .line 1657
    .end local v3    # "versionCode":I
    .restart local v27    # "versionCode":I
    :cond_67
    const/4 v3, 0x0

    const-string/jumbo v3, "versionCodeMajor"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 1658
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    move v4, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v4    # "versionCodeMajor":I
    .local v3, "versionCodeMajor":I
    goto/16 :goto_fd

    .line 1659
    .end local v3    # "versionCodeMajor":I
    .restart local v4    # "versionCodeMajor":I
    :cond_7d
    const/4 v3, 0x0

    const-string/jumbo v3, "revisionCode"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1660
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    move v7, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v7    # "revisionCode":I
    .local v3, "revisionCode":I
    goto/16 :goto_fd

    .line 1661
    .end local v3    # "revisionCode":I
    .restart local v7    # "revisionCode":I
    :cond_93
    const/4 v3, 0x0

    const-string v3, "coreApp"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 1662
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    move v8, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v8    # "coreApp":Z
    .local v3, "coreApp":Z
    goto :goto_fd

    .line 1663
    .end local v3    # "coreApp":Z
    .restart local v8    # "coreApp":Z
    :cond_a7
    const/4 v3, 0x0

    const-string/jumbo v3, "isolatedSplits"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 1664
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    move/from16 v31, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v31    # "isolatedSplits":Z
    .local v3, "isolatedSplits":Z
    goto :goto_fd

    .line 1665
    .end local v3    # "isolatedSplits":Z
    .restart local v31    # "isolatedSplits":Z
    :cond_bd
    const-string v3, "configForSplit"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 1666
    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v15    # "configForSplit":Ljava/lang/String;
    .local v3, "configForSplit":Ljava/lang/String;
    goto :goto_fd

    .line 1667
    .end local v3    # "configForSplit":Ljava/lang/String;
    .restart local v15    # "configForSplit":Ljava/lang/String;
    :cond_cf
    const-string/jumbo v3, "isFeatureSplit"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 1668
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    move v14, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v14    # "isFeatureSplit":Z
    .local v3, "isFeatureSplit":Z
    goto :goto_fd

    .line 1669
    .end local v3    # "isFeatureSplit":Z
    .restart local v14    # "isFeatureSplit":Z
    :cond_e3
    const/4 v3, 0x0

    const-string/jumbo v3, "isSplitRequired"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 1670
    const/4 v3, 0x0

    invoke-interface {v0, v13, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    move/from16 v17, v3

    move/from16 v2, v25

    move/from16 v3, v27

    .end local v17    # "isSplitRequired":Z
    .local v3, "isSplitRequired":Z
    goto :goto_fd

    .line 1669
    .end local v3    # "isSplitRequired":Z
    .restart local v17    # "isSplitRequired":Z
    :cond_f9
    move/from16 v2, v25

    move/from16 v3, v27

    .line 1650
    .end local v25    # "installLocation":I
    .end local v27    # "versionCode":I
    .local v2, "installLocation":I
    .local v3, "versionCode":I
    :goto_fd
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_34

    .line 1676
    .end local v2    # "installLocation":I
    .end local v3    # "versionCode":I
    .end local v13    # "i":I
    .restart local v25    # "installLocation":I
    .restart local v27    # "versionCode":I
    :cond_101
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1678
    .local v2, "searchDepth":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 v36, v5

    move/from16 v35, v6

    move/from16 v30, v12

    move/from16 v29, v16

    move-object/from16 v16, v18

    move-object/from16 v5, v19

    move/from16 v37, v22

    move-object/from16 v6, v23

    move-object/from16 v12, v24

    .line 1679
    .end local v18    # "usesSplitName":Ljava/lang/String;
    .end local v19    # "targetPackage":Ljava/lang/String;
    .end local v22    # "rollbackDataPolicy":I
    .end local v23    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v24    # "requiredSystemPropertyValue":Ljava/lang/String;
    .local v5, "targetPackage":Ljava/lang/String;
    .local v6, "requiredSystemPropertyName":Ljava/lang/String;
    .local v12, "requiredSystemPropertyValue":Ljava/lang/String;
    .local v13, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v16, "usesSplitName":Ljava/lang/String;
    .local v29, "useEmbeddedDex":Z
    .local v30, "extractNativeLibs":Z
    .local v35, "minSdkVersion":I
    .local v36, "targetSdkVersion":I
    .local v37, "rollbackDataPolicy":I
    :goto_11e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move/from16 v38, v3

    move/from16 v19, v4

    .end local v4    # "versionCodeMajor":I
    .local v19, "versionCodeMajor":I
    .local v38, "type":I
    const-string v4, "PackageParser"

    move/from16 v22, v7

    const/4 v7, 0x1

    .end local v7    # "revisionCode":I
    .local v22, "revisionCode":I
    if-eq v3, v7, :cond_2dd

    const/4 v3, 0x3

    move/from16 v7, v38

    .end local v38    # "type":I
    .local v7, "type":I
    if-ne v7, v3, :cond_13d

    .line 1680
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-lt v3, v2, :cond_139

    goto :goto_13d

    :cond_139
    move/from16 v38, v2

    goto/16 :goto_2e1

    .line 1681
    :cond_13d
    :goto_13d
    const/4 v3, 0x3

    if-eq v7, v3, :cond_2d1

    const/4 v3, 0x4

    if-ne v7, v3, :cond_148

    .line 1682
    move/from16 v38, v2

    const/4 v4, 0x1

    goto/16 :goto_2d4

    .line 1685
    :cond_148
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-eq v3, v2, :cond_153

    .line 1686
    move/from16 v38, v2

    const/4 v4, 0x1

    goto/16 :goto_2d4

    .line 1689
    :cond_153
    const-string/jumbo v3, "package-verifier"

    move/from16 v38, v2

    .end local v2    # "searchDepth":I
    .local v38, "searchDepth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 1690
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v2

    .line 1691
    .local v2, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v2, :cond_16b

    .line 1692
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1694
    .end local v2    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_16b
    const/4 v4, 0x1

    goto/16 :goto_2d4

    :cond_16e
    const-string v2, "application"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 1695
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17b
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_1e0

    .line 1696
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1697
    .local v3, "attr":Ljava/lang/String;
    const-string v4, "debuggable"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 1698
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    goto :goto_194

    .line 1697
    :cond_193
    const/4 v4, 0x0

    .line 1700
    :goto_194
    const-string/jumbo v4, "multiArch"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a3

    .line 1701
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    goto :goto_1a4

    .line 1700
    :cond_1a3
    const/4 v4, 0x0

    .line 1703
    :goto_1a4
    const-string/jumbo v4, "use32bitAbi"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b2

    .line 1704
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v11

    .line 1706
    :cond_1b2
    const-string v4, "extractNativeLibs"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 1707
    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v30

    .line 1709
    :cond_1bf
    const-string/jumbo v4, "useEmbeddedDex"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ce

    .line 1710
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v29

    goto :goto_1cf

    .line 1709
    :cond_1ce
    const/4 v4, 0x0

    .line 1712
    :goto_1cf
    const-string/jumbo v4, "rollbackDataPolicy"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1dd

    .line 1713
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v37

    .line 1695
    .end local v3    # "attr":Ljava/lang/String;
    :cond_1dd
    add-int/lit8 v2, v2, 0x1

    goto :goto_17b

    :cond_1e0
    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v2, v38

    const/4 v3, 0x1

    .end local v2    # "i":I
    goto/16 :goto_11e

    .line 1716
    :cond_1e9
    const-string/jumbo v2, "overlay"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_255

    .line 1717
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1f7
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_24c

    .line 1718
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1719
    .restart local v3    # "attr":Ljava/lang/String;
    const-string/jumbo v4, "requiredSystemPropertyName"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20f

    .line 1720
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_249

    .line 1721
    :cond_20f
    const-string/jumbo v4, "requiredSystemPropertyValue"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21d

    .line 1722
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_249

    .line 1723
    :cond_21d
    const-string/jumbo v4, "targetPackage"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22b

    .line 1724
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_249

    .line 1725
    :cond_22b
    const-string/jumbo v4, "isStatic"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23a

    .line 1726
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v20

    goto :goto_249

    .line 1727
    :cond_23a
    const/4 v4, 0x0

    const-string/jumbo v4, "priority"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_249

    .line 1728
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v21

    .line 1717
    .end local v3    # "attr":Ljava/lang/String;
    :cond_249
    :goto_249
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f7

    :cond_24c
    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v2, v38

    const/4 v3, 0x1

    .end local v2    # "i":I
    goto/16 :goto_11e

    .line 1731
    :cond_255
    const-string/jumbo v2, "uses-split"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 1732
    if-eqz v16, :cond_26b

    .line 1733
    const-string v2, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v4, 0x1

    goto :goto_2d4

    .line 1737
    :cond_26b
    const-string/jumbo v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "name"

    invoke-interface {v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1738
    if-eqz v16, :cond_280

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v2, v38

    const/4 v3, 0x1

    goto/16 :goto_11e

    .line 1739
    :cond_280
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x6c

    const-string v4, "<uses-split> tag requires \'android:name\' attribute"

    invoke-direct {v2, v3, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1743
    :cond_28a
    const-string/jumbo v2, "uses-sdk"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2cf

    .line 1744
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_298
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_2c5

    .line 1745
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1746
    .restart local v3    # "attr":Ljava/lang/String;
    const-string/jumbo v4, "targetSdkVersion"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b1

    .line 1747
    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v36

    goto :goto_2b2

    .line 1746
    :cond_2b1
    const/4 v4, 0x0

    .line 1750
    :goto_2b2
    const-string/jumbo v4, "minSdkVersion"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c1

    .line 1751
    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v35

    goto :goto_2c2

    .line 1750
    :cond_2c1
    const/4 v4, 0x1

    .line 1744
    .end local v3    # "attr":Ljava/lang/String;
    :goto_2c2
    add-int/lit8 v2, v2, 0x1

    goto :goto_298

    :cond_2c5
    const/4 v4, 0x1

    move v3, v4

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v2, v38

    .end local v2    # "i":I
    goto/16 :goto_11e

    .line 1743
    :cond_2cf
    const/4 v4, 0x1

    goto :goto_2d4

    .line 1681
    .end local v38    # "searchDepth":I
    .local v2, "searchDepth":I
    :cond_2d1
    move/from16 v38, v2

    const/4 v4, 0x1

    .line 1679
    .end local v2    # "searchDepth":I
    .end local v7    # "type":I
    .restart local v38    # "searchDepth":I
    :goto_2d4
    move v3, v4

    move/from16 v4, v19

    move/from16 v7, v22

    move/from16 v2, v38

    goto/16 :goto_11e

    .restart local v2    # "searchDepth":I
    .local v38, "type":I
    :cond_2dd
    move/from16 v7, v38

    move/from16 v38, v2

    .line 1758
    .end local v2    # "searchDepth":I
    .restart local v7    # "type":I
    .local v38, "searchDepth":I
    :goto_2e1
    invoke-static {v6, v12}, Landroid/content/pm/PackageParser;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_329

    .line 1760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping target and overlay pair "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, ": overlay ignored due to required system property: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const/4 v5, 0x0

    .line 1764
    const/16 v20, 0x0

    .line 1765
    const/16 v21, 0x0

    move-object/from16 v32, v5

    move/from16 v33, v20

    move/from16 v34, v21

    goto :goto_331

    .line 1758
    :cond_329
    move-object/from16 v3, p0

    move-object/from16 v32, v5

    move/from16 v33, v20

    move/from16 v34, v21

    .line 1768
    .end local v5    # "targetPackage":Ljava/lang/String;
    .end local v20    # "overlayIsStatic":Z
    .end local v21    # "overlayPriority":I
    .local v32, "targetPackage":Ljava/lang/String;
    .local v33, "overlayIsStatic":Z
    .local v34, "overlayPriority":I
    :goto_331
    move/from16 v18, v27

    move/from16 v27, v10

    .end local v10    # "multiArch":Z
    .local v18, "versionCode":I
    .local v27, "multiArch":Z
    new-instance v10, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v12

    move-object v12, v0

    move-object/from16 v0, v20

    move-object/from16 v23, p3

    move/from16 v24, v8

    move/from16 v28, v11

    move/from16 v20, v22

    move/from16 v21, v25

    move-object v11, v3

    move/from16 v25, v9

    move-object/from16 v22, v13

    move-object v13, v2

    .end local v8    # "coreApp":Z
    .end local v9    # "debuggable":Z
    .end local v11    # "use32bitAbi":Z
    .end local v12    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v13    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v0, "requiredSystemPropertyValue":Ljava/lang/String;
    .local v20, "revisionCode":I
    .local v21, "installLocation":I
    .local v22, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v24, "coreApp":Z
    .local v25, "debuggable":Z
    .local v28, "use32bitAbi":Z
    invoke-direct/range {v10 .. v37}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZZZLjava/lang/String;ZIIII)V

    return-object v10
.end method

.method private static greylist-max-o parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .registers 13
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "debugPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1490
    if-eqz p1, :cond_4

    move-object v0, p2

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "apkPath":Ljava/lang/String;
    :goto_8
    const/4 v1, 0x0

    .line 1493
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 1496
    .local v2, "apkAssets":Landroid/content/res/ApkAssets;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Failed to parse "

    if-eqz p1, :cond_15

    .line 1497
    :try_start_10
    invoke-static {p1, p2, v4, v3}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v6

    goto :goto_19

    .line 1498
    :cond_15
    invoke-static {v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v6
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_61
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_19} :catch_5f
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_19} :catch_5f
    .catchall {:try_start_10 .. :try_end_19} :catchall_5d

    :goto_19
    move-object v2, v6

    .line 1502
    nop

    .line 1504
    :try_start_1b
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v2, v6}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v1, v6

    .line 1507
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_4b

    .line 1509
    new-instance v6, Landroid/content/pm/PackageParser$Package;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1510
    .local v6, "tempPkg":Landroid/content/pm/PackageParser$Package;
    and-int/lit8 v3, p3, 0x10

    if-eqz v3, :cond_33

    const/4 v4, 0x1

    .line 1511
    .local v4, "skipVerify":Z
    :cond_33
    const-string v3, "collectCertificates"

    const-wide/32 v7, 0x40000

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_3b} :catch_5f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3b} :catch_5f
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_3b} :catch_5f
    .catchall {:try_start_1b .. :try_end_3b} :catchall_5d

    .line 1513
    :try_start_3b
    invoke-static {v6, p0, v4}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_45

    .line 1515
    :try_start_3e
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1516
    nop

    .line 1517
    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1518
    .end local v4    # "skipVerify":Z
    .end local v6    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    .local v3, "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    goto :goto_4d

    .line 1515
    .end local v3    # "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .restart local v4    # "skipVerify":Z
    .restart local v6    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_45
    move-exception v3

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1516
    nop

    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local p0    # "apkFile":Ljava/io/File;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "debugPathName":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v3

    .line 1519
    .end local v4    # "skipVerify":Z
    .end local v6    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .restart local p0    # "apkFile":Ljava/io/File;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "debugPathName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :cond_4b
    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1522
    .restart local v3    # "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :goto_4d
    move-object v4, v1

    .line 1523
    .local v4, "attrs":Landroid/util/AttributeSet;
    invoke-static {v0, v1, v4, v3}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v5
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_52} :catch_5f
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_52} :catch_5f
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_52} :catch_5f
    .catchall {:try_start_3e .. :try_end_52} :catchall_5d

    .line 1530
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1531
    if-eqz v2, :cond_5c

    .line 1533
    :try_start_57
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    .line 1535
    goto :goto_5c

    .line 1534
    :catchall_5b
    move-exception v6

    .line 1523
    :cond_5c
    :goto_5c
    return-object v5

    .line 1530
    .end local v3    # "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    :catchall_5d
    move-exception v3

    goto :goto_aa

    .line 1525
    :catch_5f
    move-exception v3

    goto :goto_7b

    .line 1499
    :catch_61
    move-exception v3

    .line 1500
    .local v3, "e":Ljava/io/IOException;
    :try_start_62
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x64

    invoke-direct {v4, v7, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local p0    # "apkFile":Ljava/io/File;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "debugPathName":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v4
    :try_end_7b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_7b} :catch_5f
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_7b} :catch_5f
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_7b} :catch_5f
    .catchall {:try_start_62 .. :try_end_7b} :catchall_5d

    .line 1526
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .local v3, "e":Ljava/lang/Exception;
    .restart local p0    # "apkFile":Ljava/io/File;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "debugPathName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :goto_7b
    :try_start_7b
    const-string v4, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1527
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x66

    invoke-direct {v4, v6, v5, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local p0    # "apkFile":Ljava/io/File;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "debugPathName":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v4
    :try_end_aa
    .catchall {:try_start_7b .. :try_end_aa} :catchall_5d

    .line 1530
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .restart local p0    # "apkFile":Ljava/io/File;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "debugPathName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :goto_aa
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1531
    if-eqz v2, :cond_b4

    .line 1533
    :try_start_af
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    .line 1535
    goto :goto_b4

    .line 1534
    :catchall_b3
    move-exception v4

    .line 1538
    :cond_b4
    :goto_b4
    throw v3
.end method

.method private greylist-max-o parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .registers 15
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1207
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1209
    .local v2, "apkPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1210
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "/mnt/expand/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1211
    const/16 v3, 0x2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1212
    .local v3, "end":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_22

    .line 1210
    .end local v3    # "end":I
    :cond_21
    move-object v7, v0

    .line 1215
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .local v7, "volumeUuid":Ljava/lang/String;
    :goto_22
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1216
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1220
    const/4 v1, 0x0

    .line 1222
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2c
    invoke-virtual {p2, v2}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v3

    move v8, v3

    .line 1223
    .local v8, "cookie":I
    if-eqz v8, :cond_ab

    .line 1227
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {p2, v8, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_39
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2c .. :try_end_39} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_39} :catch_d1
    .catchall {:try_start_2c .. :try_end_39} :catchall_cd

    .line 1230
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_39
    iget-object v1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    invoke-static {p2, v1, v3}, Landroid/content/res/ThemeManagerStub;->createResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1233
    .local v3, "res":Landroid/content/res/Resources;
    new-array v6, v0, [Ljava/lang/String;
    :try_end_42
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_39 .. :try_end_42} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_a1
    .catchall {:try_start_39 .. :try_end_42} :catchall_9b

    .line 1234
    .local v6, "outError":[Ljava/lang/String;
    move-object v1, p0

    move v5, p3

    .end local p3    # "flags":I
    .local v5, "flags":I
    :try_start_44
    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p3

    .line 1235
    .local p3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz p3, :cond_5d

    .line 1240
    invoke-virtual {p3, v7}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p3, v7}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p3, v2}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 1243
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageParser$Package;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)V
    :try_end_58
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_44 .. :try_end_58} :catch_96
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_58} :catch_92
    .catchall {:try_start_44 .. :try_end_58} :catchall_8d

    .line 1245
    nop

    .line 1253
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1245
    return-object p3

    .line 1236
    :cond_5d
    :try_start_5d
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    iget v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1237
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v1, v9}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "flags":I
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    throw v0
    :try_end_8d
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_5d .. :try_end_8d} :catch_96
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_8d} :catch_92
    .catchall {:try_start_5d .. :try_end_8d} :catchall_8d

    .line 1253
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v6    # "outError":[Ljava/lang/String;
    .end local v8    # "cookie":I
    .end local p3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "flags":I
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    :catchall_8d
    move-exception v0

    move-object p3, v0

    move-object v1, v4

    goto/16 :goto_f6

    .line 1249
    :catch_92
    move-exception v0

    move-object p3, v0

    move-object v1, v4

    goto :goto_d4

    .line 1247
    :catch_96
    move-exception v0

    move-object p3, v0

    move-object v1, v4

    goto/16 :goto_f2

    .line 1253
    .end local v5    # "flags":I
    .local p3, "flags":I
    :catchall_9b
    move-exception v0

    move v5, p3

    move-object p3, v0

    move-object v1, v4

    .end local p3    # "flags":I
    .restart local v5    # "flags":I
    goto/16 :goto_f6

    .line 1249
    .end local v5    # "flags":I
    .restart local p3    # "flags":I
    :catch_a1
    move-exception v0

    move v5, p3

    move-object p3, v0

    move-object v1, v4

    .end local p3    # "flags":I
    .restart local v5    # "flags":I
    goto :goto_d4

    .line 1247
    .end local v5    # "flags":I
    .restart local p3    # "flags":I
    :catch_a6
    move-exception v0

    move v5, p3

    move-object p3, v0

    move-object v1, v4

    .end local p3    # "flags":I
    .restart local v5    # "flags":I
    goto :goto_f2

    .line 1224
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "flags":I
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "cookie":I
    .restart local p3    # "flags":I
    :cond_ab
    move v5, p3

    .end local p3    # "flags":I
    .restart local v5    # "flags":I
    :try_start_ac
    new-instance p3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed adding asset path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x65

    invoke-direct {p3, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    throw p3
    :try_end_c7
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_ac .. :try_end_c7} :catch_ca
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c7} :catch_c7
    .catchall {:try_start_ac .. :try_end_c7} :catchall_f4

    .line 1249
    .end local v8    # "cookie":I
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    :catch_c7
    move-exception v0

    move-object p3, v0

    goto :goto_d4

    .line 1247
    :catch_ca
    move-exception v0

    move-object p3, v0

    goto :goto_f2

    .line 1253
    .end local v5    # "flags":I
    .restart local p3    # "flags":I
    :catchall_cd
    move-exception v0

    move v5, p3

    move-object p3, v0

    .end local p3    # "flags":I
    .restart local v5    # "flags":I
    goto :goto_f6

    .line 1249
    .end local v5    # "flags":I
    .restart local p3    # "flags":I
    :catch_d1
    move-exception v0

    move v5, p3

    move-object p3, v0

    .line 1250
    .restart local v5    # "flags":I
    .local p3, "e":Ljava/lang/Exception;
    :goto_d4
    :try_start_d4
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read manifest from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x66

    invoke-direct {v0, v4, v3, p3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    throw v0

    .line 1247
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    .local p3, "flags":I
    :catch_ef
    move-exception v0

    move v5, p3

    move-object p3, v0

    .line 1248
    .restart local v5    # "flags":I
    .local p3, "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_f2
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v5    # "flags":I
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    throw p3
    :try_end_f4
    .catchall {:try_start_d4 .. :try_end_f4} :catchall_f4

    .line 1253
    .end local p3    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkPath":Ljava/lang/String;
    .restart local v5    # "flags":I
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    :catchall_f4
    move-exception v0

    move-object p3, v0

    :goto_f6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1254
    throw p3
.end method

.method private greylist-max-p parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 18
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1867
    const/16 v2, -0x6a

    const/4 v3, 0x0

    :try_start_3
    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v0

    .line 1868
    .local v0, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v8, v4

    .line 1869
    .local v8, "pkgName":Ljava/lang/String;
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v9, v4

    .line 1871
    .local v9, "splitName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_30

    .line 1872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected base APK, but found split "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p5, v6

    .line 1873
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_2f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_2f} :catch_bf

    .line 1874
    return-object v3

    .line 1879
    .end local v0    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_30
    nop

    .line 1881
    new-instance v2, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v2, v8}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1883
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1886
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1888
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    .line 1890
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1891
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v2, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1893
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1895
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v7, :cond_6e

    .line 1896
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1899
    :cond_6e
    const-string v7, "coreApp"

    invoke-interface {p3, v3, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 1901
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1903
    .local v10, "isolatedSplits":Z
    if-eqz v10, :cond_87

    .line 1904
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v11, 0x8000

    or-int/2addr v7, v11

    iput v7, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1907
    :cond_87
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    .line 1909
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v7, v3, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 1910
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 1912
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    if-eqz v3, :cond_a9

    .line 1913
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 1915
    :cond_a9
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v6, v3, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 1917
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1919
    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    return-object v3

    .line 1876
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "splitName":Ljava/lang/String;
    .end local v10    # "isolatedSplits":Z
    :catch_bf
    move-exception v0

    .line 1877
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1878
    return-object v3
.end method

.method private greylist-max-o parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .registers 16
    .param p1, "parentPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1794
    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {p3, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1795
    .local v7, "childPackageName":Ljava/lang/String;
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1796
    const/16 v1, -0x6a

    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1797
    return v9

    .line 1801
    :cond_15
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, -0x6c

    const-string v3, "PackageParser"

    if-eqz v1, :cond_3e

    .line 1802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Child package name cannot be equal to parent package name: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1804
    .local v1, "message":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    aput-object v1, p5, v9

    .line 1806
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1807
    return v9

    .line 1811
    .end local v1    # "message":Ljava/lang/String;
    :cond_3e
    invoke-virtual {p1, v7}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate child package:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1813
    .restart local v1    # "message":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    aput-object v1, p5, v9

    .line 1815
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1816
    return v9

    .line 1820
    .end local v1    # "message":Ljava/lang/String;
    :cond_5f
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v7}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1823
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget v2, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v2, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1824
    iget v2, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v2, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1825
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1826
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1827
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1829
    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1830
    if-nez v1, :cond_8e

    .line 1832
    return v9

    .line 1836
    :cond_8e
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_99

    .line 1837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 1839
    :cond_99
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    iput-object p1, v1, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1842
    return v8
.end method

.method private greylist-max-o parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 47
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/PackageParser$Package;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1944
    .local p2, "acceptedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1947
    const/4 v5, 0x0

    .line 1949
    .local v5, "foundApp":Z
    sget-object v6, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1952
    .local v6, "sa":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 1954
    .local v8, "maxSdkVersion":I
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 1957
    const/4 v9, 0x3

    const/4 v11, 0x1

    if-eqz v8, :cond_24

    sget v12, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v8, v12, :cond_71

    .line 1958
    :cond_24
    invoke-virtual {v6, v10, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 1960
    .local v12, "str":Ljava/lang/String;
    if-eqz v12, :cond_71

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_71

    .line 1961
    invoke-static {v12, v11, v11}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v13

    .line 1962
    .local v13, "nameError":Ljava/lang/String;
    if-eqz v13, :cond_65

    const-string v14, "android"

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v14, 0x1

    if-nez v14, :cond_65

    .line 1963
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p6, v10

    .line 1965
    const/16 v9, -0x6b

    iput v9, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1966
    return-object v0

    .line 1968
    :cond_65
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 1969
    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v2, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 1974
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "nameError":Ljava/lang/String;
    :cond_71
    const/4 v12, -0x1

    const/4 v13, 0x4

    invoke-virtual {v6, v13, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    iput v12, v2, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 1977
    iget-object v12, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v2, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v14, v12, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1979
    const/4 v12, 0x7

    invoke-virtual {v6, v12, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 1982
    .local v14, "targetSandboxVersion":I
    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v14, v15, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 1985
    and-int/lit8 v15, p5, 0x8

    if-eqz v15, :cond_99

    .line 1986
    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x40000

    or-int v0, v0, v17

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_9b

    .line 1985
    :cond_99
    move-object/from16 v16, v0

    .line 1990
    :goto_9b
    const/4 v0, 0x1

    .line 1991
    .local v0, "supportsSmallScreens":I
    const/4 v15, 0x1

    .line 1992
    .local v15, "supportsNormalScreens":I
    const/16 v17, 0x1

    .line 1993
    .local v17, "supportsLargeScreens":I
    const/16 v18, 0x1

    .line 1994
    .local v18, "supportsXLargeScreens":I
    const/16 v19, 0x1

    .line 1995
    .local v19, "resizeable":I
    const/16 v20, 0x1

    .line 1997
    .local v20, "anyDensity":I
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    move/from16 v21, v18

    move/from16 v22, v19

    move/from16 v23, v20

    move-object/from16 v18, v6

    move/from16 v6, v17

    move/from16 v17, v5

    move v5, v15

    move v15, v0

    .line 1998
    .end local v0    # "supportsSmallScreens":I
    .end local v19    # "resizeable":I
    .end local v20    # "anyDensity":I
    .local v5, "supportsNormalScreens":I
    .local v6, "supportsLargeScreens":I
    .local v12, "outerDepth":I
    .local v15, "supportsSmallScreens":I
    .local v17, "foundApp":Z
    .local v18, "sa":Landroid/content/res/TypedArray;
    .local v21, "supportsXLargeScreens":I
    .local v22, "resizeable":I
    .local v23, "anyDensity":I
    :goto_b7
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v19, v0

    .local v19, "type":I
    const-string v10, "PackageParser"

    if-eq v0, v11, :cond_7f0

    move/from16 v11, v19

    .end local v19    # "type":I
    .local v11, "type":I
    if-ne v11, v9, :cond_de

    .line 1999
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v12, :cond_cc

    goto :goto_de

    :cond_cc
    move/from16 v26, v8

    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move v11, v5

    move v12, v6

    goto/16 :goto_7fe

    .line 2000
    :cond_de
    :goto_de
    if-eq v11, v9, :cond_7c7

    if-ne v11, v13, :cond_f4

    .line 2001
    move v11, v5

    move/from16 v26, v8

    move/from16 v25, v9

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move v12, v6

    goto/16 :goto_7d9

    .line 2004
    :cond_f4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, "tagName":Ljava/lang/String;
    const-string v13, " "

    const-string v9, " at "

    if-eqz v7, :cond_149

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_149

    .line 2007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsupported element under <manifest>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2009
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2007
    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2011
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v11, v5

    move/from16 v26, v8

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    const/16 v25, 0x3

    move v12, v6

    goto/16 :goto_7d9

    .line 2014
    :cond_149
    const-string v2, "application"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 2015
    if-eqz v17, :cond_171

    .line 2021
    const-string v2, "<manifest> has more than one <application>"

    invoke-static {v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2023
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v11, v5

    move/from16 v26, v8

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    const/16 v25, 0x3

    move v12, v6

    goto/16 :goto_7d9

    .line 2027
    :cond_171
    const/4 v9, 0x1

    .line 2028
    .end local v17    # "foundApp":Z
    .local v9, "foundApp":Z
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v10, v5

    move/from16 v17, v6

    move/from16 v5, p5

    move-object/from16 v6, p6

    .end local v5    # "supportsNormalScreens":I
    .end local v6    # "supportsLargeScreens":I
    .local v10, "supportsNormalScreens":I
    .local v17, "supportsLargeScreens":I
    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_184

    .line 2029
    return-object v16

    .line 2028
    :cond_184
    move/from16 v26, v8

    move v5, v10

    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v6, v17

    const/16 v25, 0x3

    move/from16 v17, v9

    goto/16 :goto_7b8

    .line 2031
    .end local v9    # "foundApp":Z
    .end local v10    # "supportsNormalScreens":I
    .restart local v5    # "supportsNormalScreens":I
    .restart local v6    # "supportsLargeScreens":I
    .local v17, "foundApp":Z
    :cond_195
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v7, v5

    move v5, v6

    move-object/from16 v6, p6

    .end local v6    # "supportsLargeScreens":I
    .local v5, "supportsLargeScreens":I
    .local v7, "supportsNormalScreens":I
    move/from16 v26, v5

    .end local v5    # "supportsLargeScreens":I
    .local v26, "supportsLargeScreens":I
    const-string/jumbo v5, "overlay"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v27, v0

    .end local v0    # "tagName":Ljava/lang/String;
    .local v27, "tagName":Ljava/lang/String;
    const/4 v0, 0x2

    if-eqz v5, :cond_265

    .line 2032
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2034
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 2036
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    .line 2038
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    .line 2040
    const/4 v0, 0x0

    invoke-virtual {v5, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 2043
    const/4 v9, 0x4

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    .line 2046
    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2049
    .local v0, "propName":Ljava/lang/String;
    const/4 v9, 0x6

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2052
    .local v9, "propValue":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2054
    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    move-object/from16 v18, v5

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    const/16 v5, -0x6c

    if-nez v13, :cond_1f1

    .line 2055
    const-string v10, "<overlay> does not specify a target package"

    const/16 v20, 0x0

    aput-object v10, v6, v20

    .line 2056
    iput v5, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2057
    return-object v16

    .line 2060
    :cond_1f1
    iget v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v13, :cond_25a

    iget v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v5, 0x270f

    if-le v13, v5, :cond_1fc

    goto :goto_25a

    .line 2068
    :cond_1fc
    invoke-static {v0, v9}, Landroid/content/pm/PackageParser;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23f

    .line 2069
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping target and overlay pair "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " and "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": overlay ignored due to required system property: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " with value: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const/16 v5, -0x7d

    iput v5, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2073
    return-object v16

    .line 2076
    :cond_23f
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v13, 0x10000000

    or-int/2addr v10, v13

    iput v10, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2079
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2081
    .end local v0    # "propName":Ljava/lang/String;
    .end local v9    # "propValue":Ljava/lang/String;
    move v5, v7

    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v6, v26

    const/16 v25, 0x3

    move/from16 v26, v8

    goto/16 :goto_7b8

    .line 2061
    .restart local v0    # "propName":Ljava/lang/String;
    .restart local v9    # "propValue":Ljava/lang/String;
    :cond_25a
    :goto_25a
    const-string v5, "<overlay> priority must be between 0 and 9999"

    const/16 v20, 0x0

    aput-object v5, v6, v20

    .line 2062
    const/16 v5, -0x6c

    iput v5, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2064
    return-object v16

    .line 2081
    .end local v0    # "propName":Ljava/lang/String;
    .end local v9    # "propValue":Ljava/lang/String;
    :cond_265
    move-object/from16 v5, v27

    .end local v27    # "tagName":Ljava/lang/String;
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "key-sets"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28c

    .line 2082
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_277

    .line 2083
    return-object v16

    .line 2082
    :cond_277
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v12, v26

    const/16 v25, 0x3

    move v11, v7

    move/from16 v26, v8

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_7b0

    .line 2085
    :cond_28c
    const-string/jumbo v0, "permission-group"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 2086
    move-object v0, v5

    move-object v5, v4

    move-object v4, v3

    move/from16 v3, p5

    .end local v5    # "tagName":Ljava/lang/String;
    .local v0, "tagName":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v9

    move-object v3, v4

    move-object v4, v5

    if-nez v9, :cond_2a3

    .line 2087
    return-object v16

    .line 2086
    :cond_2a3
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v12, v26

    const/16 v25, 0x3

    move v11, v7

    move/from16 v26, v8

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_7b0

    .line 2089
    .end local v0    # "tagName":Ljava/lang/String;
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_2b8
    move-object v0, v5

    move/from16 v5, v26

    .end local v26    # "supportsLargeScreens":I
    .restart local v0    # "tagName":Ljava/lang/String;
    .local v5, "supportsLargeScreens":I
    move/from16 v26, v8

    .end local v8    # "maxSdkVersion":I
    .local v26, "maxSdkVersion":I
    const-string/jumbo v8, "permission"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2df

    .line 2090
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2cd

    .line 2091
    return-object v16

    .line 2090
    :cond_2cd
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    move v12, v5

    move v11, v7

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_7b0

    .line 2093
    :cond_2df
    const-string/jumbo v8, "permission-tree"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_301

    .line 2094
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2ef

    .line 2095
    return-object v16

    .line 2094
    :cond_2ef
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    move v12, v5

    move v11, v7

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_7b0

    .line 2097
    :cond_301
    const-string/jumbo v8, "uses-permission"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_323

    .line 2098
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v8

    if-nez v8, :cond_311

    .line 2099
    return-object v16

    .line 2098
    :cond_311
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    move v12, v5

    move v11, v7

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_7b0

    .line 2101
    :cond_323
    const-string/jumbo v8, "uses-permission-sdk-m"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_794

    .line 2102
    const-string/jumbo v8, "uses-permission-sdk-23"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_348

    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    move-object v14, v0

    move v12, v5

    move v11, v7

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    goto/16 :goto_7a5

    .line 2106
    :cond_348
    const-string/jumbo v8, "uses-configuration"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a8

    .line 2107
    new-instance v8, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v8}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2108
    .local v8, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2110
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v8, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 2113
    move/from16 v19, v11

    const/4 v13, 0x1

    .end local v11    # "type":I
    .restart local v19    # "type":I
    invoke-virtual {v9, v13, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v8, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 2116
    const/4 v11, 0x2

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-eqz v18, :cond_378

    .line 2119
    iget v11, v8, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v11, v13

    iput v11, v8, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2121
    :cond_378
    const/4 v11, 0x3

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v8, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 2124
    const/4 v11, 0x4

    invoke-virtual {v9, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_38e

    .line 2127
    iget v10, v8, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    const/16 v27, 0x2

    or-int/lit8 v10, v10, 0x2

    iput v10, v8, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2129
    :cond_38e
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2130
    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v10, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2132
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2134
    .end local v8    # "cPref":Landroid/content/pm/ConfigurationInfo;
    move v6, v5

    move v5, v7

    move-object/from16 v18, v9

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    goto/16 :goto_7b8

    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v19    # "type":I
    .restart local v11    # "type":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_3a8
    move/from16 v19, v11

    .end local v11    # "type":I
    .restart local v19    # "type":I
    const-string/jumbo v8, "uses-feature"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3e7

    .line 2135
    invoke-direct {v1, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v8

    .line 2136
    .local v8, "fi":Landroid/content/pm/FeatureInfo;
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 2138
    iget-object v9, v8, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v9, :cond_3d4

    .line 2139
    new-instance v9, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v9}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2140
    .local v9, "cPref":Landroid/content/pm/ConfigurationInfo;
    iget v10, v8, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v10, v9, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 2141
    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2144
    .end local v9    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_3d4
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2146
    .end local v8    # "fi":Landroid/content/pm/FeatureInfo;
    move v11, v7

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    const/16 v25, 0x3

    move v12, v5

    goto/16 :goto_7b0

    :cond_3e7
    const-string v11, "feature-group"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4cf

    .line 2147
    new-instance v11, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v11}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 2148
    .local v11, "group":Landroid/content/pm/FeatureGroupInfo;
    const/16 v27, 0x0

    .line 2149
    .local v27, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    move-object/from16 v30, v0

    .end local v0    # "tagName":Ljava/lang/String;
    .local v30, "tagName":Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    move/from16 v31, v12

    move-object/from16 v12, v27

    .line 2150
    .end local v27    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v0, "innerDepth":I
    .local v12, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v31, "outerDepth":I
    :goto_400
    move/from16 v32, v14

    .end local v14    # "targetSandboxVersion":I
    .local v32, "targetSandboxVersion":I
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move/from16 v27, v14

    move/from16 v33, v5

    const/4 v5, 0x1

    .end local v5    # "supportsLargeScreens":I
    .end local v19    # "type":I
    .local v27, "type":I
    .local v33, "supportsLargeScreens":I
    if-eq v14, v5, :cond_4a1

    move-object/from16 v14, v30

    .end local v30    # "tagName":Ljava/lang/String;
    .local v14, "tagName":Ljava/lang/String;
    move/from16 v29, v7

    move/from16 v5, v27

    const/4 v7, 0x3

    .end local v7    # "supportsNormalScreens":I
    .end local v27    # "type":I
    .local v5, "type":I
    .local v29, "supportsNormalScreens":I
    if-ne v5, v7, :cond_423

    .line 2151
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_41d

    goto :goto_423

    :cond_41d
    move/from16 v27, v0

    move/from16 v28, v5

    goto/16 :goto_4a9

    .line 2152
    :cond_423
    :goto_423
    const/4 v7, 0x3

    if-eq v5, v7, :cond_48f

    const/4 v7, 0x4

    if-ne v5, v7, :cond_42e

    .line 2153
    move/from16 v27, v0

    move/from16 v28, v5

    goto :goto_493

    .line 2156
    :cond_42e
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2157
    .local v7, "innerTagName":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_44e

    .line 2158
    move/from16 v27, v0

    .end local v0    # "innerDepth":I
    .local v27, "innerDepth":I
    invoke-direct {v1, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 2161
    .local v0, "featureInfo":Landroid/content/pm/FeatureInfo;
    move/from16 v28, v5

    .end local v5    # "type":I
    .local v28, "type":I
    iget v5, v0, Landroid/content/pm/FeatureInfo;->flags:I

    const/16 v19, 0x1

    or-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2162
    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2163
    .end local v12    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v0, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    move-object v12, v0

    goto :goto_47e

    .line 2164
    .end local v27    # "innerDepth":I
    .end local v28    # "type":I
    .local v0, "innerDepth":I
    .restart local v5    # "type":I
    .restart local v12    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    :cond_44e
    move/from16 v27, v0

    move/from16 v28, v5

    .end local v0    # "innerDepth":I
    .end local v5    # "type":I
    .restart local v27    # "innerDepth":I
    .restart local v28    # "type":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <feature-group>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2166
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2164
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :goto_47e
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2169
    .end local v7    # "innerTagName":Ljava/lang/String;
    move-object/from16 v30, v14

    move/from16 v0, v27

    move/from16 v19, v28

    move/from16 v7, v29

    move/from16 v14, v32

    move/from16 v5, v33

    goto/16 :goto_400

    .line 2152
    .end local v27    # "innerDepth":I
    .end local v28    # "type":I
    .restart local v0    # "innerDepth":I
    .restart local v5    # "type":I
    :cond_48f
    move/from16 v27, v0

    move/from16 v28, v5

    .line 2150
    .end local v0    # "innerDepth":I
    .end local v5    # "type":I
    .restart local v27    # "innerDepth":I
    .restart local v28    # "type":I
    :goto_493
    move-object/from16 v30, v14

    move/from16 v0, v27

    move/from16 v19, v28

    move/from16 v7, v29

    move/from16 v14, v32

    move/from16 v5, v33

    goto/16 :goto_400

    .end local v14    # "tagName":Ljava/lang/String;
    .end local v28    # "type":I
    .end local v29    # "supportsNormalScreens":I
    .restart local v0    # "innerDepth":I
    .local v7, "supportsNormalScreens":I
    .local v27, "type":I
    .restart local v30    # "tagName":Ljava/lang/String;
    :cond_4a1
    move/from16 v29, v7

    move/from16 v28, v27

    move-object/from16 v14, v30

    move/from16 v27, v0

    .line 2171
    .end local v0    # "innerDepth":I
    .end local v7    # "supportsNormalScreens":I
    .end local v30    # "tagName":Ljava/lang/String;
    .restart local v14    # "tagName":Ljava/lang/String;
    .local v27, "innerDepth":I
    .restart local v28    # "type":I
    .restart local v29    # "supportsNormalScreens":I
    :goto_4a9
    if-eqz v12, :cond_4bd

    .line 2172
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/FeatureInfo;

    iput-object v0, v11, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2173
    iget-object v0, v11, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/FeatureInfo;

    iput-object v0, v11, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2175
    :cond_4bd
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-static {v0, v11}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 2177
    .end local v11    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v12    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .end local v27    # "innerDepth":I
    move/from16 v19, v28

    move/from16 v5, v29

    move/from16 v6, v33

    const/16 v25, 0x3

    goto/16 :goto_7b8

    .end local v28    # "type":I
    .end local v29    # "supportsNormalScreens":I
    .end local v31    # "outerDepth":I
    .end local v32    # "targetSandboxVersion":I
    .end local v33    # "supportsLargeScreens":I
    .local v0, "tagName":Ljava/lang/String;
    .local v5, "supportsLargeScreens":I
    .restart local v7    # "supportsNormalScreens":I
    .local v12, "outerDepth":I
    .local v14, "targetSandboxVersion":I
    .restart local v19    # "type":I
    :cond_4cf
    move/from16 v33, v5

    move/from16 v29, v7

    move/from16 v31, v12

    move/from16 v32, v14

    move-object v14, v0

    .end local v0    # "tagName":Ljava/lang/String;
    .end local v5    # "supportsLargeScreens":I
    .end local v7    # "supportsNormalScreens":I
    .end local v12    # "outerDepth":I
    .local v14, "tagName":Ljava/lang/String;
    .restart local v29    # "supportsNormalScreens":I
    .restart local v31    # "outerDepth":I
    .restart local v32    # "targetSandboxVersion":I
    .restart local v33    # "supportsLargeScreens":I
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_559

    .line 2178
    sget v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v0, :cond_54e

    .line 2179
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2182
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    .line 2183
    .local v5, "minVers":I
    const/4 v7, 0x0

    .line 2184
    .local v7, "minCode":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2185
    .local v8, "targetVers":I
    const/4 v9, 0x0

    .line 2187
    .local v9, "targetCode":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 2189
    .local v11, "val":Landroid/util/TypedValue;
    if-eqz v11, :cond_508

    .line 2190
    iget v10, v11, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x3

    if-ne v10, v12, :cond_506

    iget-object v10, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v10, :cond_506

    .line 2191
    iget-object v10, v11, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_508

    .line 2194
    :cond_506
    iget v5, v11, Landroid/util/TypedValue;->data:I

    .line 2198
    :cond_508
    :goto_508
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    .line 2200
    .end local v11    # "val":Landroid/util/TypedValue;
    .local v10, "val":Landroid/util/TypedValue;
    if-eqz v10, :cond_525

    .line 2201
    iget v11, v10, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_522

    iget-object v11, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v11, :cond_522

    .line 2202
    iget-object v11, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2203
    if-nez v7, :cond_527

    .line 2204
    move-object v7, v9

    goto :goto_527

    .line 2208
    :cond_522
    iget v8, v10, Landroid/util/TypedValue;->data:I

    goto :goto_527

    .line 2211
    :cond_525
    move v8, v5

    .line 2212
    move-object v9, v7

    .line 2215
    :cond_527
    :goto_527
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2217
    sget v11, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    sget-object v12, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v5, v7, v11, v12, v6}, Landroid/content/pm/PackageParser;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 2219
    .local v11, "minSdkVersion":I
    const/16 v12, -0xc

    if-gez v11, :cond_539

    .line 2220
    iput v12, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2221
    return-object v16

    .line 2224
    :cond_539
    sget-object v13, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v8, v9, v13, v6}, Landroid/content/pm/PackageParser;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 2226
    .local v13, "targetSdkVersion":I
    if-gez v13, :cond_544

    .line 2227
    iput v12, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2228
    return-object v16

    .line 2231
    :cond_544
    iget-object v12, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v11, v12, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2232
    iget-object v12, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v18, v0

    .line 2235
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "minVers":I
    .end local v7    # "minCode":Ljava/lang/String;
    .end local v8    # "targetVers":I
    .end local v9    # "targetCode":Ljava/lang/String;
    .end local v10    # "val":Landroid/util/TypedValue;
    .end local v11    # "minSdkVersion":I
    .end local v13    # "targetSdkVersion":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_54e
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move/from16 v5, v29

    move/from16 v6, v33

    const/16 v25, 0x3

    goto/16 :goto_7b8

    .line 2237
    :cond_559
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c2

    .line 2238
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2241
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v5, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2244
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x7

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v5, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2247
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v8, 0x8

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v5, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2253
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 2256
    .end local v15    # "supportsSmallScreens":I
    .local v5, "supportsSmallScreens":I
    move/from16 v11, v29

    const/4 v9, 0x2

    .end local v29    # "supportsNormalScreens":I
    .local v11, "supportsNormalScreens":I
    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 2259
    .end local v11    # "supportsNormalScreens":I
    .local v9, "supportsNormalScreens":I
    move/from16 v12, v33

    const/4 v10, 0x3

    .end local v33    # "supportsLargeScreens":I
    .local v12, "supportsLargeScreens":I
    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 2262
    .end local v12    # "supportsLargeScreens":I
    .local v11, "supportsLargeScreens":I
    move/from16 v12, v21

    const/4 v13, 0x5

    .end local v21    # "supportsXLargeScreens":I
    .local v12, "supportsXLargeScreens":I
    invoke-virtual {v0, v13, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 2265
    move/from16 v13, v22

    const/4 v15, 0x4

    .end local v22    # "resizeable":I
    .local v13, "resizeable":I
    invoke-virtual {v0, v15, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 2268
    move/from16 v15, v23

    const/4 v7, 0x0

    .end local v23    # "anyDensity":I
    .local v15, "anyDensity":I
    invoke-virtual {v0, v7, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    .line 2272
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2274
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v18, v0

    move/from16 v25, v10

    move v6, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v23, v15

    move v15, v5

    move v5, v9

    goto/16 :goto_7b8

    .line 2276
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "supportsSmallScreens":I
    .end local v9    # "supportsNormalScreens":I
    .end local v11    # "supportsLargeScreens":I
    .end local v12    # "supportsXLargeScreens":I
    .end local v13    # "resizeable":I
    .local v15, "supportsSmallScreens":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "supportsXLargeScreens":I
    .restart local v22    # "resizeable":I
    .restart local v23    # "anyDensity":I
    .restart local v29    # "supportsNormalScreens":I
    .restart local v33    # "supportsLargeScreens":I
    :cond_5c2
    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v11, v29

    move/from16 v12, v33

    const/4 v8, 0x1

    const/16 v25, 0x3

    .end local v23    # "anyDensity":I
    .end local v29    # "supportsNormalScreens":I
    .end local v33    # "supportsLargeScreens":I
    .local v7, "supportsXLargeScreens":I
    .local v11, "supportsNormalScreens":I
    .local v12, "supportsLargeScreens":I
    .local v21, "resizeable":I
    .local v22, "anyDensity":I
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_613

    .line 2277
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2282
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2285
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2287
    if-eqz v5, :cond_604

    .line 2288
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v9, :cond_5f3

    .line 2289
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 2291
    :cond_5f3
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_604

    .line 2292
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2296
    :cond_604
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2298
    .end local v5    # "name":Ljava/lang/String;
    move-object/from16 v18, v0

    move v5, v11

    move v6, v12

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v7

    goto/16 :goto_7b8

    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_613
    const-string/jumbo v0, "instrumentation"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_623

    .line 2299
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v0

    if-nez v0, :cond_7b0

    .line 2300
    return-object v16

    .line 2302
    :cond_623
    const-string/jumbo v0, "original-package"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_665

    .line 2303
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2306
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2308
    .local v5, "orig":Ljava/lang/String;
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_653

    .line 2309
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v9, :cond_64e

    .line 2310
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 2311
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 2313
    :cond_64e
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2316
    :cond_653
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2318
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2320
    .end local v5    # "orig":Ljava/lang/String;
    move-object/from16 v18, v0

    move v5, v11

    move v6, v12

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v7

    goto/16 :goto_7b8

    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_665
    const-string v0, "adopt-permissions"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69c

    .line 2321
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAdoptPermissions:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2324
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2327
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2329
    if-eqz v5, :cond_68d

    .line 2330
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v9, :cond_688

    .line 2331
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 2333
    :cond_688
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2336
    :cond_68d
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2338
    .end local v5    # "name":Ljava/lang/String;
    move-object/from16 v18, v0

    move v5, v11

    move v6, v12

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v7

    goto/16 :goto_7b8

    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_69c
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6aa

    .line 2340
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2341
    goto/16 :goto_7d9

    .line 2343
    :cond_6aa
    const-string v0, "compatible-screens"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b7

    .line 2345
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2346
    goto/16 :goto_7d9

    .line 2347
    :cond_6b7
    const-string/jumbo v0, "supports-input"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c5

    .line 2348
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2349
    goto/16 :goto_7d9

    .line 2351
    :cond_6c5
    const-string v0, "eat-comment"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d2

    .line 2353
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2354
    goto/16 :goto_7d9

    .line 2356
    :cond_6d2
    const-string/jumbo v0, "package"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6ed

    .line 2357
    sget-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    if-nez v0, :cond_6e4

    .line 2358
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2359
    goto/16 :goto_7d9

    .line 2361
    :cond_6e4
    move/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7b0

    .line 2363
    return-object v16

    .line 2366
    :cond_6ed
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75e

    .line 2367
    and-int/lit8 v0, p5, 0x10

    if-eqz v0, :cond_750

    .line 2368
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2370
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2372
    .local v5, "hash":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2374
    move-object/from16 v6, v16

    iput-object v6, v2, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2375
    if-eqz v5, :cond_74c

    .line 2376
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 2377
    .local v6, "hashLength":I
    div-int/lit8 v9, v6, 0x2

    new-array v9, v9, [B

    .line 2378
    .local v9, "hashBytes":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_717
    if-ge v10, v6, :cond_745

    .line 2379
    div-int/lit8 v13, v10, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v18, v0

    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    const/16 v0, 0x10

    invoke-static {v8, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    const/16 v24, 0x4

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v10, 0x1

    .line 2380
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move-object/from16 v27, v5

    const/16 v5, 0x10

    .end local v5    # "hash":Ljava/lang/String;
    .local v27, "hash":Ljava/lang/String;
    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    add-int/2addr v8, v0

    int-to-byte v0, v8

    aput-byte v0, v9, v13

    .line 2378
    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, v18

    move-object/from16 v5, v27

    const/4 v8, 0x1

    goto :goto_717

    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .end local v27    # "hash":Ljava/lang/String;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "hash":Ljava/lang/String;
    :cond_745
    move-object/from16 v18, v0

    move-object/from16 v27, v5

    .line 2382
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "hash":Ljava/lang/String;
    .end local v10    # "i":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v27    # "hash":Ljava/lang/String;
    iput-object v9, v2, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    goto :goto_750

    .line 2375
    .end local v6    # "hashLength":I
    .end local v9    # "hashBytes":[B
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .end local v27    # "hash":Ljava/lang/String;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "hash":Ljava/lang/String;
    :cond_74c
    move-object/from16 v18, v0

    move-object/from16 v27, v5

    .line 2386
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "hash":Ljava/lang/String;
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :cond_750
    :goto_750
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v5, v11

    move v6, v12

    move/from16 v23, v22

    const/16 v16, 0x0

    move/from16 v22, v21

    move/from16 v21, v7

    goto :goto_7b8

    .line 2395
    :cond_75e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <manifest>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2397
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2395
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2399
    const/16 v16, 0x0

    goto :goto_7d9

    .line 2101
    .end local v19    # "type":I
    .end local v31    # "outerDepth":I
    .end local v32    # "targetSandboxVersion":I
    .local v0, "tagName":Ljava/lang/String;
    .local v5, "supportsLargeScreens":I
    .local v7, "supportsNormalScreens":I
    .local v11, "type":I
    .local v12, "outerDepth":I
    .local v14, "targetSandboxVersion":I
    .local v21, "supportsXLargeScreens":I
    .local v22, "resizeable":I
    .restart local v23    # "anyDensity":I
    :cond_794
    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    const/16 v25, 0x3

    move-object v14, v0

    move v12, v5

    move v11, v7

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    .line 2103
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v5    # "supportsLargeScreens":I
    .end local v23    # "anyDensity":I
    .local v7, "supportsXLargeScreens":I
    .local v11, "supportsNormalScreens":I
    .local v12, "supportsLargeScreens":I
    .local v14, "tagName":Ljava/lang/String;
    .restart local v19    # "type":I
    .local v21, "resizeable":I
    .local v22, "anyDensity":I
    .restart local v31    # "outerDepth":I
    .restart local v32    # "targetSandboxVersion":I
    :goto_7a5
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_7ae

    .line 2104
    const/16 v16, 0x0

    return-object v16

    .line 2103
    :cond_7ae
    const/16 v16, 0x0

    .line 2401
    .end local v19    # "type":I
    .end local v31    # "outerDepth":I
    .end local v32    # "targetSandboxVersion":I
    .local v7, "supportsNormalScreens":I
    .local v8, "maxSdkVersion":I
    .local v11, "type":I
    .local v12, "outerDepth":I
    .local v14, "targetSandboxVersion":I
    .local v21, "supportsXLargeScreens":I
    .local v22, "resizeable":I
    .restart local v23    # "anyDensity":I
    .local v26, "supportsLargeScreens":I
    :cond_7b0
    :goto_7b0
    move v5, v11

    move v6, v12

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v7

    .end local v7    # "supportsNormalScreens":I
    .end local v8    # "maxSdkVersion":I
    .end local v11    # "type":I
    .end local v12    # "outerDepth":I
    .end local v14    # "targetSandboxVersion":I
    .local v5, "supportsNormalScreens":I
    .local v6, "supportsLargeScreens":I
    .restart local v19    # "type":I
    .local v26, "maxSdkVersion":I
    .restart local v31    # "outerDepth":I
    .restart local v32    # "targetSandboxVersion":I
    :goto_7b8
    move-object/from16 v7, p2

    move/from16 v9, v25

    move/from16 v8, v26

    move/from16 v12, v31

    move/from16 v14, v32

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x4

    goto/16 :goto_b7

    .line 2000
    .end local v19    # "type":I
    .end local v26    # "maxSdkVersion":I
    .end local v31    # "outerDepth":I
    .end local v32    # "targetSandboxVersion":I
    .restart local v8    # "maxSdkVersion":I
    .restart local v11    # "type":I
    .restart local v12    # "outerDepth":I
    .restart local v14    # "targetSandboxVersion":I
    :cond_7c7
    move/from16 v26, v8

    move/from16 v25, v9

    move/from16 v19, v11

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move v11, v5

    move v12, v6

    .line 1998
    .end local v5    # "supportsNormalScreens":I
    .end local v6    # "supportsLargeScreens":I
    .end local v8    # "maxSdkVersion":I
    .end local v14    # "targetSandboxVersion":I
    .end local v23    # "anyDensity":I
    .local v7, "supportsXLargeScreens":I
    .local v11, "supportsNormalScreens":I
    .local v12, "supportsLargeScreens":I
    .local v21, "resizeable":I
    .local v22, "anyDensity":I
    .restart local v26    # "maxSdkVersion":I
    .restart local v31    # "outerDepth":I
    .restart local v32    # "targetSandboxVersion":I
    :goto_7d9
    move v5, v11

    move v6, v12

    move/from16 v23, v22

    move/from16 v9, v25

    move/from16 v8, v26

    move/from16 v12, v31

    move/from16 v14, v32

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x4

    move/from16 v22, v21

    move/from16 v21, v7

    move-object/from16 v7, p2

    goto/16 :goto_b7

    .end local v7    # "supportsXLargeScreens":I
    .end local v11    # "supportsNormalScreens":I
    .end local v26    # "maxSdkVersion":I
    .end local v31    # "outerDepth":I
    .end local v32    # "targetSandboxVersion":I
    .restart local v5    # "supportsNormalScreens":I
    .restart local v6    # "supportsLargeScreens":I
    .restart local v8    # "maxSdkVersion":I
    .local v12, "outerDepth":I
    .restart local v14    # "targetSandboxVersion":I
    .restart local v19    # "type":I
    .local v21, "supportsXLargeScreens":I
    .local v22, "resizeable":I
    .restart local v23    # "anyDensity":I
    :cond_7f0
    move v11, v5

    move/from16 v26, v8

    move/from16 v31, v12

    move/from16 v32, v14

    move/from16 v7, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move v12, v6

    .line 2403
    .end local v5    # "supportsNormalScreens":I
    .end local v6    # "supportsLargeScreens":I
    .end local v8    # "maxSdkVersion":I
    .end local v14    # "targetSandboxVersion":I
    .end local v23    # "anyDensity":I
    .restart local v7    # "supportsXLargeScreens":I
    .restart local v11    # "supportsNormalScreens":I
    .local v12, "supportsLargeScreens":I
    .local v21, "resizeable":I
    .local v22, "anyDensity":I
    .restart local v26    # "maxSdkVersion":I
    .restart local v31    # "outerDepth":I
    .restart local v32    # "targetSandboxVersion":I
    :goto_7fe
    if-nez v17, :cond_812

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_812

    .line 2404
    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const/16 v20, 0x0

    aput-object v0, p6, v20

    .line 2405
    const/16 v0, -0x6d

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2408
    :cond_812
    sget-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v5, v0

    .line 2409
    .local v5, "NP":I
    const/4 v0, 0x0

    .line 2410
    .local v0, "newPermsMsg":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    move/from16 v39, v6

    move-object v6, v0

    move/from16 v0, v39

    .local v0, "ip":I
    .local v6, "newPermsMsg":Ljava/lang/StringBuilder;
    :goto_81c
    if-ge v0, v5, :cond_865

    .line 2411
    sget-object v8, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v8, v8, v0

    .line 2413
    .local v8, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v13, v8, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v9, v13, :cond_82b

    .line 2414
    goto :goto_865

    .line 2416
    :cond_82b
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v13, v8, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_862

    .line 2417
    if-nez v6, :cond_84a

    .line 2418
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v13, 0x80

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v9

    .line 2419
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    const-string v9, ": compat added "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_84f

    .line 2422
    :cond_84a
    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2424
    :goto_84f
    iget-object v9, v8, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v13, v8, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2426
    iget-object v9, v2, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    iget-object v13, v8, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2410
    .end local v8    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_862
    add-int/lit8 v0, v0, 0x1

    goto :goto_81c

    .line 2429
    .end local v0    # "ip":I
    :cond_865
    :goto_865
    if-eqz v6, :cond_86e

    .line 2430
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    :cond_86e
    :try_start_86e
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    .line 2438
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/permission/IPermissionManager;->getSplitPermissions(Z)Ljava/util/List;

    move-result-object v0
    :try_end_877
    .catch Landroid/os/RemoteException; {:try_start_86e .. :try_end_877} :catch_878

    .line 2441
    .local v0, "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    goto :goto_87e

    .line 2439
    .end local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :catch_878
    move-exception v0

    .line 2440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object v0, v8

    .line 2443
    .local v0, "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :goto_87e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 2444
    .local v8, "splitPermissionsSize":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2446
    .local v9, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_888
    if-ge v10, v8, :cond_8b2

    .line 2447
    nop

    .line 2448
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 2449
    .local v13, "splitPermissionParcelable":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    new-instance v33, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 2450
    invoke-virtual {v13}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v34

    .line 2451
    invoke-virtual {v13}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v35

    .line 2452
    invoke-virtual {v13}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getTargetSdk()I

    move-result v36

    .line 2453
    invoke-virtual {v13}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getFeatureFlag()Ljava/lang/String;

    move-result-object v37

    .line 2454
    invoke-virtual {v13}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->isFeatureFlagNegated()Z

    move-result v38

    invoke-direct/range {v33 .. v38}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Z)V

    .line 2449
    move-object/from16 v14, v33

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2446
    .end local v13    # "splitPermissionParcelable":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    add-int/lit8 v10, v10, 0x1

    goto :goto_888

    .line 2458
    .end local v10    # "index":I
    :cond_8b2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 2459
    .local v10, "listSize":I
    const/4 v13, 0x0

    .local v13, "is":I
    :goto_8b7
    if-ge v13, v10, :cond_90f

    .line 2460
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 2461
    .local v14, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    move-object/from16 v16, v0

    .end local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .local v16, "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v1

    if-ge v0, v1, :cond_906

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 2462
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d8

    .line 2463
    goto :goto_906

    .line 2465
    :cond_8d8
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v0

    .line 2466
    .local v0, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "in":I
    :goto_8dd
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_904

    .line 2467
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2468
    .local v3, "perm":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8fd

    .line 2469
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2470
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2466
    .end local v3    # "perm":Ljava/lang/String;
    :cond_8fd
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, p3

    move-object/from16 v0, v20

    goto :goto_8dd

    .end local v20    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_904
    move-object/from16 v20, v0

    .line 2459
    .end local v0    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "in":I
    .end local v14    # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    :cond_906
    :goto_906
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v0, v16

    goto :goto_8b7

    .end local v16    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .local v0, "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :cond_90f
    move-object/from16 v16, v0

    .line 2475
    .end local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .end local v13    # "is":I
    .restart local v16    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    if-ltz v15, :cond_91c

    if-lez v15, :cond_924

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_924

    .line 2478
    :cond_91c
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2480
    :cond_924
    if-eqz v11, :cond_92e

    .line 2481
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2483
    :cond_92e
    if-ltz v12, :cond_939

    if-lez v12, :cond_941

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_941

    .line 2486
    :cond_939
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2488
    :cond_941
    if-ltz v7, :cond_94d

    if-lez v7, :cond_956

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_956

    .line 2491
    :cond_94d
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2493
    :cond_956
    if-ltz v21, :cond_961

    if-lez v21, :cond_969

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_969

    .line 2496
    :cond_961
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2498
    :cond_969
    if-ltz v22, :cond_974

    if-lez v22, :cond_97c

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_97c

    .line 2501
    :cond_974
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2507
    :cond_97c
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->usesCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_987

    .line 2508
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V

    .line 2511
    :cond_987
    return-object v2
.end method

.method private greylist parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .registers 40
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3421
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3423
    .local v15, "pkgName":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3426
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 3428
    const/16 v6, 0x2a

    invoke-virtual {v5, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 3431
    const/16 v11, 0x16

    const/16 v12, 0x1e

    move v6, v4

    const-string v4, "<application>"

    move v7, v6

    const/4 v6, 0x0

    move v8, v7

    const/4 v7, 0x3

    move v9, v8

    const/4 v8, 0x1

    move v10, v9

    const/4 v9, 0x2

    move/from16 v16, v10

    const/16 v10, 0x2a

    move-object/from16 v3, p5

    move/from16 v13, v16

    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v4

    move-object v8, v1

    move-object v9, v2

    move-object v7, v5

    move-object v5, v3

    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v10, -0x6c

    if-nez v4, :cond_4d

    .line 3439
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3440
    iput v10, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3441
    return v13

    .line 3444
    :cond_4d
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_55

    .line 3445
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 3448
    :cond_55
    const/4 v11, 0x4

    const/16 v1, 0x400

    invoke-virtual {v7, v11, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 3451
    .local v12, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v12, :cond_64

    .line 3452
    invoke-static {v15, v12, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 3456
    :cond_64
    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 3458
    .local v16, "allowBackup":Z
    const/16 v4, 0x10

    const/high16 v18, 0x4000000

    const/16 v2, 0x20

    if-eqz v16, :cond_e1

    .line 3459
    move/from16 v19, v11

    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v20, 0x8000

    or-int v11, v11, v20

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3464
    invoke-virtual {v7, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 3467
    .local v11, "backupAgent":Ljava/lang/String;
    if-eqz v11, :cond_c4

    .line 3468
    invoke-static {v15, v11, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3474
    const/16 v4, 0x12

    invoke-virtual {v7, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 3477
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v21, 0x10000

    or-int v4, v4, v21

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3479
    :cond_9a
    const/16 v4, 0x15

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 3482
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v21, 0x20000

    or-int v4, v4, v21

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3484
    :cond_aa
    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 3487
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v4, v4, v18

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3489
    :cond_b6
    const/16 v4, 0x28

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 3492
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3496
    :cond_c4
    const/16 v4, 0x23

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 3498
    .local v4, "v":Landroid/util/TypedValue;
    if-eqz v4, :cond_de

    move/from16 v21, v2

    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v2, :cond_e5

    .line 3504
    iget v2, v4, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_da

    const/4 v2, -0x1

    goto :goto_db

    :cond_da
    move v2, v13

    :goto_db
    iput v2, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    goto :goto_e5

    .line 3498
    :cond_de
    move/from16 v21, v2

    goto :goto_e5

    .line 3458
    .end local v4    # "v":Landroid/util/TypedValue;
    .end local v11    # "backupAgent":Ljava/lang/String;
    :cond_e1
    move/from16 v21, v2

    move/from16 v19, v11

    .line 3511
    :cond_e5
    :goto_e5
    invoke-virtual {v7, v13, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 3513
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 3516
    const/16 v2, 0x8

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 3520
    const/16 v4, 0x2d

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 3522
    .local v4, "requiredFeature":Ljava/lang/String;
    if-eqz v4, :cond_10b

    iget-object v11, v0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v11, v4}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 3523
    :cond_10b
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v11, v2

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3527
    .end local v4    # "requiredFeature":Ljava/lang/String;
    :cond_110
    const/16 v4, 0x1b

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 3530
    iput-boolean v3, v8, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 3533
    :cond_11a
    const/16 v4, 0x1c

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3535
    .local v11, "restrictedAccountType":Ljava/lang/String;
    if-eqz v11, :cond_12a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_12a

    .line 3536
    iput-object v11, v8, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 3539
    :cond_12a
    const/16 v10, 0x1d

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3541
    .local v2, "requiredAccountType":Ljava/lang/String;
    if-eqz v2, :cond_13a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_13a

    .line 3542
    iput-object v2, v8, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 3545
    :cond_13a
    const/16 v6, 0xa

    invoke-virtual {v7, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_14b

    .line 3548
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v25, v2

    const/4 v2, 0x2

    .end local v2    # "requiredAccountType":Ljava/lang/String;
    .local v25, "requiredAccountType":Ljava/lang/String;
    or-int/2addr v6, v2

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_14e

    .line 3545
    .end local v25    # "requiredAccountType":Ljava/lang/String;
    .restart local v2    # "requiredAccountType":Ljava/lang/String;
    :cond_14b
    move-object/from16 v25, v2

    const/4 v2, 0x2

    .line 3551
    .end local v2    # "requiredAccountType":Ljava/lang/String;
    .restart local v25    # "requiredAccountType":Ljava/lang/String;
    :goto_14e
    const/16 v6, 0x14

    invoke-virtual {v7, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_15c

    .line 3554
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3557
    :cond_15c
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-lt v6, v2, :cond_166

    move v6, v3

    goto :goto_167

    :cond_166
    move v6, v13

    :goto_167
    const/16 v10, 0x17

    invoke-virtual {v7, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v8, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 3560
    iget-boolean v6, v8, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    const/high16 v10, 0x20000000

    if-eqz v6, :cond_17a

    .line 3561
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v6, v10

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3564
    :cond_17a
    const/4 v6, 0x7

    invoke-virtual {v7, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_187

    .line 3567
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3570
    :cond_187
    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_193

    .line 3573
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3576
    :cond_193
    const/4 v2, 0x5

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 3579
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3583
    :cond_1a0
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v2, :cond_1b2

    .line 3584
    const/16 v2, 0xf

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 3587
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3591
    :cond_1b2
    const/16 v2, 0x18

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_1c2

    .line 3594
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v27, 0x100000

    or-int v6, v6, v27

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3597
    :cond_1c2
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v6, v4, :cond_1ca

    move v4, v3

    goto :goto_1cb

    :cond_1ca
    move v4, v13

    :goto_1cb
    const/16 v6, 0x24

    invoke-virtual {v7, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/high16 v6, 0x8000000

    if-eqz v4, :cond_1da

    .line 3600
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v4, v6

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3603
    :cond_1da
    const/16 v4, 0x1a

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/high16 v27, 0x400000

    if-eqz v4, :cond_1ea

    .line 3606
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v4, v4, v27

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3609
    :cond_1ea
    const/16 v4, 0x21

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/high16 v28, -0x80000000

    if-eqz v4, :cond_1fa

    .line 3612
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v4, v4, v28

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3615
    :cond_1fa
    const/16 v4, 0x22

    invoke-virtual {v7, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_20a

    .line 3618
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v29, 0x10000000

    or-int v4, v4, v29

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3621
    :cond_20a
    const/16 v4, 0x35

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/high16 v29, 0x2000000

    if-eqz v4, :cond_21a

    .line 3624
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v4, v4, v29

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3627
    :cond_21a
    const/16 v4, 0x26

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_228

    .line 3630
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3632
    :cond_228
    const/16 v4, 0x27

    invoke-virtual {v7, v4, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_236

    .line 3635
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3638
    :cond_236
    const/16 v4, 0x25

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_253

    .line 3639
    const/16 v2, 0x25

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_24c

    .line 3640
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v2, v1

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_25f

    .line 3642
    :cond_24c
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_25f

    .line 3644
    :cond_253
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v2, :cond_25f

    .line 3645
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3648
    :cond_25f
    :goto_25f
    const/16 v2, 0x36

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_26d

    .line 3652
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v2, v2, v18

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3655
    :cond_26d
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_277

    move v4, v3

    goto :goto_278

    :cond_277
    move v4, v13

    :goto_278
    const/16 v2, 0x37

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_285

    .line 3658
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v2, v6

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3661
    :cond_285
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-ge v2, v4, :cond_28f

    move v4, v3

    goto :goto_290

    :cond_28f
    move v4, v13

    :goto_290
    const/16 v2, 0x38

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_29d

    .line 3664
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v2, v10

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3667
    :cond_29d
    const/16 v2, 0x3b

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_2ab

    .line 3669
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v2, v2, v28

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3672
    :cond_2ab
    const/16 v2, 0x2c

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 3673
    const/16 v2, 0x33

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 3675
    const/16 v2, 0x29

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 3678
    const/16 v2, 0x2b

    const/4 v4, -0x1

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->category:I

    .line 3683
    const/4 v2, 0x6

    invoke-virtual {v7, v2, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 3685
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_2df

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2df

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_2e0

    :cond_2df
    const/4 v6, 0x0

    :goto_2e0
    iput-object v6, v9, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 3687
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x8

    if-lt v6, v10, :cond_2f2

    .line 3688
    const/16 v6, 0xc

    invoke-virtual {v7, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_2f9

    .line 3695
    :cond_2f2
    const/16 v6, 0xc

    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 3698
    .end local v2    # "str":Ljava/lang/String;
    .local v10, "str":Ljava/lang/String;
    :goto_2f9
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v6, v10, v5}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3700
    const/16 v2, 0x30

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 3702
    .local v2, "factory":Ljava/lang/String;
    if-eqz v2, :cond_313

    .line 3703
    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v2, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 3706
    :cond_313
    const/16 v6, 0x31

    invoke-virtual {v7, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_321

    .line 3708
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v6, v6, v27

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3711
    :cond_321
    const/16 v6, 0x32

    invoke-virtual {v7, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_331

    .line 3714
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v18, 0x1000000

    or-int v6, v6, v18

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3717
    :cond_331
    aget-object v6, v5, v13

    if-nez v6, :cond_3a0

    .line 3719
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-lt v6, v3, :cond_345

    .line 3720
    const/16 v3, 0xb

    invoke-virtual {v7, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .local v1, "pname":Ljava/lang/CharSequence;
    goto :goto_34c

    .line 3727
    .end local v1    # "pname":Ljava/lang/CharSequence;
    :cond_345
    const/16 v1, 0xb

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 3730
    .local v3, "pname":Ljava/lang/CharSequence;
    :goto_34c
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v6, v2

    .end local v2    # "factory":Ljava/lang/String;
    .local v6, "factory":Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move/from16 v4, p4

    move-object/from16 v17, v6

    const/4 v13, 0x1

    const/16 v20, 0x10

    move-object/from16 v6, p5

    .end local v6    # "factory":Ljava/lang/String;
    .local v17, "factory":Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3733
    const/16 v1, 0x9

    invoke-virtual {v7, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 3736
    const/16 v1, 0x1f

    const/4 v6, 0x0

    invoke-virtual {v7, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_378

    .line 3738
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v1, v1, v29

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3741
    :cond_378
    const/16 v1, 0x2f

    invoke-virtual {v7, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_39d

    .line 3744
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/16 v31, 0x2

    or-int/lit8 v1, v1, 0x2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3748
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_3a7

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a7

    .line 3749
    const-string v1, "cantSaveState applications can not use custom processes"

    const/16 v18, 0x0

    aput-object v1, p5, v18

    goto :goto_3a7

    .line 3741
    :cond_39d
    const/16 v31, 0x2

    goto :goto_3a7

    .line 3717
    .end local v3    # "pname":Ljava/lang/CharSequence;
    .end local v17    # "factory":Ljava/lang/String;
    .restart local v2    # "factory":Ljava/lang/String;
    :cond_3a0
    move-object/from16 v17, v2

    move v13, v3

    const/16 v20, 0x10

    const/16 v31, 0x2

    .line 3754
    .end local v2    # "factory":Ljava/lang/String;
    .restart local v17    # "factory":Ljava/lang/String;
    :cond_3a7
    :goto_3a7
    const/16 v1, 0x19

    const/4 v6, 0x0

    invoke-virtual {v7, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3757
    const/16 v1, 0x2e

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3759
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v1, :cond_3dd

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3760
    invoke-static {v1}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3dd

    .line 3761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x0

    aput-object v1, p5, v18

    .line 3764
    :cond_3dd
    const/16 v1, 0x34

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 3767
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3769
    const/16 v18, 0x0

    aget-object v1, p5, v18

    if-eqz v1, :cond_3f3

    .line 3770
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3771
    return v18

    .line 3774
    :cond_3f3
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 3777
    .local v1, "innerDepth":I
    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser-IA;)V

    .line 3779
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    const/4 v2, 0x0

    .line 3780
    .local v2, "hasActivityOrder":Z
    const/4 v3, 0x0

    .line 3781
    .local v3, "hasReceiverOrder":Z
    const/4 v4, 0x0

    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v26, v7

    .line 3782
    .end local v2    # "hasActivityOrder":Z
    .end local v3    # "hasReceiverOrder":Z
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .local v21, "hasActivityOrder":Z
    .local v23, "hasReceiverOrder":Z
    .local v24, "hasServiceOrder":Z
    .local v26, "sa":Landroid/content/res/TypedArray;
    :goto_408
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v13, :cond_7af

    const/4 v2, 0x3

    if-ne v3, v2, :cond_42c

    .line 3783
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_419

    goto :goto_42c

    :cond_419
    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v33, v1

    move/from16 v19, v3

    move-object/from16 v30, v6

    move-object v1, v8

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object v3, v14

    move-object v7, v15

    goto/16 :goto_7c0

    .line 3784
    :cond_42c
    :goto_42c
    const/4 v2, 0x3

    if-eq v3, v2, :cond_785

    move/from16 v2, v19

    if-ne v3, v2, :cond_44b

    .line 3785
    move-object/from16 v5, p5

    move/from16 v33, v1

    move/from16 v28, v2

    move-object/from16 v30, v6

    move-object v1, v8

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object v3, v14

    move-object v7, v15

    move/from16 v10, v31

    const/4 v14, 0x0

    const/16 v15, -0x6c

    move-object/from16 v2, p2

    goto/16 :goto_79d

    .line 3788
    :cond_44b
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3789
    .local v4, "tagName":Ljava/lang/String;
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49c

    .line 3790
    const/4 v7, 0x0

    move v5, v1

    move-object v1, v8

    .end local v1    # "innerDepth":I
    .local v5, "innerDepth":I
    iget-boolean v8, v1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move/from16 v28, v2

    move/from16 v19, v3

    move-object v13, v4

    move-object/from16 v29, v10

    move-object v3, v14

    move/from16 v10, v31

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v14, v5

    move-object/from16 v5, p5

    .end local v3    # "type":I
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "innerDepth":I
    .end local v10    # "str":Ljava/lang/String;
    .local v13, "tagName":Ljava/lang/String;
    .local v14, "innerDepth":I
    .local v19, "type":I
    .local v29, "str":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 3792
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_47a

    .line 3793
    const/16 v2, -0x6c

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3794
    const/16 v18, 0x0

    return v18

    .line 3797
    :cond_47a
    iget v2, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v2, :cond_480

    const/4 v4, 0x1

    goto :goto_481

    :cond_480
    const/4 v4, 0x0

    :goto_481
    or-int v2, v21, v4

    .line 3798
    .end local v21    # "hasActivityOrder":Z
    .restart local v2    # "hasActivityOrder":Z
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3800
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v21, v2

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/4 v14, 0x0

    const/16 v15, -0x6c

    move-object/from16 v2, p2

    goto/16 :goto_73c

    .end local v2    # "hasActivityOrder":Z
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "innerDepth":I
    .end local v19    # "type":I
    .end local v29    # "str":Ljava/lang/String;
    .restart local v1    # "innerDepth":I
    .restart local v3    # "type":I
    .restart local v4    # "tagName":Ljava/lang/String;
    .restart local v10    # "str":Ljava/lang/String;
    .restart local v21    # "hasActivityOrder":Z
    :cond_49c
    move v14, v1

    move/from16 v28, v2

    move/from16 v19, v3

    move-object v13, v4

    move-object v1, v8

    move-object/from16 v29, v10

    move/from16 v10, v31

    .end local v1    # "innerDepth":I
    .end local v3    # "type":I
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v10    # "str":Ljava/lang/String;
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "innerDepth":I
    .restart local v19    # "type":I
    .restart local v29    # "str":Ljava/lang/String;
    const-string/jumbo v2, "receiver"

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e9

    .line 3801
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 3803
    .restart local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_4c7

    .line 3804
    const/16 v2, -0x6c

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3805
    const/16 v18, 0x0

    return v18

    .line 3808
    :cond_4c7
    iget v2, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v2, :cond_4cd

    const/4 v4, 0x1

    goto :goto_4ce

    :cond_4cd
    const/4 v4, 0x0

    :goto_4ce
    or-int v2, v23, v4

    .line 3809
    .end local v23    # "hasReceiverOrder":Z
    .local v2, "hasReceiverOrder":Z
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3811
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v23, v2

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/4 v14, 0x0

    const/16 v15, -0x6c

    move-object/from16 v2, p2

    goto/16 :goto_73c

    .end local v2    # "hasReceiverOrder":Z
    .restart local v23    # "hasReceiverOrder":Z
    :cond_4e9
    const-string/jumbo v2, "service"

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_529

    .line 3812
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v7

    .line 3813
    .local v7, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v7, :cond_507

    .line 3814
    const/16 v2, -0x6c

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3815
    const/16 v18, 0x0

    return v18

    .line 3818
    :cond_507
    iget v2, v7, Landroid/content/pm/PackageParser$Service;->order:I

    if-eqz v2, :cond_50d

    const/4 v4, 0x1

    goto :goto_50e

    :cond_50d
    const/4 v4, 0x0

    :goto_50e
    or-int v2, v24, v4

    .line 3819
    .end local v24    # "hasServiceOrder":Z
    .local v2, "hasServiceOrder":Z
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3821
    .end local v7    # "s":Landroid/content/pm/PackageParser$Service;
    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v24, v2

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/4 v14, 0x0

    const/16 v15, -0x6c

    move-object/from16 v2, p2

    goto/16 :goto_73c

    .end local v2    # "hasServiceOrder":Z
    .restart local v24    # "hasServiceOrder":Z
    :cond_529
    const-string/jumbo v2, "provider"

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55d

    .line 3822
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v7

    .line 3823
    .local v7, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v7, :cond_547

    .line 3824
    const/16 v2, -0x6c

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3825
    const/16 v18, 0x0

    return v18

    .line 3828
    :cond_547
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3830
    .end local v7    # "p":Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/16 v15, -0x6c

    goto/16 :goto_717

    :cond_55d
    const-string v2, "activity-alias"

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_596

    .line 3831
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 3832
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_57a

    .line 3833
    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3834
    const/16 v18, 0x0

    return v18

    .line 3837
    :cond_57a
    iget v4, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v4, :cond_580

    const/4 v4, 0x1

    goto :goto_581

    :cond_580
    const/4 v4, 0x0

    :goto_581
    or-int v4, v21, v4

    .line 3838
    .end local v21    # "hasActivityOrder":Z
    .local v4, "hasActivityOrder":Z
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3840
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    move/from16 v21, v4

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/4 v14, 0x0

    const/16 v15, -0x6c

    goto/16 :goto_73c

    .end local v4    # "hasActivityOrder":Z
    .restart local v21    # "hasActivityOrder":Z
    :cond_596
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c5

    .line 3844
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_5b9

    .line 3846
    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3847
    const/4 v7, 0x0

    return v7

    .line 3844
    :cond_5b9
    const/4 v7, 0x0

    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move-object v7, v15

    const/16 v15, -0x6c

    goto/16 :goto_717

    .line 3849
    :cond_5c5
    const/4 v7, 0x0

    const-string/jumbo v4, "static-library"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67e

    .line 3850
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3855
    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 3857
    .local v8, "lname":Ljava/lang/String;
    move-object/from16 v30, v6

    const/4 v7, -0x1

    const/4 v10, 0x1

    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .local v30, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    invoke-virtual {v4, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 3859
    .local v6, "version":I
    move-object/from16 v32, v11

    const/4 v7, 0x0

    const/4 v10, 0x2

    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .local v32, "restrictedAccountType":Ljava/lang/String;
    invoke-virtual {v4, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 3863
    .local v11, "versionMajor":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3866
    if-eqz v8, :cond_653

    if-gez v6, :cond_5f4

    move/from16 v33, v14

    move-object v7, v15

    goto :goto_656

    .line 3874
    :cond_5f4
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v7, :cond_607

    .line 3875
    const-string/jumbo v7, "sharedUserId not allowed in static shared library"

    const/16 v18, 0x0

    aput-object v7, v5, v18

    .line 3876
    const/16 v7, -0x6b

    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3877
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3878
    return v18

    .line 3881
    :cond_607
    const/16 v18, 0x0

    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v7, :cond_62a

    .line 3882
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple static-shared libs for package "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v18

    .line 3883
    const/16 v7, -0x6c

    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3884
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3885
    return v18

    .line 3888
    :cond_62a
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 3889
    if-ltz v6, :cond_63d

    .line 3890
    nop

    .line 3891
    move/from16 v33, v14

    move-object v7, v15

    .end local v14    # "innerDepth":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .local v7, "pkgName":Ljava/lang/String;
    .local v33, "innerDepth":I
    invoke-static {v11, v6}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v14

    iput-wide v14, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    goto :goto_643

    .line 3893
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .restart local v14    # "innerDepth":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_63d
    move/from16 v33, v14

    move-object v7, v15

    .end local v14    # "innerDepth":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    int-to-long v14, v6

    iput-wide v14, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 3895
    :goto_643
    iget v14, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v14, v14, 0x4000

    iput v14, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3897
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3899
    .end local v6    # "version":I
    .end local v8    # "lname":Ljava/lang/String;
    .end local v11    # "versionMajor":I
    move-object/from16 v26, v4

    const/4 v14, 0x0

    const/16 v15, -0x6c

    goto/16 :goto_73c

    .line 3866
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .restart local v6    # "version":I
    .restart local v8    # "lname":Ljava/lang/String;
    .restart local v11    # "versionMajor":I
    .restart local v14    # "innerDepth":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_653
    move/from16 v33, v14

    move-object v7, v15

    .line 3867
    .end local v14    # "innerDepth":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    :goto_656
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad static-library declaration name: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " version: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v5, v14

    .line 3869
    const/16 v15, -0x6c

    iput v15, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3870
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3871
    return v14

    .line 3899
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "lname":Ljava/lang/String;
    .end local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v32    # "restrictedAccountType":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .local v11, "restrictedAccountType":Ljava/lang/String;
    .restart local v14    # "innerDepth":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    :cond_67e
    move-object/from16 v30, v6

    move-object/from16 v32, v11

    move/from16 v33, v14

    move v14, v7

    move-object v7, v15

    const/16 v15, -0x6c

    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .end local v14    # "innerDepth":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v32    # "restrictedAccountType":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    const-string/jumbo v4, "library"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6bc

    .line 3900
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3905
    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 3908
    .local v6, "lname":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3910
    if-eqz v6, :cond_6b4

    .line 3911
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 3912
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b4

    .line 3913
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v1, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 3918
    :cond_6b4
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3920
    .end local v6    # "lname":Ljava/lang/String;
    move-object/from16 v26, v4

    const/4 v14, 0x0

    goto/16 :goto_73c

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    :cond_6bc
    const-string/jumbo v4, "uses-static-library"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6cf

    .line 3921
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6cd

    .line 3922
    const/4 v6, 0x0

    return v6

    .line 3921
    :cond_6cd
    const/4 v6, 0x0

    goto :goto_717

    .line 3925
    :cond_6cf
    const/4 v6, 0x0

    const-string/jumbo v4, "uses-library"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70b

    .line 3926
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3931
    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 3933
    .restart local v8    # "lname":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 3937
    .local v11, "req":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3939
    if-eqz v8, :cond_704

    .line 3940
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 3941
    if-eqz v11, :cond_6fc

    .line 3942
    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    goto :goto_704

    .line 3944
    :cond_6fc
    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3949
    :cond_704
    :goto_704
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3951
    .end local v8    # "lname":Ljava/lang/String;
    .end local v11    # "req":Z
    move-object/from16 v26, v4

    const/4 v14, 0x0

    goto :goto_73c

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    :cond_70b
    const-string/jumbo v4, "uses-package"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_719

    .line 3954
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3976
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v32    # "restrictedAccountType":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .local v11, "restrictedAccountType":Ljava/lang/String;
    .restart local v14    # "innerDepth":I
    .restart local v15    # "pkgName":Ljava/lang/String;
    :goto_717
    const/4 v14, 0x0

    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .end local v14    # "innerDepth":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v32    # "restrictedAccountType":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    goto :goto_73c

    .line 3955
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_719
    const-string/jumbo v4, "profileable"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74e

    .line 3956
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3958
    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    const/4 v14, 0x0

    invoke-virtual {v4, v6, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_737

    .line 3960
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v8, 0x800000

    or-int/2addr v6, v8

    iput v6, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3962
    :cond_737
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v26, v4

    .line 3976
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tagName":Ljava/lang/String;
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    :goto_73c
    move-object v8, v1

    move-object v14, v3

    move-object v15, v7

    move/from16 v31, v10

    move/from16 v19, v28

    move-object/from16 v10, v29

    move-object/from16 v6, v30

    move-object/from16 v11, v32

    move/from16 v1, v33

    const/4 v13, 0x1

    goto/16 :goto_408

    .line 3965
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_74e
    const/4 v14, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <application>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3967
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3965
    const-string v6, "PackageParser"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3969
    goto :goto_79d

    .line 3784
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v29    # "str":Ljava/lang/String;
    .end local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v32    # "restrictedAccountType":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .restart local v1    # "innerDepth":I
    .restart local v3    # "type":I
    .restart local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v10    # "str":Ljava/lang/String;
    .restart local v11    # "restrictedAccountType":Ljava/lang/String;
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_785
    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v33, v1

    move-object/from16 v30, v6

    move-object v1, v8

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object v7, v15

    move/from16 v28, v19

    move/from16 v10, v31

    const/16 v15, -0x6c

    move/from16 v19, v3

    move-object v3, v14

    const/4 v14, 0x0

    .line 3782
    .end local v1    # "innerDepth":I
    .end local v3    # "type":I
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v29    # "str":Ljava/lang/String;
    .restart local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v32    # "restrictedAccountType":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    :goto_79d
    move-object v8, v1

    move-object v14, v3

    move-object v15, v7

    move/from16 v31, v10

    move/from16 v19, v28

    move-object/from16 v10, v29

    move-object/from16 v6, v30

    move-object/from16 v11, v32

    move/from16 v1, v33

    const/4 v13, 0x1

    goto/16 :goto_408

    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v29    # "str":Ljava/lang/String;
    .end local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v32    # "restrictedAccountType":Ljava/lang/String;
    .end local v33    # "innerDepth":I
    .restart local v1    # "innerDepth":I
    .restart local v3    # "type":I
    .restart local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v10    # "str":Ljava/lang/String;
    .restart local v11    # "restrictedAccountType":Ljava/lang/String;
    .restart local v15    # "pkgName":Ljava/lang/String;
    :cond_7af
    move-object/from16 v2, p2

    move-object/from16 v5, p5

    move/from16 v33, v1

    move/from16 v19, v3

    move-object/from16 v30, v6

    move-object v1, v8

    move-object/from16 v29, v10

    move-object/from16 v32, v11

    move-object v3, v14

    move-object v7, v15

    .line 3978
    .end local v1    # "innerDepth":I
    .end local v3    # "type":I
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .end local v15    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v29    # "str":Ljava/lang/String;
    .restart local v30    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v32    # "restrictedAccountType":Ljava/lang/String;
    .restart local v33    # "innerDepth":I
    :goto_7c0
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7d6

    .line 3981
    iget-boolean v4, v1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move/from16 v6, p4

    invoke-direct {v0, v1, v6, v5, v4}, Landroid/content/pm/PackageParser;->generateAppDetailsHiddenActivity(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;

    move-result-object v4

    .line 3983
    .local v4, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d8

    .line 3978
    .end local v4    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_7d6
    move/from16 v6, p4

    .line 3986
    :goto_7d8
    if-eqz v21, :cond_7e4

    .line 3987
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    new-instance v8, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3989
    :cond_7e4
    if-eqz v23, :cond_7f0

    .line 3990
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    new-instance v8, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3992
    :cond_7f0
    if-eqz v24, :cond_7fc

    .line 3993
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    new-instance v8, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3997
    :cond_7fc
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 3998
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMinAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 3999
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setSupportsSizeChanges(Landroid/content/pm/PackageParser$Package;)V

    .line 4001
    invoke-static {v1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_814

    .line 4002
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_81c

    .line 4004
    :cond_814
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, -0x11

    iput v8, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4007
    :goto_81c
    const/16 v27, 0x1

    return v27
.end method

.method private greylist-max-o parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 12
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1120
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1121
    .local v0, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v1, :cond_e

    goto :goto_29

    .line 1122
    :cond_e
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a coreApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x6c

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1127
    :cond_29
    :goto_29
    const/4 v1, 0x0

    .line 1129
    .local v1, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-boolean v2, v0, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    if-eqz v2, :cond_4e

    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1131
    :try_start_36
    invoke-static {v0}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;

    move-result-object v2

    move-object v1, v2

    .line 1132
    new-instance v2, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;

    invoke-direct {v2, v0, v1, p2}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    :try_end_40
    .catch Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException; {:try_start_36 .. :try_end_40} :catch_41

    .line 1135
    .local v2, "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    goto :goto_53

    .line 1133
    .end local v2    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    :catch_41
    move-exception v2

    .line 1134
    .local v2, "e":Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x65

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1137
    .end local v2    # "e":Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
    :cond_4e
    new-instance v2, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;

    invoke-direct {v2, v0, p2}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1141
    .local v2, "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    :goto_53
    :try_start_53
    invoke-interface {v2}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 1142
    .local v3, "assets":Landroid/content/res/AssetManager;
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v4, "baseApk":Ljava/io/File;
    invoke-direct {p0, v4, v3, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1144
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_af

    .line 1149
    iget-object v6, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 1150
    iget-object v6, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v6, v6

    .line 1151
    .local v6, "num":I
    iget-object v7, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 1152
    iget-object v7, v0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 1153
    iget-object v7, v0, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 1154
    new-array v7, v6, [I

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 1155
    new-array v7, v6, [I

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 1156
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1157
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v7, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1158
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-array v8, v6, [Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1160
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_94
    if-ge v7, v6, :cond_a0

    .line 1161
    invoke-interface {v2, v7}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v8

    .line 1162
    .local v8, "splitAssets":Landroid/content/res/AssetManager;
    invoke-direct {p0, v5, v7, v8, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 1160
    .end local v8    # "splitAssets":Landroid/content/res/AssetManager;
    add-int/lit8 v7, v7, 0x1

    goto :goto_94

    .line 1166
    .end local v6    # "num":I
    .end local v7    # "i":I
    :cond_a0
    iget-object v6, v0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1167
    iget-boolean v6, v0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_aa
    .catchall {:try_start_53 .. :try_end_aa} :catchall_ca

    .line 1168
    nop

    .line 1170
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1168
    return-object v5

    .line 1145
    :cond_af
    :try_start_af
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse base APK: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, -0x64

    invoke-direct {v6, v8, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v1    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v2    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "packageDir":Ljava/io/File;
    .end local p2    # "flags":I
    throw v6
    :try_end_ca
    .catchall {:try_start_af .. :try_end_ca} :catchall_ca

    .line 1170
    .end local v3    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "baseApk":Ljava/io/File;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v1    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v2    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "packageDir":Ljava/io/File;
    .restart local p2    # "flags":I
    :catchall_ca
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1171
    throw v3
.end method

.method static greylist-max-o parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 23
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 983
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 984
    .local v1, "files":[Ljava/io/File;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_175

    .line 989
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_20

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 990
    aget-object v2, v1, v3

    invoke-static {v2, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v2

    return-object v2

    .line 993
    :cond_20
    const/4 v2, 0x0

    .line 994
    .local v2, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 996
    .local v4, "versionCode":I
    const-string/jumbo v5, "parseApkLite"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 997
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 998
    .local v5, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    array-length v8, v1

    :goto_31
    const/16 v9, -0x65

    if-ge v3, v8, :cond_e0

    aget-object v10, v1, v3

    .line 999
    .local v10, "file":Ljava/io/File;
    invoke-static {v10}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_dc

    .line 1000
    invoke-static {v10, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v11

    .line 1004
    .local v11, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v2, :cond_48

    .line 1005
    iget-object v2, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 1006
    iget v4, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    goto :goto_58

    .line 1008
    :cond_48
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "; expected "

    const-string v14, " in "

    if-eqz v12, :cond_b1

    .line 1013
    iget v12, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    if-ne v4, v12, :cond_86

    .line 1021
    :goto_58
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v5, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_61

    goto :goto_dc

    .line 1022
    :cond_61
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " defined more than once; most recent was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v9, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1014
    :cond_86
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inconsistent version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v9, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1009
    :cond_b1
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inconsistent package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v9, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 998
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_dc
    :goto_dc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 1028
    :cond_e0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1030
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/content/pm/PackageParser$ApkLite;

    .line 1031
    .local v13, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-eqz v13, :cond_15a

    .line 1037
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1039
    .local v3, "size":I
    const/4 v6, 0x0

    .line 1040
    .local v6, "splitNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1041
    .local v7, "isFeatureSplits":[Z
    const/4 v8, 0x0

    .line 1042
    .local v8, "usesSplitNames":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1043
    .local v9, "configForSplits":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1044
    .local v10, "splitCodePaths":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1045
    .local v11, "splitRevisionCodes":[I
    const/16 v20, 0x0

    .line 1046
    .local v20, "splitClassLoaderNames":[Ljava/lang/String;
    if-lez v3, :cond_144

    .line 1047
    new-array v6, v3, [Ljava/lang/String;

    .line 1048
    new-array v7, v3, [Z

    .line 1049
    new-array v8, v3, [Ljava/lang/String;

    .line 1050
    new-array v9, v3, [Ljava/lang/String;

    .line 1051
    new-array v10, v3, [Ljava/lang/String;

    .line 1052
    new-array v11, v3, [I

    .line 1054
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, [Ljava/lang/String;

    .line 1055
    sget-object v12, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v6, v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1057
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_118
    if-ge v12, v3, :cond_139

    .line 1058
    aget-object v14, v6, v12

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$ApkLite;

    .line 1059
    .local v14, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    aput-object v15, v8, v12

    .line 1060
    iget-boolean v15, v14, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    aput-boolean v15, v7, v12

    .line 1061
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    aput-object v15, v9, v12

    .line 1062
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v15, v10, v12

    .line 1063
    iget v15, v14, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v15, v11, v12

    .line 1057
    .end local v14    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    add-int/lit8 v12, v12, 0x1

    goto :goto_118

    :cond_139
    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    goto :goto_14e

    .line 1046
    .end local v12    # "i":I
    :cond_144
    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 1067
    .end local v6    # "splitNames":[Ljava/lang/String;
    .end local v7    # "isFeatureSplits":[Z
    .end local v8    # "usesSplitNames":[Ljava/lang/String;
    .end local v9    # "configForSplits":[Ljava/lang/String;
    .end local v10    # "splitCodePaths":[Ljava/lang/String;
    .end local v11    # "splitRevisionCodes":[I
    .local v14, "splitNames":[Ljava/lang/String;
    .local v15, "isFeatureSplits":[Z
    .local v16, "usesSplitNames":[Ljava/lang/String;
    .local v17, "configForSplits":[Ljava/lang/String;
    .local v18, "splitCodePaths":[Ljava/lang/String;
    .local v19, "splitRevisionCodes":[I
    :goto_14e
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 1068
    .local v11, "codePath":Ljava/lang/String;
    new-instance v10, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v12, v13, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    invoke-direct/range {v10 .. v19}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v10

    .line 1032
    .end local v3    # "size":I
    .end local v11    # "codePath":Ljava/lang/String;
    .end local v14    # "splitNames":[Ljava/lang/String;
    .end local v15    # "isFeatureSplits":[Z
    .end local v16    # "usesSplitNames":[Ljava/lang/String;
    .end local v17    # "configForSplits":[Ljava/lang/String;
    .end local v18    # "splitCodePaths":[Ljava/lang/String;
    .end local v19    # "splitRevisionCodes":[I
    .end local v20    # "splitClassLoaderNames":[Ljava/lang/String;
    :cond_15a
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing base APK in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v9, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 985
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "versionCode":I
    .end local v5    # "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    .end local v13    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    :cond_175
    move-object/from16 v7, p0

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x64

    const-string v4, "No packages found in split"

    invoke-direct {v2, v3, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .registers 16
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3347
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3350
    .local v0, "sa":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v1, :cond_21

    .line 3351
    new-instance v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    move-object v3, p1

    move-object v4, p4

    .end local p1    # "owner":Landroid/content/pm/PackageParser$Package;
    .end local p4    # "outError":[Ljava/lang/String;
    .local v3, "owner":Landroid/content/pm/PackageParser$Package;
    .local v4, "outError":[Ljava/lang/String;
    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 3358
    iget-object p1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string p4, "<instrumentation>"

    iput-object p4, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    goto :goto_23

    .line 3350
    .end local v3    # "owner":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "outError":[Ljava/lang/String;
    .restart local p1    # "owner":Landroid/content/pm/PackageParser$Package;
    .restart local p4    # "outError":[Ljava/lang/String;
    :cond_21
    move-object v3, p1

    move-object v4, p4

    .line 3361
    .end local p1    # "owner":Landroid/content/pm/PackageParser$Package;
    .end local p4    # "outError":[Ljava/lang/String;
    .restart local v3    # "owner":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "outError":[Ljava/lang/String;
    :goto_23
    iget-object p1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v0, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 3363
    new-instance v8, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object p1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance p4, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p4}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v8, p1, p4}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 3365
    .local v8, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 p1, 0x0

    aget-object p4, v4, p1

    const/16 v1, -0x6c

    const/4 v2, 0x0

    if-eqz p4, :cond_41

    .line 3366
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3367
    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3368
    return-object v2

    .line 3374
    :cond_41
    const/4 p4, 0x3

    invoke-virtual {v0, p4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p4

    .line 3376
    .local p4, "str":Ljava/lang/String;
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz p4, :cond_4f

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_50

    :cond_4f
    move-object v6, v2

    :goto_50
    iput-object v6, v5, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 3378
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p4

    .line 3380
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz p4, :cond_61

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_62

    :cond_61
    move-object v6, v2

    :goto_62
    iput-object v6, v5, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 3382
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v6, 0x4

    invoke-virtual {v0, v6, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 3386
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v6, 0x5

    invoke-virtual {v0, v6, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 3390
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3392
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v5, v5, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v5, :cond_86

    .line 3393
    const-string v5, "<instrumentation> does not specify targetPackage"

    aput-object v5, v4, p1

    .line 3394
    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3395
    return-object v2

    .line 3398
    :cond_86
    const-string v7, "<instrumentation>"

    move-object v5, p2

    move-object v6, p3

    move-object v9, v4

    move-object v4, p0

    .end local v4    # "outError":[Ljava/lang/String;
    .end local p2    # "res":Landroid/content/res/Resources;
    .end local p3    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "res":Landroid/content/res/Resources;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    .local v9, "outError":[Ljava/lang/String;
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result p1

    move-object v4, v9

    .end local v9    # "outError":[Ljava/lang/String;
    .restart local v4    # "outError":[Ljava/lang/String;
    if-nez p1, :cond_96

    .line 3400
    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3401
    return-object v2

    .line 3404
    :cond_96
    iget-object p1, v3, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3406
    return-object v8
.end method

.method private greylist-max-o parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .registers 26
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "allowAutoVerify"    # Z
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5842
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5845
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 5847
    .local v6, "priority":I
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 5849
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 5851
    .local v8, "order":I
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageParser$IntentInfo;->setOrder(I)V

    .line 5853
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 5855
    .local v9, "v":Landroid/util/TypedValue;
    if-eqz v9, :cond_2f

    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    iput v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v10, :cond_2f

    .line 5856
    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 5859
    :cond_2f
    sget-boolean v10, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v10, :cond_39

    const/4 v10, 0x7

    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    goto :goto_3a

    .line 5860
    :cond_39
    move v10, v5

    :goto_3a
    nop

    .line 5861
    .local v10, "roundIconVal":I
    const/4 v11, 0x1

    if-eqz v10, :cond_41

    .line 5862
    iput v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    goto :goto_47

    .line 5864
    :cond_41
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 5868
    :goto_47
    const/4 v12, 0x4

    invoke-virtual {v0, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v3, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 5871
    const/4 v13, 0x5

    invoke-virtual {v0, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v3, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 5874
    const/4 v14, 0x6

    if-eqz p4, :cond_5f

    .line 5875
    invoke-virtual {v0, v14, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v3, v15}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    .line 5880
    :cond_5f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5882
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 5884
    .local v15, "outerDepth":I
    :goto_66
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move/from16 v16, v14

    .local v16, "type":I
    if-eq v14, v11, :cond_1cf

    move/from16 v14, v16

    .end local v16    # "type":I
    .local v14, "type":I
    if-ne v14, v7, :cond_7d

    .line 5885
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v15, :cond_79

    goto :goto_7d

    :cond_79
    move-object/from16 v11, p0

    goto/16 :goto_1d3

    .line 5886
    :cond_7d
    :goto_7d
    if-eq v14, v7, :cond_1c6

    if-ne v14, v12, :cond_85

    .line 5887
    move-object/from16 v11, p0

    goto/16 :goto_1c8

    .line 5890
    :cond_85
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 5891
    .local v13, "nodeName":Ljava/lang/String;
    const-string v12, "action"

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v7, ""

    const-string v17, "No value supplied for <android:name>"

    const-string/jumbo v4, "name"

    const-string/jumbo v11, "http://schemas.android.com/apk/res/android"

    if-eqz v12, :cond_b2

    .line 5892
    invoke-interface {v2, v11, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5894
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_af

    if-ne v4, v7, :cond_a4

    goto :goto_af

    .line 5898
    :cond_a4
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5900
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    .line 5901
    .end local v4    # "value":Ljava/lang/String;
    const/4 v7, 0x3

    move-object/from16 v11, p0

    goto/16 :goto_1bf

    .line 5895
    .restart local v4    # "value":Ljava/lang/String;
    :cond_af
    :goto_af
    aput-object v17, p6, v5

    .line 5896
    return v5

    .line 5901
    .end local v4    # "value":Ljava/lang/String;
    :cond_b2
    const-string v12, "category"

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d1

    .line 5902
    invoke-interface {v2, v11, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5904
    .restart local v4    # "value":Ljava/lang/String;
    if-eqz v4, :cond_ce

    if-ne v4, v7, :cond_c3

    goto :goto_ce

    .line 5908
    :cond_c3
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5910
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    .line 5912
    .end local v4    # "value":Ljava/lang/String;
    const/4 v7, 0x3

    move-object/from16 v11, p0

    goto/16 :goto_1bf

    .line 5905
    .restart local v4    # "value":Ljava/lang/String;
    :cond_ce
    :goto_ce
    aput-object v17, p6, v5

    .line 5906
    return v5

    .line 5912
    .end local v4    # "value":Ljava/lang/String;
    :cond_d1
    const-string v4, "data"

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 5913
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 5916
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v5, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 5918
    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_f4

    .line 5920
    :try_start_e5
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_e8
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_e5 .. :try_end_e8} :catch_e9

    .line 5925
    goto :goto_f4

    .line 5921
    :catch_e9
    move-exception v0

    .line 5922
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, p6, v5

    .line 5923
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 5924
    return v5

    .line 5928
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_f4
    :goto_f4
    const/4 v0, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 5930
    if-eqz v7, :cond_fe

    .line 5931
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 5934
    :cond_fe
    const/16 v0, 0x8

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5936
    .end local v7    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_109

    .line 5937
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5940
    :cond_109
    const/16 v7, 0x9

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5942
    if-eqz v0, :cond_115

    .line 5943
    const/4 v7, 0x1

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5946
    :cond_115
    const/16 v7, 0xa

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5948
    if-eqz v0, :cond_12a

    .line 5949
    if-nez p3, :cond_125

    .line 5950
    const-string/jumbo v7, "sspPattern not allowed here; ssp must be literal"

    aput-object v7, p6, v5

    .line 5951
    return v5

    .line 5953
    :cond_125
    const/4 v7, 0x2

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_12b

    .line 5948
    :cond_12a
    const/4 v7, 0x2

    .line 5956
    :goto_12b
    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5958
    .local v11, "host":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 5960
    .local v12, "port":Ljava/lang/String;
    if-eqz v11, :cond_139

    .line 5961
    invoke-virtual {v3, v11, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 5964
    :cond_139
    const/4 v7, 0x4

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5966
    if-eqz v0, :cond_143

    .line 5967
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5970
    :cond_143
    const/4 v7, 0x5

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5972
    if-eqz v0, :cond_14e

    .line 5973
    const/4 v7, 0x1

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5976
    :cond_14e
    const/4 v7, 0x6

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5978
    if-eqz v0, :cond_162

    .line 5979
    if-nez p3, :cond_15d

    .line 5980
    const-string/jumbo v7, "pathPattern not allowed here; path must be literal"

    aput-object v7, p6, v5

    .line 5981
    return v5

    .line 5983
    :cond_15d
    const/4 v7, 0x2

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_163

    .line 5978
    :cond_162
    const/4 v7, 0x2

    .line 5986
    :goto_163
    const/16 v7, 0xe

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5988
    if-eqz v0, :cond_178

    .line 5989
    if-nez p3, :cond_173

    .line 5990
    const-string/jumbo v7, "pathAdvancedPattern not allowed here; path must be literal"

    aput-object v7, p6, v5

    .line 5991
    return v5

    .line 5993
    :cond_173
    const/4 v7, 0x3

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_179

    .line 5988
    :cond_178
    const/4 v7, 0x3

    .line 5996
    :goto_179
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 5997
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5998
    .end local v0    # "str":Ljava/lang/String;
    .end local v11    # "host":Ljava/lang/String;
    .end local v12    # "port":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object v0, v4

    goto :goto_1bf

    .line 5999
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    :cond_183
    const/4 v7, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <intent-filter>: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6000
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " at "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v11, p0

    iget-object v12, v11, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6001
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5999
    const-string v12, "PackageParser"

    invoke-static {v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6002
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 6007
    .end local v13    # "nodeName":Ljava/lang/String;
    :goto_1bf
    const/4 v4, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x6

    goto/16 :goto_66

    .line 5886
    :cond_1c6
    move-object/from16 v11, p0

    .line 5884
    .end local v14    # "type":I
    :goto_1c8
    const/4 v4, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x6

    goto/16 :goto_66

    .restart local v16    # "type":I
    :cond_1cf
    move-object/from16 v11, p0

    move/from16 v14, v16

    .line 6009
    .end local v16    # "type":I
    .restart local v14    # "type":I
    :goto_1d3
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 6026
    const/16 v18, 0x1

    return v18
.end method

.method private greylist-max-o parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 28
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3000
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 3001
    .local v4, "outerDepth":I
    const/4 v5, -0x1

    .line 3003
    .local v5, "currentKeySetDepth":I
    const/4 v6, 0x0

    .line 3004
    .local v6, "currentKeySet":Ljava/lang/String;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 3005
    .local v7, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 3006
    .local v8, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 3007
    .local v9, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 3008
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_22
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v12, v11

    .local v12, "type":I
    const/4 v13, 0x1

    const-string v14, "PackageParser"

    if-eq v11, v13, :cond_218

    const/4 v11, 0x3

    if-ne v12, v11, :cond_3e

    .line 3009
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v4, :cond_36

    goto :goto_3e

    :cond_36
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v12

    goto/16 :goto_21e

    .line 3010
    :cond_3e
    :goto_3e
    if-ne v12, v11, :cond_4f

    .line 3011
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-ne v11, v5, :cond_49

    .line 3012
    const/4 v6, 0x0

    .line 3013
    const/4 v5, -0x1

    goto :goto_22

    .line 3011
    :cond_49
    move/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_212

    .line 3017
    :cond_4f
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 3018
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v13, "key-set"

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/16 v17, 0x0

    const-string v15, "Improperly nested \'key-set\' tag at "

    if-eqz v13, :cond_a0

    .line 3019
    if-eqz v6, :cond_7e

    .line 3020
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3021
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, p4, v17

    .line 3022
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3023
    return v17

    .line 3025
    :cond_7e
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 3027
    .local v13, "sa":Landroid/content/res/TypedArray;
    move/from16 v14, v17

    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 3029
    .local v14, "keysetName":Ljava/lang/String;
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3030
    move-object v6, v14

    .line 3031
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 3032
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3033
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "keysetName":Ljava/lang/String;
    move/from16 v18, v4

    move/from16 v20, v12

    goto/16 :goto_1d6

    :cond_a0
    const-string/jumbo v13, "public-key"

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b0

    .line 3034
    if-nez v6, :cond_c8

    .line 3035
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3036
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, p4, v15

    .line 3037
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3038
    return v15

    .line 3040
    :cond_c8
    const/4 v15, 0x0

    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 3042
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    move/from16 v18, v4

    .end local v4    # "outerDepth":I
    .local v18, "outerDepth":I
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 3044
    .local v4, "publicKeyName":Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    .line 3046
    .local v15, "encodedKey":Ljava/lang/String;
    if-nez v15, :cond_111

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_111

    .line 3047
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    .end local v5    # "currentKeySetDepth":I
    .local v19, "currentKeySetDepth":I
    const-string v5, "\'public-key\' "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " must define a public-key value on first use at "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3048
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x0

    aput-object v5, p4, v17

    .line 3049
    const/16 v5, -0x6c

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3050
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3051
    return v17

    .line 3046
    .end local v19    # "currentKeySetDepth":I
    .restart local v5    # "currentKeySetDepth":I
    :cond_111
    move/from16 v19, v5

    .line 3052
    .end local v5    # "currentKeySetDepth":I
    .restart local v19    # "currentKeySetDepth":I
    if-eqz v15, :cond_19c

    .line 3053
    invoke-static {v15}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 3054
    .local v5, "currentKey":Ljava/security/PublicKey;
    if-nez v5, :cond_154

    .line 3055
    move/from16 v20, v12

    .end local v12    # "type":I
    .local v20, "type":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v13

    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .local v16, "sa":Landroid/content/res/TypedArray;
    const-string v13, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3056
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " key-set "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3055
    invoke-static {v14, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3059
    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3060
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3061
    goto/16 :goto_212

    .line 3063
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .end local v20    # "type":I
    .restart local v12    # "type":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    :cond_154
    move/from16 v20, v12

    move-object/from16 v16, v13

    .end local v12    # "type":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "type":I
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_198

    .line 3064
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/PublicKey;

    invoke-interface {v12, v5}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16b

    goto :goto_198

    .line 3069
    :cond_16b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value of \'public-key\' "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " conflicts with previously defined value at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3071
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, p4, v17

    .line 3072
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3073
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3074
    return v17

    .line 3067
    :cond_198
    :goto_198
    invoke-virtual {v7, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a0

    .line 3052
    .end local v5    # "currentKey":Ljava/security/PublicKey;
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .end local v20    # "type":I
    .restart local v12    # "type":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    :cond_19c
    move/from16 v20, v12

    move-object/from16 v16, v13

    .line 3077
    .end local v12    # "type":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "type":I
    :goto_1a0
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3078
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3079
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3080
    .end local v4    # "publicKeyName":Ljava/lang/String;
    .end local v15    # "encodedKey":Ljava/lang/String;
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    goto :goto_1d4

    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .local v4, "outerDepth":I
    .local v5, "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_1b0
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v12

    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    const-string/jumbo v4, "upgrade-key-set"

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1da

    .line 3081
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3083
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 3085
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3086
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3087
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3088
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "name":Ljava/lang/String;
    nop

    .line 3101
    .end local v11    # "tagName":Ljava/lang/String;
    :goto_1d4
    move/from16 v5, v19

    .end local v19    # "currentKeySetDepth":I
    .local v5, "currentKeySetDepth":I
    :goto_1d6
    move/from16 v4, v18

    goto/16 :goto_22

    .line 3095
    .end local v5    # "currentKeySetDepth":I
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v19    # "currentKeySetDepth":I
    :cond_1da
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <key-sets>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3097
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3095
    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3099
    nop

    .line 3008
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .local v4, "outerDepth":I
    .restart local v5    # "currentKeySetDepth":I
    :goto_212
    move/from16 v4, v18

    move/from16 v5, v19

    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    goto/16 :goto_22

    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .restart local v4    # "outerDepth":I
    .restart local v5    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_218
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v12

    .line 3102
    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    :goto_21e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3103
    .local v4, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    const-string v11, "Package"

    if-eqz v5, :cond_250

    .line 3104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " AndroidManifext.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x0

    aput-object v5, p4, v17

    .line 3106
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3107
    return v17

    .line 3109
    :cond_250
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 3110
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_315

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 3111
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3112
    .local v13, "keySetName":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v15

    const-string v2, " AndroidManifext.xml \'key-set\' "

    if-nez v15, :cond_2a8

    .line 3113
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_25f

    .line 3117
    :cond_2a8
    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d7

    .line 3118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_25f

    .line 3123
    :cond_2d7
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v13, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3124
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2eb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3125
    .local v3, "s":Ljava/lang/String;
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    check-cast v2, Ljava/security/PublicKey;

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3126
    .end local v3    # "s":Ljava/lang/String;
    move-object/from16 v2, v22

    goto :goto_2eb

    .line 3127
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v13    # "keySetName":Ljava/lang/String;
    :cond_30f
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto/16 :goto_25f

    .line 3128
    :cond_315
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_326

    .line 3129
    iput-object v8, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 3136
    const/16 v16, 0x1

    return v16

    .line 3131
    :cond_326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AndroidManifext.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x0

    aput-object v2, p4, v17

    .line 3133
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3134
    return v17
.end method

.method private greylist-max-o parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .registers 27
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "a"    # Landroid/content/pm/PackageParser$Activity;

    .line 4817
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4819
    .local v0, "sw":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    .line 4820
    .local v3, "complexWidth":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 4821
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    .line 4822
    .local v5, "complexHeight":I
    const/high16 v6, -0x40800000    # -1.0f

    .line 4823
    .local v6, "heightFraction":F
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    .line 4825
    .local v8, "widthType":I
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x6

    if-ne v8, v12, :cond_23

    .line 4826
    invoke-virtual {v0, v7, v11, v11, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    move v14, v3

    move v15, v4

    goto :goto_32

    .line 4829
    :cond_23
    if-ne v8, v10, :cond_30

    .line 4830
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 4831
    .local v7, "vOut":Landroid/util/TypedValue;
    if-eqz v7, :cond_30

    .line 4832
    iget v3, v7, Landroid/util/TypedValue;->data:I

    move v14, v3

    move v15, v4

    goto :goto_32

    .line 4835
    .end local v7    # "vOut":Landroid/util/TypedValue;
    :cond_30
    move v14, v3

    move v15, v4

    .end local v3    # "complexWidth":I
    .end local v4    # "widthFraction":F
    .local v14, "complexWidth":I
    .local v15, "widthFraction":F
    :goto_32
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v4

    .line 4837
    .local v4, "heightType":I
    if-ne v4, v12, :cond_42

    .line 4838
    invoke-virtual {v0, v3, v11, v11, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_55

    .line 4841
    :cond_42
    if-ne v4, v10, :cond_51

    .line 4842
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 4843
    .local v3, "vOut":Landroid/util/TypedValue;
    if-eqz v3, :cond_51

    .line 4844
    iget v5, v3, Landroid/util/TypedValue;->data:I

    move/from16 v16, v5

    move/from16 v17, v6

    goto :goto_55

    .line 4847
    .end local v3    # "vOut":Landroid/util/TypedValue;
    :cond_51
    move/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "complexHeight":I
    .end local v6    # "heightFraction":F
    .local v16, "complexHeight":I
    .local v17, "heightFraction":F
    :goto_55
    const/4 v3, 0x0

    const/16 v5, 0x11

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 4850
    .local v18, "gravity":I
    const/4 v3, -0x1

    .line 4851
    .local v3, "complexMinWidth":I
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v5

    .line 4852
    .local v5, "minWidthType":I
    if-ne v5, v10, :cond_6e

    .line 4853
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 4854
    .local v6, "vOut":Landroid/util/TypedValue;
    if-eqz v6, :cond_6e

    .line 4855
    iget v3, v6, Landroid/util/TypedValue;->data:I

    move/from16 v19, v3

    goto :goto_70

    .line 4859
    .end local v6    # "vOut":Landroid/util/TypedValue;
    :cond_6e
    move/from16 v19, v3

    .end local v3    # "complexMinWidth":I
    .local v19, "complexMinWidth":I
    :goto_70
    const/4 v3, -0x1

    .line 4860
    .local v3, "complexMinHeight":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7

    .line 4861
    .local v7, "minHeightType":I
    if-ne v7, v10, :cond_83

    .line 4862
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 4863
    .restart local v6    # "vOut":Landroid/util/TypedValue;
    if-eqz v6, :cond_83

    .line 4864
    iget v3, v6, Landroid/util/TypedValue;->data:I

    move/from16 v20, v3

    goto :goto_85

    .line 4867
    .end local v6    # "vOut":Landroid/util/TypedValue;
    :cond_83
    move/from16 v20, v3

    .end local v3    # "complexMinHeight":I
    .local v20, "complexMinHeight":I
    :goto_85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4868
    move-object/from16 v3, p3

    iget-object v6, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    new-instance v13, Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4870
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    const/16 v21, 0x0

    invoke-direct/range {v13 .. v22}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;Landroid/util/DisplayMetrics;)V

    iput-object v13, v6, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4871
    return-void
.end method

.method private greylist-max-o parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 13
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5670
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5673
    .local v0, "sa":Landroid/content/res/TypedArray;
    if-nez p3, :cond_e

    .line 5674
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p3, v1

    .line 5677
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5679
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_1e

    .line 5680
    const-string v4, "<meta-data> requires an android:name attribute"

    aput-object v4, p4, v1

    .line 5681
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5682
    return-object v3

    .line 5685
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 5687
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5689
    .local v4, "v":Landroid/util/TypedValue;
    if-eqz v4, :cond_34

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_34

    .line 5691
    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b8

    .line 5693
    :cond_34
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5696
    if-eqz v4, :cond_b3

    .line 5697
    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4e

    .line 5698
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5699
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4a

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4a
    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5700
    .end local v1    # "cs":Ljava/lang/CharSequence;
    goto :goto_b8

    :cond_4e
    iget v3, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v3, v6, :cond_5d

    .line 5701
    iget v3, v4, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_59

    move v1, v5

    :cond_59
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b8

    .line 5702
    :cond_5d
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_6f

    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_6f

    .line 5704
    iget v1, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b8

    .line 5705
    :cond_6f
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7c

    .line 5706
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_b8

    .line 5709
    :cond_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5710
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5711
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5709
    const-string v3, "PackageParser"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 5718
    :cond_b3
    const-string v3, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v3, p4, v1

    .line 5719
    const/4 p3, 0x0

    .line 5723
    :goto_b8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5725
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5727
    return-object p3
.end method

.method private static greylist-max-o parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 15
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 973
    const-string/jumbo v0, "parseApkLite"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 974
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v6

    .line 975
    .local v6, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 976
    .local v4, "packagePath":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 977
    new-instance v3, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v5, v6, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v3
.end method

.method private static greylist-max-o parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .registers 28
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    .line 4213
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    if-nez v4, :cond_23

    .line 4214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not contain any attributes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 4215
    return v5

    .line 4218
    :cond_23
    move/from16 v6, p6

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 4219
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_43

    .line 4220
    if-eqz p5, :cond_6e

    .line 4221
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 4222
    return v5

    .line 4225
    :cond_43
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4226
    invoke-static {v8, v7, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4227
    .local v8, "outInfoName":Ljava/lang/String;
    sget-object v9, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 4228
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " invalid android:name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v5

    .line 4229
    return v5

    .line 4231
    :cond_69
    iput-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 4232
    if-nez v8, :cond_6e

    .line 4233
    return v5

    .line 4237
    .end local v8    # "outInfoName":Ljava/lang/String;
    :cond_6e
    sget-boolean v8, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v8, :cond_79

    move/from16 v8, p9

    invoke-virtual {v4, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    goto :goto_7c

    :cond_79
    move/from16 v8, p9

    move v9, v5

    .line 4238
    .local v9, "roundIconVal":I
    :goto_7c
    const/4 v10, 0x0

    if-eqz v9, :cond_86

    .line 4239
    iput v9, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4240
    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move/from16 v11, p8

    goto :goto_92

    .line 4242
    :cond_86
    move/from16 v11, p8

    invoke-virtual {v4, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 4243
    .local v12, "iconVal":I
    if-eqz v12, :cond_92

    .line 4244
    iput v12, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4245
    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4249
    .end local v12    # "iconVal":I
    :cond_92
    :goto_92
    move/from16 v10, p10

    invoke-virtual {v4, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 4250
    .local v12, "logoVal":I
    if-eqz v12, :cond_9c

    .line 4251
    iput v12, v1, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 4254
    :cond_9c
    move/from16 v13, p11

    invoke-virtual {v4, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 4255
    .local v5, "bannerVal":I
    if-eqz v5, :cond_a6

    .line 4256
    iput v5, v1, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 4259
    :cond_a6
    move/from16 v14, p7

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 4260
    .local v15, "v":Landroid/util/TypedValue;
    if-eqz v15, :cond_ba

    iget v2, v15, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_ba

    .line 4261
    invoke-virtual {v15}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4264
    :cond_ba
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 4266
    const/4 v2, 0x1

    return v2
.end method

.method public static greylist parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 3
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 964
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 965
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    .line 967
    :cond_b
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1580
    nop

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_d

    if-eq v1, v3, :cond_d

    goto :goto_1

    .line 1584
    :cond_d
    const/16 v0, -0x6c

    if-ne v1, v2, :cond_9b

    .line 1588
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "manifest"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 1593
    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1594
    .local v0, "packageName":Ljava/lang/String;
    const-string v4, "android"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, -0x6a

    if-nez v4, :cond_50

    .line 1595
    invoke-static {v0, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1596
    .local v3, "error":Ljava/lang/String;
    if-nez v3, :cond_37

    goto :goto_50

    .line 1597
    :cond_37
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid manifest package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1602
    .end local v3    # "error":Ljava/lang/String;
    :cond_50
    :goto_50
    const-string/jumbo v3, "split"

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1603
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_82

    .line 1604
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_61

    .line 1605
    const/4 v2, 0x0

    goto :goto_82

    .line 1607
    :cond_61
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1608
    .restart local v3    # "error":Ljava/lang/String;
    if-nez v3, :cond_69

    goto :goto_82

    .line 1609
    :cond_69
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid manifest split: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1615
    .end local v3    # "error":Ljava/lang/String;
    :cond_82
    :goto_82
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 1616
    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_8e

    :cond_8d
    move-object v4, v2

    .line 1615
    :goto_8e
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 1589
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "splitName":Ljava/lang/String;
    :cond_93
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No <manifest> tag"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1585
    :cond_9b
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 22
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual {v13, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3200
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 3201
    .local v2, "backgroundPermission":Ljava/lang/String;
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const-string v15, "android"

    if-eqz v4, :cond_40

    .line 3203
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3204
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_40

    .line 3208
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defines a background permission. Only the \'android\' package can do that."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageParser"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    :cond_40
    :goto_40
    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v4, v1, v2}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    move-object v3, v4

    .line 3214
    .local v3, "perm":Landroid/content/pm/PackageParser$Permission;
    move-object v4, v2

    .end local v2    # "backgroundPermission":Ljava/lang/String;
    .local v4, "backgroundPermission":Ljava/lang/String;
    iget-object v2, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v11, 0x7

    const/16 v12, 0x9

    move-object v6, v4

    .end local v4    # "backgroundPermission":Ljava/lang/String;
    .local v6, "backgroundPermission":Ljava/lang/String;
    const-string v4, "<permission>"

    move-object v7, v6

    .end local v6    # "backgroundPermission":Ljava/lang/String;
    .local v7, "backgroundPermission":Ljava/lang/String;
    const/4 v6, 0x1

    move-object v8, v7

    .end local v7    # "backgroundPermission":Ljava/lang/String;
    .local v8, "backgroundPermission":Ljava/lang/String;
    const/4 v7, 0x2

    move-object v9, v8

    .end local v8    # "backgroundPermission":Ljava/lang/String;
    .local v9, "backgroundPermission":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v10, v9

    .end local v9    # "backgroundPermission":Ljava/lang/String;
    .local v10, "backgroundPermission":Ljava/lang/String;
    const/4 v9, 0x1

    move-object/from16 v16, v10

    .end local v10    # "backgroundPermission":Ljava/lang/String;
    .local v16, "backgroundPermission":Ljava/lang/String;
    const/16 v10, 0xa

    move-object v13, v3

    move-object/from16 v3, p4

    .end local v3    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v13, "perm":Landroid/content/pm/PackageParser$Permission;
    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    move-object v6, v1

    move-object v7, v5

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/16 v8, -0x6c

    const/4 v9, 0x0

    if-nez v2, :cond_6f

    .line 3222
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3223
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3224
    return v9

    .line 3229
    :cond_6f
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3231
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v1, :cond_8a

    .line 3232
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3235
    :cond_8a
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x5

    invoke-virtual {v7, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3239
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/16 v3, 0xd

    invoke-virtual {v7, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3242
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x3

    invoke-virtual {v7, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3246
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/16 v3, 0x8

    invoke-virtual {v7, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3250
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_ef

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    goto :goto_ef

    .line 3255
    :cond_c3
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_ff

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_d2

    goto :goto_ff

    .line 3257
    :cond_d2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3251
    :cond_ef
    :goto_ef
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3252
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3262
    :cond_ff
    :goto_ff
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3264
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_110

    .line 3265
    const-string v1, "<permission> does not specify protectionLevel"

    aput-object v1, p4, v9

    .line 3266
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3267
    return v9

    .line 3270
    :cond_110
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v2}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3272
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    if-eqz v1, :cond_144

    .line 3273
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_144

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_144

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-eq v1, v2, :cond_144

    .line 3277
    const-string v1, "<permission>  protectionLevel specifies a non-instant flag but is not based on signature type"

    aput-object v1, p4, v9

    .line 3279
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3280
    return v9

    .line 3284
    :cond_144
    const-string v3, "<permission>"

    move-object/from16 v1, p2

    move-object/from16 v5, p4

    move-object v4, v13

    move-object v2, v14

    .end local v13    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v4, "perm":Landroid/content/pm/PackageParser$Permission;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    .end local v4    # "perm":Landroid/content/pm/PackageParser$Permission;
    .restart local v13    # "perm":Landroid/content/pm/PackageParser$Permission;
    if-nez v3, :cond_155

    .line 3285
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3286
    return v9

    .line 3289
    :cond_155
    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3291
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 26
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual {v13, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3145
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/16 v2, 0xc

    const/4 v15, 0x0

    invoke-virtual {v5, v2, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 3147
    .local v2, "requestDetailResourceId":I
    const/16 v3, 0x9

    invoke-virtual {v5, v3, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 3150
    .local v3, "backgroundRequestResourceId":I
    const/16 v4, 0xa

    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3154
    .local v4, "backgroundRequestDetailResourceId":I
    new-instance v6, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;III)V

    .line 3157
    .local v6, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    move v7, v2

    .end local v2    # "requestDetailResourceId":I
    .local v7, "requestDetailResourceId":I
    iget-object v2, v6, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v11, 0x5

    const/4 v12, 0x7

    move v8, v4

    .end local v4    # "backgroundRequestDetailResourceId":I
    .local v8, "backgroundRequestDetailResourceId":I
    const-string v4, "<permission-group>"

    move-object v9, v6

    .end local v6    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v9, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    const/4 v6, 0x1

    move v10, v7

    .end local v7    # "requestDetailResourceId":I
    .local v10, "requestDetailResourceId":I
    const/4 v7, 0x2

    move/from16 v16, v8

    .end local v8    # "backgroundRequestDetailResourceId":I
    .local v16, "backgroundRequestDetailResourceId":I
    const/4 v8, 0x0

    move-object/from16 v17, v9

    .end local v9    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v17, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    const/4 v9, 0x1

    move/from16 v18, v10

    .end local v10    # "requestDetailResourceId":I
    .local v18, "requestDetailResourceId":I
    const/16 v10, 0x8

    move/from16 v19, v15

    move-object/from16 v15, v17

    move/from16 v17, v16

    move/from16 v16, v3

    move-object/from16 v3, p5

    .end local v3    # "backgroundRequestResourceId":I
    .local v15, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v16, "backgroundRequestResourceId":I
    .local v17, "backgroundRequestDetailResourceId":I
    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    move-object v6, v1

    move-object v7, v5

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/16 v8, -0x6c

    if-nez v2, :cond_56

    .line 3165
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3166
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3167
    return v19

    .line 3170
    :cond_56
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v2, 0x4

    move/from16 v9, v19

    invoke-virtual {v7, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 3173
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/16 v2, 0xb

    invoke-virtual {v7, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 3175
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v2, 0x6

    invoke-virtual {v7, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 3177
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v2, 0x3

    invoke-virtual {v7, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 3180
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3182
    const-string v3, "<permission-group>"

    move-object/from16 v5, p5

    move-object v1, v13

    move-object v2, v14

    move-object v4, v15

    .end local v15    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v4, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    .end local v4    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .restart local v15    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v3, :cond_90

    .line 3184
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3185
    return v9

    .line 3188
    :cond_90
    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3190
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 21
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3297
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    move-object v13, v4

    .line 3299
    .local v13, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3302
    .local v5, "sa":Landroid/content/res/TypedArray;
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v11, 0x3

    const/4 v12, 0x4

    const-string v4, "<permission-tree>"

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x5

    move-object/from16 v3, p4

    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    move-object v6, v1

    move-object v7, v5

    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    const/16 v8, -0x6c

    const/4 v9, 0x0

    if-nez v2, :cond_36

    .line 3310
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3311
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3312
    return v9

    .line 3315
    :cond_36
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3317
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3318
    .local v1, "index":I
    if-lez v1, :cond_51

    .line 3319
    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v10, v1

    goto :goto_52

    .line 3318
    :cond_51
    move v10, v1

    .line 3321
    .end local v1    # "index":I
    .local v10, "index":I
    :goto_52
    if-gez v10, :cond_70

    .line 3322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<permission-tree> name has less than three segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v9

    .line 3324
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3325
    return v9

    .line 3328
    :cond_70
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v9, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3329
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v9, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3330
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v9, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3331
    const/4 v11, 0x1

    iput-boolean v11, v13, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 3333
    const-string v3, "<permission-tree>"

    move-object/from16 v5, p4

    move-object v4, v13

    move-object v1, v14

    move-object v2, v15

    .end local v13    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v4, "perm":Landroid/content/pm/PackageParser$Permission;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 3335
    iput v8, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3336
    return v9

    .line 3339
    :cond_8f
    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3341
    return v11
.end method

.method private greylist-max-o parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;
    .registers 24
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5108
    move-object/from16 v0, p0

    move-object/from16 v14, p6

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v15, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5111
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v3, :cond_37

    .line 5112
    move-object v3, v1

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v3, "sa":Landroid/content/res/TypedArray;
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v12, 0xe

    const/4 v13, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x13

    const/16 v8, 0xf

    const/16 v9, 0x11

    const/16 v11, 0x8

    move-object/from16 v2, p1

    move-object v15, v3

    move-object/from16 v3, p5

    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .local v15, "sa":Landroid/content/res/TypedArray;
    invoke-direct/range {v1 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object v6, v2

    iput-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 5123
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v2, "<provider>"

    iput-object v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_3a

    .line 5111
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    :cond_37
    move-object/from16 v6, p1

    move-object v15, v1

    .line 5126
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    :goto_3a
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v15, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 5127
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v7, p4

    iput v7, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 5129
    new-instance v4, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v2, Landroid/content/pm/ProviderInfo;

    invoke-direct {v2}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v4, v1, v2}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 5130
    .local v4, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v1, 0x0

    aget-object v2, p5, v1

    const/4 v8, 0x0

    if-eqz v2, :cond_5a

    .line 5131
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5132
    return-object v8

    .line 5135
    :cond_5a
    const/4 v2, 0x0

    .line 5137
    .local v2, "providerExportedDefault":Z
    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_66

    .line 5141
    const/4 v2, 0x1

    move v9, v2

    goto :goto_67

    .line 5137
    :cond_66
    move v9, v2

    .line 5144
    .end local v2    # "providerExportedDefault":Z
    .local v9, "providerExportedDefault":Z
    :goto_67
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x7

    invoke-virtual {v15, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 5148
    const/16 v2, 0xa

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 5151
    .local v10, "cpname":Ljava/lang/String;
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xb

    invoke-virtual {v15, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 5155
    const/4 v2, 0x3

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5157
    .local v11, "permission":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5159
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_8d

    .line 5160
    move-object v2, v11

    .line 5162
    :cond_8d
    if-nez v2, :cond_98

    .line 5163
    iget-object v3, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_ac

    .line 5165
    :cond_98
    iget-object v3, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5166
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a9

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    goto :goto_aa

    :cond_a9
    move-object v5, v8

    :goto_aa
    iput-object v5, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 5168
    :goto_ac
    const/4 v3, 0x5

    invoke-virtual {v15, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5170
    if-nez v2, :cond_b6

    .line 5171
    move-object v2, v11

    move-object v12, v2

    goto :goto_b7

    .line 5170
    :cond_b6
    move-object v12, v2

    .line 5173
    .end local v2    # "str":Ljava/lang/String;
    .local v12, "str":Ljava/lang/String;
    :goto_b7
    if-nez v12, :cond_c2

    .line 5174
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_d6

    .line 5176
    :cond_c2
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5177
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d3

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_d4

    :cond_d3
    move-object v3, v8

    :goto_d4
    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 5180
    :goto_d6
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xd

    invoke-virtual {v15, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5184
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x16

    invoke-virtual {v15, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 5188
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x9

    invoke-virtual {v15, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 5192
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0xc

    invoke-virtual {v15, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 5199
    nop

    .line 5200
    const/16 v2, 0x15

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 5201
    .local v13, "splitName":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_148

    .line 5202
    invoke-static {v13, v1, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 5203
    .local v2, "error":Ljava/lang/String;
    if-eqz v2, :cond_144

    .line 5204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " specified invalid splitName "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PackageParser"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_148

    .line 5207
    :cond_144
    iget-object v3, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v13, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 5212
    .end local v2    # "error":Ljava/lang/String;
    :cond_148
    :goto_148
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v1, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5214
    const/16 v2, 0x10

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 5217
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v3, v5

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5220
    :cond_15d
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x12

    invoke-virtual {v15, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    .line 5223
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    if-eqz v2, :cond_175

    .line 5224
    iget-object v2, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5228
    :cond_175
    nop

    .line 5229
    const/16 v2, 0x14

    invoke-virtual {v15, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 5230
    .local v3, "visibleToEphemeral":Z
    if-eqz v3, :cond_18b

    .line 5231
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v5, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v16, 0x100000

    or-int v5, v5, v16

    iput v5, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5232
    const/4 v2, 0x1

    iput-boolean v2, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 5235
    :cond_18b
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5237
    iget-object v2, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1a3

    .line 5241
    iget-object v2, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v5, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v5, :cond_1a3

    .line 5242
    const-string v2, "Heavy-weight applications can not have providers in main process"

    aput-object v2, p5, v1

    .line 5243
    return-object v8

    .line 5247
    :cond_1a3
    if-nez v10, :cond_1aa

    .line 5248
    const-string v2, "<provider> does not include authorities attribute"

    aput-object v2, p5, v1

    .line 5249
    return-object v8

    .line 5251
    :cond_1aa
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1b5

    .line 5252
    const-string v2, "<provider> has empty authorities attribute"

    aput-object v2, p5, v1

    .line 5253
    return-object v8

    .line 5255
    :cond_1b5
    iget-object v1, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 5257
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1ca

    .line 5259
    return-object v8

    .line 5262
    :cond_1ca
    return-object v4
.end method

.method private greylist-max-o parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .registers 27
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "visibleToEphemeral"    # Z
    .param p4, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5268
    move-object/from16 v7, p4

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 5270
    .local v8, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v9, v0

    .local v9, "type":I
    const/4 v10, 0x1

    if-eq v0, v10, :cond_2a0

    const/4 v0, 0x3

    if-ne v9, v0, :cond_1e

    .line 5272
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v8, :cond_18

    goto :goto_1e

    :cond_18
    move-object/from16 v2, p0

    move-object/from16 v6, p5

    goto/16 :goto_2a4

    .line 5273
    :cond_1e
    :goto_1e
    if-eq v9, v0, :cond_29a

    const/4 v1, 0x4

    if-ne v9, v1, :cond_24

    .line 5274
    goto :goto_6

    .line 5277
    :cond_24
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_6d

    .line 5278
    new-instance v5, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-direct {v5, v7}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 5279
    .local v5, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    move-object v4, v2

    move-object v2, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v1

    .end local v5    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .local v0, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    if-nez v3, :cond_4d

    .line 5281
    return v11

    .line 5283
    :cond_4d
    if-eqz p3, :cond_5b

    .line 5284
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5285
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v3, v6

    iput v3, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5287
    :cond_5b
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getOrder()I

    move-result v1

    iget v3, v7, Landroid/content/pm/PackageParser$Provider;->order:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/content/pm/PackageParser$Provider;->order:I

    .line 5288
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5290
    .end local v0    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    goto :goto_6

    :cond_6d
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "meta-data"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 5291
    iget-object v0, v7, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object/from16 v6, p5

    invoke-direct {v2, v4, v5, v0, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v7, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 5293
    return v11

    .line 5296
    :cond_8d
    move-object/from16 v6, p5

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v12, "grant-uri-permission"

    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v13, " "

    const-string v14, " at "

    const-string v15, "PackageParser"

    if-eqz v3, :cond_140

    .line 5297
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5300
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 5302
    .local v1, "pa":Landroid/os/PatternMatcher;
    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 5304
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_b4

    .line 5305
    new-instance v12, Landroid/os/PatternMatcher;

    invoke-direct {v12, v3, v11}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v12

    .line 5308
    :cond_b4
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 5310
    if-eqz v3, :cond_c0

    .line 5311
    new-instance v12, Landroid/os/PatternMatcher;

    invoke-direct {v12, v3, v10}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v12

    .line 5314
    :cond_c0
    const/4 v12, 0x2

    invoke-virtual {v0, v12, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 5316
    if-eqz v3, :cond_d0

    .line 5317
    move/from16 v16, v11

    new-instance v11, Landroid/os/PatternMatcher;

    invoke-direct {v11, v3, v12}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v11

    goto :goto_d2

    .line 5316
    :cond_d0
    move/from16 v16, v11

    .line 5320
    :goto_d2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5322
    if-eqz v1, :cond_10b

    .line 5323
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v11, :cond_ea

    .line 5324
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-array v12, v10, [Landroid/os/PatternMatcher;

    iput-object v12, v11, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5325
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aput-object v1, v11, v16

    goto :goto_102

    .line 5327
    :cond_ea
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v11, v11

    .line 5328
    .local v11, "N":I
    add-int/lit8 v12, v11, 0x1

    new-array v12, v12, [Landroid/os/PatternMatcher;

    .line 5329
    .local v12, "newp":[Landroid/os/PatternMatcher;
    iget-object v13, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    move/from16 v14, v16

    invoke-static {v13, v14, v12, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5330
    aput-object v1, v12, v11

    .line 5331
    iget-object v13, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v12, v13, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5333
    .end local v11    # "N":I
    .end local v12    # "newp":[Landroid/os/PatternMatcher;
    :goto_102
    iget-object v11, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v10, v11, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5346
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5348
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "pa":Landroid/os/PatternMatcher;
    .end local v3    # "str":Ljava/lang/String;
    goto/16 :goto_6

    .line 5336
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "pa":Landroid/os/PatternMatcher;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_10b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <path-permission>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5337
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5338
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5336
    invoke-static {v15, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5340
    goto/16 :goto_6

    .line 5348
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "pa":Landroid/os/PatternMatcher;
    .end local v3    # "str":Ljava/lang/String;
    :cond_140
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "path-permission"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_265

    .line 5349
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 5352
    .local v3, "sa":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    .line 5354
    .local v11, "pa":Landroid/content/pm/PathPermission;
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 5356
    .local v17, "permission":Ljava/lang/String;
    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 5358
    .local v16, "readPermission":Ljava/lang/String;
    if-nez v16, :cond_164

    .line 5359
    move-object/from16 v16, v17

    move-object/from16 v18, v16

    goto :goto_166

    .line 5358
    :cond_164
    move-object/from16 v18, v16

    .line 5361
    .end local v16    # "readPermission":Ljava/lang/String;
    .local v18, "readPermission":Ljava/lang/String;
    :goto_166
    const/4 v10, 0x2

    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 5363
    .local v20, "writePermission":Ljava/lang/String;
    if-nez v20, :cond_16f

    .line 5364
    move-object/from16 v20, v17

    .line 5367
    :cond_16f
    const/4 v10, 0x0

    .line 5368
    .local v10, "havePerm":Z
    if-eqz v18, :cond_17a

    .line 5369
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    .line 5370
    const/4 v10, 0x1

    move-object/from16 v12, v18

    goto :goto_17c

    .line 5368
    :cond_17a
    move-object/from16 v12, v18

    .line 5372
    .end local v18    # "readPermission":Ljava/lang/String;
    .local v12, "readPermission":Ljava/lang/String;
    :goto_17c
    if-eqz v20, :cond_186

    .line 5373
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 5374
    const/4 v10, 0x1

    move-object/from16 v1, v20

    goto :goto_188

    .line 5372
    :cond_186
    move-object/from16 v1, v20

    .line 5377
    .end local v20    # "writePermission":Ljava/lang/String;
    .local v1, "writePermission":Ljava/lang/String;
    :goto_188
    if-nez v10, :cond_1bf

    .line 5379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5380
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5381
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5379
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5382
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5383
    goto/16 :goto_6

    .line 5390
    :cond_1bf
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 5392
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_1cc

    .line 5393
    new-instance v0, Landroid/content/pm/PathPermission;

    invoke-direct {v0, v5, v4, v12, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    .line 5397
    :cond_1cc
    const/4 v0, 0x4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5399
    .end local v5    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1da

    .line 5400
    new-instance v4, Landroid/content/pm/PathPermission;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5, v12, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v4

    .line 5404
    :cond_1da
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5406
    if-eqz v0, :cond_1e9

    .line 5407
    new-instance v4, Landroid/content/pm/PathPermission;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5, v12, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v4

    .line 5411
    :cond_1e9
    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5413
    if-eqz v0, :cond_1f8

    .line 5414
    new-instance v4, Landroid/content/pm/PathPermission;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v12, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v4

    .line 5418
    :cond_1f8
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 5420
    if-eqz v11, :cond_230

    .line 5421
    iget-object v4, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v4, :cond_213

    .line 5422
    iget-object v4, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5423
    iget-object v4, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/16 v16, 0x0

    aput-object v11, v4, v16

    goto :goto_22b

    .line 5425
    :cond_213
    iget-object v4, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v4, v4

    .line 5426
    .local v4, "N":I
    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    .line 5427
    .local v5, "newp":[Landroid/content/pm/PathPermission;
    iget-object v13, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v14, 0x0

    invoke-static {v13, v14, v5, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5428
    aput-object v11, v5, v4

    .line 5429
    iget-object v13, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v5, v13, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5430
    .end local v4    # "N":I
    .end local v5    # "newp":[Landroid/content/pm/PathPermission;
    nop

    .line 5442
    :goto_22b
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5444
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "writePermission":Ljava/lang/String;
    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "havePerm":Z
    .end local v11    # "pa":Landroid/content/pm/PathPermission;
    .end local v12    # "readPermission":Ljava/lang/String;
    .end local v17    # "permission":Ljava/lang/String;
    goto/16 :goto_6

    .line 5433
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "writePermission":Ljava/lang/String;
    .restart local v3    # "sa":Landroid/content/res/TypedArray;
    .restart local v10    # "havePerm":Z
    .restart local v11    # "pa":Landroid/content/pm/PathPermission;
    .restart local v12    # "readPermission":Ljava/lang/String;
    .restart local v17    # "permission":Ljava/lang/String;
    :cond_230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5434
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5435
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5433
    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5436
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5437
    goto/16 :goto_6

    .line 5446
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "writePermission":Ljava/lang/String;
    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "havePerm":Z
    .end local v11    # "pa":Landroid/content/pm/PathPermission;
    .end local v12    # "readPermission":Ljava/lang/String;
    .end local v17    # "permission":Ljava/lang/String;
    :cond_265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <provider>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5447
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5448
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5446
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5449
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5450
    goto/16 :goto_6

    .line 5273
    :cond_29a
    move-object/from16 v2, p0

    move-object/from16 v6, p5

    goto/16 :goto_6

    .line 5270
    :cond_2a0
    move-object/from16 v2, p0

    move-object/from16 v6, p5

    .line 5457
    :goto_2a4
    const/16 v19, 0x1

    return v19
.end method

.method public static final greylist-max-o parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .line 5763
    const/4 v0, 0x0

    const-string v1, "PackageParser"

    if-nez p0, :cond_b

    .line 5764
    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5765
    return-object v0

    .line 5769
    :cond_b
    const/4 v2, 0x0

    :try_start_c
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/PackageParser;->parsePublicKey([B)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_14} :catch_15

    return-object v0

    .line 5770
    :catch_15
    move-exception v2

    .line 5771
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    return-object v0
.end method

.method public static final blacklist parsePublicKey([B)Ljava/security/PublicKey;
    .registers 6
    .param p0, "publicKey"    # [B

    .line 5777
    const/4 v0, 0x0

    const-string v1, "PackageParser"

    if-nez p0, :cond_b

    .line 5778
    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5779
    return-object v0

    .line 5784
    :cond_b
    :try_start_b
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_10} :catch_62

    .line 5788
    .local v2, "keySpec":Ljava/security/spec/EncodedKeySpec;
    nop

    .line 5792
    :try_start_11
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 5793
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_1b} :catch_1e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_11 .. :try_end_1b} :catch_1c

    return-object v0

    .line 5796
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_1c
    move-exception v3

    goto :goto_25

    .line 5794
    :catch_1e
    move-exception v3

    .line 5795
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5798
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5802
    :goto_25
    :try_start_25
    const-string v3, "EC"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 5803
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_2f} :catch_32
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_25 .. :try_end_2f} :catch_30

    return-object v0

    .line 5806
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_30
    move-exception v3

    goto :goto_39

    .line 5804
    :catch_32
    move-exception v3

    .line 5805
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5808
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5812
    :goto_39
    :try_start_39
    const-string v3, "DSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 5813
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_39 .. :try_end_43} :catch_46
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_39 .. :try_end_43} :catch_44

    return-object v0

    .line 5816
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_44
    move-exception v3

    goto :goto_4d

    .line 5814
    :catch_46
    move-exception v3

    .line 5815
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5818
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5822
    :goto_4d
    :try_start_4d
    const-string v3, "ML-DSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 5823
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_57
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4d .. :try_end_57} :catch_5a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4d .. :try_end_57} :catch_58

    return-object v0

    .line 5827
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_58
    move-exception v1

    goto :goto_61

    .line 5824
    :catch_5a
    move-exception v3

    .line 5825
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Cound not parse public key: ML-DSA KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5829
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5832
    :goto_61
    return-object v0

    .line 5785
    .end local v2    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_62
    move-exception v2

    .line 5786
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5787
    return-object v0
.end method

.method private greylist-max-o parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;
    .registers 30
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5464
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v1, p6

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 5467
    .local v2, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v3, :cond_36

    .line 5468
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v12, 0x7

    const/4 v13, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/16 v8, 0x8

    const/16 v9, 0xc

    const/4 v11, 0x6

    move-object/from16 v3, p5

    move-object/from16 v14, p6

    move-object v15, v2

    move-object/from16 v2, p1

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v15, "sa":Landroid/content/res/TypedArray;
    invoke-direct/range {v1 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object v7, v2

    iput-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 5479
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v2, "<service>"

    iput-object v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_3a

    .line 5467
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    :cond_36
    move-object/from16 v7, p1

    move-object v14, v1

    move-object v15, v2

    .line 5482
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    :goto_3a
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v15, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 5483
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 5485
    new-instance v1, Landroid/content/pm/PackageParser$Service;

    iget-object v2, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ServiceInfo;

    invoke-direct {v3}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    move-object v9, v1

    .line 5486
    .local v9, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v10, 0x0

    aget-object v1, p5, v10

    const/4 v11, 0x0

    if-eqz v1, :cond_5b

    .line 5487
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5488
    return-object v11

    .line 5491
    :cond_5b
    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 5493
    .local v12, "setExported":Z
    if-eqz v12, :cond_6a

    .line 5494
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5498
    :cond_6a
    const/4 v13, 0x3

    invoke-virtual {v15, v13, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 5500
    .local v16, "str":Ljava/lang/String;
    if-nez v16, :cond_7a

    .line 5501
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_8e

    .line 5503
    :cond_7a
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_8c

    :cond_8b
    move-object v2, v11

    :goto_8c
    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 5509
    :goto_8e
    nop

    .line 5510
    const/16 v1, 0x11

    invoke-virtual {v15, v1, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 5511
    .local v1, "splitName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, " at "

    const-string v4, "PackageParser"

    if-nez v2, :cond_d8

    .line 5512
    invoke-static {v1, v10, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 5513
    .local v2, "error":Ljava/lang/String;
    if-eqz v2, :cond_d4

    .line 5514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " specified invalid splitName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 5517
    :cond_d4
    iget-object v5, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object v1, v5, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 5522
    .end local v2    # "error":Ljava/lang/String;
    :cond_d8
    :goto_d8
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v5, 0x13

    invoke-virtual {v15, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 5526
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput v10, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5527
    const/16 v2, 0x9

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_f6

    .line 5530
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v6, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v6, v5

    iput v6, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5532
    :cond_f6
    const/16 v2, 0xa

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 5535
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v6, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5537
    :cond_106
    const/16 v2, 0xe

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v6, 0x4

    if-eqz v2, :cond_119

    .line 5540
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v11

    iget v11, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v11, v6

    iput v11, v2, Landroid/content/pm/ServiceInfo;->flags:I

    goto :goto_11b

    .line 5537
    :cond_119
    move-object/from16 v17, v11

    .line 5542
    :goto_11b
    const/16 v2, 0x12

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 5545
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5547
    :cond_12b
    const/16 v2, 0xb

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 5550
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v2, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v18, 0x40000000    # 2.0f

    or-int v11, v11, v18

    iput v11, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5553
    :cond_13d
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v11, 0xd

    invoke-virtual {v15, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v2, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    .line 5556
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v2, :cond_155

    .line 5557
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v11, v11, 0x100

    iput v11, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5561
    :cond_155
    nop

    .line 5562
    const/16 v2, 0x10

    invoke-virtual {v15, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 5563
    .local v11, "visibleToEphemeral":Z
    const/high16 v18, 0x100000

    if-eqz v11, :cond_16d

    .line 5564
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move/from16 v19, v10

    iget v10, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int v10, v10, v18

    iput v10, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5565
    iput-boolean v5, v7, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    goto :goto_16f

    .line 5563
    :cond_16d
    move/from16 v19, v10

    .line 5568
    :goto_16f
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 5570
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_187

    .line 5574
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v10, :cond_187

    .line 5575
    const-string v2, "Heavy-weight applications can not have services in main process"

    aput-object v2, p5, v19

    .line 5576
    return-object v17

    .line 5580
    :cond_187
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 5582
    .local v10, "outerDepth":I
    :goto_18b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move/from16 v20, v2

    .local v20, "type":I
    if-eq v2, v5, :cond_29d

    move/from16 v2, v20

    .end local v20    # "type":I
    .local v2, "type":I
    if-ne v2, v13, :cond_1ab

    .line 5584
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v10, :cond_19e

    goto :goto_1ab

    :cond_19e
    move-object/from16 v6, p5

    move-object/from16 v20, v1

    move/from16 v21, v2

    const/4 v8, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    goto/16 :goto_2a8

    .line 5585
    :cond_1ab
    :goto_1ab
    if-eq v2, v13, :cond_282

    if-ne v2, v6, :cond_1b1

    .line 5586
    const/4 v5, 0x1

    goto :goto_18b

    .line 5589
    :cond_1b1
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "intent-filter"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20a

    .line 5590
    new-instance v5, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v5, v9}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 5591
    .local v5, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    move-object v6, v3

    const/4 v3, 0x1

    move-object/from16 v22, v4

    const/4 v4, 0x0

    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object v13, v6

    move-object/from16 v7, v22

    const/4 v8, 0x1

    const/16 v22, 0x4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    .end local v1    # "splitName":Ljava/lang/String;
    .end local v2    # "type":I
    .local v20, "splitName":Ljava/lang/String;
    .local v21, "type":I
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1df

    .line 5593
    return-object v17

    .line 5595
    :cond_1df
    if-eqz v11, :cond_1ec

    .line 5596
    invoke-virtual {v5, v8}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5597
    iget-object v3, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v4, v3, Landroid/content/pm/ServiceInfo;->flags:I

    or-int v4, v4, v18

    iput v4, v3, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5599
    :cond_1ec
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getOrder()I

    move-result v3

    iget v4, v9, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v9, Landroid/content/pm/PackageParser$Service;->order:I

    .line 5600
    iget-object v3, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5601
    .end local v5    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    move-object v4, v7

    move v5, v8

    move-object v3, v13

    move-object/from16 v1, v20

    move/from16 v6, v22

    const/4 v13, 0x3

    move-object/from16 v7, p1

    move/from16 v8, p4

    goto :goto_18b

    .end local v20    # "splitName":Ljava/lang/String;
    .end local v21    # "type":I
    .restart local v1    # "splitName":Ljava/lang/String;
    .restart local v2    # "type":I
    :cond_20a
    move-object/from16 v6, p5

    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object v13, v3

    move-object v7, v4

    const/4 v8, 0x1

    const/16 v22, 0x4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .end local v1    # "splitName":Ljava/lang/String;
    .end local v2    # "type":I
    .restart local v20    # "splitName":Ljava/lang/String;
    .restart local v21    # "type":I
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23f

    .line 5602
    iget-object v3, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_231

    .line 5604
    return-object v17

    .line 5602
    :cond_231
    move-object v4, v7

    move v5, v8

    move-object v3, v13

    move-object/from16 v1, v20

    move/from16 v6, v22

    const/4 v13, 0x3

    move-object/from16 v7, p1

    move/from16 v8, p4

    goto/16 :goto_18b

    .line 5608
    :cond_23f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <service>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5609
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5610
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5608
    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5611
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5612
    move-object v4, v7

    move v5, v8

    move-object v3, v13

    move-object/from16 v1, v20

    move/from16 v6, v22

    const/4 v13, 0x3

    move-object/from16 v7, p1

    move/from16 v8, p4

    goto/16 :goto_18b

    .line 5585
    .end local v20    # "splitName":Ljava/lang/String;
    .end local v21    # "type":I
    .restart local v1    # "splitName":Ljava/lang/String;
    .restart local v2    # "type":I
    :cond_282
    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object v13, v3

    move-object v7, v4

    move/from16 v22, v6

    const/4 v8, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    .end local v1    # "splitName":Ljava/lang/String;
    .end local v2    # "type":I
    .restart local v20    # "splitName":Ljava/lang/String;
    .restart local v21    # "type":I
    move v5, v8

    move-object/from16 v1, v20

    move/from16 v6, v22

    const/4 v13, 0x3

    move-object/from16 v7, p1

    move/from16 v8, p4

    goto/16 :goto_18b

    .line 5582
    .end local v21    # "type":I
    .restart local v1    # "splitName":Ljava/lang/String;
    .local v20, "type":I
    :cond_29d
    move-object/from16 v2, p3

    move-object/from16 v6, p5

    move v8, v5

    move/from16 v21, v20

    move-object/from16 v20, v1

    move-object/from16 v1, p2

    .line 5620
    .end local v1    # "splitName":Ljava/lang/String;
    .local v20, "splitName":Ljava/lang/String;
    .restart local v21    # "type":I
    :goto_2a8
    if-nez v12, :cond_2b9

    .line 5621
    iget-object v3, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2b5

    goto :goto_2b7

    :cond_2b5
    move/from16 v8, v19

    :goto_2b7
    iput-boolean v8, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5624
    :cond_2b9
    return-object v9
.end method

.method private greylist-max-o parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 16
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1306
    move-object v0, p3

    .line 1309
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-static {p3, v0}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    .line 1311
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1315
    const/4 v2, 0x0

    .line 1317
    .local v2, "foundApp":Z
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1318
    .local v3, "outerDepth":I
    :cond_c
    :goto_c
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_7d

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1d

    .line 1319
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_7d

    .line 1320
    :cond_1d
    if-eq v5, v4, :cond_c

    const/4 v4, 0x4

    if-ne v5, v4, :cond_23

    .line 1321
    goto :goto_c

    .line 1324
    :cond_23
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1325
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "application"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "PackageParser"

    if-eqz v6, :cond_45

    .line 1326
    if-eqz v2, :cond_3c

    .line 1332
    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1334
    goto :goto_c

    .line 1338
    :cond_3c
    const/4 v2, 0x1

    .line 1339
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 1340
    return-object v1

    .line 1356
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_44
    goto :goto_c

    .line 1350
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <manifest>: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " at "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1352
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1350
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1354
    goto :goto_c

    .line 1358
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_7d
    if-nez v2, :cond_88

    .line 1359
    const/4 v1, 0x0

    const-string v4, "<manifest> does not contain an <application>"

    aput-object v4, p6, v1

    .line 1360
    const/16 v1, -0x6d

    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1363
    :cond_88
    return-object p1
.end method

.method private greylist-max-o parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .registers 16
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "splitIndex"    # I
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1259
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v8, v0, p2

    .line 1261
    .local v8, "apkPath":Ljava/lang/String;
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1262
    iput-object v8, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1267
    const/4 v3, 0x0

    .line 1270
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_a
    invoke-virtual {p3, v8}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 1271
    .local v9, "cookie":I
    if-eqz v9, :cond_76

    .line 1276
    const-string v4, "AndroidManifest.xml"

    invoke-virtual {p3, v9, v4}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_17
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_a .. :try_end_17} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_94
    .catchall {:try_start_a .. :try_end_17} :catchall_91

    .line 1277
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_17
    new-instance v3, Landroid/content/res/Resources;

    iget-object v5, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    invoke-direct {v3, p3, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1279
    .local v3, "res":Landroid/content/res/Resources;
    new-array v7, v0, [Ljava/lang/String;

    .line 1280
    .local v7, "outError":[Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v5, p4

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0
    :try_end_29
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_17 .. :try_end_29} :catch_72
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_29} :catch_6e
    .catchall {:try_start_17 .. :try_end_29} :catchall_6a

    move-object v2, v0

    .line 1281
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_31

    .line 1292
    .end local v7    # "outError":[Ljava/lang/String;
    .end local v9    # "cookie":I
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1293
    nop

    .line 1294
    return-void

    .line 1282
    .restart local v7    # "outError":[Ljava/lang/String;
    .restart local v9    # "cookie":I
    :cond_31
    :try_start_31
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    iget v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " (at "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1283
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "): "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v0
    :try_end_61
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_31 .. :try_end_61} :catch_67
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_61} :catch_64
    .catchall {:try_start_31 .. :try_end_61} :catchall_61

    .line 1292
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v7    # "outError":[Ljava/lang/String;
    .end local v9    # "cookie":I
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catchall_61
    move-exception v0

    move-object v3, v4

    goto :goto_b6

    .line 1288
    :catch_64
    move-exception v0

    move-object v3, v4

    goto :goto_96

    .line 1286
    :catch_67
    move-exception v0

    move-object v3, v4

    goto :goto_b3

    .line 1292
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_6a
    move-exception v0

    move-object v2, p1

    move-object v3, v4

    goto :goto_b6

    .line 1288
    :catch_6e
    move-exception v0

    move-object v2, p1

    move-object v3, v4

    goto :goto_96

    .line 1286
    :catch_72
    move-exception v0

    move-object v2, p1

    move-object v3, v4

    goto :goto_b3

    .line 1272
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "cookie":I
    :cond_76
    :try_start_76
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x65

    invoke-direct {v0, v4, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v0
    :try_end_91
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_76 .. :try_end_91} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_91} :catch_94
    .catchall {:try_start_76 .. :try_end_91} :catchall_91

    .line 1292
    .end local v9    # "cookie":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catchall_91
    move-exception v0

    move-object v2, p1

    goto :goto_b6

    .line 1288
    :catch_94
    move-exception v0

    move-object v2, p1

    .line 1289
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_96
    :try_start_96
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read manifest from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x66

    invoke-direct {v4, v6, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v4

    .line 1286
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catch_b1
    move-exception v0

    move-object v2, p1

    .line 1287
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_b3
    nop

    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v0
    :try_end_b5
    .catchall {:try_start_96 .. :try_end_b5} :catchall_b5

    .line 1292
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catchall_b5
    move-exception v0

    :goto_b6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1293
    throw v0
.end method

.method private greylist-max-o parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .registers 25
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4046
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 4049
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x7

    const/4 v9, 0x1

    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/4 v10, 0x4

    if-eqz v5, :cond_1e

    .line 4051
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v6, v5, p5

    or-int/2addr v6, v10

    aput v6, v5, p5

    .line 4054
    :cond_1e
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4056
    .local v11, "classLoaderName":Ljava/lang/String;
    const/16 v12, -0x6c

    const/4 v13, 0x0

    if-eqz v11, :cond_48

    invoke-static {v11}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    goto :goto_48

    .line 4059
    :cond_30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid class loader name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p6, v13

    .line 4060
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4061
    return v13

    .line 4057
    :cond_48
    :goto_48
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object v11, v5, p5

    .line 4064
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    move-object v15, v4

    .line 4066
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .local v14, "innerDepth":I
    .local v15, "sa":Landroid/content/res/TypedArray;
    :goto_53
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    if-eq v4, v9, :cond_222

    const/4 v4, 0x3

    if-ne v5, v4, :cond_6a

    .line 4067
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v14, :cond_64

    goto :goto_6a

    :cond_64
    move/from16 v17, v5

    move-object/from16 v5, p6

    goto/16 :goto_226

    .line 4068
    :cond_6a
    :goto_6a
    if-eq v5, v4, :cond_21b

    if-ne v5, v10, :cond_72

    .line 4069
    move-object/from16 v5, p6

    goto/16 :goto_21f

    .line 4072
    :cond_72
    const/16 v16, 0x0

    .line 4076
    .local v16, "parsedComponent":Landroid/content/pm/ComponentInfo;
    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v4, 0x0

    invoke-direct {v6, v4}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser-IA;)V

    .line 4077
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4078
    .local v4, "tagName":Ljava/lang/String;
    const-string v7, "activity"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 4079
    const/4 v7, 0x0

    iget-boolean v8, v1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object v10, v4

    move/from16 v17, v5

    move/from16 v4, p4

    move-object/from16 v5, p6

    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    .local v10, "tagName":Ljava/lang/String;
    .local v17, "type":I
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 4081
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_99

    .line 4082
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4083
    return v13

    .line 4086
    :cond_99
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4087
    iget-object v2, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4089
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v2, "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move-object v4, v2

    move-object/from16 v2, p2

    goto/16 :goto_1d6

    .end local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v17    # "type":I
    .restart local v4    # "tagName":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_a9
    move-object v10, v4

    move/from16 v17, v5

    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v17    # "type":I
    const-string/jumbo v2, "receiver"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 4090
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 4092
    .restart local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_c8

    .line 4093
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4094
    return v13

    .line 4097
    :cond_c8
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4098
    iget-object v2, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4100
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move-object v4, v2

    move-object/from16 v2, p2

    goto/16 :goto_1d6

    .end local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_d8
    const-string/jumbo v2, "service"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 4101
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v7

    .line 4102
    .local v7, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v7, :cond_f2

    .line 4103
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4104
    return v13

    .line 4107
    :cond_f2
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4108
    iget-object v2, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 4110
    .end local v7    # "s":Landroid/content/pm/PackageParser$Service;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move-object v4, v2

    move-object/from16 v2, p2

    goto/16 :goto_1d6

    .end local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_102
    const-string/jumbo v2, "provider"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 4111
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v7

    .line 4112
    .local v7, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v7, :cond_11c

    .line 4113
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4114
    return v13

    .line 4117
    :cond_11c
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4118
    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4120
    .end local v7    # "p":Landroid/content/pm/PackageParser$Provider;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move-object v4, v2

    move-object/from16 v2, p2

    goto/16 :goto_1d6

    .end local v2    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_12c
    const-string v2, "activity-alias"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14e

    .line 4121
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 4122
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v7, :cond_145

    .line 4123
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4124
    return v13

    .line 4127
    :cond_145
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4128
    iget-object v4, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4130
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v4, "parsedComponent":Landroid/content/pm/ComponentInfo;
    goto/16 :goto_1d6

    .end local v4    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_14e
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16e

    .line 4134
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_1d4

    .line 4136
    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4137
    return v13

    .line 4140
    :cond_16e
    const-string/jumbo v4, "uses-static-library"

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 4141
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d4

    .line 4142
    return v13

    .line 4145
    :cond_17e
    const-string/jumbo v4, "uses-library"

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c8

    .line 4146
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 4151
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 4153
    .local v7, "lname":Ljava/lang/String;
    invoke-virtual {v4, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 4157
    .local v8, "req":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 4159
    if-eqz v7, :cond_1c1

    .line 4160
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 4161
    if-eqz v8, :cond_1b1

    .line 4163
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    iput-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 4164
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    iput-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_1c1

    .line 4168
    :cond_1b1
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c1

    .line 4169
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    iput-object v15, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4175
    :cond_1c1
    :goto_1c1
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4177
    .end local v7    # "lname":Ljava/lang/String;
    .end local v8    # "req":Z
    move-object v15, v4

    move-object/from16 v4, v16

    goto :goto_1d6

    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    :cond_1c8
    const-string/jumbo v4, "uses-package"

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e5

    .line 4180
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4196
    :cond_1d4
    move-object/from16 v4, v16

    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v4, "parsedComponent":Landroid/content/pm/ComponentInfo;
    :goto_1d6
    if-eqz v4, :cond_1e2

    iget-object v7, v4, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    if-nez v7, :cond_1e2

    .line 4201
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v7, v7, p5

    iput-object v7, v4, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 4203
    .end local v4    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_1e2
    const/4 v10, 0x4

    goto/16 :goto_53

    .line 4184
    .restart local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_1e5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <application>: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4186
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4184
    const-string v7, "PackageParser"

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4188
    goto :goto_21f

    .line 4068
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v16    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v17    # "type":I
    .restart local v5    # "type":I
    :cond_21b
    move/from16 v17, v5

    move-object/from16 v5, p6

    .line 4066
    .end local v5    # "type":I
    :goto_21f
    const/4 v10, 0x4

    goto/16 :goto_53

    .restart local v5    # "type":I
    :cond_222
    move/from16 v17, v5

    move-object/from16 v5, p6

    .line 4205
    .end local v5    # "type":I
    .restart local v17    # "type":I
    :goto_226
    return v9
.end method

.method private greylist-max-o parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2730
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2731
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2735
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2737
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 2739
    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_24

    .line 2740
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 2744
    :cond_24
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2746
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2748
    :cond_30
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2749
    return-object v0
.end method

.method private greylist-max-o parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .registers 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2857
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2862
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2865
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2866
    .local v3, "maxSdkVersion":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 2868
    .local v4, "val":Landroid/util/TypedValue;
    if-eqz v4, :cond_21

    .line 2869
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_21

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_21

    .line 2870
    iget v3, v4, Landroid/util/TypedValue;->data:I

    .line 2874
    :cond_21
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2877
    .local v5, "requiredFeature":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2880
    .local v1, "requiredNotfeature":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2882
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2884
    const/4 v6, 0x1

    if-nez v2, :cond_35

    .line 2885
    return v6

    .line 2888
    :cond_35
    if-eqz v3, :cond_3c

    sget v7, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v3, v7, :cond_3c

    .line 2889
    return v6

    .line 2893
    :cond_3c
    if-eqz v5, :cond_4b

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_4b

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v7, v5}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4b

    .line 2894
    return v6

    .line 2898
    :cond_4b
    if-eqz v1, :cond_5a

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_5a

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 2899
    invoke-interface {v7, v1}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 2900
    return v6

    .line 2903
    :cond_5a
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2904
    .local v7, "index":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_6d

    .line 2905
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 2907
    :cond_6d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2909
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2907
    const-string v9, "PackageParser"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :goto_9f
    return v6
.end method

.method private greylist-max-o parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 15
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2754
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2758
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2760
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2762
    .local v3, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2764
    .local v5, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2767
    const/16 v6, -0x6c

    if-eqz v2, :cond_95

    if-ltz v3, :cond_95

    if-nez v5, :cond_22

    goto :goto_95

    .line 2776
    :cond_22
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v7, :cond_49

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 2777
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Depending on multiple versions of static library "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v1

    .line 2778
    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2779
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2780
    return v1

    .line 2783
    :cond_49
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 2786
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2789
    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2790
    .local v6, "additionalCertSha256Digests":[Ljava/lang/String;
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_6a

    .line 2791
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/PackageParser;->parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2792
    if-nez v6, :cond_6d

    .line 2793
    return v1

    .line 2796
    :cond_6a
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2799
    :cond_6d
    array-length v7, v6

    add-int/2addr v7, v4

    new-array v7, v7, [Ljava/lang/String;

    .line 2800
    .local v7, "certSha256Digests":[Ljava/lang/String;
    aput-object v5, v7, v1

    .line 2801
    array-length v8, v6

    invoke-static {v6, v1, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2804
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 2805
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    int-to-long v8, v3

    invoke-static {v1, v8, v9, v4}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 2807
    const-class v1, [Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v1, v8, v7, v4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 2810
    return v4

    .line 2768
    .end local v6    # "additionalCertSha256Digests":[Ljava/lang/String;
    .end local v7    # "certSha256Digests":[Ljava/lang/String;
    :cond_95
    :goto_95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad uses-static-library declaration name: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " version: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " certDigest"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v1

    .line 2770
    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2771
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2772
    return v1
.end method

.method private static greylist-max-o parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .registers 9
    .param p0, "attrs"    # Landroid/util/AttributeSet;

    .line 5731
    const/4 v0, 0x0

    .line 5732
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5734
    .local v1, "encodedPublicKey":Ljava/lang/String;
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 5735
    .local v2, "attrCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_1e

    .line 5736
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 5737
    .local v4, "attrResId":I
    sparse-switch v4, :sswitch_data_54

    goto :goto_1b

    .line 5743
    :sswitch_11
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 5739
    :sswitch_16
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 5740
    nop

    .line 5735
    .end local v4    # "attrResId":I
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 5748
    .end local v3    # "i":I
    :cond_1e
    const/4 v3, 0x0

    const-string v4, "PackageParser"

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_4d

    .line 5753
    :cond_2a
    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 5754
    .local v5, "publicKey":Ljava/security/PublicKey;
    if-nez v5, :cond_47

    .line 5755
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse verifier public key for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5756
    return-object v3

    .line 5759
    :cond_47
    new-instance v3, Landroid/content/pm/VerifierInfo;

    invoke-direct {v3, v0, v5}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v3

    .line 5749
    .end local v5    # "publicKey":Ljava/security/PublicKey;
    :cond_4d
    :goto_4d
    const-string/jumbo v5, "verifier package name was null; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5750
    return-object v3

    :sswitch_data_54
    .sparse-switch
        0x1010003 -> :sswitch_16
        0x10103a6 -> :sswitch_11
    .end sparse-switch
.end method

.method public static blacklist readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .registers 16
    .param p0, "r"    # Landroid/content/res/Resources;

    .line 8718
    const v0, 0x11102df

    if-eqz p0, :cond_c

    .line 8719
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 8720
    return-void

    .line 8725
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android"

    .line 8727
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 8725
    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_44

    .line 8730
    .local v1, "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 8731
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 8734
    .local v2, "systemResources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 8742
    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    .line 8743
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 8734
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    .line 8746
    .local v3, "overlayableRes":Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 8747
    return-void

    .line 8728
    .end local v1    # "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "systemResources":Landroid/content/res/Resources;
    .end local v3    # "overlayableRes":Landroid/content/res/Resources;
    :catch_44
    move-exception v0

    .line 8729
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 12
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 9355
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 9356
    .local v0, "N":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 9357
    return-object v1

    .line 9360
    :cond_9
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 9361
    .local v3, "keySetMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v0, :cond_41

    .line 9362
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 9363
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9364
    .local v6, "M":I
    if-ne v6, v2, :cond_1f

    .line 9365
    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9366
    goto :goto_3e

    .line 9369
    :cond_1f
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 9370
    .local v7, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_25
    if-ge v8, v6, :cond_3b

    .line 9371
    const-class v9, Ljava/security/PublicKey;

    .line 9372
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-class v10, Ljava/security/PublicKey;

    invoke-virtual {p0, v9, v10}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/PublicKey;

    .line 9373
    .local v9, "pk":Ljava/security/PublicKey;
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9370
    .end local v9    # "pk":Ljava/security/PublicKey;
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 9376
    .end local v8    # "j":I
    :cond_3b
    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9361
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "M":I
    .end local v7    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 9379
    .end local v4    # "i":I
    :cond_41
    return-object v3
.end method

.method public static blacklist reportIfDebug(ZJ)Z
    .registers 3
    .param p0, "result"    # Z
    .param p1, "flags"    # J

    .line 9264
    return p0
.end method

.method private blacklist resolveWindowLayout(Landroid/content/pm/PackageParser$Activity;)V
    .registers 15
    .param p1, "activity"    # Landroid/content/pm/PackageParser$Activity;

    .line 4881
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3c

    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    .line 4882
    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3c

    .line 4886
    :cond_f
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4888
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 4889
    return-void

    .line 4892
    :cond_1c
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4894
    .local v11, "windowLayoutAffinity":Ljava/lang/String;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v1, :cond_37

    .line 4895
    new-instance v3, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v10, -0x1

    const/4 v12, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;Landroid/util/DisplayMetrics;)V

    iput-object v3, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4900
    :cond_37
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v11, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 4901
    return-void

    .line 4883
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "windowLayoutAffinity":Ljava/lang/String;
    :cond_3c
    :goto_3c
    return-void
.end method

.method private greylist-max-o setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V
    .registers 9
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "sa"    # Landroid/content/res/TypedArray;
    .param p3, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4702
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0xc00

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 4706
    .local v0, "appExplicitDefault":Z
    :goto_d
    const/16 v3, 0x28

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_45

    if-eqz v0, :cond_18

    goto :goto_45

    .line 4720
    :cond_18
    iget-object v2, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_23

    .line 4724
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4725
    return-void

    .line 4730
    :cond_23
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4731
    const/4 v1, 0x6

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_44

    .line 4732
    :cond_2d
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 4733
    const/4 v1, 0x5

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_44

    .line 4734
    :cond_37
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4735
    const/4 v1, 0x7

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_44

    .line 4737
    :cond_41
    const/4 v1, 0x4

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4739
    :goto_44
    return-void

    .line 4709
    :cond_45
    :goto_45
    iget-object v4, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    .line 4711
    .local v1, "appResizeable":Z
    :goto_4f
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 4713
    const/4 v2, 0x2

    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_5b

    .line 4715
    :cond_59
    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4717
    :goto_5b
    return-void
.end method

.method public static greylist setCompatibilityModeEnabled(Z)V
    .registers 1
    .param p0, "compatibilityModeEnabled"    # Z

    .line 8711
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 8712
    return-void
.end method

.method private greylist-max-o setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .registers 7
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4748
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    .line 4749
    const v0, 0x3fee147b    # 1.86f

    goto :goto_e

    :cond_d
    move v0, v2

    .line 4751
    .local v0, "maxAspectRatio":F
    :goto_e
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    cmpl-float v1, v1, v2

    const-string v2, "android.max_aspect"

    if-eqz v1, :cond_1d

    .line 4753
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    goto :goto_2f

    .line 4754
    :cond_1d
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 4755
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4756
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 4759
    :cond_2f
    :goto_2f
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 4761
    .local v3, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-static {v3}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$mhasMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 4762
    goto :goto_35

    .line 4770
    :cond_48
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_53

    .line 4771
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    goto :goto_54

    .line 4772
    :cond_53
    move v4, v0

    :goto_54
    nop

    .line 4774
    .local v4, "activityAspectRatio":F
    invoke-static {v3, v4}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4775
    .end local v3    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v4    # "activityAspectRatio":F
    goto :goto_35

    .line 4776
    :cond_59
    return-void
.end method

.method private blacklist setMinAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .registers 6
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4784
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 4786
    .local v0, "minAspectRatio":F
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 4787
    .local v2, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-static {v2}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$mhasMinAspectRatio(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4788
    goto :goto_a

    .line 4790
    :cond_1d
    invoke-static {v2, v0}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMinAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4791
    .end local v2    # "activity":Landroid/content/pm/PackageParser$Activity;
    goto :goto_a

    .line 4792
    :cond_21
    return-void
.end method

.method private blacklist setSupportsSizeChanges(Landroid/content/pm/PackageParser$Package;)V
    .registers 9
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4795
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "android.supports_size_changes"

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 4796
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v3

    .line 4798
    .local v0, "supportsSizeChanges":Z
    :goto_13
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 4799
    .local v5, "activity":Landroid/content/pm/PackageParser$Activity;
    if-nez v0, :cond_33

    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_37

    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    .line 4800
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 4801
    :cond_33
    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v1, v6, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 4803
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    :cond_37
    goto :goto_19

    .line 4804
    :cond_38
    return-void
.end method

.method public static greylist-max-o toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .registers 4
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1369
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1370
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 1371
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1370
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1373
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private static blacklist updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V
    .registers 7
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 8029
    sget-boolean v0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_7

    .line 8030
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 8032
    :cond_7
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8033
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1d

    .line 8035
    :cond_15
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8037
    :goto_1d
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 8038
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_33

    .line 8040
    :cond_2b
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8042
    :goto_33
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 8043
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_46

    .line 8045
    :cond_40
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 8047
    :goto_46
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isVirtualPreload()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 8048
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_5c

    .line 8050
    :cond_54
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 8052
    :goto_5c
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_69

    .line 8053
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_6f

    .line 8055
    :cond_69
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 8057
    :goto_6f
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_79

    .line 8058
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_9b

    .line 8059
    :cond_79
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8b

    .line 8061
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_87

    goto :goto_88

    :cond_87
    move v1, v2

    :goto_88
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_9b

    .line 8062
    :cond_8b
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_99

    .line 8063
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9b

    .line 8065
    :cond_99
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 8067
    :cond_9b
    :goto_9b
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 8068
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ae

    .line 8069
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 8071
    :cond_ae
    invoke-static {p2}, Landroid/content/pm/PackageParser;->getSeinfoUser(Landroid/content/pm/pkg/FrameworkPackageUserState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 8072
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v0

    .line 8073
    .local v0, "overlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    if-eqz v0, :cond_d6

    .line 8074
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 8075
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 8077
    :cond_d6
    sget-boolean v1, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v1, :cond_e1

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    if-eqz v1, :cond_e1

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    goto :goto_e3

    :cond_e1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    :goto_e3
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 8078
    return-void
.end method

.method public static greylist-max-o validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    .line 1543
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1544
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1545
    .local v1, "hasSep":Z
    const/4 v2, 0x1

    .line 1546
    .local v2, "front":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_52

    .line 1547
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1548
    .local v4, "c":C
    const/16 v5, 0x61

    if-lt v4, v5, :cond_15

    const/16 v5, 0x7a

    if-le v4, v5, :cond_1d

    :cond_15
    const/16 v5, 0x41

    if-lt v4, v5, :cond_1f

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_1f

    .line 1549
    :cond_1d
    const/4 v2, 0x0

    .line 1550
    goto :goto_35

    .line 1552
    :cond_1f
    if-nez v2, :cond_2e

    .line 1553
    const/16 v5, 0x30

    if-lt v4, v5, :cond_29

    const/16 v5, 0x39

    if-le v4, v5, :cond_35

    :cond_29
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_2e

    .line 1554
    goto :goto_35

    .line 1557
    :cond_2e
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_38

    .line 1558
    const/4 v1, 0x1

    .line 1559
    const/4 v2, 0x1

    .line 1560
    nop

    .line 1546
    .end local v4    # "c":C
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1562
    .restart local v4    # "c":C
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1564
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_52
    if-eqz p2, :cond_5d

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 1565
    const-string v3, "Invalid filename"

    return-object v3

    .line 1567
    :cond_5d
    if-nez v1, :cond_66

    if-nez p1, :cond_62

    goto :goto_66

    .line 1568
    :cond_62
    const-string/jumbo v3, "must have at least one \'.\' separator"

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v3, 0x0

    .line 1567
    :goto_67
    return-object v3
.end method

.method public static blacklist writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 10
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .line 9325
    .local p1, "keySetMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v0, -0x1

    if-nez p1, :cond_7

    .line 9326
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9327
    return-void

    .line 9330
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 9331
    .local v1, "N":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9333
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9334
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9335
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 9336
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-nez v4, :cond_31

    .line 9337
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9338
    goto :goto_16

    .line 9341
    :cond_31
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 9342
    .local v5, "M":I
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 9343
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_39
    if-ge v6, v5, :cond_47

    .line 9344
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/Serializable;

    invoke-virtual {p0, v7}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 9343
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 9346
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_47
    goto :goto_16

    .line 9347
    :cond_48
    return-void
.end method


# virtual methods
.method public greylist parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 9
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1183
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1184
    .local v0, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v1, :cond_28

    .line 1185
    iget-boolean v1, v0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v1, :cond_d

    goto :goto_28

    .line 1186
    :cond_d
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a coreApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x6c

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1191
    :cond_28
    :goto_28
    new-instance v1, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;

    invoke-direct {v1, v0, p2}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1193
    .local v1, "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    :try_start_2d
    invoke-interface {v1}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1194
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1195
    iget-boolean v3, v0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_41} :catch_48
    .catchall {:try_start_2d .. :try_end_41} :catchall_46

    .line 1196
    nop

    .line 1201
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1196
    return-object v2

    .line 1201
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_46
    move-exception v2

    goto :goto_64

    .line 1197
    :catch_48
    move-exception v2

    .line 1198
    .local v2, "e":Ljava/io/IOException;
    :try_start_49
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x66

    invoke-direct {v3, v5, v4, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v1    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "flags":I
    throw v3
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_46

    .line 1201
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v1    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "flags":I
    :goto_64
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1202
    throw v2
.end method

.method public greylist parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 4
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public greylist parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;
    .registers 5
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1094
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1095
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0

    .line 1097
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setCacheDir(Ljava/io/File;)V
    .registers 2
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 598
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 599
    return-void
.end method

.method public greylist-max-o setCallback(Landroid/content/pm/PackageParser$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/content/pm/PackageParser$Callback;

    .line 629
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 630
    return-void
.end method

.method public greylist-max-o setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 2
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 591
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 592
    return-void
.end method

.method public greylist-max-o setOnlyCoreApps(Z)V
    .registers 2
    .param p1, "onlyCoreApps"    # Z

    .line 587
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 588
    return-void
.end method

.method public greylist setSeparateProcesses([Ljava/lang/String;)V
    .registers 2
    .param p1, "procs"    # [Ljava/lang/String;

    .line 578
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 579
    return-void
.end method
