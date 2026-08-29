.class public Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
.super Ljava/lang/Object;
.source "ParsingPackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;,
        Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;,
        Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseFlags;
    }
.end annotation


# static fields
.field public static final blacklist ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final blacklist ASPECT_RATIO_NOT_SET:F = -1.0f

.field public static final blacklist DEBUG_BACKUP:Z = false

.field public static final blacklist DEBUG_JAR:Z = false

.field public static final blacklist DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field public static final blacklist METADATA_ACTIVITY_LAUNCH_MODE:Ljava/lang/String; = "android.activity.launch_mode"

.field public static final blacklist METADATA_ACTIVITY_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "android.activity_window_layout_affinity"

.field public static final blacklist METADATA_CAN_DISPLAY_ON_REMOTE_DEVICES:Ljava/lang/String; = "android.can_display_on_remote_devices"

.field public static final blacklist METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field public static final blacklist METADATA_SUPPORTS_SIZE_CHANGES:Ljava/lang/String; = "android.supports_size_changes"

.field public static final blacklist MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field public static final blacklist PARSE_APEX:I = 0x400

.field public static final blacklist PARSE_APK_IN_APEX:I = 0x200

.field public static final blacklist PARSE_CHATTY:I = -0x80000000

.field public static final blacklist PARSE_COLLECT_CERTIFICATES:I = 0x20

.field public static final blacklist PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final blacklist PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final blacklist PARSE_ENFORCE_CODE:I = 0x40

.field public static final blacklist PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final blacklist PARSE_IGNORE_OVERLAY_REQUIRED_SYSTEM_PROPERTY:I = 0x80

.field public static final blacklist PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final blacklist PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final blacklist PARSE_MUST_BE_APK:I = 0x1

.field public static final blacklist RIGID_PARSER:Z = false

