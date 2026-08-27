.class public Landroid/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Build$VERSION_CODES_FULL;,
        Landroid/os/Build$Partition;,
        Landroid/os/Build$VERSION;,
        Landroid/os/Build$VERSION_CODES;,
        Landroid/os/Build$BackportedFixStatus;,
        Landroid/os/Build$SdkIntFull;
    }
.end annotation


# static fields
.field public static final whitelist BACKPORTED_FIX_STATUS_FIXED:I = 0x1

.field public static final whitelist BACKPORTED_FIX_STATUS_NOT_APPLICABLE:I = 0x2

.field public static final whitelist BACKPORTED_FIX_STATUS_NOT_FIXED:I = 0x3

.field public static final whitelist BACKPORTED_FIX_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist BOARD:Ljava/lang/String;

.field public static final whitelist BOOTLOADER:Ljava/lang/String;

.field public static whitelist BRAND:Ljava/lang/String;

.field public static blacklist BRAND_FOR_ATTESTATION:Ljava/lang/String;

.field public static final whitelist CPU_ABI:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CPU_ABI2:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist DEVICE:Ljava/lang/String;

.field public static blacklist DEVICE_FOR_ATTESTATION:Ljava/lang/String;

.field public static whitelist DISPLAY:Ljava/lang/String;

.field public static whitelist FINGERPRINT:Ljava/lang/String;

.field public static whitelist HARDWARE:Ljava/lang/String;

.field public static whitelist HOST:Ljava/lang/String;

.field public static final blacklist HW_LOW_MULTIPLIER:I

.field public static final blacklist HW_MIDDLE_TIMEOUT_MULTIPLIER:I

.field public static final blacklist HW_TIMEOUT_MULTIPLIER:I

.field public static whitelist ID:Ljava/lang/String;

.field public static final blacklist IS_ARC:Z

.field public static final greylist IS_DEBUGGABLE:Z

.field public static final greylist IS_DEVELOPMENT:Z

.field public static final greylist IS_EMULATOR:Z

.field public static final greylist-max-o IS_ENG:Z

.field public static final greylist IS_MIUI:Z

.field public static final blacklist IS_SALSA_BUILD:Z

.field public static final blacklist IS_SUPPORT_MI_FAKE_32BIT:Z

.field public static final blacklist IS_TIMINGTRACE:Z

.field public static final greylist-max-o IS_USER:Z

.field public static final greylist-max-o IS_USERDEBUG:Z

.field public static whitelist MANUFACTURER:Ljava/lang/String;

.field public static final blacklist MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

.field public static final blacklist MI_FAKE_32BIT_SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