.field public static final blacklist SDK_CODENAMES:[Ljava/lang/String;

.field public static final blacklist SDK_VERSION:I

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"

.field public static final blacklist TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field public static final blacklist TAG_ALLOW_COMPONENT_ACCESS:Ljava/lang/String; = "allow-component-access"

.field public static final blacklist TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final blacklist TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field public static final blacklist TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field public static final blacklist TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field public static final blacklist TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field public static final blacklist TAG_INSTALL_CONSTRAINTS:Ljava/lang/String; = "install-constraints"

.field public static final blacklist TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field public static final blacklist TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field public static final blacklist TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field public static final blacklist TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field public static final blacklist TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final blacklist TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final blacklist TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field public static final blacklist TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final blacklist TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field public static final blacklist TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field public static final blacklist TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field public static final blacklist TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field public static final blacklist TAG_QUERIES:Ljava/lang/String; = "queries"

.field public static final blacklist TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final blacklist TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field public static final blacklist TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field public static final blacklist TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field public static final blacklist TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field public static final blacklist TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field public static final blacklist TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field public static final blacklist TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field public static final blacklist TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field public static final blacklist TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field public static final blacklist TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field public static final blacklist TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field public static blacklist sCompatibilityModeEnabled:Z

.field public static blacklist sUseRoundIcon:Z


# instance fields
.field private final blacklist mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

.field private final blacklist mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final blacklist mSeparateProcesses:[Ljava/lang/String;

.field private final blacklist mSplitPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    .line 222
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 224
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    .line 225
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .registers 5
    .param p1, "separateProcesses"    # [Ljava/lang/String;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p4, "callback"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/DisplayMetrics;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;",
            ")V"
        }
    .end annotation

    .line 321
    .local p3, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    .line 323
    iput-object p2, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 324
    iput-object p3, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    .line 325
    iput-object p4, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 326
    return-void
.end method

.method private static blacklist aFloat(FILandroid/content/res/TypedArray;)F
    .registers 4
    .param p0, "defaultValue"    # F
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3562
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method private static blacklist aFloat(ILandroid/content/res/TypedArray;)F
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3566
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method private static blacklist adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 7
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3315
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 3316
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3317
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_9
    if-ge v2, v1, :cond_24

    .line 3318
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3319
    .local v3, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setResizeMode(Lcom/android/internal/pm/pkg/component/ParsedActivity;I)V

    .line 3320
    nop

    .line 3321
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v4

    const v5, -0x400001

    and-int/2addr v4, v5

    .line 3320
    invoke-static {v3, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/internal/pm/pkg/component/ParsedComponent;I)V

    .line 3317
    .end local v3    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3323
    .end local v2    # "index":I
    :cond_24
    return-void
.end method

.method private blacklist afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 3
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2400
    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setMaxAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2401
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setMinAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2402
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setSupportsSizeChanges(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2404
    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->hasDomainURLs(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHasDomainUrls(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2405
    return-void
.end method

.method private static blacklist anInt(IILandroid/content/res/TypedArray;)I
    .registers 4
    .param p0, "defaultValue"    # I
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3570
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private static blacklist anInt(ILandroid/content/res/TypedArray;)I
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3578
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private static blacklist anInteger(IILandroid/content/res/TypedArray;)I
    .registers 4
    .param p0, "defaultValue"    # I
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3574
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method private static blacklist bool(ZILandroid/content/res/TypedArray;)Z
    .registers 4
    .param p0, "defaultValue"    # Z
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3558
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method private static blacklist convertCompatPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 6
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3273
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    array-length v1, v1

    .local v1, "size":I
    :goto_4
    if-ge v0, v1, :cond_2d

    .line 3274
    sget-object v2, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    aget-object v2, v2, v0

    .line 3275
    .local v2, "info":Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v4

    if-lt v3, v4, :cond_15

    .line 3276
    goto :goto_2d

    .line 3278
    :cond_15
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 3279
    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3273
    .end local v2    # "info":Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3282
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2d
    :goto_2d
    return-void
.end method

.method private blacklist convertSplitPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 11
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3285
    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3286
    .local v0, "listSize":I
    const/4 v1, 0x0

    .local v1, "is":I
    :goto_7
    if-ge v1, v0, :cond_5f

    .line 3287
    iget-object v2, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 3288
    .local v2, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getFeatureFlag()Ljava/lang/String;

    move-result-object v3

    .line 3289
    .local v3, "featureFlag":Ljava/lang/String;
    if-eqz v3, :cond_26

    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getInstance()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v4

    .line 3290
    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->isFeatureFlagNegated()Z

    move-result v5

    .line 3289
    invoke-virtual {v4, p1, v3, v5}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skip(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3291
    goto :goto_5c

    .line 3293
    :cond_26
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    .line 3294
    .local v4, "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v5

    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v6

    if-ge v5, v6, :cond_5c

    .line 3295
    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 3296
    goto :goto_5c

    .line 3298
    :cond_3f
    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v5

    .line 3299
    .local v5, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "in":I
    :goto_44
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5c

    .line 3300
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3301
    .local v7, "perm":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_59

    .line 3302
    invoke-interface {p1, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3299
    .end local v7    # "perm":Ljava/lang/String;
    :cond_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 3286
    .end local v2    # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .end local v3    # "featureFlag":Ljava/lang/String;
    .end local v4    # "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "in":I
    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3306
    .end local v1    # "is":I
    :cond_5f
    return-void
.end method

.method private static blacklist exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 5
    .param p0, "input"    # Landroid/util/SparseIntArray;

    .line 1851
    if-nez p0, :cond_4

    .line 1852
    const/4 v0, 0x0

    return-object v0

    .line 1854
    :cond_4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1855
    .local v0, "output":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1856
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1855
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1858
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method private static blacklist generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 3021
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3022
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, ":app_details"

    invoke-static {v0, v0, v1, p0}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 3024
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3025
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 3028
    :cond_15
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3031
    .local v2, "taskAffinity":Ljava/lang/String;
    nop

    .line 3032
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v4

    .line 3033
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isHardwareAccelerated()Z

    move-result v5

    .line 3031
    invoke-static {v0, v3, v4, v2, v5}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .param p2, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/parsing/pkg/ParsedPackage;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3395
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v2

    .line 3396
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    .line 3395
    move-object v0, p0

    move v5, p2

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "skipVerify":Z
    .local v0, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v5, "skipVerify":Z
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3402
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isStaticSharedLibrary()Z

    move-result v2

    .line 3403
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    .line 3402
    move-object v0, p0

    move v5, p2

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "skipVerify":Z
    .local v0, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v5, "skipVerify":Z
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 19
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "baseApkPath"    # Ljava/lang/String;
    .param p2, "isStaticSharedLibrary"    # Z
    .param p3, "targetSdkVersion"    # I
    .param p4, "splitCodePaths"    # [Ljava/lang/String;
    .param p5, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZI[",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3418
    move-object/from16 v7, p4

    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 3420
    .local v5, "signingDetails":Landroid/content/pm/SigningDetails;
    const-string v0, "collectCertificates"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3422
    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move/from16 v6, p3

    move/from16 v3, p5

    :try_start_13
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 3430
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3431
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_71

    .line 3456
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3431
    return-object v2

    .line 3434
    :cond_25
    :try_start_25
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SigningDetails;

    move-object v5, v2

    .line 3435
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework/framework-res.apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v2

    .line 3437
    .local v10, "frameworkRes":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 3438
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v11, v2

    .line 3439
    .local v11, "isFrameworkResSplit":Z
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    if-nez v11, :cond_6c

    .line 3440
    const/4 v2, 0x0

    move v12, v2

    .local v12, "i":I
    :goto_4b
    array-length v2, v7

    if-ge v12, v2, :cond_6c

    .line 3441
    aget-object v2, v7, v12

    move-object v1, p0

    move v4, p2

    move/from16 v6, p3

    move/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v0, v2

    .line 3449
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 3450
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_65
    .catchall {:try_start_25 .. :try_end_65} :catchall_71

    .line 3456
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3450
    return-object v2

    .line 3440
    :cond_69
    add-int/lit8 v12, v12, 0x1

    goto :goto_4b

    .line 3454
    .end local v12    # "i":I
    :cond_6c
    nop

    .line 3456
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3454
    return-object v0

    .line 3456
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    .end local v10    # "frameworkRes":Ljava/io/File;
    .end local v11    # "isFrameworkResSplit":Z
    :catchall_71
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3457
    throw v0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "baseCodePath"    # Ljava/lang/String;
    .param p2, "skipVerify"    # Z
    .param p3, "isStaticSharedLibrary"    # Z
    .param p4, "existingSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p5, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/content/pm/SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3464
    invoke-static {p5}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    .line 3466
    .local v0, "minSignatureScheme":I
    if-eqz p3, :cond_7

    .line 3468
    const/4 v0, 0x2

    .line 3471
    :cond_7
    if-eqz p2, :cond_e

    .line 3473
    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .local v1, "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    goto :goto_12

    .line 3476
    .end local v1    # "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_e
    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 3479
    .restart local v1    # "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :goto_12
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3480
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 3486
    :cond_1d
    sget-object v2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p4, v2, :cond_22

    .line 3487
    return-object v1

    .line 3489
    :cond_22
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SigningDetails;

    invoke-static {p4, v2}, Landroid/content/pm/Signature;->areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 3490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has mismatched certificates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x68

    invoke-interface {p0, v3, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 3494
    :cond_48
    invoke-interface {p0, p4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "apkPath"    # Ljava/lang/String;

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "/mnt/expand/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 581
    const/16 v2, 0x2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 582
    .local v2, "end":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 584
    .end local v2    # "end":I
    :cond_1b
    return-object v0
.end method

.method private static blacklist hasDomainURLs(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z
    .registers 11
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3044
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 3045
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3046
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_9
    if-ge v2, v1, :cond_4f

    .line 3047
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3048
    .local v3, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v4

    .line 3049
    .local v4, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 3050
    .local v5, "filtersSize":I
    const/4 v6, 0x0

    .local v6, "filtersIndex":I
    :goto_1a
    if-ge v6, v5, :cond_4c

    .line 3051
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v7

    .line 3052
    .local v7, "aii":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    goto :goto_47

    .line 3053
    :cond_2f
    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_36

    goto :goto_47

    .line 3054
    :cond_36
    const-string v8, "http"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 3055
    const-string v8, "https"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    goto :goto_4a

    .line 3050
    .end local v7    # "aii":Landroid/content/IntentFilter;
    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 3056
    .restart local v7    # "aii":Landroid/content/IntentFilter;
    :cond_4a
    :goto_4a
    const/4 v8, 0x1

    return v8

    .line 3046
    .end local v3    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;"
    .end local v5    # "filtersSize":I
    .end local v6    # "filtersIndex":I
    .end local v7    # "aii":Landroid/content/IntentFilter;
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3060
    .end local v2    # "index":I
    :cond_4f
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist isMainComponentTag(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 2554
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo v0, "service"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo v0, "receiver"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2555
    const-string/jumbo v0, "provider"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "activity-alias"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    .line 2554
    :goto_2f
    return v0
.end method

.method private blacklist isValidPurpose(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "purpose"    # Ljava/lang/String;
    .param p2, "minSdkVersion"    # I
    .param p3, "maxSdkVersion"    # I

    .line 1589
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-lt v0, p2, :cond_10

    sget v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-gt v0, p3, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static blacklist nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 4
    .param p0, "allowedChangingConfigs"    # I
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3592
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 3
    .param p0, "index"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3596
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2972
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2973
    .local v0, "certSha256Digests":[Ljava/lang/String;
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2975
    .local v1, "depth":I
    :goto_6
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_80

    const/4 v2, 0x3

    if-ne v3, v2, :cond_17

    .line 2977
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_80

    .line 2978
    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    .line 2979
    goto :goto_6

    .line 2981
    :cond_1b
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getInstance()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2982
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2983
    goto :goto_6

    .line 2986
    :cond_29
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2987
    .local v2, "nodeName":Ljava/lang/String;
    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 2988
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2991
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    :try_start_3c
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2994
    .local v5, "certSha256Digest":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 2995
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_7a

    .line 3006
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2995
    return-object v6

    .line 3002
    :cond_61
    :try_start_61
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 3003
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    .local v6, "certSha256Digest":Ljava/lang/String;
    const-class v5, Ljava/lang/String;

    invoke-static {v5, v0, v6}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_75
    .catchall {:try_start_61 .. :try_end_75} :catchall_7a

    .line 3006
    .end local v0    # "certSha256Digests":[Ljava/lang/String;
    .end local v6    # "certSha256Digest":Ljava/lang/String;
    .local v5, "certSha256Digests":[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3007
    move-object v0, v5

    goto :goto_7f

    .line 3006
    .end local v5    # "certSha256Digests":[Ljava/lang/String;
    .restart local v0    # "certSha256Digests":[Ljava/lang/String;
    :catchall_7a
    move-exception v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3007
    throw v5

    .line 3009
    .end local v2    # "nodeName":Ljava/lang/String;
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    :cond_7f
    :goto_7f
    goto :goto_6

    .line 3011
    :cond_80
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3260
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAdoptPermissions:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3262
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1, v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 3263
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 3264
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3266
    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 3268
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3266
    return-object v2

    .line 3268
    .end local v1    # "name":Ljava/lang/String;
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3269
    throw v1
.end method

.method private static blacklist parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1295
    invoke-static {p2, p3, p0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionUtils;->parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1297
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedAttribution;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1298
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1300
    :cond_f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 27
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "apkFile"    # Ljava/io/File;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "assetLoader"    # Lcom/android/internal/pm/split/SplitAssetLoader;
    .param p5, "flags"    # I
    .param p6, "shouldSkipComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/split/SplitAssetLoader;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 590
    move-object/from16 v2, p1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "apkPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 598
    .local v9, "volumeUuid":Ljava/lang/String;
    :try_start_a
    invoke-interface/range {p4 .. p4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_e} :catch_183

    move-object v10, v0

    .line 602
    .local v10, "assets":Landroid/content/res/AssetManager;
    nop

    .line 603
    invoke-virtual {v10, v3}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v11

    .line 604
    .local v11, "cookie":I
    if-nez v11, :cond_30

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed adding asset path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x65

    invoke-interface {v2, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 609
    :cond_30
    :try_start_30
    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v10, v11, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_168

    .line 611
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_36
    new-instance v5, Landroid/content/res/Resources;

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    invoke-direct {v5, v10, v0, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 613
    .local v5, "res":Landroid/content/res/Resources;
    move-object/from16 v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    .line 615
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 616
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " (at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 617
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 618
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-interface {v2, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_82
    .catchall {:try_start_36 .. :try_end_82} :catchall_15b

    .line 670
    if-eqz v6, :cond_87

    :try_start_84
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_168

    .line 616
    :cond_87
    return-object v0

    .line 621
    :cond_88
    :try_start_88
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-object v4, v0

    .line 622
    .local v4, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    invoke-virtual {v10}, Landroid/content/res/AssetManager;->containsAllocatedTable()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 623
    const-string v0, "Targeting R+ (version 30 and above) requires the resources.arsc of installed APKs to be stored uncompressed and aligned on a 4-byte boundary"

    const-wide/32 v7, 0x7e97bf3

    invoke-interface {v2, v0, v7, v8}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 628
    .local v0, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 629
    nop

    .line 630
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    .line 629
    const/16 v8, -0x7c

    invoke-interface {v2, v8, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_af
    .catchall {:try_start_88 .. :try_end_af} :catchall_15b

    .line 670
    if-eqz v6, :cond_b4

    :try_start_b1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_168

    .line 629
    :cond_b4
    return-object v7

    .line 634
    .end local v0    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_b5
    :try_start_b5
    invoke-interface/range {p4 .. p4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getBaseApkAssets()Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_15b

    move-object v7, v0

    .line 635
    .local v7, "apkAssets":Landroid/content/res/ApkAssets;
    const/4 v8, 0x0

    .line 637
    .local v8, "definesOverlayable":Z
    :try_start_bb
    invoke-virtual {v7}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result v0
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_bf} :catch_c1
    .catchall {:try_start_bb .. :try_end_bf} :catchall_15b

    move v8, v0

    .line 640
    goto :goto_c2

    .line 638
    :catch_c1
    move-exception v0

    .line 642
    :goto_c2
    if-eqz v8, :cond_122

    .line 643
    :try_start_c4
    invoke-virtual {v10}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    .line 644
    .local v0, "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 645
    .local v12, "size":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_cd
    if-ge v13, v12, :cond_11d

    .line 646
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 647
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v14}, Landroid/content/res/AssetManager;->getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 648
    .local v15, "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v15, :cond_112

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_112

    .line 649
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_e9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 650
    .local v18, "overlayable":Ljava/lang/String;
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "overlayable":Ljava/lang/String;
    .local v0, "overlayable":Ljava/lang/String;
    .local v17, "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .local v19, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    move-object/from16 v1, v18

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 651
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    .end local v0    # "overlayable":Ljava/lang/String;
    goto :goto_e9

    .line 649
    .end local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .local v0, "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_10d
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .end local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    goto :goto_116

    .line 648
    .end local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_112
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .line 645
    .end local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :goto_116
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    goto :goto_cd

    .end local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_11d
    move-object/from16 v17, v0

    move-object/from16 v19, v1

    .end local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    goto :goto_124

    .line 642
    .end local v12    # "size":I
    .end local v13    # "index":I
    .end local v17    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_122
    move-object/from16 v19, v1

    .line 656
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :goto_124
    invoke-interface {v4, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 658
    and-int/lit8 v0, p5, 0x20

    if-eqz v0, :cond_14c

    .line 659
    nop

    .line 660
    const/4 v0, 0x0

    invoke-static {v2, v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 661
    .local v0, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_141

    .line 662
    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_13b
    .catchall {:try_start_c4 .. :try_end_13b} :catchall_15b

    .line 670
    if-eqz v6, :cond_140

    :try_start_13d
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_140} :catch_168

    .line 662
    :cond_140
    return-object v1

    .line 664
    :cond_141
    :try_start_141
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SigningDetails;

    invoke-interface {v4, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 665
    nop

    .end local v0    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    goto :goto_151

    .line 666
    :cond_14c
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 669
    :goto_151
    invoke-interface {v2, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_155
    .catchall {:try_start_141 .. :try_end_155} :catchall_15b

    .line 670
    if-eqz v6, :cond_15a

    :try_start_157
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_168

    .line 669
    :cond_15a
    return-object v0

    .line 609
    .end local v4    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v7    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local v8    # "definesOverlayable":Z
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :catchall_15b
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_167

    :try_start_15f
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_163

    goto :goto_167

    :catchall_163
    move-exception v0

    :try_start_164
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v9    # "volumeUuid":Ljava/lang/String;
    .end local v10    # "assets":Landroid/content/res/AssetManager;
    .end local v11    # "cookie":I
    .end local p0    # "this":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "apkFile":Ljava/io/File;
    .end local p3    # "codePath":Ljava/lang/String;
    .end local p4    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .end local p5    # "flags":I
    .end local p6    # "shouldSkipComponents":Z
    :cond_167
    :goto_167
    throw v1
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_168} :catch_168

    .line 670
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v9    # "volumeUuid":Ljava/lang/String;
    .restart local v10    # "assets":Landroid/content/res/AssetManager;
    .restart local v11    # "cookie":I
    .restart local p0    # "this":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "apkFile":Ljava/io/File;
    .restart local p3    # "codePath":Ljava/lang/String;
    .restart local p4    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .restart local p5    # "flags":I
    .restart local p6    # "shouldSkipComponents":Z
    :catch_168
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read manifest from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, -0x66

    invoke-interface {v2, v4, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 599
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "assets":Landroid/content/res/AssetManager;
    .end local v11    # "cookie":I
    :catch_183
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_18e

    const/4 v1, -0x2

    goto :goto_190

    .line 601
    :cond_18e
    const/16 v1, -0x64

    :goto_190
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 600
    invoke-interface {v2, v1, v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .param p7, "shouldSkipComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    move-object/from16 v2, p1

    move-object/from16 v6, p5

    .line 729
    invoke-static {v2, v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 730
    .local v9, "packageSplitResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 731
    invoke-interface {v2, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 734
    :cond_13
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/util/Pair;

    .line 735
    .local v10, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 736
    .local v12, "pkgName":Ljava/lang/String;
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 738
    .local v1, "splitName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected base APK, but found split "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x6a

    invoke-interface {v2, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 745
    :cond_44
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v5, p4

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 747
    .local v15, "manifestArray":Landroid/content/res/TypedArray;
    :try_start_4c
    const-string v0, "coreApp"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v6, v4, v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    .line 749
    .local v16, "isCoreApp":Z
    move-object/from16 v3, p0

    iget-object v11, v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_85

    .line 751
    .local v0, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    nop

    .line 752
    move/from16 v7, p6

    move/from16 v8, p7

    move-object v11, v1

    move-object v1, v3

    move-object v4, v15

    move-object v3, v0

    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v1    # "splitName":Ljava/lang/String;
    .end local v15    # "manifestArray":Landroid/content/res/TypedArray;
    .local v3, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v4, "manifestArray":Landroid/content/res/TypedArray;
    .local v11, "splitName":Ljava/lang/String;
    :try_start_69
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_82

    .line 754
    .end local v4    # "manifestArray":Landroid/content/res/TypedArray;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v15    # "manifestArray":Landroid/content/res/TypedArray;
    :try_start_6d
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_80

    if-eqz v1, :cond_78

    .line 755
    nop

    .line 760
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 755
    return-object v0

    .line 758
    :cond_78
    :try_start_78
    invoke-interface {v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_80

    .line 760
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 758
    return-object v1

    .line 760
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v16    # "isCoreApp":Z
    :catchall_80
    move-exception v0

    goto :goto_87

    .end local v15    # "manifestArray":Landroid/content/res/TypedArray;
    .restart local v4    # "manifestArray":Landroid/content/res/TypedArray;
    :catchall_82
    move-exception v0

    move-object v15, v4

    .end local v4    # "manifestArray":Landroid/content/res/TypedArray;
    .restart local v15    # "manifestArray":Landroid/content/res/TypedArray;
    goto :goto_87

    .end local v11    # "splitName":Ljava/lang/String;
    .restart local v1    # "splitName":Ljava/lang/String;
    :catchall_85
    move-exception v0

    move-object v11, v1

    .end local v1    # "splitName":Ljava/lang/String;
    .restart local v11    # "splitName":Ljava/lang/String;
    :goto_87
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 761
    throw v0
.end method

.method private blacklist parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p3, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1d8

    :cond_7
    goto/16 :goto_14c

    :sswitch_9
    const-string v0, "compatible-screens"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x14

    goto/16 :goto_14d

    :sswitch_15
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_14d

    :sswitch_22
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto/16 :goto_14d

    :sswitch_2f
    const-string v0, "feature-group"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_14d

    :sswitch_3b
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto/16 :goto_14d

    :sswitch_48
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto/16 :goto_14d

    :sswitch_55
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_14d

    :sswitch_62
    const-string v0, "install-constraints"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x18

    goto/16 :goto_14d

    :sswitch_6e
    const-string/jumbo v0, "queries"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x19

    goto/16 :goto_14d

    :sswitch_7b
    const-string v0, "adopt-permissions"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    goto/16 :goto_14d

    :sswitch_87
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_14d

    :sswitch_93
    const-string v0, "instrumentation"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    goto/16 :goto_14d

    :sswitch_9f
    const-string v0, "key-sets"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_14d

    :sswitch_aa
    const-string/jumbo v0, "supports-input"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x15

    goto/16 :goto_14d

    :sswitch_b7
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    goto/16 :goto_14d

    :sswitch_c4
    const-string v0, "eat-comment"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    goto/16 :goto_14d

    :sswitch_d0
    const-string/jumbo v0, "permission-group"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto/16 :goto_14d

    :sswitch_dc
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_14d

    :sswitch_e8
    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_14d

    :sswitch_f2
    const-string v0, "allow-component-access"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1a

    goto :goto_14d

    :sswitch_fd
    const-string/jumbo v0, "permission"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_14d

    :sswitch_108
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_14d

    :sswitch_112
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x17

    goto :goto_14d

    :sswitch_11e
    const-string/jumbo v0, "overlay"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_14d

    :sswitch_129
    const-string/jumbo v0, "original-package"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    goto :goto_14d

    :sswitch_135
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_14d

    :sswitch_140
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_14d

    :goto_14c
    const/4 v0, -0x1

    :goto_14d
    packed-switch v0, :pswitch_data_246

    .line 1116
    const-string v0, "<manifest>"

    invoke-static {v0, p3, p5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1109
    :pswitch_157
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/Flags;->enableAllowComponentAccess()Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1110
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/component/ParsedAllowComponentAccessPolicyUtils;->parseAllowComponentAccessPolicy(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1113
    :cond_162
    invoke-static {p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1114
    invoke-interface {p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1107
    :pswitch_16a
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1104
    :pswitch_16f
    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 1105
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->getInstallConstraintsAllowlist()Ljava/util/Set;

    move-result-object v0

    .line 1104
    invoke-static {p2, p3, p4, p5, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1102
    :pswitch_17a
    invoke-static {p6, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1099
    :pswitch_17f
    invoke-static {p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1100
    invoke-interface {p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1093
    :pswitch_187
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1091
    :pswitch_18c
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1089
    :pswitch_191
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1087
    :pswitch_196
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1085
    :pswitch_19b
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1083
    :pswitch_1a0
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1081
    :pswitch_1a5
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1079
    :pswitch_1aa
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1077
    :pswitch_1af
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1075
    :pswitch_1b4
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1071
    :pswitch_1b9
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1069
    :pswitch_1be
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1067
    :pswitch_1c3
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1065
    :pswitch_1c8
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1062
    :pswitch_1cd
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1060
    :pswitch_1d2
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_1d8
    .sparse-switch
        -0x69b7c34b -> :sswitch_140
        -0x6366e724 -> :sswitch_135
        -0x420dbfb6 -> :sswitch_129
        -0x410bbbb0 -> :sswitch_11e
        -0x3b806306 -> :sswitch_112
        -0x3a5d850a -> :sswitch_108
        -0x1eda3a31 -> :sswitch_fd
        -0x1d56e5c8 -> :sswitch_f2
        -0x12786f81 -> :sswitch_e8
        -0xfe5a947 -> :sswitch_dc
        -0xa2d06ff -> :sswitch_d0
        -0x7b47f16 -> :sswitch_c4
        0x71978d4 -> :sswitch_b7
        0x14d5f341 -> :sswitch_aa
        0x1b1d76ff -> :sswitch_9f
        0x20752f6e -> :sswitch_93
        0x23c12e70 -> :sswitch_87
        0x25af09e7 -> :sswitch_7b
        0x270bd766 -> :sswitch_6e
        0x33694d04 -> :sswitch_62
        0x3573e73e -> :sswitch_55
        0x501aeeb1 -> :sswitch_48
        0x55ccf562 -> :sswitch_3b
        0x6446f4e8 -> :sswitch_2f
        0x65ae49fd -> :sswitch_22
        0x6adbbdf5 -> :sswitch_15
        0x6c5ff78e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_246
    .packed-switch 0x0
        :pswitch_1d2
        :pswitch_1cd
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c3
        :pswitch_1be
        :pswitch_1b9
        :pswitch_1b4
        :pswitch_1b4
        :pswitch_1b4
        :pswitch_1af
        :pswitch_1aa
        :pswitch_1a5
        :pswitch_1a0
        :pswitch_19b
        :pswitch_196
        :pswitch_191
        :pswitch_18c
        :pswitch_187
        :pswitch_17f
        :pswitch_17f
        :pswitch_17f
        :pswitch_17f
        :pswitch_17a
        :pswitch_16f
        :pswitch_16a
        :pswitch_157
    .end packed-switch
.end method

.method private blacklist parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 26
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "sa"    # Landroid/content/res/TypedArray;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .param p7, "shouldSkipComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v4, p5

    invoke-static/range {p1 .. p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 939
    .local v8, "sharedUserResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 940
    return-object v8

    .line 943
    :cond_13
    const-string/jumbo v0, "updatableSystem"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v4, v9, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 945
    .local v11, "updatableSystem":Z
    const-string v0, "emergencyInstaller"

    invoke-interface {v4, v9, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 948
    .local v12, "emergencyInstaller":Ljava/lang/String;
    const/4 v0, -0x1

    const/4 v3, 0x4

    invoke-static {v0, v3, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 950
    const/4 v3, 0x7

    invoke-static {v10, v3, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_3b

    move v3, v10

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    .line 953
    :goto_3c
    invoke-interface {v0, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 954
    invoke-interface {v0, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUpdatableSystem(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 955
    invoke-interface {v0, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, "foundApp":Z
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    move v14, v0

    .line 960
    .end local v0    # "foundApp":Z
    .local v13, "depth":I
    .local v14, "foundApp":Z
    :goto_4d
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v15, v0

    .local v15, "type":I
    if-eq v0, v10, :cond_d1

    const/4 v0, 0x3

    if-ne v15, v0, :cond_62

    .line 962
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v13, :cond_5e

    goto :goto_62

    :cond_5e
    move/from16 v5, p6

    goto/16 :goto_d3

    .line 963
    :cond_62
    :goto_62
    const/4 v0, 0x2

    if-eq v15, v0, :cond_66

    .line 964
    goto :goto_4d

    .line 966
    :cond_66
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getInstance()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 967
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 968
    goto :goto_4d

    .line 971
    :cond_74
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "tagName":Ljava/lang/String;
    const-string v3, "application"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 976
    if-eqz v14, :cond_90

    .line 980
    const-string v3, "PackageParsing"

    const-string v5, "<manifest> has more than one <application>"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-interface {v1, v9}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    move/from16 v5, p6

    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_c2

    .line 984
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_90
    const/4 v14, 0x1

    .line 985
    move-object/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    .end local v0    # "tagName":Ljava/lang/String;
    .local v16, "tagName":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    .local v17, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_c2

    .line 989
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .restart local v0    # "tagName":Ljava/lang/String;
    :cond_a8
    move-object/from16 v16, v0

    .end local v0    # "tagName":Ljava/lang/String;
    .restart local v16    # "tagName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v1, v16

    .end local v16    # "tagName":Ljava/lang/String;
    .local v1, "tagName":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v5, v6

    move-object/from16 v3, v16

    .line 992
    .end local v1    # "tagName":Ljava/lang/String;
    .restart local v0    # "tagName":Ljava/lang/String;
    .restart local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_c2
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 993
    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 995
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_cd
    move-object/from16 v4, p5

    goto/16 :goto_4d

    .line 960
    :cond_d1
    move/from16 v5, p6

    .line 997
    :goto_d3
    if-nez v14, :cond_f3

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_f3

    .line 998
    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const-wide/32 v3, 0x8fcab42

    invoke-interface {v1, v0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1001
    .local v0, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 1002
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1006
    .end local v0    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_f3
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private blacklist parseBaseAppBasicFlags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V
    .registers 11
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 2415
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    .line 2418
    .local v0, "targetSdk":I
    nop

    .line 2420
    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-static {v1, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2421
    const/4 v3, 0x5

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2422
    const/16 v3, 0x36

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2423
    const/16 v3, 0x3b

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2424
    const/16 v3, 0x9

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2425
    const/16 v3, 0x22

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2426
    const/4 v3, 0x7

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2428
    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-static {v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskReparentingAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2429
    const/16 v5, 0x2f

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSaveStateDisallowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2430
    const/16 v5, 0x3a

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCrossProfile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2431
    const/16 v5, 0xa

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDebuggable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2432
    const/16 v5, 0x26

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2433
    const/16 v5, 0x27

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2434
    const/16 v5, 0x39

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setForceQueryable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2435
    const/16 v5, 0x1f

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGame(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2436
    const/16 v5, 0x32

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2437
    const/16 v5, 0x18

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargeHeap(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2438
    const/16 v5, 0x21

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMultiArch(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2439
    const/16 v5, 0x3d

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2440
    const/16 v5, 0x1b

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiredForAllUsers(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2441
    const/16 v5, 0x1a

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRtlSupported(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2442
    const/16 v5, 0xf

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTestOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2443
    const/16 v5, 0x35

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2444
    const/16 v5, 0x31

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNonSdkApiRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2445
    const/16 v5, 0x14

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVmSafeMode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2446
    const/16 v5, 0x3c

    invoke-static {v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAutoRevokePermissions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2447
    const/16 v5, 0x45

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAttributionsAreUserVisible(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2448
    const/16 v5, 0x46

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_123

    move v6, v1

    goto :goto_124

    :cond_123
    move v6, v3

    .line 2452
    :goto_124
    const/16 v7, 0x37

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    if-lt v0, v4, :cond_132

    move v4, v1

    goto :goto_133

    :cond_132
    move v4, v3

    .line 2453
    :goto_133
    const/16 v6, 0x17

    invoke-static {v4, v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    if-ge v0, v5, :cond_141

    move v4, v1

    goto :goto_142

    :cond_141
    move v4, v3

    .line 2454
    :goto_142
    const/16 v6, 0x38

    invoke-static {v4, v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_152

    move v6, v1

    goto :goto_153

    :cond_152
    move v6, v3

    .line 2455
    :goto_153
    const/16 v7, 0x24

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v6, 0x23

    if-le v0, v6, :cond_163

    move v6, v1

    goto :goto_164

    :cond_163
    move v6, v3

    .line 2461
    :goto_164
    const/16 v7, 0x49

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOnBackInvokedCallbackEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2465
    const/16 v6, 0x19

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUiOptions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2467
    const/4 v6, -0x1

    const/16 v7, 0x2b

    invoke-static {v6, v7, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2469
    const/16 v6, 0x2c

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2470
    const/16 v6, 0x33

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2472
    const/16 v6, 0x1e

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBannerResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2473
    const/16 v6, 0xd

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDescriptionResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2474
    const/4 v6, 0x2

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2475
    const/16 v6, 0x16

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLogoResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2476
    const/16 v6, 0x29

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2477
    const/16 v6, 0x2a

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRoundIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2478
    invoke-static {v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setThemeResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2480
    const/16 v6, 0x42

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    .line 2479
    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2481
    const/16 v6, 0x47

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLocaleConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2483
    const/16 v6, 0x2e

    invoke-static {v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2484
    invoke-static {v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2485
    invoke-static {v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2486
    const/16 v4, 0x34

    invoke-static {v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2487
    const/16 v4, 0x4d

    invoke-static {v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setZygotePreloadNativeLib(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2489
    const/16 v4, 0x4e

    invoke-static {v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setZygotePreloadNativeFunc(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2492
    const/4 v4, 0x6

    invoke-static {v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2493
    const/16 v3, 0x4a

    invoke-static {v1, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowCrossUidActivitySwitchFromBelow(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2497
    return-void
.end method

.method private blacklist parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2507
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_140

    :cond_7
    goto/16 :goto_92

    :sswitch_9
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_93

    :sswitch_16
    const-string/jumbo v0, "profileable"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_93

    :sswitch_23
    const-string v0, "library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_93

    :sswitch_2d
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_93

    :sswitch_38
    const-string/jumbo v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_93

    :sswitch_43
    const-string/jumbo v0, "static-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_93

    :sswitch_4e
    const-string/jumbo v0, "processes"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_93

    :sswitch_5a
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_93

    :sswitch_65
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_93

    :sswitch_70
    const-string/jumbo v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_93

    :sswitch_7b
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_93

    :sswitch_87
    const-string/jumbo v0, "sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_93

    :goto_92
    const/4 v0, -0x1

    :goto_93
    packed-switch v0, :pswitch_data_172

    .line 2549
    move-object v5, p1

    move-object v0, p3

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .local v0, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "input":Landroid/content/pm/parsing/result/ParseInput;
    const-string p1, "<application>"

    invoke-static {p1, v0, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2547
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_a0
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2545
    :pswitch_a5
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2541
    :pswitch_ab
    iget-object v5, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p6    # "flags":I
    .local v1, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v2, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v3, "res":Landroid/content/res/Resources;
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    .local v6, "flags":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    move-object v5, v1

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    .end local v1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v2, "res":Landroid/content/res/Resources;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    return-object p1

    .line 2539
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v6    # "flags":I
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p6    # "flags":I
    :pswitch_bb
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2537
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_c4
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2535
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_cd
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2533
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_d6
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2531
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_df
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v0, v2, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2529
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_e8
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v0, v2, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseStaticLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2527
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_f1
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v0, v2, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSdkLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2520
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_fa
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move v6, p6

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p6    # "flags":I
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v6    # "flags":I
    const/4 v1, 0x0

    const-string v4, "<property>"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 2522
    .local p1, "propertyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_115

    .line 2523
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2525
    :cond_115
    return-object p1

    .line 2513
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v6    # "flags":I
    .local p1, "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p6    # "flags":I
    :pswitch_116
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    move v6, p6

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p6    # "flags":I
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v6    # "flags":I
    const/4 v1, 0x0

    const-string v4, "<meta-data>"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 2515
    .local p1, "metaDataResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_13f

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_13f

    .line 2516
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2518
    :cond_13f
    return-object p1

    :sswitch_data_140
    .sparse-switch
        -0x6b7c15d8 -> :sswitch_87
        -0x5fe67eda -> :sswitch_7b
        -0x5aaa6a59 -> :sswitch_70
        -0x50de9846 -> :sswitch_65
        -0x4284098e -> :sswitch_5a
        -0x4140b4a3 -> :sswitch_4e
        -0x3efb77a4 -> :sswitch_43
        -0x3b32222b -> :sswitch_38
        0x88b87d -> :sswitch_2d
        0x9e824bb -> :sswitch_23
        0xa9d2283 -> :sswitch_16
        0x751e7745 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_116
        :pswitch_fa
        :pswitch_f1
        :pswitch_e8
        :pswitch_df
        :pswitch_d6
        :pswitch_cd
        :pswitch_c4
        :pswitch_bb
        :pswitch_ab
        :pswitch_a5
        :pswitch_a0
    .end packed-switch
.end method

.method private blacklist parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 32
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "shouldSkipComponents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2067
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2068
    .local v3, "pkgName":Ljava/lang/String;
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v11

    .line 2070
    .local v11, "targetSdk":I
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 2075
    .local v12, "sa":Landroid/content/res/TypedArray;
    if-nez v12, :cond_29

    .line 2076
    :try_start_1a
    const-string v0, "<application> does not contain any attributes"

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2076
    return-object v0

    .line 2299
    :catchall_24
    move-exception v0

    move-object v9, v3

    move-object v3, v8

    goto/16 :goto_438

    .line 2079
    :cond_29
    const/4 v0, 0x3

    const/4 v13, 0x0

    :try_start_2b
    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_435

    move-object v14, v4

    .line 2081
    .local v14, "name":Ljava/lang/String;
    const-string v4, "Empty class name in package "

    if-eqz v14, :cond_6c

    .line 2082
    :try_start_34
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2083
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 2084
    .local v6, "outInfoName":Ljava/lang/String;
    sget-object v7, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 2085
    const-string v0, "<application> invalid android:name"

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_24

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2085
    return-object v0

    .line 2086
    :cond_4e
    if-nez v6, :cond_69

    .line 2087
    :try_start_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_24

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2087
    return-object v0

    .line 2090
    :cond_69
    :try_start_69
    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_24

    .line 2093
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "outInfoName":Ljava/lang/String;
    :cond_6c
    const/4 v15, 0x1

    :try_start_6d
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_435

    .line 2094
    .local v5, "labelValue":Landroid/util/TypedValue;
    if-eqz v5, :cond_83

    .line 2095
    :try_start_73
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2096
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-nez v6, :cond_83

    .line 2097
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_24

    .line 2101
    :cond_83
    :try_start_83
    invoke-direct {v1, v8, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppBasicFlags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V

    .line 2103
    const/4 v6, 0x4

    const/16 v7, 0x400

    invoke-static {v7, v6, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v6
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_435

    .line 2105
    .local v6, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v6, :cond_b5

    .line 2106
    :try_start_8f
    invoke-static {v3, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 2109
    .local v17, "manageSpaceActivityName":Ljava/lang/String;
    if-nez v17, :cond_b0

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_ac
    .catchall {:try_start_8f .. :try_end_ac} :catchall_24

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2110
    return-object v0

    .line 2113
    :cond_b0
    move-object/from16 v0, v17

    .end local v17    # "manageSpaceActivityName":Ljava/lang/String;
    .local v0, "manageSpaceActivityName":Ljava/lang/String;
    :try_start_b2
    invoke-interface {v8, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_24

    .line 2116
    .end local v0    # "manageSpaceActivityName":Ljava/lang/String;
    :cond_b5
    :try_start_b5
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isBackupAllowed()Z

    move-result v0
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_435

    if-eqz v0, :cond_140

    .line 2120
    const/16 v0, 0x10

    :try_start_bd
    invoke-static {v7, v0, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    .line 2122
    .local v0, "backupAgent":Ljava/lang/String;
    if-eqz v0, :cond_100

    .line 2123
    invoke-static {v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 2124
    .local v19, "backupAgentName":Ljava/lang/String;
    if-nez v19, :cond_e4

    .line 2125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_e0
    .catchall {:try_start_bd .. :try_end_e0} :catchall_24

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2125
    return-object v4

    .line 2133
    :cond_e4
    move-object/from16 v15, v19

    .end local v19    # "backupAgentName":Ljava/lang/String;
    .local v15, "backupAgentName":Ljava/lang/String;
    :try_start_e6
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v7

    .line 2134
    move-object/from16 v20, v0

    .end local v0    # "backupAgent":Ljava/lang/String;
    .local v20, "backupAgent":Ljava/lang/String;
    const/16 v0, 0x20

    invoke-static {v13, v0, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setFullBackupOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2136
    const/16 v7, 0x28

    invoke-static {v13, v7, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v7

    invoke-interface {v0, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupInForeground(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_102

    .line 2122
    .end local v15    # "backupAgentName":Ljava/lang/String;
    .end local v20    # "backupAgent":Ljava/lang/String;
    .restart local v0    # "backupAgent":Ljava/lang/String;
    :cond_100
    move-object/from16 v20, v0

    .line 2140
    .end local v0    # "backupAgent":Ljava/lang/String;
    .restart local v20    # "backupAgent":Ljava/lang/String;
    :goto_102
    const/16 v0, 0x12

    const/4 v7, 0x1

    invoke-static {v7, v0, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {v8, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2142
    const/16 v7, 0x15

    invoke-static {v13, v7, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v7

    invoke-interface {v0, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestoreAnyVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2145
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/Flags;->enablePccFrameworkSupport()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 2146
    nop

    .line 2147
    const/16 v0, 0x4f

    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 2146
    invoke-interface {v8, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAgentProcess(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2151
    :cond_126
    const/16 v0, 0x23

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 2153
    .local v0, "v":Landroid/util/TypedValue;
    const/4 v7, 0x0

    .line 2155
    .local v7, "fullBackupContent":I
    if-eqz v0, :cond_140

    .line 2156
    iget v15, v0, Landroid/util/TypedValue;->resourceId:I

    .line 2158
    .end local v7    # "fullBackupContent":I
    .local v15, "fullBackupContent":I
    iget v7, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v7, :cond_13d

    .line 2164
    iget v7, v0, Landroid/util/TypedValue;->data:I

    if-nez v7, :cond_13b

    const/4 v7, -0x1

    goto :goto_13c

    :cond_13b
    move v7, v13

    :goto_13c
    move v15, v7

    .line 2167
    :cond_13d
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setFullBackupContentResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_140
    .catchall {:try_start_e6 .. :try_end_140} :catchall_24

    .line 2174
    .end local v0    # "v":Landroid/util/TypedValue;
    .end local v15    # "fullBackupContent":I
    .end local v20    # "backupAgent":Ljava/lang/String;
    :cond_140
    const/16 v0, 0x8

    :try_start_142
    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7
    :try_end_146
    .catchall {:try_start_142 .. :try_end_146} :catchall_435

    if-eqz v7, :cond_15f

    .line 2176
    const/16 v7, 0x2d

    :try_start_14a
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 2178
    .local v7, "requiredFeature":Ljava/lang/String;
    if-eqz v7, :cond_15b

    iget-object v15, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v15, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_159

    goto :goto_15b

    :cond_159
    move v15, v13

    goto :goto_15c

    :cond_15b
    :goto_15b
    const/4 v15, 0x1

    :goto_15c
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPersistent(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_15f
    .catchall {:try_start_14a .. :try_end_15f} :catchall_24

    .line 2181
    .end local v7    # "requiredFeature":Ljava/lang/String;
    :cond_15f
    const/16 v7, 0x25

    :try_start_161
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v15
    :try_end_165
    .catchall {:try_start_161 .. :try_end_165} :catchall_435

    if-eqz v15, :cond_174

    .line 2182
    const/4 v15, 0x1

    :try_start_168
    invoke-virtual {v12, v7, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_173
    .catchall {:try_start_168 .. :try_end_173} :catchall_24

    goto :goto_17e

    .line 2185
    :cond_174
    const/16 v7, 0x18

    if-lt v11, v7, :cond_17a

    const/4 v7, 0x1

    goto :goto_17b

    :cond_17a
    move v7, v13

    :goto_17b
    :try_start_17b
    invoke-interface {v8, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_17e
    .catchall {:try_start_17b .. :try_end_17e} :catchall_435

    .line 2190
    :goto_17e
    const/16 v7, 0xc

    if-lt v11, v0, :cond_18a

    .line 2191
    const/16 v15, 0x400

    :try_start_184
    invoke-virtual {v12, v7, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7
    :try_end_188
    .catchall {:try_start_184 .. :try_end_188} :catchall_24

    move-object v15, v7

    .local v7, "taskAffinity":Ljava/lang/String;
    goto :goto_18f

    .line 2198
    .end local v7    # "taskAffinity":Ljava/lang/String;
    :cond_18a
    :try_start_18a
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    .line 2202
    .local v15, "taskAffinity":Ljava/lang/String;
    :goto_18f
    invoke-static {v3, v3, v15, v2}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 2204
    .local v7, "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v20
    :try_end_197
    .catchall {:try_start_18a .. :try_end_197} :catchall_435

    if-eqz v20, :cond_1a1

    .line 2205
    :try_start_199
    invoke-interface {v2, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_19d
    .catchall {:try_start_199 .. :try_end_19d} :catchall_24

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2205
    return-object v0

    .line 2208
    :cond_1a1
    :try_start_1a1
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    check-cast v13, Ljava/lang/String;

    invoke-interface {v8, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2209
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_1b2
    .catchall {:try_start_1a1 .. :try_end_1b2} :catchall_435

    .line 2211
    .local v13, "factory":Ljava/lang/String;
    if-eqz v13, :cond_1da

    .line 2212
    :try_start_1b4
    invoke-static {v3, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v22, v20

    .line 2213
    .local v22, "appComponentFactory":Ljava/lang/String;
    if-nez v22, :cond_1d5

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1d1
    .catchall {:try_start_1b4 .. :try_end_1d1} :catchall_24

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2214
    return-object v0

    .line 2217
    :cond_1d5
    move-object/from16 v4, v22

    .end local v22    # "appComponentFactory":Ljava/lang/String;
    .local v4, "appComponentFactory":Ljava/lang/String;
    :try_start_1d7
    invoke-interface {v8, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2221
    .end local v4    # "appComponentFactory":Ljava/lang/String;
    :cond_1da
    const/16 v4, 0xb

    if-lt v11, v0, :cond_1e6

    .line 2222
    const/16 v0, 0x400

    invoke-virtual {v12, v4, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1e4
    .catchall {:try_start_1d7 .. :try_end_1e4} :catchall_24

    move-object v4, v0

    .local v0, "pname":Ljava/lang/CharSequence;
    goto :goto_1eb

    .line 2229
    .end local v0    # "pname":Ljava/lang/CharSequence;
    :cond_1e6
    :try_start_1e6
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 2232
    .local v4, "pname":Ljava/lang/CharSequence;
    :goto_1eb
    move-object v0, v6

    .end local v6    # "manageSpaceActivity":Ljava/lang/String;
    .local v0, "manageSpaceActivity":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;
    :try_end_1ee
    .catchall {:try_start_1e6 .. :try_end_1ee} :catchall_435

    move-object v2, v3

    .end local v3    # "pkgName":Ljava/lang/String;
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v19, v0

    move-object v0, v5

    move-object/from16 v20, v7

    move-object/from16 v7, p1

    move/from16 v5, p5

    .end local v5    # "labelValue":Landroid/util/TypedValue;
    .end local v7    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .local v0, "labelValue":Landroid/util/TypedValue;
    .local v19, "manageSpaceActivity":Ljava/lang/String;
    .local v20, "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    :try_start_1f9
    invoke-static/range {v2 .. v7}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_1fd
    .catchall {:try_start_1f9 .. :try_end_1fd} :catchall_430

    move-object v5, v4

    move-object v4, v2

    move-object v2, v7

    .line 2234
    .end local v2    # "pkgName":Ljava/lang/String;
    .local v3, "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .local v4, "pkgName":Ljava/lang/String;
    .local v5, "pname":Ljava/lang/CharSequence;
    :try_start_200
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6
    :try_end_204
    .catchall {:try_start_200 .. :try_end_204} :catchall_42c

    if-eqz v6, :cond_213

    .line 2235
    :try_start_206
    invoke-interface {v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_20a
    .catchall {:try_start_206 .. :try_end_20a} :catchall_20e

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2235
    return-object v6

    .line 2299
    .end local v0    # "labelValue":Landroid/util/TypedValue;
    .end local v3    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v5    # "pname":Ljava/lang/CharSequence;
    .end local v13    # "factory":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "taskAffinity":Ljava/lang/String;
    .end local v19    # "manageSpaceActivity":Ljava/lang/String;
    .end local v20    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    :catchall_20e
    move-exception v0

    move-object v9, v4

    move-object v3, v8

    goto/16 :goto_438

    .line 2238
    .restart local v0    # "labelValue":Landroid/util/TypedValue;
    .restart local v3    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .restart local v5    # "pname":Ljava/lang/CharSequence;
    .restart local v13    # "factory":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "taskAffinity":Ljava/lang/String;
    .restart local v19    # "manageSpaceActivity":Ljava/lang/String;
    .restart local v20    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    :cond_213
    :try_start_213
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2239
    .local v6, "processName":Ljava/lang/String;
    invoke-interface {v8, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2241
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v7
    :try_end_220
    .catchall {:try_start_213 .. :try_end_220} :catchall_42c

    if-eqz v7, :cond_234

    .line 2244
    if-eqz v6, :cond_234

    :try_start_224
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_234

    .line 2245
    const-string v7, "cantSaveState applications can not use custom processes"

    invoke-interface {v2, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_230
    .catchall {:try_start_224 .. :try_end_230} :catchall_20e

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2245
    return-object v7

    .line 2250
    :cond_234
    :try_start_234
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v7
    :try_end_238
    .catchall {:try_start_234 .. :try_end_238} :catchall_42c

    .line 2251
    .local v7, "classLoaderName":Ljava/lang/String;
    if-eqz v7, :cond_264

    .line 2252
    :try_start_23a
    invoke-static {v7}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_25f

    .line 2253
    move-object/from16 v22, v0

    .end local v0    # "labelValue":Landroid/util/TypedValue;
    .local v22, "labelValue":Landroid/util/TypedValue;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v3

    .end local v3    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .local v23, "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    const-string v3, "Invalid class loader name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_25b
    .catchall {:try_start_23a .. :try_end_25b} :catchall_20e

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2253
    return-object v0

    .line 2252
    .end local v22    # "labelValue":Landroid/util/TypedValue;
    .end local v23    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .restart local v0    # "labelValue":Landroid/util/TypedValue;
    .restart local v3    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    :cond_25f
    move-object/from16 v22, v0

    move-object/from16 v23, v3

    .end local v0    # "labelValue":Landroid/util/TypedValue;
    .end local v3    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .restart local v22    # "labelValue":Landroid/util/TypedValue;
    .restart local v23    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    goto :goto_268

    .line 2251
    .end local v22    # "labelValue":Landroid/util/TypedValue;
    .end local v23    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .restart local v0    # "labelValue":Landroid/util/TypedValue;
    .restart local v3    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    :cond_264
    move-object/from16 v22, v0

    move-object/from16 v23, v3

    .line 2256
    .end local v0    # "labelValue":Landroid/util/TypedValue;
    .end local v3    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .restart local v22    # "labelValue":Landroid/util/TypedValue;
    .restart local v23    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    :goto_268
    const/16 v0, 0x3e

    const/4 v3, -0x1

    :try_start_26b
    invoke-virtual {v12, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-interface {v8, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2257
    const/16 v0, 0x40

    invoke-virtual {v12, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-interface {v8, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2259
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->appCompatOption16kb()Z

    move-result v0
    :try_end_27f
    .catchall {:try_start_26b .. :try_end_27f} :catchall_42c

    if-eqz v0, :cond_28c

    .line 2260
    nop

    .line 2261
    const/16 v0, 0x4c

    const/4 v3, 0x0

    :try_start_285
    invoke-virtual {v12, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 2260
    invoke-interface {v8, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_28c
    .catchall {:try_start_285 .. :try_end_28c} :catchall_20e

    .line 2265
    :cond_28c
    const/16 v0, 0x41

    :try_start_28e
    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3
    :try_end_292
    .catchall {:try_start_28e .. :try_end_292} :catchall_42c

    if-eqz v3, :cond_2a2

    .line 2266
    const/4 v3, 0x0

    :try_start_295
    invoke-virtual {v12, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2268
    .local v0, "v":Z
    nop

    .line 2269
    if-eqz v0, :cond_29e

    const/4 v3, 0x1

    goto :goto_29f

    :cond_29e
    const/4 v3, 0x0

    .line 2268
    :goto_29f
    invoke-interface {v8, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_2a2
    .catchall {:try_start_295 .. :try_end_2a2} :catchall_20e

    .line 2271
    .end local v0    # "v":Z
    :cond_2a2
    const/16 v0, 0x43

    :try_start_2a4
    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3
    :try_end_2a8
    .catchall {:try_start_2a4 .. :try_end_2a8} :catchall_42c

    if-eqz v3, :cond_2b6

    .line 2273
    const/4 v3, 0x0

    :try_start_2ab
    invoke-virtual {v12, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_2b6
    .catchall {:try_start_2ab .. :try_end_2b6} :catchall_20e

    .line 2277
    :cond_2b6
    const/16 v0, 0x44

    :try_start_2b8
    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3
    :try_end_2bc
    .catchall {:try_start_2b8 .. :try_end_2bc} :catchall_42c

    if-eqz v3, :cond_2c6

    .line 2279
    const/4 v3, 0x0

    :try_start_2bf
    invoke-virtual {v12, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-interface {v8, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_2c6
    .catchall {:try_start_2bf .. :try_end_2c6} :catchall_20e

    .line 2283
    :cond_2c6
    nop

    .line 2284
    const/16 v0, 0x48

    :try_start_2c9
    invoke-static {v12, v9, v0, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2287
    .local v0, "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3
    :try_end_2d1
    .catchall {:try_start_2c9 .. :try_end_2d1} :catchall_42c

    if-eqz v3, :cond_2db

    .line 2288
    :try_start_2d3
    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_2d7
    .catchall {:try_start_2d3 .. :try_end_2d7} :catchall_20e

    .line 2299
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2288
    return-object v3

    .line 2290
    :cond_2db
    nop

    .line 2291
    :try_start_2dc
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;
    :try_end_2e2
    .catchall {:try_start_2dc .. :try_end_2e2} :catchall_42c

    .line 2292
    .local v3, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_2e7

    .line 2293
    :try_start_2e4
    invoke-interface {v8, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_2e7
    .catchall {:try_start_2e4 .. :try_end_2e7} :catchall_20e

    .line 2296
    .end local v3    # "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2e7
    nop

    .line 2297
    const/16 v3, 0x4b

    move-object/from16 v24, v7

    const/4 v7, 0x0

    .end local v7    # "classLoaderName":Ljava/lang/String;
    .local v24, "classLoaderName":Ljava/lang/String;
    :try_start_2ed
    invoke-virtual {v12, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2296
    invoke-interface {v8, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIntentMatchingFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_2f4
    .catchall {:try_start_2ed .. :try_end_2f4} :catchall_42c

    .line 2299
    nop

    .end local v0    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "pname":Ljava/lang/CharSequence;
    .end local v6    # "processName":Ljava/lang/String;
    .end local v13    # "factory":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "taskAffinity":Ljava/lang/String;
    .end local v19    # "manageSpaceActivity":Ljava/lang/String;
    .end local v20    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v22    # "labelValue":Landroid/util/TypedValue;
    .end local v23    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v24    # "classLoaderName":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2300
    nop

    .line 2302
    const/4 v0, 0x0

    .line 2303
    .local v0, "hasActivityOrder":Z
    const/4 v3, 0x0

    .line 2304
    .local v3, "hasReceiverOrder":Z
    const/4 v5, 0x0

    .line 2305
    .local v5, "hasServiceOrder":Z
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    move v14, v3

    move v15, v5

    .line 2307
    .end local v3    # "hasReceiverOrder":Z
    .end local v5    # "hasServiceOrder":Z
    .local v13, "depth":I
    .local v14, "hasReceiverOrder":Z
    .local v15, "hasServiceOrder":Z
    :goto_302
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v5, v3

    const/4 v6, 0x1

    .local v5, "type":I
    if-eq v3, v6, :cond_3d2

    const/4 v3, 0x3

    if-ne v5, v3, :cond_319

    .line 2309
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v13, :cond_314

    goto :goto_319

    :cond_314
    move-object v9, v4

    move v10, v5

    move-object v3, v8

    goto/16 :goto_3d5

    .line 2310
    :cond_319
    :goto_319
    const/4 v6, 0x2

    if-eq v5, v6, :cond_31d

    .line 2311
    goto :goto_302

    .line 2313
    :cond_31d
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getInstance()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v6

    invoke-virtual {v6, v8, v10}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v6

    if-eqz v6, :cond_32b

    .line 2314
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2315
    goto :goto_302

    .line 2319
    :cond_32b
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2320
    .local v6, "tagName":Ljava/lang/String;
    invoke-direct {v1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->isMainComponentTag(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_36b

    .line 2321
    if-eqz p6, :cond_338

    .line 2322
    goto :goto_302

    .line 2324
    :cond_338
    nop

    .line 2325
    move/from16 v21, v7

    const/4 v7, 0x0

    move-object/from16 v16, v9

    move-object v9, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v10

    move v10, v5

    move-object/from16 v5, v16

    move/from16 v16, v3

    move-object v3, v8

    const/16 v18, -0x1

    move/from16 v8, p5

    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "type":I
    .local v9, "pkgName":Ljava/lang/String;
    .local v10, "type":I
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMainComponent(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 2327
    .local v7, "mainComponentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_366

    .line 2328
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;

    .line 2329
    .local v1, "parseResult":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;
    iget-boolean v8, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasActivityOrder:Z

    or-int/2addr v0, v8

    .line 2330
    iget-boolean v8, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasReceiverOrder:Z

    or-int/2addr v14, v8

    .line 2331
    iget-boolean v8, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasServiceOrder:Z

    or-int/2addr v15, v8

    .line 2333
    .end local v1    # "parseResult":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;
    :cond_366
    nop

    .line 2334
    .local v7, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v1, p0

    goto/16 :goto_3bd

    .line 2335
    .end local v7    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "type":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "type":I
    :cond_36b
    move-object/from16 v16, v9

    move-object v9, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v10

    move v10, v5

    move-object/from16 v5, v16

    move/from16 v16, v3

    move/from16 v21, v7

    move-object v3, v8

    const/16 v18, -0x1

    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "type":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v10    # "type":I
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_43c

    :cond_383
    goto :goto_38f

    :pswitch_384
    const-string v1, "apex-system-service"

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_383

    move/from16 v1, v21

    goto :goto_391

    :goto_38f
    move/from16 v1, v18

    :goto_391
    packed-switch v1, :pswitch_data_442

    .line 2349
    move-object v1, v4

    move-object v4, v3

    move-object v3, v6

    move-object v6, v5

    move-object v5, v1

    move-object/from16 v1, p0

    move/from16 v7, p5

    .end local v6    # "tagName":Ljava/lang/String;
    .local v3, "tagName":Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    move-object v6, v3

    move-object v3, v4

    move-object v7, v8

    .end local v3    # "tagName":Ljava/lang/String;
    .restart local v6    # "tagName":Ljava/lang/String;
    .local v8, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_3bd

    .line 2337
    .end local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_3a5
    nop

    .line 2338
    invoke-static {v4, v5, v2}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceUtils;->parseApexSystemService(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2340
    .local v1, "systemServiceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_3ba

    .line 2341
    nop

    .line 2342
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;

    .line 2343
    .local v7, "systemService":Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;
    invoke-interface {v3, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2346
    .end local v7    # "systemService":Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;
    :cond_3ba
    move-object v7, v1

    .line 2347
    .local v7, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v1, p0

    .line 2354
    .end local v1    # "systemServiceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;>;"
    :goto_3bd
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_3c8

    .line 2355
    invoke-interface {v2, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 2357
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_3c8
    move-object/from16 v10, p4

    move-object v8, v3

    move-object v4, v9

    move/from16 v7, v21

    move-object/from16 v9, p3

    goto/16 :goto_302

    .line 2307
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "type":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "type":I
    :cond_3d2
    move-object v9, v4

    move v10, v5

    move-object v3, v8

    .line 2359
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "type":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v10    # "type":I
    :goto_3d5
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hasPccComponents()Z

    move-result v4

    if-nez v4, :cond_3e9

    .line 2360
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBackupAgentProcess()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3e9

    .line 2361
    const-string v4, "Application has private compute core backup agent without other private compute core components(activities, services, providers, receivers)"

    invoke-interface {v2, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 2366
    :cond_3e9
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_415

    .line 2367
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v4

    .line 2366
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_415

    .line 2370
    invoke-static/range {p1 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 2371
    .local v4, "a":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_40c

    .line 2376
    invoke-interface {v2, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 2379
    :cond_40c
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2382
    .end local v4    # "a":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    :cond_415
    if-eqz v0, :cond_41a

    .line 2383
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortActivities()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2385
    :cond_41a
    if-eqz v14, :cond_41f

    .line 2386
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortReceivers()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2388
    :cond_41f
    if-eqz v15, :cond_424

    .line 2389
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortServices()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2392
    :cond_424
    invoke-direct {v1, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2394
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 2299
    .end local v0    # "hasActivityOrder":Z
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v13    # "depth":I
    .end local v14    # "hasReceiverOrder":Z
    .end local v15    # "hasServiceOrder":Z
    .local v4, "pkgName":Ljava/lang/String;
    :catchall_42c
    move-exception v0

    move-object v9, v4

    move-object v3, v8

    .end local v4    # "pkgName":Ljava/lang/String;
    .restart local v9    # "pkgName":Ljava/lang/String;
    goto :goto_438

    .end local v9    # "pkgName":Ljava/lang/String;
    .restart local v2    # "pkgName":Ljava/lang/String;
    :catchall_430
    move-exception v0

    move-object v9, v2

    move-object v2, v7

    move-object v3, v8

    .end local v2    # "pkgName":Ljava/lang/String;
    .restart local v9    # "pkgName":Ljava/lang/String;
    goto :goto_438

    .end local v9    # "pkgName":Ljava/lang/String;
    .local v3, "pkgName":Ljava/lang/String;
    :catchall_435
    move-exception v0

    move-object v9, v3

    move-object v3, v8

    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v9    # "pkgName":Ljava/lang/String;
    :goto_438
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 2300
    throw v0

    :pswitch_data_43c
    .packed-switch -0x5db446de
        :pswitch_384
    .end packed-switch

    :pswitch_data_442
    .packed-switch 0x0
        :pswitch_3a5
    .end packed-switch
.end method

.method private blacklist parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "packageDir"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 362
    move-object/from16 v2, p1

    move/from16 v6, p3

    const/4 v0, 0x0

    .line 363
    .local v0, "liteParseFlags":I
    and-int/lit16 v1, v6, 0x200

    if-eqz v1, :cond_b

    .line 364
    or-int/lit16 v0, v0, 0x200

    .line 366
    :cond_b
    and-int/lit16 v1, v6, 0x400

    if-eqz v1, :cond_13

    .line 367
    or-int/lit16 v0, v0, 0x400

    move v8, v0

    goto :goto_14

    .line 366
    :cond_13
    move v8, v0

    .line 369
    .end local v0    # "liteParseFlags":I
    .local v8, "liteParseFlags":I
    :goto_14
    nop

    .line 370
    move-object/from16 v9, p2

    invoke-static {v2, v9, v8}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    .line 371
    .local v10, "liteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 372
    invoke-interface {v2, v10}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 375
    :cond_26
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/parsing/PackageLite;

    .line 377
    .local v11, "lite":Landroid/content/pm/parsing/PackageLite;
    const/4 v1, 0x0

    .line 379
    .local v1, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->isIsolatedSplits()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 381
    :try_start_3e
    invoke-static {v11}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/parsing/PackageLite;)Landroid/util/SparseArray;

    move-result-object v0

    move-object v1, v0

    .line 382
    new-instance v0, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v0, v11, v1, v6}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/parsing/PackageLite;Landroid/util/SparseArray;I)V
    :try_end_48
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_3e .. :try_end_48} :catch_4b

    .line 385
    .local v0, "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    move-object v5, v0

    move-object v12, v1

    goto :goto_5e

    .line 383
    .end local v0    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :catch_4b
    move-exception v0

    .line 384
    .local v0, "e":Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    const/16 v3, -0x65

    invoke-virtual {v0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 387
    .end local v0    # "e":Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    :cond_57
    new-instance v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v0, v11, v6}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    move-object v5, v0

    move-object v12, v1

    .line 391
    .end local v1    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v5, "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .local v12, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :goto_5e
    :try_start_5e
    new-instance v3, Ljava/io/File;

    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, "baseApk":Ljava/io/File;
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v0
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_6b} :catch_fa
    .catchall {:try_start_5e .. :try_end_6b} :catchall_f7

    if-eqz v0, :cond_7d

    :try_start_6d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    move-result v0
    :try_end_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_71} :catch_79
    .catchall {:try_start_6d .. :try_end_71} :catchall_75

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    goto :goto_7e

    .line 425
    .end local v3    # "baseApk":Ljava/io/File;
    :catchall_75
    move-exception v0

    move-object v14, v5

    goto/16 :goto_115

    .line 421
    :catch_79
    move-exception v0

    move-object v14, v5

    goto/16 :goto_fc

    .line 392
    .restart local v3    # "baseApk":Ljava/io/File;
    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    move v7, v0

    .line 393
    .local v7, "shouldSkipComponents":Z
    nop

    .line 394
    :try_start_80
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 393
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_80 .. :try_end_8a} :catch_fa
    .catchall {:try_start_80 .. :try_end_8a} :catchall_f7

    move-object v14, v5

    move v13, v7

    move-object v7, v3

    .line 395
    .end local v3    # "baseApk":Ljava/io/File;
    .end local v5    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .local v7, "baseApk":Ljava/io/File;
    .local v13, "shouldSkipComponents":Z
    .local v14, "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :try_start_8d
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 396
    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_97} :catch_f5
    .catchall {:try_start_8d .. :try_end_97} :catchall_114

    .line 425
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 396
    return-object v1

    .line 399
    :cond_9b
    :try_start_9b
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 400
    .local v3, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    .line 401
    nop

    .line 402
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v4

    .line 404
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object v5

    .line 401
    invoke-interface {v3, v1, v4, v5, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 407
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    move v15, v1

    .line 409
    .local v15, "num":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_c4
    if-ge v4, v15, :cond_e6

    .line 410
    invoke-interface {v14, v4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v5

    .line 411
    .local v5, "splitAssets":Landroid/content/res/AssetManager;
    nop

    .line 412
    move-object/from16 v1, p0

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16

    move-object/from16 v1, v16

    .line 413
    .local v1, "split":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 414
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_df
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_df} :catch_f5
    .catchall {:try_start_9b .. :try_end_df} :catchall_114

    .line 425
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 414
    return-object v6

    .line 409
    .end local v1    # "split":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v5    # "splitAssets":Landroid/content/res/AssetManager;
    :cond_e3
    add-int/lit8 v4, v4, 0x1

    goto :goto_c4

    .line 419
    .end local v4    # "i":I
    .end local v15    # "num":I
    :cond_e6
    :try_start_e6
    invoke-virtual {v11}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v1

    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 420
    invoke-interface {v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_f1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e6 .. :try_end_f1} :catch_f5
    .catchall {:try_start_e6 .. :try_end_f1} :catchall_114

    .line 425
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 420
    return-object v1

    .line 421
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v7    # "baseApk":Ljava/io/File;
    .end local v13    # "shouldSkipComponents":Z
    :catch_f5
    move-exception v0

    goto :goto_fc

    .line 425
    .end local v14    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .local v5, "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :catchall_f7
    move-exception v0

    move-object v14, v5

    .end local v5    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .restart local v14    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    goto :goto_115

    .line 421
    .end local v14    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .restart local v5    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :catch_fa
    move-exception v0

    move-object v14, v5

    .line 422
    .end local v5    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :goto_fc
    :try_start_fc
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_106

    const/4 v1, -0x2

    goto :goto_108

    .line 423
    :cond_106
    const/16 v1, -0x64

    :goto_108
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 422
    invoke-interface {v2, v1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_110
    .catchall {:try_start_fc .. :try_end_110} :catchall_114

    .line 425
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 422
    return-object v1

    .line 425
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_114
    move-exception v0

    :goto_115
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 426
    throw v0
.end method

.method public static blacklist parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "parseFlags"    # I
    .param p4, "collectCertificates"    # Z
    .param p5, "callback"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;Z",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/parsing/pkg/ParsedPackage;",
            ">;"
        }
    .end annotation

    .line 278
    .local p3, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    new-instance v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p3, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    .line 280
    .local v0, "parser":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 281
    .local v1, "parseResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 282
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 285
    :cond_15
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    .line 287
    .local v2, "pkg":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    if-eqz p4, :cond_3b

    .line 288
    nop

    .line 289
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 290
    .local v3, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 291
    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 293
    :cond_32
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SigningDetails;

    invoke-interface {v2, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 296
    .end local v3    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_3b
    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "minExtensionVersions"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 1866
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestExtensionSdk:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1868
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1869
    .local v1, "sdkVersion":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_85

    .line 1871
    .local v2, "minVersion":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1872
    nop

    .line 1874
    const/16 v3, -0x6c

    if-gez v1, :cond_20

    .line 1875
    const-string v4, "<extension-sdk> must specify an sdkVersion >= 0"

    invoke-interface {p0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1879
    :cond_20
    if-gez v2, :cond_29

    .line 1880
    const-string v4, "<extension-sdk> must specify minExtensionVersion >= 0"

    invoke-interface {p0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1886
    :cond_29
    :try_start_29
    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v4

    .line 1887
    .local v4, "version":I
    if-ge v4, v2, :cond_5d

    .line 1888
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extension version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " which exceeds device version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0xc

    invoke-interface {p0, v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_5c} :catch_66

    return-object v3

    .line 1897
    .end local v4    # "version":I
    :cond_5d
    nop

    .line 1898
    invoke-virtual {p3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1899
    invoke-interface {p0, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1893
    :catch_66
    move-exception v4

    .line 1894
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Specified sdkVersion "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1871
    .end local v1    # "sdkVersion":I
    .end local v2    # "minVersion":I
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catchall_85
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1872
    throw v1
.end method

.method private static blacklist parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1693
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 1694
    .local v0, "group":Landroid/content/pm/FeatureGroupInfo;
    const/4 v1, 0x0

    .line 1695
    .local v1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 1697
    .local v2, "depth":I
    :goto_a
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_7d

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1b

    .line 1699
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_7d

    .line 1700
    :cond_1b
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1f

    .line 1701
    goto :goto_a

    .line 1703
    :cond_1f
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getInstance()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1704
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1705
    goto :goto_a

    .line 1708
    :cond_2d
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1709
    .local v3, "innerTagName":Ljava/lang/String;
    const-string/jumbo v6, "uses-feature"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1710
    invoke-static {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v6

    .line 1713
    .local v6, "featureInfo":Landroid/content/pm/FeatureInfo;
    iget v7, v6, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/FeatureInfo;->flags:I

    .line 1714
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1715
    .end local v6    # "featureInfo":Landroid/content/pm/FeatureInfo;
    goto :goto_7c

    .line 1716
    :cond_48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <feature-group>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1718
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1719
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1716
    const-string v6, "PackageParsing"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    .end local v3    # "innerTagName":Ljava/lang/String;
    :goto_7c
    goto :goto_a

    .line 1723
    :cond_7d
    if-eqz v1, :cond_91

    .line 1724
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1725
    iget-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1728
    :cond_91
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1729
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1670
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1671
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1675
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 1676
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 1677
    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_24

    .line 1678
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 1681
    :cond_24
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1682
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_35

    .line 1684
    :cond_30
    nop

    .line 1686
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1684
    return-object v0

    .line 1686
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1687
    throw v2
.end method

.method private blacklist parseGeneralPurpose(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1562
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGeneralPurpose:[I

    .line 1563
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1566
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1567
    .local v1, "purpose":Ljava/lang/String;
    nop

    .line 1568
    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v2

    .line 1572
    .local v2, "minSdkVersion":I
    nop

    .line 1573
    const/4 v3, 0x2

    const v4, 0x7fffffff

    invoke-static {v0, v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v3

    .line 1578
    .local v3, "maxSdkVersion":I
    nop

    .line 1579
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->isValidPurpose(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_25

    move-object v4, v1

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    .line 1578
    :goto_26
    invoke-interface {p1, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2e

    .line 1581
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1578
    return-object v4

    .line 1581
    .end local v1    # "purpose":Ljava/lang/String;
    .end local v2    # "minSdkVersion":I
    .end local v3    # "maxSdkVersion":I
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1582
    throw v1
.end method

.method private static blacklist parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1933
    .local p4, "allowlist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/pm/pkg/component/InstallConstraintsTagParser;->parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3234
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationUtils;->parseInstrumentation(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 3236
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3237
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 3239
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1156
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 1157
    .local v5, "outerDepth":I
    const/4 v0, -0x1

    .line 1159
    .local v0, "currentKeySetDepth":I
    const/4 v6, 0x0

    .line 1160
    .local v6, "currentKeySet":Ljava/lang/String;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1161
    .local v7, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1162
    .local v8, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 1163
    .local v9, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v6

    move v6, v0

    .line 1164
    .end local v0    # "currentKeySetDepth":I
    .local v6, "currentKeySetDepth":I
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "currentKeySet":Ljava/lang/String;
    :goto_24
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v12, v0

    .local v12, "type":I
    const-string v13, "PackageParsing"

    const/4 v14, 0x1

    if-eq v0, v14, :cond_228

    const/4 v0, 0x3

    if-ne v12, v0, :cond_40

    .line 1165
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v5, :cond_38

    goto :goto_40

    :cond_38
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    goto/16 :goto_22e

    .line 1166
    :cond_40
    :goto_40
    if-ne v12, v0, :cond_51

    .line 1167
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-ne v0, v6, :cond_4b

    .line 1168
    const/4 v11, 0x0

    .line 1169
    const/4 v6, -0x1

    goto :goto_24

    .line 1167
    :cond_4b
    move/from16 v18, v5

    move/from16 v19, v6

    goto/16 :goto_167

    .line 1173
    :cond_51
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1174
    .local v15, "tagName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_338

    :cond_5c
    goto :goto_7d

    :sswitch_5d
    const-string/jumbo v0, "public-key"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    goto :goto_7e

    :sswitch_68
    const-string v0, "key-set"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x0

    goto :goto_7e

    :sswitch_72
    const-string/jumbo v0, "upgrade-key-set"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x2

    goto :goto_7e

    :goto_7d
    const/4 v0, -0x1

    :goto_7e
    const-string v14, "Improperly nested \'key-set\' tag at "

    packed-switch v0, :pswitch_data_346

    .line 1249
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .local v18, "outerDepth":I
    .local v19, "currentKeySetDepth":I
    .local v20, "type":I
    const-string v0, "<key-sets>"

    invoke-static {v0, v2, v4, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1251
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_222

    .line 1252
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 1237
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .restart local v5    # "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :pswitch_9a
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1240
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_a1
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1243
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_b7

    .line 1245
    .end local v0    # "name":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1246
    nop

    .line 1247
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    goto/16 :goto_222

    .line 1245
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    :catchall_b7
    move-exception v0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1246
    throw v0

    .line 1192
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    :pswitch_bc
    if-nez v11, :cond_d8

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1194
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1196
    :cond_d8
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1199
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_df
    invoke-static {v0, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_1d3

    .line 1201
    .local v0, "publicKeyName":Ljava/lang/String;
    move/from16 v18, v5

    const/4 v5, 0x1

    .end local v5    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :try_start_e6
    invoke-static {v5, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v5
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_1cd

    .line 1203
    .local v5, "encodedKey":Ljava/lang/String;
    if-nez v5, :cond_124

    :try_start_ec
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_124

    .line 1204
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5    # "encodedKey":Ljava/lang/String;
    .local v16, "encodedKey":Ljava/lang/String;
    const-string v5, "\'public-key\' "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " must define a public-key value on first use at "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1206
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1204
    invoke-interface {v1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_119
    .catchall {:try_start_ec .. :try_end_119} :catchall_11d

    .line 1233
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1204
    return-object v5

    .line 1233
    .end local v0    # "publicKeyName":Ljava/lang/String;
    .end local v16    # "encodedKey":Ljava/lang/String;
    :catchall_11d
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v12

    goto/16 :goto_1da

    .line 1203
    .restart local v0    # "publicKeyName":Ljava/lang/String;
    .restart local v5    # "encodedKey":Ljava/lang/String;
    :cond_124
    move-object/from16 v16, v5

    .line 1207
    .end local v5    # "encodedKey":Ljava/lang/String;
    .restart local v16    # "encodedKey":Ljava/lang/String;
    if-eqz v16, :cond_1b6

    .line 1208
    nop

    .line 1209
    :try_start_129
    invoke-static/range {v16 .. v16}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5
    :try_end_12d
    .catchall {:try_start_129 .. :try_end_12d} :catchall_1cd

    .line 1210
    .local v5, "currentKey":Ljava/security/PublicKey;
    if-nez v5, :cond_172

    .line 1211
    move/from16 v19, v6

    .end local v6    # "currentKeySetDepth":I
    .restart local v19    # "currentKeySetDepth":I
    :try_start_131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_16d

    move/from16 v20, v12

    .end local v12    # "type":I
    .restart local v20    # "type":I
    :try_start_138
    const-string v12, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1212
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " key-set "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1211
    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1216
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_163
    .catchall {:try_start_138 .. :try_end_163} :catchall_1cb

    .line 1233
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1217
    nop

    .line 1164
    .end local v0    # "publicKeyName":Ljava/lang/String;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tagName":Ljava/lang/String;
    .end local v16    # "encodedKey":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .local v5, "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    :goto_167
    move/from16 v5, v18

    move/from16 v6, v19

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    goto/16 :goto_24

    .line 1233
    .restart local v12    # "type":I
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "tagName":Ljava/lang/String;
    :catchall_16d
    move-exception v0

    move/from16 v20, v12

    .end local v12    # "type":I
    .restart local v20    # "type":I
    goto/16 :goto_1da

    .line 1219
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .restart local v0    # "publicKeyName":Ljava/lang/String;
    .local v5, "currentKey":Ljava/security/PublicKey;
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    .restart local v16    # "encodedKey":Ljava/lang/String;
    :cond_172
    move/from16 v19, v6

    move/from16 v20, v12

    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    :try_start_176
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1b2

    .line 1220
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PublicKey;

    invoke-interface {v6, v5}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_189

    goto :goto_1b2

    .line 1225
    :cond_189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value of \'public-key\' "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " conflicts with previously defined value at "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1227
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1225
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_1ae
    .catchall {:try_start_176 .. :try_end_1ae} :catchall_1cb

    .line 1233
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1225
    return-object v6

    .line 1223
    :cond_1b2
    :goto_1b2
    :try_start_1b2
    invoke-virtual {v7, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ba

    .line 1207
    .end local v5    # "currentKey":Ljava/security/PublicKey;
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_1b6
    move/from16 v19, v6

    move/from16 v20, v12

    .line 1230
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    :goto_1ba
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1231
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1c6
    .catchall {:try_start_1b2 .. :try_end_1c6} :catchall_1cb

    .line 1233
    .end local v0    # "publicKeyName":Ljava/lang/String;
    .end local v16    # "encodedKey":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1234
    nop

    .line 1235
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    goto :goto_222

    .line 1233
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    :catchall_1cb
    move-exception v0

    goto :goto_1da

    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :catchall_1cd
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v12

    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    goto :goto_1da

    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .local v5, "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :catchall_1d3
    move-exception v0

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    :goto_1da
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1234
    throw v0

    .line 1176
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v18    # "outerDepth":I
    .end local v19    # "currentKeySetDepth":I
    .end local v20    # "type":I
    .restart local v5    # "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :pswitch_1de
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    if-eqz v11, :cond_200

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1178
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1180
    :cond_200
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1182
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_207
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "keysetName":Ljava/lang/String;
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    move-object v11, v0

    .line 1186
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_218
    .catchall {:try_start_207 .. :try_end_218} :catchall_21d

    .line 1188
    .end local v0    # "keysetName":Ljava/lang/String;
    .end local v19    # "currentKeySetDepth":I
    .restart local v6    # "currentKeySetDepth":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1189
    nop

    .line 1190
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    goto :goto_224

    .line 1188
    .end local v6    # "currentKeySetDepth":I
    .restart local v5    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "currentKeySetDepth":I
    :catchall_21d
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1189
    throw v0

    .line 1256
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tagName":Ljava/lang/String;
    :cond_222
    :goto_222
    move/from16 v6, v19

    .end local v19    # "currentKeySetDepth":I
    .restart local v6    # "currentKeySetDepth":I
    :goto_224
    move/from16 v5, v18

    goto/16 :goto_24

    .line 1164
    .end local v18    # "outerDepth":I
    .end local v20    # "type":I
    .local v5, "outerDepth":I
    .restart local v12    # "type":I
    :cond_228
    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    .line 1257
    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "currentKeySetDepth":I
    .restart local v20    # "type":I
    :goto_22e
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1259
    .local v5, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    const-string v12, "Package"

    if-eqz v6, :cond_25e

    .line 1260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " AndroidManifest.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 1264
    :cond_25e
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_266
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_306

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1265
    .local v14, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1266
    .local v15, "keySetName":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArraySet;->size()I

    move-result v16

    const-string v3, " AndroidManifest.xml \'key-set\' "

    if-nez v16, :cond_2ad

    .line 1267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_266

    .line 1271
    :cond_2ad
    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2da

    .line 1272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_266

    .line 1278
    :cond_2da
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_300

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1279
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Ljava/security/PublicKey;

    invoke-interface {v2, v15, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1280
    .end local v4    # "s":Ljava/lang/String;
    move-object/from16 v3, v17

    goto :goto_2e4

    .line 1281
    .end local v14    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v15    # "keySetName":Ljava/lang/String;
    :cond_300
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto/16 :goto_266

    .line 1282
    :cond_306
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_31c

    .line 1283
    invoke-interface {v2, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1289
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1285
    :cond_31c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AndroidManifest.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :sswitch_data_338
    .sparse-switch
        -0x519cd6bd -> :sswitch_72
        -0x30ac780c -> :sswitch_68
        0x717268fb -> :sswitch_5d
    .end sparse-switch

    :pswitch_data_346
    .packed-switch 0x0
        :pswitch_1de
        :pswitch_bc
        :pswitch_9a
    .end packed-switch
.end method

.method private static blacklist parseLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2724
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2728
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2730
    .local v1, "lname":Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 2731
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2732
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2733
    invoke-interface {p0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2736
    :cond_1f
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_27

    .line 2738
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2736
    return-object v2

    .line 2738
    .end local v1    # "lname":Ljava/lang/String;
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2739
    throw v1
.end method

.method private blacklist parseMainComponent(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 22
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "tagName"    # Ljava/lang/String;
    .param p6, "defaultSplitName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2563
    move-object/from16 v8, p5

    new-instance v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;-><init>(Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils-IA;)V

    move-object v9, v0

    .line 2565
    .local v9, "resultToReturn":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;
    const/4 v10, 0x0

    .line 2566
    .local v10, "isActivity":Z
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    sparse-switch v0, :sswitch_data_16c

    :cond_13
    goto :goto_49

    :sswitch_14
    const-string/jumbo v0, "service"

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    goto :goto_4a

    :sswitch_1f
    const-string v0, "activity-alias"

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x4

    goto :goto_4a

    :sswitch_29
    const-string/jumbo v0, "receiver"

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v12

    goto :goto_4a

    :sswitch_34
    const-string/jumbo v0, "provider"

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    goto :goto_4a

    :sswitch_3f
    const-string v0, "activity"

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v11

    goto :goto_4a

    :goto_49
    const/4 v0, -0x1

    :goto_4a
    const/high16 v13, 0x80000

    packed-switch v0, :pswitch_data_182

    .line 2637
    move-object/from16 v1, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag passed to parseMainComponent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2623
    :pswitch_6a
    sget-boolean v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object v5, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 2625
    move-object v1, v0

    .local v3, "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 2626
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2627
    .local v0, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    iget-boolean v2, v9, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasActivityOrder:Z

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v4

    if-eqz v4, :cond_8f

    move v11, v12

    :cond_8f
    or-int/2addr v2, v11

    iput-boolean v2, v9, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasActivityOrder:Z

    .line 2628
    invoke-interface {v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2629
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v2

    and-int/2addr v2, v13

    if-eqz v2, :cond_9f

    .line 2630
    invoke-interface {v1, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHasPccComponents(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2634
    .end local v0    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_9f
    move-object v0, v3

    .line 2635
    .local v0, "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_15b

    .line 2609
    .end local v0    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    .end local v3    # "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    :pswitch_a2
    move-object/from16 v1, p2

    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 2610
    move-object v7, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2612
    .local v0, "providerResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProvider;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 2613
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 2614
    .local v2, "provider":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2615
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v3

    and-int/2addr v3, v13

    if-eqz v3, :cond_ce

    .line 2616
    invoke-interface {v1, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHasPccComponents(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2620
    .end local v2    # "provider":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    :cond_ce
    move-object v2, v0

    .line 2621
    .local v2, "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_15b

    .line 2594
    .end local v0    # "providerResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedProvider;>;"
    .end local v2    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_d1
    move-object/from16 v1, p2

    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 2595
    move-object v7, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2597
    .local v0, "serviceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedService;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_109

    .line 2598
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 2599
    .local v2, "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    iget-boolean v3, v9, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasServiceOrder:Z

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getOrder()I

    move-result v4

    if-eqz v4, :cond_f9

    move v11, v12

    :cond_f9
    or-int/2addr v3, v11

    iput-boolean v3, v9, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasServiceOrder:Z

    .line 2600
    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2601
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result v3

    and-int/2addr v3, v13

    if-eqz v3, :cond_109

    .line 2602
    invoke-interface {v1, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHasPccComponents(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2606
    .end local v2    # "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    :cond_109
    move-object v2, v0

    .line 2607
    .local v2, "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_15b

    .line 2566
    .end local v0    # "serviceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedService;>;"
    .end local v2    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_10b
    move-object/from16 v1, p2

    goto :goto_111

    .line 2568
    :pswitch_10e
    move-object/from16 v1, p2

    const/4 v10, 0x1

    .line 2572
    :goto_111
    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 2573
    move-object v7, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2577
    .local v0, "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_159

    .line 2578
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2579
    .local v2, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    if-eqz v10, :cond_140

    .line 2580
    iget-boolean v3, v9, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasActivityOrder:Z

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v4

    if-eqz v4, :cond_139

    move v11, v12

    :cond_139
    or-int/2addr v3, v11

    iput-boolean v3, v9, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasActivityOrder:Z

    .line 2581
    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_14f

    .line 2583
    :cond_140
    iget-boolean v3, v9, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasReceiverOrder:Z

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v4

    if-eqz v4, :cond_149

    move v11, v12

    :cond_149
    or-int/2addr v3, v11

    iput-boolean v3, v9, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseMainComponentResult;->mHasReceiverOrder:Z

    .line 2584
    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2586
    :goto_14f
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v3

    and-int/2addr v3, v13

    if-eqz v3, :cond_159

    .line 2587
    invoke-interface {v1, v12}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHasPccComponents(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2591
    .end local v2    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_159
    move-object v2, v0

    .line 2592
    .local v2, "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    nop

    .line 2640
    .end local v2    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    .local v0, "parseResult":Landroid/content/pm/parsing/result/ParseResult;
    :goto_15b
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_166

    .line 2641
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 2643
    :cond_166
    invoke-interface {p1, v9}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_16c
    .sparse-switch
        -0x62b40cf1 -> :sswitch_3f
        -0x3adbfa0f -> :sswitch_34
        -0x30341611 -> :sswitch_29
        0x2f1ad612 -> :sswitch_1f
        0x7643c6b5 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_10e
        :pswitch_10b
        :pswitch_d1
        :pswitch_a2
        :pswitch_6a
    .end packed-switch
.end method

.method public static blacklist parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "component"    # Lcom/android/internal/pm/pkg/component/ParsedComponent;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "tagName"    # Ljava/lang/String;
    .param p5, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/internal/pm/pkg/component/ParsedComponent;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 3331
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3334
    .local v1, "sa":Landroid/content/res/TypedArray;
    nop

    .line 3335
    const/4 v0, 0x0

    :try_start_8
    invoke-static {v0, v0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    .line 3334
    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 3336
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_2e

    .line 3337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requires an android:name attribute"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_107

    .line 3380
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3337
    return-object v0

    .line 3340
    :cond_2e
    :try_start_2e
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3341
    .local v7, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_3c

    :cond_3b
    move-object v8, v2

    .line 3342
    .local v8, "className":Ljava/lang/String;
    :goto_3c
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    move-object v9, v3

    .line 3343
    .local v9, "v":Landroid/util/TypedValue;
    if-eqz v9, :cond_52

    iget v3, v9, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_52

    .line 3344
    new-instance v3, Landroid/content/pm/PackageManager$Property;

    iget v5, v9, Landroid/util/TypedValue;->resourceId:I

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .local v3, "property":Landroid/content/pm/PackageManager$Property;
    goto/16 :goto_e4

    .line 3346
    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_52
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    move-object v9, v5

    .line 3347
    if-eqz v9, :cond_ec

    .line 3348
    iget v5, v9, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_70

    .line 3349
    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3350
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_69

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3351
    .local v2, "stringValue":Ljava/lang/String;
    :cond_69
    new-instance v3, Landroid/content/pm/PackageManager$Property;

    invoke-direct {v3, v4, v2, v7, v8}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    .end local v0    # "cs":Ljava/lang/CharSequence;
    .end local v2    # "stringValue":Ljava/lang/String;
    .restart local v3    # "property":Landroid/content/pm/PackageManager$Property;
    goto/16 :goto_e4

    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_70
    iget v2, v9, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v2, v5, :cond_82

    .line 3353
    new-instance v2, Landroid/content/pm/PackageManager$Property;

    iget v5, v9, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_7d

    move v0, v3

    :cond_7d
    invoke-direct {v2, v4, v0, v7, v8}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .restart local v3    # "property":Landroid/content/pm/PackageManager$Property;
    goto :goto_e4

    .line 3354
    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_82
    iget v0, v9, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_97

    iget v0, v9, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_97

    .line 3356
    new-instance v3, Landroid/content/pm/PackageManager$Property;

    iget v5, v9, Landroid/util/TypedValue;->data:I

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "property":Landroid/content/pm/PackageManager$Property;
    goto :goto_e4

    .line 3357
    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_97
    iget v0, v9, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_a7

    .line 3358
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-direct {v0, v4, v2, v7, v8}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    .restart local v3    # "property":Landroid/content/pm/PackageManager$Property;
    goto :goto_e4

    .line 3361
    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_a7
    const-string v0, "PackageParsing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3364
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3365
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3366
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3361
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    const/4 v3, 0x0

    .line 3378
    .restart local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :goto_e4
    invoke-interface {p5, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_e8
    .catchall {:try_start_2e .. :try_end_e8} :catchall_107

    .line 3380
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3378
    return-object v0

    .line 3374
    .end local v3    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_ec
    :try_start_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requires an android:value or android:resource attribute"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_103
    .catchall {:try_start_ec .. :try_end_103} :catchall_107

    .line 3380
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3374
    return-object v0

    .line 3380
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "v":Landroid/util/TypedValue;
    :catchall_107
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3381
    throw v0
.end method

.method public static blacklist parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I
    .registers 7
    .param p0, "sa"    # Landroid/content/res/TypedArray;
    .param p1, "attr"    # I
    .param p2, "defaultValue"    # I

    .line 301
    move v0, p2

    .line 302
    .local v0, "val":I
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 303
    .local v1, "peekVal":Landroid/util/TypedValue;
    if-eqz v1, :cond_15

    .line 304
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_15

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_15

    .line 306
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 309
    :cond_15
    return v0
.end method

.method private blacklist parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "apkFile"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 438
    and-int/lit8 v1, p3, -0x21

    .line 439
    .local v1, "liteParseFlags":I
    nop

    .line 440
    invoke-static {p1, p2, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 441
    .local v2, "liteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 442
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 445
    :cond_12
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/parsing/PackageLite;

    .line 446
    .local v3, "lite":Landroid/content/pm/parsing/PackageLite;
    new-instance v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v0, v3, p3}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    move-object v8, v0

    .line 448
    .local v8, "assetLoader":Lcom/android/internal/pm/split/SplitAssetLoader;
    :try_start_1f
    invoke-virtual {v3}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_72
    .catchall {:try_start_1f .. :try_end_23} :catchall_6d

    if-eqz v0, :cond_38

    :try_start_25
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    move-result v0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_33
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    .line 463
    :catchall_2d
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    goto/16 :goto_94

    .line 459
    :catch_33
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    goto :goto_76

    .line 448
    :cond_38
    const/4 v0, 0x0

    :goto_39
    move v10, v0

    .line 449
    .local v10, "shouldSkipComponents":Z
    nop

    .line 451
    :try_start_3b
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_72
    .catchall {:try_start_3b .. :try_end_3f} :catchall_6d

    .line 449
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "apkFile":Ljava/io/File;
    .end local p3    # "flags":I
    .local v5, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v6, "apkFile":Ljava/io/File;
    .local v9, "flags":I
    :try_start_43
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 453
    .local p1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_55

    .line 454
    invoke-interface {v5, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_51} :catch_6b
    .catchall {:try_start_43 .. :try_end_51} :catchall_93

    .line 463
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 454
    return-object p2

    .line 457
    :cond_55
    :try_start_55
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 458
    invoke-virtual {v3}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result p3

    invoke-interface {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p2

    .line 457
    invoke-interface {v5, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_67} :catch_6b
    .catchall {:try_start_55 .. :try_end_67} :catchall_93

    .line 463
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 457
    return-object p2

    .line 459
    .end local v10    # "shouldSkipComponents":Z
    .end local p1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :catch_6b
    move-exception v0

    goto :goto_76

    .line 463
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v6    # "apkFile":Ljava/io/File;
    .end local v9    # "flags":I
    .local p1, "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "apkFile":Ljava/io/File;
    .restart local p3    # "flags":I
    :catchall_6d
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "apkFile":Ljava/io/File;
    .end local p3    # "flags":I
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v6    # "apkFile":Ljava/io/File;
    .restart local v9    # "flags":I
    goto :goto_94

    .line 459
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v6    # "apkFile":Ljava/io/File;
    .end local v9    # "flags":I
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "apkFile":Ljava/io/File;
    .restart local p3    # "flags":I
    :catch_72
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    .line 460
    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "apkFile":Ljava/io/File;
    .end local p3    # "flags":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v6    # "apkFile":Ljava/io/File;
    .restart local v9    # "flags":I
    :goto_76
    :try_start_76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x66

    invoke-interface {v5, p2, p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_8f
    .catchall {:try_start_76 .. :try_end_8f} :catchall_93

    .line 463
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 460
    return-object p1

    .line 463
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_93
    move-exception v0

    :goto_94
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 464
    throw v0
.end method

.method private static blacklist parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3244
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3246
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 3249
    .local v1, "orig":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 3250
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3252
    :cond_18
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 3254
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3252
    return-object v2

    .line 3254
    .end local v1    # "orig":Ljava/lang/String;
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3255
    throw v1
.end method

.method private static blacklist parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3142
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3144
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3145
    .local v2, "target":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 3147
    .local v4, "priority":I
    if-nez v2, :cond_1c

    .line 3148
    const-string v1, "<overlay> does not specify a target package"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_af

    .line 3177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3148
    return-object v1

    .line 3149
    :cond_1c
    if-ltz v4, :cond_a5

    const/16 v5, 0x270f

    if-le v4, v5, :cond_24

    goto/16 :goto_a5

    .line 3154
    :cond_24
    const/4 v5, 0x5

    :try_start_25
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3156
    .local v5, "propName":Ljava/lang/String;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3158
    .local v6, "propValue":Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 3159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping target and overlay pair "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3160
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": overlay ignored due to required system property: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3163
    .local v1, "message":Ljava/lang/String;
    const-string v3, "PackageParsing"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_72
    .catchall {:try_start_25 .. :try_end_72} :catchall_af

    .line 3177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3164
    return-object v3

    .line 3167
    .end local v1    # "message":Ljava/lang/String;
    :cond_76
    :try_start_76
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResourceOverlay(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3168
    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3169
    invoke-interface {v1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayPriority(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3171
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3170
    invoke-interface {v1, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3173
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3172
    invoke-interface {v1, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3175
    const/4 v7, 0x4

    invoke-static {v3, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    .line 3174
    invoke-interface {v1, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayIsStatic(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 3167
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_a1
    .catchall {:try_start_76 .. :try_end_a1} :catchall_af

    .line 3177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3167
    return-object v1

    .line 3150
    .end local v5    # "propName":Ljava/lang/String;
    .end local v6    # "propValue":Ljava/lang/String;
    :cond_a5
    :goto_a5
    :try_start_a5
    const-string v1, "<overlay> priority must be between 0 and 9999"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_af

    .line 3177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3150
    return-object v1

    .line 3177
    .end local v2    # "target":Ljava/lang/String;
    .end local v4    # "priority":I
    :catchall_af
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3178
    throw v1
.end method

.method private static blacklist parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1317
    sget-boolean v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object v4, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p2    # "res":Landroid/content/res/Resources;
    .end local p3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p4    # "flags":I
    .local v0, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v1, "res":Landroid/content/res/Resources;
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v5, "flags":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 1319
    .local p0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermission;>;"
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1320
    invoke-interface {v4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1322
    :cond_16
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 1323
    .local p1, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    if-eqz p1, :cond_21

    .line 1324
    invoke-interface {v0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1326
    :cond_21
    invoke-interface {v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    return-object p2
.end method

.method private static blacklist parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1306
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermissionGroup(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1308
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1309
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1311
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1332
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermissionTree(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1334
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedPermission;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1335
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1337
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2927
    nop

    .line 2928
    move v2, p5

    move-object p5, p0

    move-object p0, p4

    move p4, v2

    .local p0, "separateProcesses":[Ljava/lang/String;
    .local p4, "flags":I
    .local p5, "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static/range {p0 .. p5}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseProcesses([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2930
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedProcess;>;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2931
    invoke-interface {p5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 2934
    :cond_14
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p5, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2940
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2942
    .local v0, "sa":Landroid/content/res/TypedArray;
    :try_start_6
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isProfileableByShell()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_17

    .line 2943
    invoke-static {v2, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    move v1, v2

    goto :goto_18

    :cond_17
    :goto_17
    move v1, v3

    .line 2942
    :goto_18
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProfileableByShell(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 2944
    .local v1, "newPkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isProfileable()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2945
    invoke-static {v3, v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v2, v3

    goto :goto_2b

    :cond_2a
    nop

    .line 2944
    :goto_2b
    invoke-interface {v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProfileable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_37

    .line 2947
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2944
    return-object v2

    .line 2947
    .end local v1    # "newPkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2948
    throw v1
.end method

.method private static blacklist parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3183
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3187
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 3188
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 3189
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3191
    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 3193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3191
    return-object v2

    .line 3193
    .end local v1    # "name":Ljava/lang/String;
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3194
    throw v1
.end method

.method private blacklist parsePurpose(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1536
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPurpose:[I

    .line 1537
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1540
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1541
    .local v1, "purpose":Ljava/lang/String;
    nop

    .line 1542
    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v2

    .line 1546
    .local v2, "minSdkVersion":I
    nop

    .line 1547
    const/4 v3, 0x2

    const v4, 0x7fffffff

    invoke-static {v0, v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v3

    .line 1552
    .local v3, "maxSdkVersion":I
    nop

    .line 1553
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->isValidPurpose(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_25

    move-object v4, v1

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    .line 1552
    :goto_26
    invoke-interface {p1, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2e

    .line 1555
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1552
    return-object v4

    .line 1555
    .end local v1    # "purpose":Ljava/lang/String;
    .end local v2    # "minSdkVersion":I
    .end local v3    # "maxSdkVersion":I
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1556
    throw v1
.end method

.method private static blacklist parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1939
    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1941
    .local v7, "depth":I
    :goto_8
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v8, v0

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_1ed

    const/4 v0, 0x3

    if-ne v8, v0, :cond_24

    .line 1943
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v7, :cond_1a

    goto :goto_24

    :cond_1a
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move/from16 v18, v7

    move/from16 v20, v8

    goto/16 :goto_1f5

    .line 1944
    :cond_24
    :goto_24
    const/4 v0, 0x2

    if-eq v8, v0, :cond_28

    .line 1945
    goto :goto_8

    .line 1947
    :cond_28
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getInstance()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1948
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1949
    goto :goto_8

    .line 1951
    :cond_36
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 1952
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v0, 0x0

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1955
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1956
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 1959
    :cond_58
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-virtual {v4}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 1961
    .local v4, "intentInfo":Landroid/content/IntentFilter;
    const/4 v5, 0x0

    .line 1962
    .local v5, "data":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1963
    .local v11, "dataType":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1964
    .local v12, "host":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countActions()I

    move-result v13

    .line 1965
    .local v13, "numActions":I
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v14

    .line 1966
    .local v14, "numSchemes":I
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v15

    .line 1967
    .local v15, "numTypes":I
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    .line 1968
    .local v10, "numHosts":I
    if-nez v14, :cond_85

    if-nez v15, :cond_85

    if-nez v13, :cond_85

    .line 1969
    const-string v9, "intent tags must contain either an action or data."

    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    return-object v9

    .line 1971
    :cond_85
    if-le v13, v9, :cond_8e

    .line 1972
    const-string v9, "intent tag may have at most one action."

    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    return-object v9

    .line 1974
    :cond_8e
    if-le v15, v9, :cond_97

    .line 1975
    const-string v9, "intent tag may have at most one data type."

    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    return-object v9

    .line 1977
    :cond_97
    if-le v14, v9, :cond_a0

    .line 1978
    const-string v9, "intent tag may have at most one data scheme."

    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    return-object v9

    .line 1980
    :cond_a0
    if-le v10, v9, :cond_a9

    .line 1981
    const-string v9, "intent tag may have at most one data host."

    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    return-object v9

    .line 1983
    :cond_a9
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    move-object/from16 v18, v17

    .line 1984
    .local v18, "intent":Landroid/content/Intent;
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countCategories()I

    move-result v9

    move-object/from16 v19, v0

    move/from16 v0, v17

    .end local v17    # "i":I
    .local v0, "i":I
    .local v9, "max":I
    .local v19, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    :goto_ba
    if-ge v0, v9, :cond_cf

    .line 1985
    move-object/from16 v17, v5

    .end local v5    # "data":Landroid/net/Uri;
    .local v17, "data":Landroid/net/Uri;
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v20, v0

    move-object/from16 v0, v18

    .end local v18    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    .local v20, "i":I
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1984
    add-int/lit8 v5, v20, 0x1

    move v0, v5

    move-object/from16 v5, v17

    .end local v20    # "i":I
    .local v5, "i":I
    goto :goto_ba

    .end local v17    # "data":Landroid/net/Uri;
    .local v0, "i":I
    .local v5, "data":Landroid/net/Uri;
    .restart local v18    # "intent":Landroid/content/Intent;
    :cond_cf
    move/from16 v20, v0

    move-object/from16 v17, v5

    move-object/from16 v0, v18

    .line 1987
    .end local v5    # "data":Landroid/net/Uri;
    .end local v9    # "max":I
    .end local v18    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    .restart local v17    # "data":Landroid/net/Uri;
    const/4 v5, 0x1

    if-ne v10, v5, :cond_de

    .line 1988
    invoke-virtual {v4}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v9

    aget-object v12, v9, v16

    .line 1990
    :cond_de
    const-string v9, "/*"

    if-ne v14, v5, :cond_102

    .line 1991
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 1992
    move/from16 v18, v7

    move/from16 v20, v8

    move/from16 v7, v16

    .end local v7    # "depth":I
    .end local v8    # "type":I
    .local v18, "depth":I
    .local v20, "type":I
    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1993
    invoke-virtual {v5, v12}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1994
    invoke-virtual {v5, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1995
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .end local v17    # "data":Landroid/net/Uri;
    .restart local v5    # "data":Landroid/net/Uri;
    goto :goto_108

    .line 1990
    .end local v5    # "data":Landroid/net/Uri;
    .end local v18    # "depth":I
    .end local v20    # "type":I
    .restart local v7    # "depth":I
    .restart local v8    # "type":I
    .restart local v17    # "data":Landroid/net/Uri;
    :cond_102
    move/from16 v18, v7

    move/from16 v20, v8

    .end local v7    # "depth":I
    .end local v8    # "type":I
    .restart local v18    # "depth":I
    .restart local v20    # "type":I
    move-object/from16 v5, v17

    .line 1997
    .end local v17    # "data":Landroid/net/Uri;
    .restart local v5    # "data":Landroid/net/Uri;
    :goto_108
    const/4 v7, 0x1

    if-ne v15, v7, :cond_147

    .line 1998
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v8

    .line 2001
    .end local v11    # "dataType":Ljava/lang/String;
    .local v8, "dataType":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12b

    .line 2002
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    .end local v8    # "dataType":Ljava/lang/String;
    .local v7, "dataType":Ljava/lang/String;
    goto :goto_12c

    .line 2001
    .end local v7    # "dataType":Ljava/lang/String;
    .restart local v8    # "dataType":Ljava/lang/String;
    :cond_12b
    move-object v11, v8

    .line 2004
    .end local v8    # "dataType":Ljava/lang/String;
    .restart local v11    # "dataType":Ljava/lang/String;
    :goto_12c
    if-nez v5, :cond_147

    .line 2005
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 2006
    const-string v8, "content"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2007
    const-string v8, "*"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2008
    invoke-virtual {v7, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2009
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 2012
    :cond_147
    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2013
    const/4 v7, 0x1

    if-ne v13, v7, :cond_155

    .line 2014
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2016
    :cond_155
    invoke-interface {v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2017
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "intentInfo":Landroid/content/IntentFilter;
    .end local v5    # "data":Landroid/net/Uri;
    .end local v10    # "numHosts":I
    .end local v11    # "dataType":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "numActions":I
    .end local v14    # "numSchemes":I
    .end local v15    # "numTypes":I
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;>;"
    move/from16 v7, v18

    goto/16 :goto_8

    .end local v18    # "depth":I
    .end local v20    # "type":I
    .local v7, "depth":I
    .local v8, "type":I
    :cond_15c
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move/from16 v18, v7

    move/from16 v20, v8

    .end local v7    # "depth":I
    .end local v8    # "type":I
    .restart local v18    # "depth":I
    .restart local v20    # "type":I
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 2018
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesPackage:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2021
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    :try_start_178
    invoke-virtual {v4, v7, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 2023
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18c

    .line 2024
    const-string v5, "Package name is missing from package tag."

    invoke-interface {v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_188
    .catchall {:try_start_178 .. :try_end_188} :catchall_198

    .line 2028
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2024
    return-object v5

    .line 2026
    :cond_18c
    :try_start_18c
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_193
    .catchall {:try_start_18c .. :try_end_193} :catchall_198

    .line 2028
    nop

    .end local v0    # "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2029
    goto :goto_1e9

    .line 2028
    :catchall_198
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2029
    throw v0

    .line 2030
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    :cond_19d
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "provider"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e9

    .line 2031
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesProvider:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2034
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    :try_start_1b1
    invoke-virtual {v4, v7, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 2036
    .local v0, "authorities":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c7

    .line 2037
    const-string v5, "Authority missing from provider tag."

    const/16 v7, -0x6c

    invoke-interface {v6, v7, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_1c3
    .catchall {:try_start_1b1 .. :try_end_1c3} :catchall_1e4

    .line 2047
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2037
    return-object v5

    .line 2042
    :cond_1c7
    :try_start_1c7
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ";"

    invoke-direct {v5, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    .local v5, "authoritiesTokenizer":Ljava/util/StringTokenizer;
    :goto_1ce
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1dc

    .line 2044
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_1db
    .catchall {:try_start_1c7 .. :try_end_1db} :catchall_1e4

    goto :goto_1ce

    .line 2047
    .end local v0    # "authorities":Ljava/lang/String;
    .end local v5    # "authoritiesTokenizer":Ljava/util/StringTokenizer;
    :cond_1dc
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2048
    nop

    .line 2049
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    move/from16 v7, v18

    goto/16 :goto_8

    .line 2047
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    :catchall_1e4
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2048
    throw v0

    .line 2030
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    :cond_1e9
    :goto_1e9
    move/from16 v7, v18

    goto/16 :goto_8

    .line 1941
    .end local v18    # "depth":I
    .end local v20    # "type":I
    .restart local v7    # "depth":I
    .restart local v8    # "type":I
    :cond_1ed
    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move/from16 v18, v7

    move/from16 v20, v8

    .line 2051
    .end local v7    # "depth":I
    .end local v8    # "type":I
    .restart local v18    # "depth":I
    .restart local v20    # "type":I
    :goto_1f5
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private blacklist parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1596
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredFeature:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1599
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1601
    .local v1, "featureName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1602
    const-string v2, "Feature name is missing from <required-feature> tag."

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_1c

    .line 1603
    :cond_18
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 1605
    :goto_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1601
    return-object v2

    .line 1605
    .end local v1    # "featureName":Ljava/lang/String;
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1606
    throw v1
.end method

.method private blacklist parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1611
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredNotFeature:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1614
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1616
    .local v1, "featureName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1617
    const-string v2, "Feature name is missing from <required-not-feature> tag."

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_1c

    .line 1618
    :cond_18
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 1620
    :goto_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1616
    return-object v2

    .line 1620
    .end local v1    # "featureName":Ljava/lang/String;
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1621
    throw v1
.end method

.method private static blacklist parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p0, "flags"    # I
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1904
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4d

    .line 1905
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1907
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 1911
    .local v1, "hash":Ljava/lang/String;
    if-eqz v1, :cond_40

    .line 1912
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1913
    .local v2, "hashLength":I
    div-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    .line 1914
    .local v3, "hashBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v2, :cond_3b

    .line 1915
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v8, v4, 0x1

    .line 1917
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1914
    add-int/lit8 v4, v4, 0x2

    goto :goto_1a

    .line 1919
    .end local v4    # "i":I
    :cond_3b
    invoke-interface {p2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1920
    nop

    .end local v2    # "hashLength":I
    .end local v3    # "hashBytes":[B
    goto :goto_44

    .line 1921
    :cond_40
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_48

    .line 1924
    .end local v1    # "hash":Ljava/lang/String;
    :goto_44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1925
    goto :goto_4d

    .line 1924
    :catchall_48
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1925
    throw v1

    .line 1927
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    :cond_4d
    :goto_4d
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseSdkLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2650
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSdkLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2653
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2655
    .local v1, "lname":Ljava/lang/String;
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 2660
    .local v2, "versionMajor":I
    if-eqz v1, :cond_66

    if-gez v2, :cond_16

    goto :goto_66

    .line 2663
    :cond_16
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 2664
    const-string/jumbo v3, "sharedUserId not allowed in SDK library"

    const/16 v4, -0x6b

    invoke-interface {p3, v4, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_8b

    .line 2677
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2664
    return-object v3

    .line 2668
    :cond_29
    :try_start_29
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 2669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple SDKs for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2670
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2669
    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_8b

    .line 2677
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2669
    return-object v3

    .line 2673
    :cond_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 2674
    invoke-interface {v4, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibVersionMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 2675
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 2673
    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_62
    .catchall {:try_start_4e .. :try_end_62} :catchall_8b

    .line 2677
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2673
    return-object v3

    .line 2661
    :cond_66
    :goto_66
    :try_start_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sdk-library declaration name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_87
    .catchall {:try_start_66 .. :try_end_87} :catchall_8b

    .line 2677
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2661
    return-object v3

    .line 2677
    .end local v1    # "lname":Ljava/lang/String;
    .end local v2    # "versionMajor":I
    :catchall_8b
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2678
    throw v1
.end method

.method private static blacklist parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "sa"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1122
    const/4 v0, 0x0

    invoke-static {v0, v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 1123
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1124
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1127
    :cond_10
    const-string v2, "android"

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4f

    .line 1128
    invoke-static {p0, v1, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 1130
    .local v2, "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1133
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    const/16 v3, -0x6b

    invoke-interface {p0, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1137
    .end local v2    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_4f
    const/4 v2, 0x0

    .line 1139
    .local v2, "leaving":Z
    const/16 v4, 0xd

    invoke-static {v0, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 1140
    .local v4, "max":I
    if-eqz v4, :cond_5d

    sget v5, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v4, v5, :cond_5d

    move v0, v3

    .line 1143
    .end local v2    # "leaving":Z
    .end local v4    # "max":I
    .local v0, "leaving":Z
    :cond_5d
    nop

    .line 1144
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLeavingSharedUser(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 1145
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 1147
    const/4 v3, 0x3

    invoke-static {v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v3

    .line 1146
    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSharedUserLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 1143
    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private blacklist parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "splitIndex"    # I
    .param p4, "assets"    # Landroid/content/res/AssetManager;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "I",
            "Landroid/content/res/AssetManager;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 678
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, p3

    .line 683
    .local v1, "apkPath":Ljava/lang/String;
    invoke-virtual {p4, v1}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v2

    .line 684
    .local v2, "cookie":I
    if-nez v2, :cond_26

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed adding asset path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x65

    invoke-interface {p1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 692
    :cond_26
    :try_start_26
    const-string v0, "AndroidManifest.xml"

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v0, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_9b

    move-object v7, v0

    .line 694
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2e
    new-instance v6, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    invoke-direct {v6, p4, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_86

    .line 695
    .local v6, "res":Landroid/content/res/Resources;
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v9, p3

    move v8, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p3    # "splitIndex":I
    .end local p5    # "flags":I
    .local v4, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v5, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v8, "flags":I
    .local v9, "splitIndex":I
    :try_start_3b
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 697
    .local p1, "parseResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 698
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " (at "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 699
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, "): "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 700
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 698
    invoke-interface {v4, p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2
    :try_end_76
    .catchall {:try_start_3b .. :try_end_76} :catchall_83

    .line 704
    if-eqz v7, :cond_7b

    :try_start_78
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 698
    :cond_7b
    return-object p2

    .line 703
    :cond_7c
    nop

    .line 704
    if-eqz v7, :cond_82

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_82} :catch_98

    .line 703
    :cond_82
    return-object p1

    .line 692
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local p1    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :catchall_83
    move-exception v0

    move-object p1, v0

    goto :goto_8c

    .end local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v8    # "flags":I
    .end local v9    # "splitIndex":I
    .local p1, "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p3    # "splitIndex":I
    .restart local p5    # "flags":I
    :catchall_86
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move v9, p3

    move v8, p5

    move-object p1, v0

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p3    # "splitIndex":I
    .end local p5    # "flags":I
    .restart local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v8    # "flags":I
    .restart local v9    # "splitIndex":I
    :goto_8c
    if-eqz v7, :cond_97

    :try_start_8e
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    goto :goto_97

    :catchall_92
    move-exception v0

    move-object p2, v0

    :try_start_94
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "cookie":I
    .end local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v8    # "flags":I
    .end local v9    # "splitIndex":I
    .end local p0    # "this":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
    .end local p4    # "assets":Landroid/content/res/AssetManager;
    :cond_97
    :goto_97
    throw p1
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_98} :catch_98

    .line 704
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "apkPath":Ljava/lang/String;
    .restart local v2    # "cookie":I
    .restart local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v8    # "flags":I
    .restart local v9    # "splitIndex":I
    .restart local p0    # "this":Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
    .restart local p4    # "assets":Landroid/content/res/AssetManager;
    :catch_98
    move-exception v0

    move-object p1, v0

    goto :goto_a1

    .end local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v8    # "flags":I
    .end local v9    # "splitIndex":I
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p3    # "splitIndex":I
    .restart local p5    # "flags":I
    :catch_9b
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move v9, p3

    move v8, p5

    move-object p1, v0

    .line 705
    .end local p2    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p3    # "splitIndex":I
    .end local p5    # "flags":I
    .restart local v4    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v5    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v8    # "flags":I
    .restart local v9    # "splitIndex":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_a1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read manifest from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x66

    invoke-interface {v4, p3, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    return-object p2
.end method

.method private blacklist parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "splitIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    nop

    .line 778
    invoke-static {p1, p4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 779
    .local v0, "packageSplitResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 780
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 785
    :cond_10
    const/4 v1, 0x0

    .line 787
    .local v1, "foundApp":Z
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 788
    .local v2, "outerDepth":I
    :cond_15
    :goto_15
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_6a

    .line 789
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-lt v3, v5, :cond_15

    const/4 v3, 0x2

    if-eq v4, v3, :cond_29

    .line 790
    goto :goto_15

    .line 792
    :cond_29
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getInstance()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v3

    invoke-virtual {v3, p2, p4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 793
    invoke-static {p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 794
    goto :goto_15

    .line 798
    :cond_37
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "application"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 800
    if-eqz v1, :cond_52

    .line 804
    const-string v5, "PackageParsing"

    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_5e

    .line 808
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_52
    const/4 v1, 0x1

    .line 809
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .restart local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_5e

    .line 812
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_58
    const-string v5, "<manifest>"

    invoke-static {v5, p2, p4, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 815
    .restart local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_5e
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 816
    invoke-interface {p1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 818
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_69
    goto :goto_15

    .line 820
    :cond_6a
    if-nez v1, :cond_80

    .line 821
    const-string v3, "<manifest> does not contain an <application>"

    const-wide/32 v5, 0x8fcab42

    invoke-interface {p1, v3, v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 823
    .local v3, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 824
    invoke-interface {p1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 828
    .end local v3    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_80
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private blacklist parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "splitIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v9, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v4, p3

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 843
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    const/4 v11, 0x1

    :try_start_10
    invoke-virtual {v10, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-interface {v3, v9, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSplitHasCode(IZ)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 846
    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "classLoaderName":Ljava/lang/String;
    if-eqz v0, :cond_41

    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_41

    .line 852
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_ac

    .line 855
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 852
    return-object v1

    .line 850
    :cond_41
    :goto_41
    :try_start_41
    invoke-interface {v3, v9, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_ac

    .line 855
    .end local v0    # "classLoaderName":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 856
    nop

    .line 862
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v7, v0, v9

    .line 864
    .local v7, "defaultSplitName":Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 866
    .local v0, "depth":I
    :goto_52
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v12, v1

    .local v12, "type":I
    if-eq v1, v11, :cond_a7

    const/4 v1, 0x3

    if-ne v12, v1, :cond_62

    .line 868
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_a7

    .line 869
    :cond_62
    const/4 v1, 0x2

    if-eq v12, v1, :cond_66

    .line 870
    goto :goto_52

    .line 872
    :cond_66
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getInstance()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 873
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 874
    goto :goto_52

    .line 878
    :cond_74
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 879
    .local v6, "tagName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->isMainComponentTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 880
    move-object v1, p0

    move-object v2, p1

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMainComponent(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v13

    move-object v3, v6

    .end local v6    # "tagName":Ljava/lang/String;
    .local v3, "tagName":Ljava/lang/String;
    .local v13, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_95

    .line 883
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v13    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_88
    move-object v3, v6

    .end local v6    # "tagName":Ljava/lang/String;
    .restart local v3    # "tagName":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v13

    .line 886
    .restart local v13    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_95
    invoke-interface {v13}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 887
    invoke-interface {p1, v13}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 889
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v13    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_a0
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    goto :goto_52

    .line 891
    :cond_a7
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 855
    .end local v0    # "depth":I
    .end local v7    # "defaultSplitName":Ljava/lang/String;
    .end local v12    # "type":I
    :catchall_ac
    move-exception v0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 856
    throw v0
.end method

.method private blacklist parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 901
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c6

    :cond_7
    goto :goto_55

    :sswitch_8
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_56

    :sswitch_13
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_56

    :sswitch_1e
    const-string/jumbo v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_56

    :sswitch_29
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_56

    :sswitch_34
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_56

    :sswitch_3f
    const-string/jumbo v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_56

    :sswitch_4a
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_56

    :goto_55
    const/4 v0, -0x1

    :goto_56
    packed-switch v0, :pswitch_data_e4

    .line 932
    move-object v5, p1

    move-object v0, p3

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .local v0, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "input":Landroid/content/pm/parsing/result/ParseInput;
    const-string p1, "<application>"

    invoke-static {p1, v0, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 930
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_63
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 926
    :pswitch_69
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 924
    :pswitch_6e
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 922
    :pswitch_73
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 920
    :pswitch_78
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 913
    :pswitch_7d
    const/4 v2, 0x0

    const-string v5, "<property>"

    move-object v6, p1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .local v1, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v3, "res":Landroid/content/res/Resources;
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    .local v6, "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 915
    move-object v0, v1

    move-object v2, v3

    move-object v3, v4

    move-object v5, v6

    .end local v1    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .local v2, "res":Landroid/content/res/Resources;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .local p1, "propertyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_9b

    .line 916
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 918
    :cond_9b
    return-object p1

    .line 906
    .end local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .local p1, "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local p4    # "res":Landroid/content/res/Resources;
    .restart local p5    # "parser":Landroid/content/res/XmlResourceParser;
    :pswitch_9c
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p3    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .end local p4    # "res":Landroid/content/res/Resources;
    .end local p5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "input":Landroid/content/pm/parsing/result/ParseInput;
    const/4 v1, 0x0

    const-string v4, "<meta-data>"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 908
    .local p1, "metaDataResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_c4

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_c4

    .line 909
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 911
    :cond_c4
    return-object p1

    nop

    :sswitch_data_c6
    .sparse-switch
        -0x5fe67eda -> :sswitch_4a
        -0x5aaa6a59 -> :sswitch_3f
        -0x50de9846 -> :sswitch_34
        -0x4284098e -> :sswitch_29
        -0x3b32222b -> :sswitch_1e
        0x88b87d -> :sswitch_13
        0x751e7745 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_63
    .end packed-switch
.end method

.method private static blacklist parseStaticLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2685
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2689
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2691
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2693
    .local v3, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 2698
    .local v1, "versionMajor":I
    if-eqz v2, :cond_6f

    if-gez v3, :cond_1b

    goto :goto_6f

    .line 2701
    :cond_1b
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 2702
    const-string/jumbo v4, "sharedUserId not allowed in static shared library"

    const/16 v5, -0x6b

    invoke-interface {p3, v5, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_94

    .line 2716
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2702
    return-object v4

    .line 2706
    :cond_2e
    :try_start_2e
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_53

    .line 2707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple static-shared libs for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2708
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2707
    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_94

    .line 2716
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2707
    return-object v4

    .line 2711
    :cond_53
    :try_start_53
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    .line 2713
    invoke-static {v1, v3}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v6

    .line 2712
    invoke-interface {v5, v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    .line 2714
    invoke-interface {v5, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 2711
    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_94

    .line 2716
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2711
    return-object v4

    .line 2699
    :cond_6f
    :goto_6f
    :try_start_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad static-library declaration name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_90
    .catchall {:try_start_6f .. :try_end_90} :catchall_94

    .line 2716
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2699
    return-object v4

    .line 2716
    .end local v1    # "versionMajor":I
    .end local v2    # "lname":Ljava/lang/String;
    .end local v3    # "version":I
    :catchall_94
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2717
    throw v1
.end method

.method private static blacklist parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3199
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3201
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v2, v1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v1

    .line 3203
    .local v1, "requiresSmallestWidthDp":I
    const/4 v3, 0x7

    invoke-static {v2, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v3

    .line 3205
    .local v3, "compatibleWidthLimitDp":I
    const/16 v4, 0x8

    invoke-static {v2, v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 3210
    .local v4, "largestWidthLimitDp":I
    nop

    .line 3212
    const/4 v5, 0x1

    invoke-static {v5, v5, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v6

    .line 3211
    invoke-interface {p1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSmallScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 3214
    const/4 v7, 0x2

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 3213
    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNormalScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 3216
    const/4 v7, 0x3

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 3215
    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 3218
    const/4 v7, 0x5

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 3217
    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtraLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 3220
    const/4 v7, 0x4

    invoke-static {v5, v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 3219
    invoke-interface {v6, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeable(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 3222
    invoke-static {v5, v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    .line 3221
    invoke-interface {v6, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAnyDensity(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 3223
    invoke-interface {v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 3224
    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 3225
    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargestWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 3210
    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_5d
    .catchall {:try_start_8 .. :try_end_5d} :catchall_61

    .line 3227
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3210
    return-object v2

    .line 3227
    .end local v1    # "requiresSmallestWidthDp":I
    .end local v3    # "compatibleWidthLimitDp":I
    .end local v4    # "largestWidthLimitDp":I
    :catchall_61
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3228
    throw v1
.end method

.method private static blacklist parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1626
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1627
    .local v0, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1629
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1632
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1635
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1638
    iget v5, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v5

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1640
    :cond_25
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1643
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1646
    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1648
    :cond_38
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1649
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_43

    .line 1651
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1649
    return-object v2

    .line 1651
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1652
    throw v2
.end method

.method private static blacklist parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1657
    invoke-static {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 1658
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1660
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 1661
    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1662
    .local v1, "cPref":Landroid/content/pm/ConfigurationInfo;
    iget v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1663
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1666
    .end local v1    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_17
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2865
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2869
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2870
    .local v1, "lname":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 2872
    .local v2, "req":Z
    if-eqz v1, :cond_2e

    .line 2873
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2874
    if-eqz v2, :cond_21

    .line 2876
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 2877
    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_2e

    .line 2880
    :cond_21
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 2881
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2886
    :cond_2e
    :goto_2e
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    .line 2888
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2886
    return-object v3

    .line 2888
    .end local v1    # "lname":Ljava/lang/String;
    .end local v2    # "req":Z
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2889
    throw v1
.end method

.method private static blacklist parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2895
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesNativeLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2899
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2901
    .local v1, "lname":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 2904
    .local v2, "req":Z
    if-eqz v1, :cond_29

    .line 2905
    if-eqz v2, :cond_1c

    .line 2907
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 2908
    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_29

    .line 2911
    :cond_1c
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 2912
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2917
    :cond_29
    :goto_29
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_31

    .line 2919
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2917
    return-object v3

    .line 2919
    .end local v1    # "lname":Ljava/lang/String;
    .end local v2    # "req":Z
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2920
    throw v1
.end method

.method private blacklist parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 33
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1343
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1347
    .local v6, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    .line 1350
    .local v9, "name":Ljava/lang/String;
    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    invoke-static {v6, v8, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v7

    .line 1354
    .local v7, "minSdkVersion":I
    const v10, 0x7fffffff

    const/4 v11, 0x2

    invoke-static {v6, v11, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v10

    move v14, v10

    .line 1358
    .local v14, "maxSdkVersion":I
    const/4 v10, 0x0

    .line 1359
    .local v10, "purposeStringResource":I
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->ppdManifestEnabled()Z

    move-result v12
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_40a

    move v15, v12

    .line 1360
    .local v15, "isAllPurposeEnabled":Z
    if-eqz v15, :cond_3a

    .line 1361
    const/4 v12, 0x6

    :try_start_2f
    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_35

    move v10, v12

    goto :goto_3a

    .line 1531
    .end local v7    # "minSdkVersion":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "purposeStringResource":I
    .end local v14    # "maxSdkVersion":I
    .end local v15    # "isAllPurposeEnabled":Z
    :catchall_35
    move-exception v0

    move-object/from16 v26, v6

    goto/16 :goto_40d

    .line 1366
    .restart local v7    # "minSdkVersion":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "purposeStringResource":I
    .restart local v14    # "maxSdkVersion":I
    .restart local v15    # "isAllPurposeEnabled":Z
    :cond_3a
    :goto_3a
    :try_start_3a
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1367
    .local v12, "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v13, 0x3

    invoke-virtual {v6, v13, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_40a

    move-object/from16 v17, v16

    .line 1370
    .local v17, "feature":Ljava/lang/String;
    if-eqz v17, :cond_4e

    .line 1371
    move-object/from16 v11, v17

    .end local v17    # "feature":Ljava/lang/String;
    .local v11, "feature":Ljava/lang/String;
    :try_start_4a
    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_35

    goto :goto_50

    .line 1370
    .end local v11    # "feature":Ljava/lang/String;
    .restart local v17    # "feature":Ljava/lang/String;
    :cond_4e
    move-object/from16 v11, v17

    .line 1374
    .end local v17    # "feature":Ljava/lang/String;
    .restart local v11    # "feature":Ljava/lang/String;
    :goto_50
    :try_start_50
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v18, v17

    .line 1375
    .local v18, "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v13, 0x4

    invoke-virtual {v6, v13, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_40a

    move-object/from16 v11, v19

    .line 1379
    if-eqz v11, :cond_66

    .line 1380
    move-object/from16 v13, v18

    .end local v18    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v13, "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_62
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_35

    goto :goto_68

    .line 1379
    .end local v13    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v18    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_66
    move-object/from16 v13, v18

    .line 1383
    .end local v18    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v13    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_68
    nop

    .line 1384
    const/4 v8, 0x5

    :try_start_6a
    invoke-virtual {v6, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 1389
    .local v8, "usesPermissionFlags":I
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v21, v20

    .line 1390
    .local v21, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v22, v20

    .line 1392
    .local v22, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->ppdPurposeEnabled()Z

    move-result v20
    :try_end_80
    .catchall {:try_start_6a .. :try_end_80} :catchall_40a

    if-nez v20, :cond_8c

    .line 1393
    :try_start_82
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->ppdInstallTimeEnabled()Z

    move-result v20
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_35

    if-eqz v20, :cond_89

    goto :goto_8c

    :cond_89
    move/from16 v20, v0

    goto :goto_8e

    :cond_8c
    :goto_8c
    const/16 v20, 0x1

    .line 1394
    .local v20, "isPurposesEnabled":Z
    :goto_8e
    :try_start_8e
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    move/from16 v24, v23

    .line 1396
    .local v24, "outerDepth":I
    :goto_94
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_98
    .catchall {:try_start_8e .. :try_end_98} :catchall_40a

    move/from16 v25, v0

    move-object/from16 v26, v6

    const/4 v6, 0x1

    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .local v25, "type":I
    .local v26, "sa":Landroid/content/res/TypedArray;
    if-eq v0, v6, :cond_1fa

    move/from16 v0, v25

    const/4 v6, 0x3

    .end local v25    # "type":I
    .local v0, "type":I
    if-ne v0, v6, :cond_b9

    .line 1398
    :try_start_a4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    move/from16 v25, v15

    move/from16 v15, v24

    .end local v24    # "outerDepth":I
    .local v15, "outerDepth":I
    .local v25, "isAllPurposeEnabled":Z
    if-le v6, v15, :cond_af

    goto :goto_bd

    :cond_af
    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    goto/16 :goto_208

    .line 1396
    .end local v25    # "isAllPurposeEnabled":Z
    .local v15, "isAllPurposeEnabled":Z
    .restart local v24    # "outerDepth":I
    :cond_b9
    move/from16 v25, v15

    move/from16 v15, v24

    .line 1399
    .end local v24    # "outerDepth":I
    .local v15, "outerDepth":I
    .restart local v25    # "isAllPurposeEnabled":Z
    :goto_bd
    const/4 v6, 0x3

    if-eq v0, v6, :cond_1e3

    const/4 v6, 0x4

    if-ne v0, v6, :cond_cb

    .line 1400
    move/from16 v24, v15

    move/from16 v15, v25

    move-object/from16 v6, v26

    const/4 v0, 0x0

    goto :goto_94

    .line 1404
    :cond_cb
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_412

    move/from16 v24, v0

    .end local v0    # "type":I
    .local v24, "type":I
    goto :goto_10c

    .end local v24    # "type":I
    .restart local v0    # "type":I
    :sswitch_d9
    move/from16 v24, v0

    .end local v0    # "type":I
    .restart local v24    # "type":I
    const-string v0, "general-purpose"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const/4 v0, 0x3

    goto :goto_10d

    .end local v24    # "type":I
    .restart local v0    # "type":I
    :sswitch_e5
    move/from16 v24, v0

    .end local v0    # "type":I
    .restart local v24    # "type":I
    const-string/jumbo v0, "required-feature"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const/4 v0, 0x0

    goto :goto_10d

    .end local v24    # "type":I
    .restart local v0    # "type":I
    :sswitch_f2
    move/from16 v24, v0

    .end local v0    # "type":I
    .restart local v24    # "type":I
    const-string/jumbo v0, "required-not-feature"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const/4 v0, 0x1

    goto :goto_10d

    .end local v24    # "type":I
    .restart local v0    # "type":I
    :sswitch_ff
    move/from16 v24, v0

    .end local v0    # "type":I
    .restart local v24    # "type":I
    const-string/jumbo v0, "purpose"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const/4 v0, 0x2

    goto :goto_10d

    :cond_10c
    :goto_10c
    const/4 v0, -0x1

    :goto_10d
    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_424

    .line 1437
    move-object/from16 v0, v22

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    .end local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v11, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "feature":Ljava/lang/String;
    const-string v4, "<uses-permission>"

    goto/16 :goto_1c0

    .line 1429
    .end local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v11, "feature":Ljava/lang/String;
    .restart local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_11b
    if-eqz v25, :cond_122

    .line 1430
    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseGeneralPurpose(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    goto :goto_126

    .line 1431
    :cond_122
    invoke-interface {v2, v6}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    :goto_126
    nop

    .line 1432
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_141

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_141

    .line 1433
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    .end local v22    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v27, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_145

    .line 1432
    .end local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .restart local v22    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_141
    move-object/from16 v27, v0

    move-object/from16 v0, v22

    .line 1441
    .end local v22    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :goto_145
    move-object/from16 v22, v11

    move-object/from16 v11, v21

    move-object/from16 v4, v27

    goto/16 :goto_1c4

    .line 1420
    .end local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .restart local v22    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_14d
    move-object/from16 v0, v22

    .end local v22    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v20, :cond_156

    .line 1421
    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePurpose(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_15a

    .line 1422
    :cond_156
    invoke-interface {v2, v6}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    :goto_15a
    nop

    .line 1423
    .local v6, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v22

    if-eqz v22, :cond_179

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_179

    .line 1424
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v27, v6

    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .restart local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    move-object/from16 v6, v22

    check-cast v6, Ljava/lang/String;

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    .end local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v11, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "feature":Ljava/lang/String;
    invoke-interface {v11, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a0

    .line 1423
    .end local v22    # "feature":Ljava/lang/String;
    .end local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .restart local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .local v11, "feature":Ljava/lang/String;
    .restart local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_179
    move-object/from16 v27, v6

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .end local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v11, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v22    # "feature":Ljava/lang/String;
    .restart local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    goto :goto_1a0

    .line 1413
    .end local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .local v11, "feature":Ljava/lang/String;
    .restart local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_180
    move-object/from16 v0, v22

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    .end local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v11, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "feature":Ljava/lang/String;
    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1414
    .restart local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v21

    if-eqz v21, :cond_19e

    .line 1415
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v27, v6

    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .restart local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1a0

    .line 1414
    .end local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .restart local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_19e
    move-object/from16 v27, v6

    .line 1441
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .restart local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :goto_1a0
    move-object/from16 v4, v27

    goto :goto_1c4

    .line 1406
    .end local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .local v11, "feature":Ljava/lang/String;
    .restart local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_1a3
    move-object/from16 v0, v22

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    .end local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v11, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "feature":Ljava/lang/String;
    invoke-direct {v1, v2, v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1407
    .restart local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v21

    if-eqz v21, :cond_1be

    .line 1408
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v4, v21

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1441
    :cond_1be
    move-object v4, v6

    goto :goto_1c4

    .line 1437
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :goto_1c0
    invoke-static {v4, v3, v5, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 1441
    .local v4, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :goto_1c4
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_1d2

    .line 1442
    invoke-interface {v2, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_1ce
    .catchall {:try_start_a4 .. :try_end_1ce} :catchall_408

    .line 1531
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1442
    return-object v6

    .line 1444
    .end local v4    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_1d2
    move-object/from16 v4, p3

    move-object/from16 v21, v11

    move/from16 v24, v15

    move-object/from16 v11, v22

    move/from16 v15, v25

    move-object/from16 v6, v26

    move-object/from16 v22, v0

    const/4 v0, 0x0

    goto/16 :goto_94

    .line 1399
    .end local v24    # "type":I
    .local v0, "type":I
    .local v11, "feature":Ljava/lang/String;
    .restart local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1e3
    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    .end local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v11, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "feature":Ljava/lang/String;
    .restart local v24    # "type":I
    move-object/from16 v4, p3

    move/from16 v24, v15

    move-object/from16 v11, v22

    move/from16 v15, v25

    move-object/from16 v6, v26

    move-object/from16 v22, v0

    const/4 v0, 0x0

    goto/16 :goto_94

    .line 1396
    .end local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v11, "feature":Ljava/lang/String;
    .local v15, "isAllPurposeEnabled":Z
    .restart local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v24, "outerDepth":I
    .local v25, "type":I
    :cond_1fa
    move/from16 v0, v25

    move/from16 v25, v15

    move/from16 v15, v24

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    .line 1447
    .end local v21    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v11, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v15, "outerDepth":I
    .local v22, "feature":Ljava/lang/String;
    .local v24, "type":I
    .local v25, "isAllPurposeEnabled":Z
    :goto_208
    :try_start_208
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_20c
    .catchall {:try_start_208 .. :try_end_20c} :catchall_408

    .line 1449
    .local v4, "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    if-nez v9, :cond_213

    .line 1450
    nop

    .line 1531
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1450
    return-object v4

    .line 1453
    :cond_213
    :try_start_213
    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v6, v7, :cond_3fa

    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-le v6, v14, :cond_226

    move-object/from16 v16, v4

    move-object/from16 v17, v13

    move-object v13, v0

    move-object v0, v12

    move-object v12, v11

    move v11, v10

    move v10, v8

    goto/16 :goto_403

    .line 1458
    :cond_226
    iget-object v6, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    if-eqz v6, :cond_274

    .line 1461
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/16 v18, 0x1

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_232
    if-ltz v6, :cond_252

    .line 1462
    move-object/from16 v16, v4

    .end local v4    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .local v16, "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    iget-object v4, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_244
    .catchall {:try_start_213 .. :try_end_244} :catchall_408

    if-nez v4, :cond_24b

    .line 1463
    nop

    .line 1531
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1463
    return-object v16

    .line 1461
    :cond_24b
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v5, p4

    move-object/from16 v4, v16

    goto :goto_232

    .end local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v4    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_252
    move-object/from16 v16, v4

    .line 1469
    .end local v4    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v6    # "i":I
    .restart local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :try_start_254
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_25c
    if-ltz v4, :cond_276

    .line 1470
    iget-object v5, v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v13, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v5
    :try_end_26a
    .catchall {:try_start_254 .. :try_end_26a} :catchall_408

    if-eqz v5, :cond_271

    .line 1471
    nop

    .line 1531
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1471
    return-object v16

    .line 1469
    :cond_271
    add-int/lit8 v4, v4, -0x1

    goto :goto_25c

    .line 1458
    .end local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .local v4, "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_274
    move-object/from16 v16, v4

    .line 1478
    .end local v4    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    :cond_276
    const/4 v4, 0x0

    .line 1479
    .local v4, "found":Z
    nop

    .line 1480
    :try_start_278
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesPermissionMapping()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    .line 1481
    .local v5, "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_284
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3d4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 1482
    .local v17, "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ca

    .line 1483
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v1
    :try_end_29e
    .catchall {:try_start_278 .. :try_end_29e} :catchall_408

    const-string v6, " at: "

    move/from16 v18, v4

    .end local v4    # "found":Z
    .local v18, "found":Z
    const-string v4, " in package: "

    if-eq v1, v8, :cond_2db

    .line 1484
    :try_start_2a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    .end local v5    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .local v19, "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    const-string v5, "Conflicting uses-permissions flags: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1485
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1486
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1484
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2d7
    .catchall {:try_start_2a6 .. :try_end_2d7} :catchall_408

    .line 1531
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1484
    return-object v1

    .line 1487
    .end local v19    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v5    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    :cond_2db
    move-object/from16 v19, v5

    .end local v5    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v19    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    if-eqz v20, :cond_31c

    .line 1488
    :try_start_2df
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getPurposes()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31c

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting uses-permissions purposes: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1493
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1495
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1489
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_318
    .catchall {:try_start_2df .. :try_end_318} :catchall_408

    .line 1531
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1489
    return-object v1

    .line 1496
    :cond_31c
    if-eqz v25, :cond_35b

    .line 1497
    :try_start_31e
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getGeneralPurposes()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35b

    .line 1499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting uses-permissions general purposes: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1503
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1505
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1499
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_357
    .catchall {:try_start_31e .. :try_end_357} :catchall_408

    .line 1531
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1499
    return-object v1

    .line 1506
    :cond_35b
    if-eqz v25, :cond_396

    :try_start_35d
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getPurposeStringResource()I

    move-result v1

    if-eq v1, v10, :cond_396

    .line 1508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting uses-permissions purpose string: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1512
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1514
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1508
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_392
    .catchall {:try_start_35d .. :try_end_392} :catchall_408

    .line 1531
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1508
    return-object v1

    .line 1516
    :cond_396
    :try_start_396
    const-string v1, "PackageParsing"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    .end local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v21, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1517
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1518
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1516
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/4 v4, 0x1

    .line 1521
    .end local v18    # "found":Z
    .restart local v4    # "found":Z
    goto :goto_3da

    .line 1482
    .end local v19    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v21    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    :cond_3ca
    move-object/from16 v21, v0

    move/from16 v18, v4

    move-object/from16 v19, v5

    .line 1523
    .end local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "found":Z
    .end local v5    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v17    # "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    .restart local v18    # "found":Z
    .restart local v19    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v21    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    goto/16 :goto_284

    .line 1481
    .end local v18    # "found":Z
    .end local v19    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v21    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "found":Z
    .restart local v5    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    :cond_3d4
    move-object/from16 v21, v0

    move/from16 v18, v4

    move-object/from16 v19, v5

    .line 1525
    .end local v0    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v19    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v21    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3da
    if-nez v4, :cond_3ed

    .line 1526
    move-object v0, v12

    move-object v12, v11

    move v11, v10

    move v10, v8

    .end local v8    # "usesPermissionFlags":I
    .local v0, "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v10, "usesPermissionFlags":I
    .local v11, "purposeStringResource":I
    .local v12, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;

    move-object/from16 v17, v13

    move-object/from16 v13, v21

    .end local v21    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v13, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v17, "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;IILjava/util/Set;Ljava/util/Set;)V

    invoke-interface {v3, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_3ec
    .catchall {:try_start_396 .. :try_end_3ec} :catchall_408

    goto :goto_3f5

    .line 1525
    .end local v0    # "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "usesPermissionFlags":I
    .local v10, "purposeStringResource":I
    .local v11, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v12, "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v13, "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3ed
    move-object v0, v12

    move-object/from16 v17, v13

    move-object/from16 v13, v21

    move-object v12, v11

    move v11, v10

    move v10, v8

    .line 1529
    .end local v8    # "usesPermissionFlags":I
    .end local v21    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v10, "usesPermissionFlags":I
    .local v11, "purposeStringResource":I
    .local v12, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v13, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_3f5
    nop

    .line 1531
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1529
    return-object v16

    .line 1453
    .end local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v17    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "usesPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;>;"
    .local v0, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v8    # "usesPermissionFlags":I
    .local v10, "purposeStringResource":I
    .local v11, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v12, "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v13, "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3fa
    move-object/from16 v16, v4

    move-object/from16 v17, v13

    move-object v13, v0

    move-object v0, v12

    move-object v12, v11

    move v11, v10

    move v10, v8

    .line 1455
    .end local v4    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v8    # "usesPermissionFlags":I
    .local v0, "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v10, "usesPermissionFlags":I
    .local v11, "purposeStringResource":I
    .local v12, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v13, "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v17    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_403
    nop

    .line 1531
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1455
    return-object v16

    .line 1531
    .end local v0    # "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "minSdkVersion":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "usesPermissionFlags":I
    .end local v11    # "purposeStringResource":I
    .end local v12    # "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "generalPurposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "maxSdkVersion":I
    .end local v15    # "outerDepth":I
    .end local v16    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    .end local v17    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "isPurposesEnabled":Z
    .end local v22    # "feature":Ljava/lang/String;
    .end local v24    # "type":I
    .end local v25    # "isAllPurposeEnabled":Z
    :catchall_408
    move-exception v0

    goto :goto_40d

    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .local v6, "sa":Landroid/content/res/TypedArray;
    :catchall_40a
    move-exception v0

    move-object/from16 v26, v6

    .end local v6    # "sa":Landroid/content/res/TypedArray;
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    :goto_40d
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    .line 1532
    throw v0

    nop

    :sswitch_data_412
    .sparse-switch
        -0xd2402e2 -> :sswitch_ff
        0x341a4cce -> :sswitch_f2
        0x64ee7ac8 -> :sswitch_e5
        0x69268139 -> :sswitch_d9
    .end sparse-switch

    :pswitch_data_424
    .packed-switch 0x0
        :pswitch_1a3
        :pswitch_180
        :pswitch_14d
        :pswitch_11b
    .end packed-switch
.end method

.method private static blacklist parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 30
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1735
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-lez v0, :cond_194

    .line 1736
    move/from16 v5, p4

    and-int/lit16 v0, v5, 0x200

    const/4 v6, 0x0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    move v0, v6

    :goto_16
    move v8, v0

    .line 1737
    .local v8, "isApkInApex":Z
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1739
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    .line 1740
    .local v0, "minVers":I
    const/4 v10, 0x0

    .line 1741
    .local v10, "minCode":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1742
    .local v11, "minAssigned":Z
    const/4 v12, 0x0

    .line 1743
    .local v12, "targetVers":I
    const/4 v13, 0x0

    .line 1744
    .local v13, "targetCode":Ljava/lang/String;
    const v14, 0x7fffffff

    .line 1746
    .local v14, "maxVers":I
    :try_start_25
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 1747
    .local v6, "val":Landroid/util/TypedValue;
    const/4 v15, 0x3

    if-eqz v6, :cond_4a

    .line 1748
    const/16 v16, 0x1

    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v7, v15, :cond_45

    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_45

    .line 1749
    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    .line 1750
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    move v11, v7

    goto :goto_4c

    .line 1753
    :cond_45
    iget v7, v6, Landroid/util/TypedValue;->data:I

    move v0, v7

    .line 1754
    const/4 v11, 0x1

    goto :goto_4c

    .line 1747
    :cond_4a
    const/16 v16, 0x1

    .line 1758
    :goto_4c
    move/from16 v7, v16

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v17

    move-object/from16 v6, v17

    .line 1759
    if-eqz v6, :cond_6d

    .line 1760
    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v7, v15, :cond_69

    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_69

    .line 1761
    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    .line 1762
    if-nez v11, :cond_6f

    .line 1763
    move-object v10, v13

    goto :goto_6f

    .line 1767
    :cond_69
    iget v7, v6, Landroid/util/TypedValue;->data:I

    move v12, v7

    goto :goto_6f

    .line 1770
    :cond_6d
    move v12, v0

    .line 1771
    move-object v13, v10

    .line 1774
    :cond_6f
    :goto_6f
    if-eqz v8, :cond_7c

    .line 1775
    const/4 v7, 0x2

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    move-object v6, v7

    .line 1776
    if-eqz v6, :cond_7c

    .line 1778
    iget v7, v6, Landroid/util/TypedValue;->data:I

    move v14, v7

    .line 1782
    :cond_7c
    sget-object v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 1783
    invoke-static {v12, v13, v7, v1, v8}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 1785
    .local v7, "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v17

    if-eqz v17, :cond_90

    .line 1786
    invoke-interface {v1, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15
    :try_end_8c
    .catchall {:try_start_25 .. :try_end_8c} :catchall_18f

    .line 1843
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1786
    return-object v15

    .line 1789
    :cond_90
    :try_start_90
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v18, v17

    .line 1791
    .local v18, "targetSdkVersion":I
    nop

    .line 1792
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move/from16 v5, v18

    .end local v18    # "targetSdkVersion":I
    .local v5, "targetSdkVersion":I
    invoke-interface {v1, v15, v5}, Landroid/content/pm/parsing/result/ParseInput;->enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15

    .line 1793
    .local v15, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v18

    if-eqz v18, :cond_b5

    .line 1794
    invoke-interface {v1, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16
    :try_end_b1
    .catchall {:try_start_90 .. :try_end_b1} :catchall_18f

    .line 1843
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1794
    return-object v16

    .line 1797
    :cond_b5
    move-object/from16 v18, v6

    .end local v6    # "val":Landroid/util/TypedValue;
    .local v18, "val":Landroid/util/TypedValue;
    :try_start_b7
    sget v6, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    move-object/from16 v19, v7

    .end local v7    # "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .local v19, "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 1798
    invoke-static {v0, v10, v6, v7, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1799
    .local v6, "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 1800
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_cb
    .catchall {:try_start_b7 .. :try_end_cb} :catchall_18f

    .line 1843
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1800
    return-object v7

    .line 1803
    :cond_cf
    :try_start_cf
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1805
    .local v7, "minSdkVersion":I
    move/from16 v20, v0

    .end local v0    # "minVers":I
    .local v20, "minVers":I
    invoke-interface {v2, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 1806
    invoke-interface {v0, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1807
    if-eqz v8, :cond_10b

    .line 1808
    sget v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    .line 1809
    invoke-static {v14, v0, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMaxSdkVersion(IILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1810
    .local v0, "maxSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v21

    if-eqz v21, :cond_f8

    .line 1811
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16
    :try_end_f4
    .catchall {:try_start_cf .. :try_end_f4} :catchall_18f

    .line 1843
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1811
    return-object v16

    .line 1813
    :cond_f8
    :try_start_f8
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v22, v21

    .line 1814
    .local v22, "maxSdkVersion":I
    move-object/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "maxSdkVersion":I
    .local v0, "maxSdkVersion":I
    .local v21, "maxSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1818
    .end local v0    # "maxSdkVersion":I
    .end local v21    # "maxSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    :cond_10b
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 1819
    .local v0, "innerDepth":I
    const/16 v21, 0x0

    .line 1820
    .local v21, "minExtensionVersions":Landroid/util/SparseIntArray;
    :goto_111
    move/from16 v22, v5

    .end local v5    # "targetSdkVersion":I
    .local v22, "targetSdkVersion":I
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move/from16 v23, v5

    move-object/from16 v24, v6

    const/4 v6, 0x1

    .end local v6    # "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .local v23, "type":I
    .local v24, "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    if-eq v5, v6, :cond_17f

    move/from16 v5, v23

    const/4 v6, 0x3

    .end local v23    # "type":I
    .local v5, "type":I
    if-ne v5, v6, :cond_12d

    .line 1821
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_12a

    goto :goto_12d

    :cond_12a
    move/from16 v23, v0

    goto :goto_183

    .line 1822
    :cond_12d
    :goto_12d
    const/4 v6, 0x3

    if-eq v5, v6, :cond_176

    const/4 v6, 0x4

    if-ne v5, v6, :cond_136

    .line 1823
    move/from16 v23, v0

    goto :goto_178

    .line 1827
    :cond_136
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v23, v0

    .end local v0    # "innerDepth":I
    .local v23, "innerDepth":I
    const-string v0, "extension-sdk"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 1828
    if-nez v21, :cond_14e

    .line 1829
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v21, v0

    goto :goto_150

    .line 1828
    :cond_14e
    move-object/from16 v0, v21

    .line 1831
    .end local v21    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .local v0, "minExtensionVersions":Landroid/util/SparseIntArray;
    :goto_150
    invoke-static {v1, v3, v4, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1832
    .local v6, "result":Landroid/content/pm/parsing/result/ParseResult;
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v21, v0

    goto :goto_161

    .line 1834
    .end local v0    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .restart local v21    # "minExtensionVersions":Landroid/util/SparseIntArray;
    :cond_15a
    const-string v0, "<uses-sdk>"

    invoke-static {v0, v2, v4, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v6, v0

    .line 1837
    .restart local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_161
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 1838
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_16b
    .catchall {:try_start_f8 .. :try_end_16b} :catchall_18f

    .line 1843
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1838
    return-object v0

    .line 1840
    .end local v6    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_16f
    move/from16 v5, v22

    move/from16 v0, v23

    move-object/from16 v6, v24

    goto :goto_111

    .line 1822
    .end local v23    # "innerDepth":I
    .local v0, "innerDepth":I
    :cond_176
    move/from16 v23, v0

    .line 1820
    .end local v0    # "innerDepth":I
    .end local v5    # "type":I
    .restart local v23    # "innerDepth":I
    :goto_178
    move/from16 v5, v22

    move/from16 v0, v23

    move-object/from16 v6, v24

    goto :goto_111

    .restart local v0    # "innerDepth":I
    .local v23, "type":I
    :cond_17f
    move/from16 v5, v23

    move/from16 v23, v0

    .line 1841
    .end local v0    # "innerDepth":I
    .restart local v5    # "type":I
    .local v23, "innerDepth":I
    :goto_183
    :try_start_183
    invoke-static/range {v21 .. v21}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_18a
    .catchall {:try_start_183 .. :try_end_18a} :catchall_18f

    .line 1843
    nop

    .end local v5    # "type":I
    .end local v7    # "minSdkVersion":I
    .end local v10    # "minCode":Ljava/lang/String;
    .end local v11    # "minAssigned":Z
    .end local v12    # "targetVers":I
    .end local v13    # "targetCode":Ljava/lang/String;
    .end local v14    # "maxVers":I
    .end local v15    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .end local v18    # "val":Landroid/util/TypedValue;
    .end local v19    # "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .end local v20    # "minVers":I
    .end local v21    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .end local v22    # "targetSdkVersion":I
    .end local v23    # "innerDepth":I
    .end local v24    # "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1844
    goto :goto_194

    .line 1843
    :catchall_18f
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1844
    throw v0

    .line 1846
    .end local v8    # "isApkInApex":Z
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    :cond_194
    :goto_194
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2746
    move-object/from16 v1, p0

    const-string v2, ""

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdkLibrary:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2749
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    :try_start_f
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 2751
    .local v0, "lname":Ljava/lang/String;
    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 2753
    .local v7, "versionMajor":I
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    .line 2755
    .local v9, "certSha256Digest":Ljava/lang/String;
    nop

    .line 2756
    const/4 v10, 0x3

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    move/from16 v16, v10

    .line 2760
    .local v16, "optional":Z
    if-eqz v0, :cond_a5

    if-ltz v7, :cond_a5

    if-nez v9, :cond_2e

    goto/16 :goto_a5

    .line 2766
    :cond_2e
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v10

    .line 2767
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_53

    .line 2768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Depending on multiple versions of SDK library "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_4f
    .catchall {:try_start_f .. :try_end_4f} :catchall_d4

    .line 2803
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2768
    return-object v2

    .line 2772
    :cond_53
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 2775
    .end local v0    # "lname":Ljava/lang/String;
    .local v12, "lname":Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v9, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2777
    .end local v9    # "certSha256Digest":Ljava/lang/String;
    .local v0, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 2779
    const-string v9, "debug.pm.uses_sdk_library_default_cert_digest"

    invoke-static {v9, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_6d
    .catchall {:try_start_53 .. :try_end_6d} :catchall_d4

    .line 2783
    .end local v0    # "certSha256Digest":Ljava/lang/String;
    .restart local v9    # "certSha256Digest":Ljava/lang/String;
    :try_start_6d
    invoke-static {v9, v6}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_70} :catch_72
    .catchall {:try_start_6d .. :try_end_70} :catchall_d4

    .line 2786
    move-object v0, v9

    goto :goto_74

    .line 2784
    :catch_72
    move-exception v0

    .line 2785
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v2

    .line 2789
    .end local v9    # "certSha256Digest":Ljava/lang/String;
    .local v0, "certSha256Digest":Ljava/lang/String;
    :cond_74
    :goto_74
    :try_start_74
    invoke-static/range {p0 .. p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 2790
    .local v2, "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_86

    .line 2791
    invoke-interface {v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_d4

    .line 2803
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2791
    return-object v6

    .line 2793
    :cond_86
    :try_start_86
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 2795
    .local v9, "additionalCertSha256Digests":[Ljava/lang/String;
    array-length v11, v9

    add-int/2addr v11, v8

    new-array v15, v11, [Ljava/lang/String;

    .line 2796
    .local v15, "certSha256Digests":[Ljava/lang/String;
    aput-object v0, v15, v6

    .line 2797
    array-length v11, v9

    invoke-static {v9, v6, v15, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2800
    int-to-long v13, v7

    .line 2801
    move-object/from16 v11, p1

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 2800
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_a1
    .catchall {:try_start_86 .. :try_end_a1} :catchall_d4

    .line 2803
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2800
    return-object v6

    .line 2761
    .end local v2    # "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    .end local v10    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "lname":Ljava/lang/String;
    .end local v15    # "certSha256Digests":[Ljava/lang/String;
    .local v0, "lname":Ljava/lang/String;
    .local v9, "certSha256Digest":Ljava/lang/String;
    :cond_a5
    :goto_a5
    :try_start_a5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad uses-sdk-library declaration name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " version: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " certDigest"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_d0
    .catchall {:try_start_a5 .. :try_end_d0} :catchall_d4

    .line 2803
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2761
    return-object v2

    .line 2803
    .end local v0    # "lname":Ljava/lang/String;
    .end local v7    # "versionMajor":I
    .end local v9    # "certSha256Digest":Ljava/lang/String;
    .end local v16    # "optional":Z
    :catchall_d4
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2804
    throw v0
.end method

.method private static blacklist parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2811
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2814
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2816
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2818
    .local v3, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2823
    .local v5, "certSha256Digest":Ljava/lang/String;
    if-eqz v2, :cond_8d

    if-ltz v3, :cond_8d

    if-nez v5, :cond_1d

    goto :goto_8d

    .line 2829
    :cond_1d
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    .line 2830
    .local v6, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 2831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Depending on multiple versions of static library "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_bc

    .line 2858
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2831
    return-object v1

    .line 2835
    :cond_42
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 2838
    .end local v2    # "lname":Ljava/lang/String;
    .local v7, "lname":Ljava/lang/String;
    const-string v2, ":"

    const-string v8, ""

    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2841
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    .local v2, "certSha256Digest":Ljava/lang/String;
    sget-object v5, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2842
    .local v5, "additionalCertSha256Digests":[Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v8

    const/16 v9, 0x1b

    if-lt v8, v9, :cond_76

    .line 2843
    nop

    .line 2844
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 2845
    .local v8, "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 2846
    invoke-interface {p0, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_6b
    .catchall {:try_start_42 .. :try_end_6b} :catchall_bc

    .line 2858
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2846
    return-object v1

    .line 2848
    :cond_6f
    :try_start_6f
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v5, v9

    .line 2851
    .end local v8    # "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    :cond_76
    array-length v8, v5

    add-int/2addr v8, v4

    new-array v8, v8, [Ljava/lang/String;

    .line 2852
    .local v8, "certSha256Digests":[Ljava/lang/String;
    aput-object v2, v8, v1

    .line 2853
    array-length v9, v5

    invoke-static {v5, v1, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2856
    int-to-long v9, v3

    invoke-interface {p1, v7, v9, v10, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_bc

    .line 2858
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2856
    return-object v1

    .line 2824
    .end local v6    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "lname":Ljava/lang/String;
    .end local v8    # "certSha256Digests":[Ljava/lang/String;
    .local v2, "lname":Ljava/lang/String;
    .local v5, "certSha256Digest":Ljava/lang/String;
    :cond_8d
    :goto_8d
    :try_start_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad uses-static-library declaration name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " version: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " certDigest"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_b8
    .catchall {:try_start_8d .. :try_end_b8} :catchall_bc

    .line 2858
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2824
    return-object v1

    .line 2858
    .end local v2    # "lname":Ljava/lang/String;
    .end local v3    # "version":I
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    :catchall_bc
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2859
    throw v1
.end method

.method public static blacklist readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .registers 16
    .param p0, "r"    # Landroid/content/res/Resources;

    .line 3509
    const v0, 0x11102df

    if-eqz p0, :cond_c

    .line 3510
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 3511
    return-void

    .line 3516
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android"

    .line 3518
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 3516
    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_44

    .line 3521
    .local v1, "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 3522
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 3525
    .local v2, "systemResources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3534
    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    .line 3535
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 3525
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    .line 3538
    .local v3, "overlayableRes":Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 3539
    return-void

    .line 3519
    .end local v1    # "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "systemResources":Landroid/content/res/Resources;
    .end local v3    # "overlayableRes":Landroid/content/res/Resources;
    :catch_44
    move-exception v0

    .line 3520
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

    .line 3634
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3635
    .local v0, "N":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 3636
    return-object v1

    .line 3639
    :cond_9
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3640
    .local v3, "keySetMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v0, :cond_41

    .line 3641
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3642
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3643
    .local v6, "M":I
    if-ne v6, v2, :cond_1f

    .line 3644
    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3645
    goto :goto_3e

    .line 3648
    :cond_1f
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 3649
    .local v7, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_25
    if-ge v8, v6, :cond_3b

    .line 3650
    const-class v9, Ljava/security/PublicKey;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-class v10, Ljava/security/PublicKey;

    invoke-virtual {p0, v9, v10}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/PublicKey;

    .line 3651
    .local v9, "pk":Ljava/security/PublicKey;
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3649
    .end local v9    # "pk":Ljava/security/PublicKey;
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 3654
    .end local v8    # "j":I
    :cond_3b
    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3640
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "M":I
    .end local v7    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 3657
    .end local v4    # "i":I
    :cond_41
    return-object v3
.end method

.method private static blacklist resId(ILandroid/content/res/TypedArray;)I
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3583
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public static blacklist setCompatibilityModeEnabled(Z)V
    .registers 1
    .param p0, "compatibilityModeEnabled"    # Z

    .line 3502
    sput-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    .line 3503
    return-void
.end method

.method private static blacklist setMaxAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 10
    .param p0, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3070
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    const v0, 0x3fee147b    # 1.86f

    goto :goto_e

    :cond_d
    move v0, v2

    .line 3072
    .local v0, "maxAspectRatio":F
    :goto_e
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMaxAspectRatio()F

    move-result v1

    .line 3073
    .local v1, "packageMaxAspectRatio":F
    cmpl-float v2, v1, v2

    const-string v3, "android.max_aspect"

    if-eqz v2, :cond_1a

    .line 3075
    move v0, v1

    goto :goto_2a

    .line 3077
    :cond_1a
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    .line 3078
    .local v2, "appMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_2a

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3079
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 3083
    .end local v2    # "appMetaData":Landroid/os/Bundle;
    :cond_2a
    :goto_2a
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    .line 3084
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 3085
    .local v4, "activitiesSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_33
    if-ge v5, v4, :cond_58

    .line 3086
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3088
    .local v6, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_46

    .line 3089
    goto :goto_55

    .line 3097
    :cond_46
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    .line 3098
    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v7

    .line 3100
    .local v7, "activityAspectRatio":F
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v8

    invoke-static {v6, v8, v7}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setMaxAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V

    .line 3085
    .end local v6    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v7    # "activityAspectRatio":F
    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 3103
    .end local v5    # "index":I
    :cond_58
    return-void
.end method

.method private blacklist setMinAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 9
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3111
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMinAspectRatio()F

    move-result v0

    .line 3113
    .local v0, "minAspectRatio":F
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    .line 3114
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3115
    .local v2, "activitiesSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_d
    if-ge v3, v2, :cond_29

    .line 3116
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3117
    .local v4, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_26

    .line 3118
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v5

    invoke-static {v4, v5, v0}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setMinAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V

    .line 3115
    .end local v4    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3122
    .end local v3    # "index":I
    :cond_29
    return-void
.end method

.method private blacklist setSupportsSizeChanges(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 12
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3125
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    .line 3126
    .local v0, "appMetaData":Landroid/os/Bundle;
    const-string v1, "android.supports_size_changes"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    .line 3127
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    .line 3129
    .local v4, "supportsSizeChanges":Z
    :goto_13
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    .line 3130
    .local v5, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 3131
    .local v6, "activitiesSize":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1c
    if-ge v7, v6, :cond_36

    .line 3132
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3133
    .local v8, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_30

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v9

    .line 3134
    invoke-virtual {v9, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 3135
    :cond_30
    invoke-static {v8, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setSupportsSizeChanges(Lcom/android/internal/pm/pkg/component/ParsedActivity;Z)V

    .line 3131
    .end local v8    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 3138
    .end local v7    # "index":I
    :cond_36
    return-void
.end method

.method private static blacklist string(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3587
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1011
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionUtils;->isCombinationValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1012
    const/16 v0, -0x65

    const-string v1, "Combination <attribution> tags are not valid"

    invoke-interface {p1, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1018
    :cond_13
    invoke-static {p2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->declareDuplicatePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    const/16 v1, -0x6c

    if-eqz v0, :cond_22

    .line 1019
    const-string v0, "Found duplicate permission with a different attribute value."

    invoke-interface {p1, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1025
    :cond_22
    invoke-static {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->convertCompatPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 1027
    invoke-direct {p0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->convertSplitPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 1032
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_53

    .line 1033
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSmallScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1034
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isNormalScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1035
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isLargeScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1036
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isExtraLargeScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1037
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1038
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isAnyDensity()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1039
    :cond_53
    invoke-static {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 1043
    :cond_56
    and-int/lit16 v0, p3, 0x400

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    .line 1044
    .local v0, "isApex":Z
    :goto_5d
    if-eqz v0, :cond_85

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_85

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1047
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is an APEX package and shouldn\'t declare permissions."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-interface {p1, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1052
    :cond_85
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
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

    .line 3604
    .local p1, "keySetMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v0, -0x1

    if-nez p1, :cond_7

    .line 3605
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3606
    return-void

    .line 3609
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3610
    .local v1, "N":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3612
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

    .line 3613
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3614
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 3615
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-nez v4, :cond_31

    .line 3616
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3617
    goto :goto_16

    .line 3620
    :cond_31
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 3621
    .local v5, "M":I
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3622
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_39
    if-ge v6, v5, :cond_47

    .line 3623
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/Serializable;

    invoke-virtual {p0, v7}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3622
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 3625
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_47
    goto :goto_16

    .line 3626
    :cond_48
    return-void
.end method


# virtual methods
.method public blacklist parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "packageFile"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 345
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 347
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parsePackageFromPackageLite(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/PackageLite;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "lite"    # Landroid/content/pm/parsing/PackageLite;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/PackageLite;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 474
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 478
    .local v12, "manifestArray":Landroid/content/res/TypedArray;
    iget-object v8, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->isCoreApp()Z

    move-result v13

    .line 478
    move-object v9, v1

    .end local v1    # "pkgName":Ljava/lang/String;
    .local v9, "pkgName":Ljava/lang/String;
    invoke-interface/range {v8 .. v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v8

    .line 481
    .end local v9    # "pkgName":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .local v8, "pkg":Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v9

    .line 482
    .local v9, "targetSdk":I
    const/4 v10, 0x0

    .line 483
    .local v10, "versionName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 484
    .local v11, "compileSdkVersion":I
    const/4 v13, 0x0

    .line 485
    .local v13, "compileSdkVersionCodeName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 488
    .local v14, "isolatedSplitLoading":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getVersionCodeMajor()I

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionCodeMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getBaseRevisionCode()I

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBaseRevisionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 491
    invoke-interface {v8, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 492
    const/4 v15, 0x0

    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompileSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 493
    invoke-interface {v8, v13}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 494
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIsolatedSplitLoading(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 495
    invoke-interface {v8, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v2

    invoke-interface {v8, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 499
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_64

    move v4, v3

    goto :goto_65

    :cond_64
    move v4, v15

    .line 501
    :goto_65
    invoke-interface {v2, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v2

    .line 504
    .local v2, "archivedPackage":Landroid/content/pm/ArchivedPackageParcel;
    if-nez v2, :cond_77

    .line 505
    const/16 v3, -0x66

    const-string v4, "archivePackage is missing"

    invoke-interface {v6, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 510
    :cond_77
    nop

    .line 512
    invoke-interface {v8, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 513
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 514
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 515
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 516
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 517
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    const/16 v5, 0x1d

    if-lt v9, v5, :cond_95

    goto :goto_96

    :cond_95
    move v3, v15

    .line 519
    :goto_96
    invoke-interface {v4, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    const/16 v4, 0xe

    if-lt v9, v4, :cond_a0

    const/4 v4, 0x1

    goto :goto_a1

    :cond_a0
    move v4, v15

    .line 520
    :goto_a1
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    if-ge v9, v5, :cond_ab

    const/4 v5, 0x1

    goto :goto_ac

    :cond_ab
    move v5, v15

    .line 522
    :goto_ac
    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v4

    .line 521
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    const/16 v4, 0x1c

    if-ge v9, v4, :cond_ba

    const/4 v4, 0x1

    goto :goto_bb

    :cond_ba
    move v4, v15

    .line 524
    :goto_bb
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    .line 526
    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    .line 529
    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v4

    .line 528
    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 531
    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 533
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 534
    invoke-interface {v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 537
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 539
    const/4 v3, 0x0

    .line 540
    .local v3, "taskAffinity":Ljava/lang/String;
    invoke-static {v1, v1, v3, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 542
    .local v5, "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v16

    if-eqz v16, :cond_f3

    .line 543
    invoke-interface {v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 545
    :cond_f3
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    invoke-interface {v8, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 547
    move-object v4, v3

    .end local v3    # "taskAffinity":Ljava/lang/String;
    .local v4, "taskAffinity":Ljava/lang/String;
    const/4 v3, 0x0

    .line 548
    .local v3, "pname":Ljava/lang/CharSequence;
    move-object/from16 v16, v2

    .end local v2    # "archivedPackage":Landroid/content/pm/ArchivedPackageParcel;
    .local v16, "archivedPackage":Landroid/content/pm/ArchivedPackageParcel;
    const/4 v2, 0x0

    move-object/from16 v18, v5

    .end local v5    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .local v18, "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    iget-object v5, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object/from16 v17, v4

    const/4 v15, -0x1

    move/from16 v4, p3

    .end local v4    # "taskAffinity":Ljava/lang/String;
    .local v17, "taskAffinity":Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 550
    .local v2, "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 551
    invoke-interface {v6, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 553
    :cond_11b
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v8, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 555
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 556
    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 557
    const/4 v5, 0x0

    invoke-interface {v8, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 559
    invoke-direct {v0, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 561
    invoke-direct {v0, v6, v8, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 562
    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/internal/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v15

    if-eqz v15, :cond_13c

    .line 563
    return-object v5

    .line 566
    :cond_13c
    invoke-interface {v8, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 568
    and-int/lit8 v15, v4, 0x20

    if-eqz v15, :cond_14b

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v15

    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_150

    .line 571
    :cond_14b
    sget-object v15, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 574
    :goto_150
    nop

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v15

    invoke-interface {v8, v15}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v15

    .line 574
    invoke-interface {v6, v15}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15

    return-object v15
.end method