.field public static final blacklist MI_FAKE_32BIT_SUPPORTED_ABIS:[Ljava/lang/String;

.field public static whitelist MODEL:Ljava/lang/String;

.field public static blacklist MODEL_FOR_ATTESTATION:Ljava/lang/String;

.field public static final blacklist MTK_HBT_ON_64BIT_ONLY_CHIP:Z

.field public static final blacklist MTK_HBT_SUPPORT:Z

.field public static final blacklist MTK_HBT_SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

.field public static final blacklist MTK_HBT_SUPPORTED_ABIS:[Ljava/lang/String;

.field public static final whitelist ODM_SKU:Ljava/lang/String;

.field public static final greylist PERMISSIONS_REVIEW_REQUIRED:Z = true
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static whitelist PRODUCT:Ljava/lang/String;

.field public static blacklist PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

.field public static final whitelist RADIO:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SERIAL:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SKU:Ljava/lang/String;

.field public static final whitelist SOC_MANUFACTURER:Ljava/lang/String;

.field public static final whitelist SOC_MODEL:Ljava/lang/String;

.field public static final whitelist STRONGBOX_MANUFACTURER:Ljava/lang/String;

.field public static final whitelist STRONGBOX_MODEL:Ljava/lang/String;

.field public static final whitelist SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

.field public static final whitelist SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

.field public static final whitelist SUPPORTED_ABIS:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Build"

.field public static whitelist TAGS:Ljava/lang/String;

.field public static whitelist TIME:J

.field public static whitelist TYPE:Ljava/lang/String;

.field public static final whitelist UNKNOWN:Ljava/lang/String; = "unknown"

.field public static whitelist USER:Ljava/lang/String;

.field public static final blacklist VBMETA_PUBLIC_KEY_DIGEST:Ljava/lang/String;

.field public static final blacklist VENDOR_API_2024_Q2:I = 0x316a4


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    .line 71
    const-string/jumbo v0, "ro.build.id"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "ro.build.display.id"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "name"

    invoke-static {v0}, Landroid/os/Build;->getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 100
    nop

    .line 101
    const-string v0, "device"

    invoke-static {v0}, Landroid/os/Build;->getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "ro.product.board"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, "ro.product.manufacturer"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 133
    nop

    .line 134
    const-string/jumbo v0, "manufacturer"

    invoke-static {v0}, Landroid/os/Build;->getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "ro.product.brand"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 147
    const-string v0, "brand"

    invoke-static {v0}, Landroid/os/Build;->getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "model"

    invoke-static {v0}, Landroid/os/Build;->getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    .line 164
    invoke-static {}, Landroid/sysprop/SocProperties;->soc_manufacturer()Ljava/util/Optional;

    move-result-object v0

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Landroid/os/Build;->SOC_MANUFACTURER:Ljava/lang/String;

    .line 168
    invoke-static {}, Landroid/sysprop/SocProperties;->soc_model()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;

    .line 176
    nop

    .line 177
    const-string/jumbo v0, "ro.strongbox.manufacturer"

    const-string/jumbo v2, "unsupported"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->STRONGBOX_MANUFACTURER:Ljava/lang/String;

    .line 185
    nop

    .line 186
    const-string/jumbo v0, "ro.strongbox.model"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->STRONGBOX_MODEL:Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "ro.bootloader"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 202
    nop

    .line 203
    const-string/jumbo v0, "ro.boot.vbmeta.public_key_digest"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->VBMETA_PUBLIC_KEY_DIGEST:Ljava/lang/String;

    .line 215
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-static {v0, v1}, Landroid/os/Build;->joinListOrElse(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    .line 218
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 228
    const-string/jumbo v0, "ro.boot.hardware.sku"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SKU:Ljava/lang/String;

    .line 241
    const-string/jumbo v0, "ro.boot.product.hardware.sku"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->ODM_SKU:Ljava/lang/String;

    .line 249
    const-string/jumbo v0, "ro.boot.qemu"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    .line 257
    const-string/jumbo v0, "ro.miui.ui.version.code"

    invoke-static {v0}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/os/Build;->IS_MIUI:Z

    .line 270
    const-string/jumbo v0, "no.such.thing"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 331
    sget-boolean v0, Lcom/mediatek/internal/os/PolicySelector;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    sput-boolean v0, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    .line 340
    const-string/jumbo v0, "ro.product.cpu.abilist"

    const-string v3, ","

    invoke-static {v0, v3}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 346
    sget-boolean v0, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    const-string/jumbo v4, "ro.system.product.cpu.abilist"

    if-eqz v0, :cond_1

    .line 347
    invoke-static {v4, v3}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 348
    :cond_1
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    :goto_1
    sput-object v0, Landroid/os/Build;->MTK_HBT_SUPPORTED_ABIS:[Ljava/lang/String;

    .line 356
    nop

    .line 357
    const-string/jumbo v0, "ro.product.cpu.abilist32"

    invoke-static {v0, v3}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 363
    sget-boolean v0, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    const-string/jumbo v5, "ro.system.product.cpu.abilist32"

    if-eqz v0, :cond_2

    .line 364
    invoke-static {v5, v3}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 365
    :cond_2
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    :goto_2
    sput-object v0, Landroid/os/Build;->MTK_HBT_SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 372
    invoke-static {}, Lcom/mediatek/internal/os/ZygoteConfigExt;->isApp32BoostEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->MTK_HBT_SUPPORT:Z

    .line 381
    nop

    .line 382
    const-string/jumbo v0, "ro.product.cpu.abilist64"

    invoke-static {v0, v3}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 395
    invoke-static {v4, v3}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MI_FAKE_32BIT_SUPPORTED_ABIS:[Ljava/lang/String;

    .line 401
    nop

    .line 402
    invoke-static {v5, v3}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->MI_FAKE_32BIT_SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 408
    nop

    .line 409
    const-string/jumbo v0, "ro.vendor.mi_fake_32bit_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_SUPPORT_MI_FAKE_32BIT:Z

    .line 419
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .local v0, "abiList":[Ljava/lang/String;
    goto :goto_3

    .line 423
    .end local v0    # "abiList":[Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->mtkEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    if-eqz v0, :cond_4

    .line 424
    sget-object v0, Landroid/os/Build;->MTK_HBT_SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .restart local v0    # "abiList":[Ljava/lang/String;
    goto :goto_3

    .line 425
    .end local v0    # "abiList":[Ljava/lang/String;
    :cond_4
    sget-boolean v0, Landroid/os/Build;->IS_SUPPORT_MI_FAKE_32BIT:Z

    if-eqz v0, :cond_5

    .line 426
    sget-object v0, Landroid/os/Build;->MI_FAKE_32BIT_SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .restart local v0    # "abiList":[Ljava/lang/String;
    goto :goto_3

    .line 428
    .end local v0    # "abiList":[Ljava/lang/String;
    :cond_5
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 433
    .restart local v0    # "abiList":[Ljava/lang/String;
    :goto_3
    aget-object v3, v0, v2

    sput-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 434
    array-length v3, v0

    if-le v3, v1, :cond_6

    .line 435
    aget-object v3, v0, v1

    sput-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    goto :goto_4

    .line 437
    :cond_6
    const-string v3, ""

    sput-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 1722
    .end local v0    # "abiList":[Ljava/lang/String;
    :goto_4
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 1725
    const-string/jumbo v0, "ro.build.tags"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 1728
    invoke-static {}, Landroid/os/Build;->deriveFingerprint()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 1847
    nop

    .line 1848
    const-string/jumbo v0, "ro.hw_low_multiplier"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build;->HW_LOW_MULTIPLIER:I

    .line 1858
    nop

    .line 1859
    const-string/jumbo v0, "ro.hw_medium_multiplier"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build;->HW_MIDDLE_TIMEOUT_MULTIPLIER:I

    .line 1871
    nop

    .line 1872
    const-string/jumbo v0, "ro.hw_timeout_multiplier"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 2013
    const-string/jumbo v0, "ro.build.date.utc"

    invoke-static {v0}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    sput-wide v3, Landroid/os/Build;->TIME:J

    .line 2014
    const-string/jumbo v0, "ro.build.user"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 2015
    const-string/jumbo v0, "ro.build.host"

    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 2026
    nop

    .line 2027
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    sput-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2036
    nop

    .line 2037
    const-string/jumbo v0, "ro.mi.development"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v2

    :goto_6
    sput-boolean v0, Landroid/os/Build;->IS_DEVELOPMENT:Z

    .line 2055
    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 2057
    const-string/jumbo v0, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 2059
    const-string/jumbo v0, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 2062
    nop

    .line 2063
    const-string/jumbo v0, "persist.debug.timing.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v2

    :goto_7
    sput-boolean v0, Landroid/os/Build;->IS_TIMINGTRACE:Z

    .line 2082
    nop

    .line 2083
    const-string/jumbo v0, "ro.boot.container"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/Build;->IS_ARC:Z

    .line 2104
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->sprdEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2105
    const-string/jumbo v0, "ro.salsa.build_configured"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2106
    const-string/jumbo v0, "ro.vendor.salsa.build_configured"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    goto :goto_8

    :cond_b
    move v1, v2

    :goto_8
    sput-boolean v1, Landroid/os/Build;->IS_SALSA_BUILD:Z

    .line 2103
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o deriveFingerprint()Ljava/lang/String;
    .locals 5

    .line 1806
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1807
    .local v0, "finger":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.product.brand"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1809
    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1810
    const-string/jumbo v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1811
    const-string/jumbo v4, "ro.build.version.release"

    invoke-static {v4}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1812
    const-string/jumbo v4, "ro.build.id"

    invoke-static {v4}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1813
    const-string/jumbo v4, "ro.build.version.incremental"

    invoke-static {v4}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1814
    const-string/jumbo v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1815
    const-string/jumbo v2, "ro.build.tags"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1817
    :cond_0
    return-object v0
.end method

.method public static greylist-max-o ensureFingerprintProperty()V
    .locals 3

    .line 1828
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1830
    :try_start_0
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    goto :goto_0

    .line 1831
    :catch_0
    move-exception v0

    .line 1832
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Build"

    const-string v2, "Failed to set fingerprint property"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1835
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist fullVersionToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "version"    # I

    .line 1702
    if-ltz p0, :cond_0

    .line 1706
    invoke-static {p0}, Landroid/os/Build;->getMajorSdkVersion(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroid/os/Build;->getMinorSdkVersion(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d.%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1703
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to convert \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to string: not a valid major.minor version code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getBackportedFixStatus(J)I
    .locals 4
    .param p0, "id"    # J

    .line 1779
    const/4 v0, 0x0

    .line 1780
    .local v0, "status":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1781
    .local v1, "uid":I
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    const-wide/16 v2, 0x3ff

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    .line 1782
    invoke-static {}, Landroid/sysprop/BackportedFixesProperties;->alias_bitset()Ljava/util/List;

    move-result-object v2

    long-to-int v3, p0

    invoke-static {v2, v3}, Landroid/os/Build;->isBitSet(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1783
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 1785
    :cond_1
    const/16 v2, 0x3db

    invoke-static {v2, v1, p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJI)V

    .line 1786
    return v0
.end method

.method public static whitelist getFingerprintedPartitions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Build$Partition;",
            ">;"
        }
    .end annotation

    .line 1973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1977
    .local v0, "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Build$Partition;>;"
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->sprdEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1978
    const-string/jumbo v7, "vendor"

    const-string/jumbo v8, "uni_custom"

    const-string v2, "bootimage"

    const-string/jumbo v3, "odm"

    const-string/jumbo v4, "product"

    const-string/jumbo v5, "system_ext"

    const-string/jumbo v6, "system"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .local v1, "names":[Ljava/lang/String;
    goto :goto_0

    .line 1988
    .end local v1    # "names":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "system"

    const-string/jumbo v7, "vendor"

    const-string v2, "bootimage"

    const-string/jumbo v3, "odm"

    const-string/jumbo v4, "product"

    const-string/jumbo v5, "system_ext"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 1998
    .restart local v1    # "names":[Ljava/lang/String;
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 1999
    .local v5, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ro."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".build.fingerprint"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2000
    .local v4, "fingerprint":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2001
    goto :goto_2

    .line 2003
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".build.date.utc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v7, v6, v8

    .line 2004
    .local v7, "time":J
    move-object v6, v4

    .end local v4    # "fingerprint":Ljava/lang/String;
    .local v6, "fingerprint":Ljava/lang/String;
    new-instance v4, Landroid/os/Build$Partition;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/os/Build$Partition;-><init>(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Build-IA;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "fingerprint":Ljava/lang/String;
    .end local v7    # "time":J
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2007
    :cond_2
    return-object v0
.end method

.method private static greylist getLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "property"    # Ljava/lang/String;

    .line 2145
    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2146
    :catch_0
    move-exception v0

    .line 2147
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public static whitelist getMajorSdkVersion(I)I
    .locals 1
    .param p0, "sdkIntFull"    # I

    .line 1634
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static whitelist getMinorSdkVersion(I)I
    .locals 1
    .param p0, "sdkIntFull"    # I

    .line 1644
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static whitelist getRadioVersion()Ljava/lang/String;
    .locals 2

    .line 2114
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Build;->joinListOrElse(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getSerial()Ljava/lang/String;
    .locals 4

    .line 314
    nop

    .line 315
    const-string v0, "device_identifiers"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdentifiersPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdentifiersPolicyService;

    move-result-object v0

    .line 317
    .local v0, "service":Landroid/os/IDeviceIdentifiersPolicyService;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 318
    .local v1, "application":Landroid/app/Application;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 319
    .local v3, "callingPackage":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v3, v2}, Landroid/os/IDeviceIdentifiersPolicyService;->getSerialForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 320
    .end local v1    # "application":Landroid/app/Application;
    .end local v3    # "callingPackage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 323
    .end local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private static greylist getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .line 2119
    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2134
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2135
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2136
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 2138
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getVendorDeviceIdProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "property"    # Ljava/lang/String;

    .line 2127
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    .line 2128
    const-string/jumbo v1, "ro.product.%s_for_attestation"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2127
    invoke-static {v0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2129
    .local v0, "attestProp":Ljava/lang/String;
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2130
    const-string/jumbo v1, "ro.product.vendor.%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 2129
    :goto_0
    return-object v1
.end method

.method public static blacklist is64BitAbi(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abi"    # Ljava/lang/String;

    .line 387
    invoke-static {p0}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isBitSet(Ljava/util/List;I)Z
    .locals 6
    .param p1, "bitIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 1791
    .local p0, "bitsetLongArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 1792
    return v0

    .line 1794
    :cond_0
    shr-int/lit8 v1, p1, 0x6

    .line 1795
    .local v1, "arrayIndex":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_1

    .line 1796
    return v0

    .line 1798
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static greylist-max-o isBuildConsistent()Z
    .locals 3

    .line 1889
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1891
    :cond_0
    invoke-static {}, Landroid/os/VintfObject;->verifyBuildAtBoot()I

    move-result v0

    .line 1892
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 1893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vendor interface is incompatible, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Build"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const/4 v1, 0x0

    return v1

    .line 1897
    :cond_1
    return v1
.end method

.method public static blacklist isDebuggable()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2051
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public static blacklist isEnabled32BitTranslate()Z
    .locals 3

    .line 2163
    sget-boolean v0, Landroid/os/Build;->IS_SUPPORT_MI_FAKE_32BIT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2166
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v2, 0x22

    if-gt v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 2169
    :cond_1
    const-string/jumbo v0, "persist.sys.force_32bit_install"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist joinListOrElse(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2152
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/os/Build$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/Build$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2153
    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2154
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method static synthetic blacklist lambda$joinListOrElse$0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "elem"    # Ljava/lang/Object;

    .line 2152
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist parseFullVersion(Ljava/lang/String;)I
    .locals 6
    .param p0, "version"    # Ljava/lang/String;

    .line 1660
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1662
    .local v0, "index":I
    const/4 v1, 0x0

    .line 1664
    .local v1, "minor":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1665
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "major":I
    goto :goto_0

    .line 1667
    .end local v2    # "major":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1668
    .restart local v2    # "major":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 1670
    :goto_0
    if-ltz v2, :cond_4

    .line 1673
    const/16 v3, 0x53e2

    if-ge v2, v3, :cond_3

    .line 1676
    if-ltz v1, :cond_2

    .line 1679
    const v3, 0x186a0

    if-ge v1, v3, :cond_1

    .line 1686
    nop

    .line 1687
    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    return v3

    .line 1680
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "minor version too large, must be less than 100000"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v1    # "minor":I
    .end local p0    # "version":Ljava/lang/String;
    throw v3

    .line 1677
    .restart local v0    # "index":I
    .restart local v1    # "minor":I
    .restart local p0    # "version":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "negative minor version"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v1    # "minor":I
    .end local p0    # "version":Ljava/lang/String;
    throw v3

    .line 1674
    .restart local v0    # "index":I
    .restart local v1    # "minor":I
    .restart local p0    # "version":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "major version too large, must be less than 21474"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v1    # "minor":I
    .end local p0    # "version":Ljava/lang/String;
    throw v3

    .line 1671
    .restart local v0    # "index":I
    .restart local v1    # "minor":I
    .restart local p0    # "version":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "negative major version"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v1    # "minor":I
    .end local p0    # "version":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    .end local v2    # "major":I
    .restart local v0    # "index":I
    .restart local v1    # "minor":I
    .restart local p0    # "version":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1684
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to parse \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as a major.minor version code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

