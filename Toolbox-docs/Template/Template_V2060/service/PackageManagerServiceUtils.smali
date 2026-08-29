.class public Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerServiceUtils$SharedUserIdJoinType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_PACKAGE_PARSER_CACHE_ENABLED:Z = true

.field private static final FORCE_PACKAGE_PARSED_CACHE_ENABLED:Z = false

.field private static final MAX_CRITICAL_INFO_DUMP_SIZE:J = 0x2dc6c0L

.field public static final REMOVE_IF_APEX_PKG:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARED_USER_ID_JOIN_TYPE_INSTALL:I = 0x0

.field public static final SHARED_USER_ID_JOIN_TYPE_SYSTEM:I = 0x2

.field public static final SHARED_USER_ID_JOIN_TYPE_UPDATE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 149
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 152
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_APEX_PKG:Ljava/util/function/Predicate;

    .line 154
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayToString([I)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [I

    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1137
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1138
    if-eqz p0, :cond_21

    .line 1139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 1140
    if-lez v1, :cond_19

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_19
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1139
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1144
    .end local v1    # "i":I
    :cond_21
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "baseFilename"    # Ljava/lang/String;
    .param p1, "splitFilenameArray"    # [Ljava/lang/String;

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1041
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1042
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "baseFilePath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1045
    .local v2, "baseRootHash":[B
    const-string v4, "0"

    if-nez v2, :cond_26

    .line 1046
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 1048
    :cond_26
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    :goto_2d
    if-eqz p1, :cond_6c

    array-length v5, p1

    if-nez v5, :cond_33

    goto :goto_6c

    .line 1054
    :cond_33
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_36
    if-ltz v5, :cond_67

    .line 1055
    aget-object v6, p1, v5

    .line 1056
    .local v6, "splitFilename":Ljava/lang/String;
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1057
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1058
    .local v7, "splitFilePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object v8

    .line 1059
    .local v8, "splitRootHash":[B
    const-string v9, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    if-nez v8, :cond_5d

    .line 1061
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 1063
    :cond_5d
    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .end local v6    # "splitFilename":Ljava/lang/String;
    .end local v7    # "splitFilePath":Ljava/lang/String;
    .end local v8    # "splitRootHash":[B
    :goto_64
    add-int/lit8 v5, v5, -0x1

    goto :goto_36

    .line 1066
    .end local v5    # "i":I
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1051
    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J
    .registers 9
    .param p0, "packagePath"    # Ljava/lang/String;
    .param p1, "abiOverride"    # Ljava/lang/String;

    .line 905
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 907
    .local v0, "packageFile":Ljava/io/File;
    :try_start_5
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    .line 908
    .local v1, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 909
    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v2

    .line 908
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 910
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_24

    .line 914
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/PackageLite;

    invoke-static {v3, p1}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v3

    return-wide v3

    .line 911
    :cond_24
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v4

    .line 912
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "packageFile":Ljava/io/File;
    .end local p0    # "packagePath":Ljava/lang/String;
    .end local p1    # "abiOverride":Ljava/lang/String;
    throw v3
    :try_end_36
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_36} :catch_36
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_36} :catch_36

    .line 915
    .end local v1    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    .restart local v0    # "packageFile":Ljava/io/File;
    .restart local p0    # "packagePath":Ljava/lang/String;
    .restart local p1    # "abiOverride":Ljava/lang/String;
    :catch_36
    move-exception v1

    .line 916
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to calculate installed size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z
    .registers 14
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "sharedUserSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p3, "joinType"    # I

    .line 613
    invoke-virtual {p2}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 614
    .local v0, "sharedUserSigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 615
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_17

    .line 616
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_17

    :cond_15
    move v2, v3

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v4

    .line 624
    .local v2, "capabilityGranted":Z
    :goto_18
    if-eqz v2, :cond_1d

    if-eqz p3, :cond_1d

    .line 625
    return v4

    .line 631
    :cond_1d
    if-nez v2, :cond_29

    invoke-virtual {v0, p1}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 632
    if-ne p3, v1, :cond_28

    .line 633
    return v4

    .line 635
    :cond_28
    return v3

    .line 643
    :cond_29
    if-nez v2, :cond_35

    invoke-virtual {p1, v0}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 644
    if-eqz p3, :cond_34

    .line 645
    return v4

    .line 647
    :cond_34
    return v3

    .line 653
    :cond_35
    if-nez v2, :cond_38

    .line 654
    return v3

    .line 659
    :cond_38
    nop

    .line 660
    invoke-virtual {p2}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v5

    .line 661
    .local v5, "susPackageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 662
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_47
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 663
    .local v7, "shUidPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    .line 666
    .local v8, "shUidSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-virtual {p1, v8}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 667
    invoke-virtual {p1, v8, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v9

    if-nez v9, :cond_8a

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " revoked the sharedUserId capability from the signing key used to sign "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 672
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    const-string v4, "PackageManager"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return v3

    .line 676
    .end local v7    # "shUidPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "shUidSigningDetails":Landroid/content/pm/SigningDetails;
    :cond_8a
    goto :goto_47

    .line 678
    :cond_8b
    return v4
.end method

.method private static checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V
    .registers 6

    return-void
.end method

.method public static checkDowngrade(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageInfoLite;)V
    .registers 2

    return-void
.end method

.method public static checkDowngrade(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    .registers 2

    return-void
.end method

.method public static comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z
    .registers 4
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 389
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 390
    .local v0, "signingDetails":Landroid/content/pm/SigningDetails;
    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v0, v1, :cond_11

    .line 391
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    .line 390
    :goto_12
    return v1
.end method

.method static compareSignatureArrays([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 9
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 347
    const/4 v0, 0x1

    if-nez p0, :cond_8

    .line 348
    if-nez p1, :cond_6

    .line 349
    goto :goto_7

    .line 350
    :cond_6
    const/4 v0, -0x1

    .line 348
    :goto_7
    return v0

    .line 353
    :cond_8
    if-nez p1, :cond_c

    .line 354
    const/4 v0, -0x2

    return v0

    .line 357
    :cond_c
    array-length v1, p0

    array-length v2, p1

    const/4 v3, -0x3

    if-eq v1, v2, :cond_12

    .line 358
    return v3

    .line 362
    :cond_12
    array-length v1, p0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_24

    .line 363
    aget-object v0, p0, v2

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 364
    move v3, v2

    goto :goto_23

    .line 365
    :cond_22
    nop

    .line 363
    :goto_23
    return v3

    .line 368
    :cond_24
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 369
    .local v0, "set1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    move v4, v2

    :goto_2b
    if-ge v4, v1, :cond_35

    aget-object v5, p0, v4

    .line 370
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 372
    :cond_35
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 373
    .local v1, "set2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    move v5, v2

    :goto_3c
    if-ge v5, v4, :cond_46

    aget-object v6, p1, v5

    .line 374
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 377
    :cond_46
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 378
    return v2

    .line 380
    :cond_4d
    return v3
.end method

.method public static compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
    .registers 4
    .param p0, "sd1"    # Landroid/content/pm/SigningDetails;
    .param p1, "sd2"    # Landroid/content/pm/SigningDetails;

    .line 343
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatureArrays([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    return v0
.end method

.method public static compressedFileExists(Ljava/lang/String;)Z
    .registers 3
    .param p0, "codePath"    # Ljava/lang/String;

    .line 833
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 834
    .local v0, "compressedFiles":[Ljava/io/File;
    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private static copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1004
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v2, v3

    const/16 v3, 0x1a4

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1006
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 1007
    const/4 v2, 0x0

    .line 1009
    .local v2, "source":Ljava/io/FileInputStream;
    :try_start_44
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 1010
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_56

    .line 1012
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1013
    nop

    .line 1014
    return-void

    .line 1012
    :catchall_56
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1013
    throw v3

    .line 999
    .end local v0    # "targetFile":Ljava/io/File;
    .end local v1    # "targetFd":Ljava/io/FileDescriptor;
    .end local v2    # "source":Ljava/io/FileInputStream;
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyPackage(Ljava/lang/String;Ljava/io/File;)I
    .registers 11
    .param p0, "packagePath"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/io/File;

    .line 968
    const-string v0, "PackageManager"

    if-nez p0, :cond_6

    .line 969
    const/4 v0, -0x3

    return v0

    .line 973
    :cond_6
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 974
    .local v1, "packageFile":Ljava/io/File;
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v2

    .line 975
    .local v2, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 976
    invoke-virtual {v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v3

    .line 975
    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 977
    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 978
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse package at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    return v0

    .line 981
    :cond_3a
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/PackageLite;

    .line 982
    .local v4, "pkg":Landroid/content/pm/parsing/PackageLite;
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "base.apk"

    invoke-static {v5, p1, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 983
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 984
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_54
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_87

    .line 985
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "split_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 986
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 985
    invoke-static {v6, p1, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_84} :catch_89
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_84} :catch_89

    .line 984
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 989
    .end local v5    # "i":I
    :cond_87
    const/4 v0, 0x1

    return v0

    .line 990
    .end local v1    # "packageFile":Ljava/io/File;
    .end local v2    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    .end local v4    # "pkg":Landroid/content/pm/parsing/PackageLite;
    :catch_89
    move-exception v1

    .line 991
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy package at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v0, -0x4

    return v0
.end method

.method public static decompressFile(Ljava/io/File;Ljava/io/File;)I
    .registers 8
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 763
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string v1, ", dst: "

    if-eqz v0, :cond_2e

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decompress file; src: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 765
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 766
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_2e
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 769
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 771
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_34
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3e} :catch_65

    .line 773
    .local v3, "fileIn":Ljava/io/InputStream;
    :try_start_3e
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 774
    invoke-static {v3, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 776
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 777
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    const/16 v5, 0x1a4

    invoke-static {v4, v5}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    .line 778
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_5b

    .line 779
    nop

    .line 780
    :try_start_56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_65

    .line 779
    const/4 v1, 0x1

    return v1

    .line 770
    :catchall_5b
    move-exception v4

    :try_start_5c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v5

    :try_start_61
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "dstFile":Ljava/io/File;
    :goto_64
    throw v4
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_65

    .line 780
    .end local v3    # "fileIn":Ljava/io/InputStream;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "dstFile":Ljava/io/File;
    :catch_65
    move-exception v3

    .line 781
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decompress file; src: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 782
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 783
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    const/4 v4, 0x6

    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 784
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 786
    .end local v3    # "e":Ljava/io/IOException;
    const/16 v1, -0x6e

    return v1
.end method

.method public static decompressFiles(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)I
    .registers 15
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "dstCodePath"    # Ljava/io/File;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 737
    const-string v0, "Failed to decompress; pkg: "

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 738
    .local v1, "compressedFiles":[Ljava/io/File;
    const/4 v2, 0x1

    .line 740
    .local v2, "ret":I
    const/16 v3, 0x1ed

    const/4 v4, 0x6

    :try_start_a
    invoke-static {p1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    .line 741
    array-length v3, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_10
    if-ge v6, v3, :cond_57

    aget-object v7, v1, v6

    .line 742
    .local v7, "srcFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 743
    .local v8, "srcFileName":Ljava/lang/String;
    nop

    .line 744
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, ".gz"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    .line 743
    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 745
    .local v9, "dstFileName":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 746
    .local v10, "dstFile":Ljava/io/File;
    invoke-static {v7, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFile(Ljava/io/File;Ljava/io/File;)I

    move-result v11

    move v2, v11

    .line 747
    const/4 v11, 0x1

    if-eq v2, v11, :cond_54

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_53
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_53} :catch_58

    .line 751
    goto :goto_57

    .line 741
    .end local v7    # "srcFile":Ljava/io/File;
    .end local v8    # "srcFileName":Ljava/lang/String;
    .end local v9    # "dstFileName":Ljava/lang/String;
    .end local v10    # "dstFile":Ljava/io/File;
    :cond_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 758
    :cond_57
    :goto_57
    goto :goto_79

    .line 754
    :catch_58
    move-exception v3

    .line 755
    .local v3, "e":Landroid/system/ErrnoException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", err: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 759
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_79
    return v2
.end method

.method public static deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "abiOverride"    # Ljava/lang/String;

    .line 323
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 324
    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_a
    return-object p0
.end method

.method public static dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 238
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 239
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2dc6c0

    sub-long/2addr v1, v3

    .line 240
    .local v1, "skipSize":J
    :try_start_c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_49

    .line 241
    .local v3, "in":Ljava/io/BufferedReader;
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_22

    .line 242
    :try_start_1c
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_22

    .line 240
    :catchall_20
    move-exception v4

    goto :goto_40

    .line 244
    :cond_22
    :goto_22
    const/4 v4, 0x0

    .line 245
    .local v4, "line":Ljava/lang/String;
    :goto_23
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_3c

    .line 246
    const-string v5, "ignored: updated version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_23

    .line 247
    :cond_33
    const-wide v5, 0x20900000007L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_20

    goto :goto_23

    .line 249
    .end local v4    # "line":Ljava/lang/String;
    :cond_3c
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_49

    .line 250
    .end local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 240
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :goto_40
    :try_start_40
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v5

    :try_start_45
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "skipSize":J
    .end local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    :goto_48
    throw v4
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_49

    .line 249
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "skipSize":J
    .restart local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catch_49
    move-exception v3

    .line 251
    :goto_4a
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 254
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2dc6c0

    sub-long/2addr v1, v3

    .line 256
    .local v1, "skipSize":J
    :try_start_c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_49

    .line 257
    .local v3, "in":Ljava/io/BufferedReader;
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_22

    .line 258
    :try_start_1c
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_22

    .line 256
    :catchall_20
    move-exception v4

    goto :goto_40

    .line 260
    :cond_22
    :goto_22
    const/4 v4, 0x0

    .line 261
    .local v4, "line":Ljava/lang/String;
    :goto_23
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_3c

    .line 262
    const-string v5, "ignored: updated version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_23

    .line 263
    :cond_33
    if-eqz p1, :cond_38

    .line 264
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    :cond_38
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_20

    goto :goto_23

    .line 268
    .end local v4    # "line":Ljava/lang/String;
    :cond_3c
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_49

    .line 269
    .end local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 256
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :goto_40
    :try_start_40
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v5

    :try_start_45
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "skipSize":J
    .end local p0    # "pw":Ljava/io/PrintWriter;
    .end local p1    # "msg":Ljava/lang/String;
    :goto_48
    throw v4
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_49

    .line 268
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "skipSize":J
    .restart local p0    # "pw":Ljava/io/PrintWriter;
    .restart local p1    # "msg":Ljava/lang/String;
    :catch_49
    move-exception v3

    .line 270
    :goto_4a
    return-void
.end method

.method public static enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V
    .registers 7
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerInternal;
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userHandle"    # I

    .line 294
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_4f

    .line 295
    if-ltz p3, :cond_26

    .line 296
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_26

    .line 298
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_26
    :goto_26
    if-gez p3, :cond_4f

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to check shell permission for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_4f
    return-void
.end method

.method public static enforceSystemOrPhoneCaller(Ljava/lang/String;I)V
    .registers 5
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "callingUid"    # I

    .line 312
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyPermissions;->isSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 316
    return-void

    .line 313
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceSystemOrRoot(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 1281
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1284
    return-void

    .line 1282
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceSystemOrRootOrShell(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 1224
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1227
    return-void

    .line 1225
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z
    .registers 24
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "appMetadataFilePath"    # Ljava/lang/String;
    .param p2, "isSystem"    # Z

    .line 1432
    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 1433
    return v2

    .line 1435
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 1436
    .local v3, "appMetadataFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_14

    .line 1437
    return v4

    .line 1439
    :cond_14
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v5

    .line 1440
    .local v5, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    const-string v0, "android.content.PROPERTY_ANDROID_SAFETY_LABEL"

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 1441
    return v2

    .line 1443
    :cond_21
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/PackageManager$Property;

    .line 1444
    .local v6, "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$Property;->isResourceId()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1445
    return v2

    .line 1447
    :cond_2f
    const-string v7, "PackageManager"

    if-eqz p2, :cond_71

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_71

    .line 1449
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/16 v8, 0x1c0

    invoke-static {v0, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_47

    .line 1454
    goto :goto_71

    .line 1450
    :catch_47
    move-exception v0

    .line 1451
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create app metadata dir for package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1452
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ": "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1451
    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    return v2

    .line 1456
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_71
    :goto_71
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object v8

    .line 1457
    .local v8, "splits":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackageSplit;>;"
    new-instance v0, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v0}, Landroid/content/res/AssetManager$Builder;-><init>()V

    move-object v9, v0

    .line 1458
    .local v9, "builder":Landroid/content/res/AssetManager$Builder;
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_7d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_b9

    .line 1460
    :try_start_83
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_94} :catch_95

    .line 1463
    goto :goto_b6

    .line 1461
    :catch_95
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to load resources from APK "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    .end local v0    # "e":Ljava/io/IOException;
    :goto_b6
    add-int/lit8 v10, v10, 0x1

    goto :goto_7d

    .line 1465
    .end local v10    # "i":I
    :cond_b9
    invoke-virtual {v9}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 1466
    .local v10, "assetManager":Landroid/content/res/AssetManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v11, v0

    .line 1467
    .local v11, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v11}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1468
    new-instance v0, Landroid/content/res/Resources;

    const/4 v12, 0x0

    invoke-direct {v0, v10, v11, v12}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v12, v0

    .line 1469
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v2, v0

    .line 1470
    .local v2, "copyFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_d3
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$Property;->getResourceId()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_db} :catch_157
    .catchall {:try_start_d3 .. :try_end_db} :catchall_151

    move-object v13, v0

    .line 1471
    .local v13, "in":Ljava/io/InputStream;
    :try_start_dc
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e1
    .catchall {:try_start_dc .. :try_end_e1} :catchall_13e

    move-object v14, v0

    .line 1472
    .local v14, "out":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_f3

    .line 1473
    :try_start_e4
    invoke-static {v13, v14}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_ec

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_111

    .line 1471
    :catchall_ec
    move-exception v0

    move-object v4, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_135

    .line 1475
    :cond_f3
    :try_start_f3
    invoke-static {}, Lcom/android/server/pm/PackageInstallerSession;->getAppMetadataSizeLimit()J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 1476
    .local v17, "sizeLimit":J
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 1477
    .local v0, "signal":Landroid/os/CancellationSignal;
    new-instance v15, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v15}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;
    :try_end_105
    .catchall {:try_start_f3 .. :try_end_105} :catchall_12f

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-wide/from16 v5, v17

    .end local v6    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .end local v17    # "sizeLimit":J
    .local v5, "sizeLimit":J
    .local v19, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .local v20, "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    :try_start_10b
    invoke-direct {v4, v5, v6, v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;-><init>(JLjava/util/concurrent/atomic/AtomicBoolean;Landroid/os/CancellationSignal;)V

    invoke-static {v13, v14, v0, v15, v4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    .line 1484
    .end local v0    # "signal":Landroid/os/CancellationSignal;
    .end local v5    # "sizeLimit":J
    :goto_111
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1a0

    invoke-static {v0, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_11a
    .catchall {:try_start_10b .. :try_end_11a} :catchall_12c

    .line 1486
    :try_start_11a
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_129

    .line 1487
    .end local v14    # "out":Ljava/io/FileOutputStream;
    if-eqz v13, :cond_122

    :try_start_11f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_122} :catch_14f
    .catchall {:try_start_11f .. :try_end_122} :catchall_179

    .line 1491
    .end local v13    # "in":Ljava/io/InputStream;
    :cond_122
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_170

    .line 1492
    goto :goto_16d

    .line 1470
    .restart local v13    # "in":Ljava/io/InputStream;
    :catchall_129
    move-exception v0

    move-object v4, v0

    goto :goto_144

    .line 1471
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    :catchall_12c
    move-exception v0

    move-object v4, v0

    goto :goto_135

    .end local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .end local v20    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .local v5, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .restart local v6    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    :catchall_12f
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object v4, v0

    .end local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .end local v6    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .restart local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .restart local v20    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    :goto_135
    :try_start_135
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_139

    goto :goto_13d

    :catchall_139
    move-exception v0

    :try_start_13a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "copyFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v3    # "appMetadataFile":Ljava/io/File;
    .end local v8    # "splits":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackageSplit;>;"
    .end local v9    # "builder":Landroid/content/res/AssetManager$Builder;
    .end local v10    # "assetManager":Landroid/content/res/AssetManager;
    .end local v11    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .end local v20    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .end local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p1    # "appMetadataFilePath":Ljava/lang/String;
    .end local p2    # "isSystem":Z
    :goto_13d
    throw v4
    :try_end_13e
    .catchall {:try_start_13a .. :try_end_13e} :catchall_129

    .line 1470
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "copyFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v3    # "appMetadataFile":Ljava/io/File;
    .restart local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .restart local v6    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .restart local v8    # "splits":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackageSplit;>;"
    .restart local v9    # "builder":Landroid/content/res/AssetManager$Builder;
    .restart local v10    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v11    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v12    # "res":Landroid/content/res/Resources;
    .restart local v13    # "in":Ljava/io/InputStream;
    .restart local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p1    # "appMetadataFilePath":Ljava/lang/String;
    .restart local p2    # "isSystem":Z
    :catchall_13e
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object v4, v0

    .end local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .end local v6    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .restart local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .restart local v20    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    :goto_144
    if-eqz v13, :cond_14e

    :try_start_146
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_149
    .catchall {:try_start_146 .. :try_end_149} :catchall_14a

    goto :goto_14e

    :catchall_14a
    move-exception v0

    :try_start_14b
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "copyFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v3    # "appMetadataFile":Ljava/io/File;
    .end local v8    # "splits":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackageSplit;>;"
    .end local v9    # "builder":Landroid/content/res/AssetManager$Builder;
    .end local v10    # "assetManager":Landroid/content/res/AssetManager;
    .end local v11    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .end local v20    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .end local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p1    # "appMetadataFilePath":Ljava/lang/String;
    .end local p2    # "isSystem":Z
    :cond_14e
    :goto_14e
    throw v4
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14f} :catch_14f
    .catchall {:try_start_14b .. :try_end_14f} :catchall_179

    .line 1487
    .end local v13    # "in":Ljava/io/InputStream;
    .restart local v2    # "copyFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v3    # "appMetadataFile":Ljava/io/File;
    .restart local v8    # "splits":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackageSplit;>;"
    .restart local v9    # "builder":Landroid/content/res/AssetManager$Builder;
    .restart local v10    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v11    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v12    # "res":Landroid/content/res/Resources;
    .restart local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .restart local v20    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .restart local p0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p1    # "appMetadataFilePath":Ljava/lang/String;
    .restart local p2    # "isSystem":Z
    :catch_14f
    move-exception v0

    goto :goto_15c

    .line 1491
    .end local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .end local v20    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .restart local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .restart local v6    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    :catchall_151
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .end local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .end local v6    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .restart local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .restart local v20    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    goto :goto_17a

    .line 1487
    .end local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .end local v20    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .restart local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .restart local v6    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    :catch_157
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .line 1488
    .end local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .end local v6    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageManager$Property;>;"
    .restart local v20    # "fileInApkProperty":Landroid/content/pm/PackageManager$Property;
    :goto_15c
    :try_start_15c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_167
    .catchall {:try_start_15c .. :try_end_167} :catchall_179

    .line 1491
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_170

    .line 1492
    :goto_16d
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1495
    :cond_170
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/16 v16, 0x1

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1491
    :catchall_179
    move-exception v0

    :goto_17a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_183

    .line 1492
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1494
    :cond_183
    throw v0
.end method

.method public static extractNativeBinaries(Ljava/io/File;Ljava/lang/String;)I
    .registers 7
    .param p0, "dstCodePath"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 685
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 686
    .local v0, "libraryRoot":Ljava/io/File;
    const/4 v1, 0x0

    .line 688
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_9
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v2

    move-object v1, v2

    .line 689
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_1a
    .catchall {:try_start_9 .. :try_end_14} :catchall_18

    .line 696
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 689
    return v2

    .line 696
    :catchall_18
    move-exception v2

    goto :goto_47

    .line 691
    :catch_1a
    move-exception v2

    .line 692
    .local v2, "e":Ljava/io/IOException;
    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to extract native libraries; pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 693
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 692
    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_40
    .catchall {:try_start_1b .. :try_end_40} :catchall_18

    .line 694
    nop

    .line 696
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 694
    const/16 v3, -0x6e

    return v3

    .line 696
    .end local v2    # "e":Ljava/io/IOException;
    :goto_47
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 697
    throw v2
.end method

.method public static getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;
    .registers 10
    .param p0, "codePath"    # Ljava/lang/String;

    .line 790
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 791
    .local v0, "stubCodePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "stubName":Ljava/lang/String;
    const-string v2, "-Stub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 807
    .local v3, "idx":I
    const/4 v4, 0x0

    if-ltz v3, :cond_7e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    if-eq v5, v2, :cond_1e

    goto :goto_7e

    .line 811
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 812
    .local v2, "stubParentDir":Ljava/io/File;
    const-string v5, "PackageManager"

    if-nez v2, :cond_3d

    .line 813
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to determine stub parent dir for codePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-object v4

    .line 817
    :cond_3d
    new-instance v4, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 818
    .local v4, "compressedPath":Ljava/io/File;
    new-instance v6, Lcom/android/server/pm/PackageManagerServiceUtils$1;

    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerServiceUtils$1;-><init>()V

    invoke-virtual {v4, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 825
    .local v6, "files":[Ljava/io/File;
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v7, :cond_7d

    if-eqz v6, :cond_7d

    array-length v7, v6

    if-lez v7, :cond_7d

    .line 826
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCompressedFiles["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_7d
    return-object v6

    .line 808
    .end local v2    # "stubParentDir":Ljava/io/File;
    .end local v4    # "compressedPath":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    :cond_7e
    :goto_7e
    return-object v4
.end method

.method public static getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J
    .registers 9
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 217
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "srcFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_14

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1

    .line 221
    :cond_14
    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, "baseFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 223
    .local v2, "maxModifiedTime":J
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_28
    if-ltz v4, :cond_40

    .line 224
    new-instance v5, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v5, "splitFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 223
    .end local v5    # "splitFile":Ljava/io/File;
    add-int/lit8 v4, v4, -0x1

    goto :goto_28

    .line 227
    .end local v4    # "i":I
    :cond_40
    return-wide v2
.end method

.method public static getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p2, "packagePath"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "abiOverride"    # Ljava/lang/String;

    .line 842
    new-instance v0, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite;-><init>()V

    .line 843
    .local v0, "ret":Landroid/content/pm/PackageInfoLite;
    const/4 v1, -0x2

    if-eqz p2, :cond_93

    if-nez p1, :cond_c

    goto/16 :goto_93

    .line 849
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 851
    .local v2, "packageFile":Ljava/io/File;
    invoke-static {p3}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation(I)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 853
    :try_start_17
    invoke-static {p1, p4}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1c

    .line 864
    .local v3, "sizeBytes":J
    goto :goto_2c

    .line 854
    .end local v3    # "sizeBytes":J
    :catch_1c
    move-exception v3

    .line 855
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_27

    .line 856
    const/4 v1, -0x6

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_29

    .line 859
    :cond_27
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 863
    :goto_29
    return-object v0

    .line 866
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2a
    const-wide/16 v3, 0x0

    .line 869
    .local v3, "sizeBytes":J
    :goto_2c
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 871
    .local v1, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 872
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v5

    iput v5, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 873
    iput-wide v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 874
    iput p3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 877
    :try_start_42
    invoke-static {p0, v1}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v5
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_8c

    .line 881
    .local v5, "recommendedInstallLocation":I
    nop

    .line 882
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 883
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    .line 884
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 885
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCodeMajor()I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInfoLite;->versionCodeMajor:I

    .line 886
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getBaseRevisionCode()I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    .line 887
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    .line 888
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 889
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 890
    iput v5, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 891
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result v6

    iput-boolean v6, v0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    .line 892
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v6

    iput-boolean v6, v0, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    .line 893
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v6

    iput-boolean v6, v0, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    .line 895
    return-object v0

    .line 879
    .end local v5    # "recommendedInstallLocation":I
    :catch_8c
    move-exception v5

    .line 880
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 844
    .end local v1    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v3    # "sizeBytes":J
    .end local v5    # "e":Ljava/io/IOException;
    :cond_93
    :goto_93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 846
    return-object v0
.end method

.method public static getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 10
    .param p0, "targetDir"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1159
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1160
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 1163
    .local v1, "bytes":[B
    :cond_9
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1165
    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1166
    .local v2, "firstLevelDirName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1167
    .end local v2    # "firstLevelDirName":Ljava/lang/String;
    .local v4, "firstLevelDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1169
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1172
    .local v2, "dirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1173
    .local v3, "result":Ljava/io/File;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    if-eqz v5, :cond_94

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->tryParsePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    goto :goto_94

    .line 1174
    :cond_67
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "codepath is off: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1175
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1177
    :cond_94
    :goto_94
    return-object v3
.end method

.method public static getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I
    .registers 4
    .param p0, "packageVolume"    # Landroid/os/storage/VolumeInfo;
    .param p1, "packageIsExternal"    # Z

    .line 1199
    if-eqz p0, :cond_1c

    .line 1200
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 1201
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_1c

    .line 1202
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1203
    const/4 v1, 0x1

    return v1

    .line 1205
    :cond_10
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1206
    const/4 v1, 0x2

    return v1

    .line 1208
    :cond_18
    if-eqz p1, :cond_1c

    .line 1209
    const/4 v1, 0x3

    return v1

    .line 1213
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public static getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;
    .registers 2

    .line 198
    :try_start_0
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;
    :try_end_8
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 199
    :catch_9
    move-exception v0

    .line 200
    .local v0, "e":Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getRootHash(Ljava/lang/String;)[B
    .registers 6
    .param p0, "filename"    # Ljava/lang/String;

    .line 1078
    nop

    .line 1079
    :try_start_1
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v0

    .line 1080
    .local v0, "baseFileSignature":[B
    if-eqz v0, :cond_3a

    .line 1083
    nop

    .line 1084
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v1

    .line 1085
    .local v1, "signature":Landroid/os/incremental/V4Signature;
    iget-object v2, v1, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    if-eqz v2, :cond_32

    .line 1088
    iget-object v2, v1, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    .line 1089
    invoke-static {v2}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v2

    .line 1090
    .local v2, "hashInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v3, v2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1093
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v3, v4}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    move-result-object v3

    return-object v3

    .line 1091
    :cond_2a
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Root has not present"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "filename":Ljava/lang/String;
    throw v3

    .line 1086
    .end local v2    # "hashInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_32
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Hashing info not present"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "filename":Ljava/lang/String;
    throw v2

    .line 1081
    .end local v1    # "signature":Landroid/os/incremental/V4Signature;
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_3a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File signature not present"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "filename":Ljava/lang/String;
    throw v1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_42} :catch_42

    .line 1094
    .end local v0    # "baseFileSignature":[B
    .restart local p0    # "filename":Ljava/lang/String;
    :catch_42
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PackageManager"

    const-string v2, "Could not obtain verity root hash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1097
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .registers 4

    .line 231
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 232
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "uiderrors.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .local v2, "fname":Ljava/io/File;
    return-object v2
.end method

.method public static hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z
    .registers 7
    .param p0, "manager"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolveInfoFlags"    # J
    .param p5, "userId"    # I

    .line 1118
    invoke-interface/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isAdoptedShell(ILandroid/content/Context;)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 1262
    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_e

    const-string v0, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isDowngradePermitted(IZ)Z
    .registers 7
    .param p0, "installFlags"    # I
    .param p1, "isAppDebuggable"    # Z

    .line 946
    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 948
    .local v0, "downgradeRequested":Z
    :goto_9
    if-nez v0, :cond_c

    .line 949
    return v2

    .line 951
    :cond_c
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v3, :cond_15

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    move v3, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v3, v1

    .line 952
    .local v3, "isDebuggable":Z
    :goto_16
    if-eqz v3, :cond_19

    .line 953
    return v1

    .line 955
    :cond_19
    const/high16 v4, 0x100000

    and-int/2addr v4, p0

    if-eqz v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public static isInstalledByAdb(Ljava/lang/String;)Z
    .registers 2
    .param p0, "initiatingPackageName"    # Ljava/lang/String;

    .line 1424
    if-eqz p0, :cond_d

    const-string v0, "com.android.shell"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static isLoading(F)Z
    .registers 3
    .param p0, "loadingProgress"    # F

    .line 1619
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x322bcc77    # 1.0E-8f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isRootOrShell(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 1270
    if-eqz p0, :cond_9

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static isSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3
    .param p0, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1101
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public static isSystemOrRoot()Z
    .registers 2

    .line 1247
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1248
    .local v0, "uid":I
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v1

    return v1
.end method

.method public static isSystemOrRoot(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 1255
    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_9

    if-nez p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static isSystemOrRootOrShell()Z
    .registers 1

    .line 1233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    return v0
.end method

.method public static isSystemOrRootOrShell(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 1240
    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_d

    if-eqz p0, :cond_d

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static isUpdatedSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2
    .param p0, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1105
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$extractAppMetadataFromApk$2(JLjava/util/concurrent/atomic/AtomicBoolean;Landroid/os/CancellationSignal;J)V
    .registers 7
    .param p0, "sizeLimit"    # J
    .param p2, "copyFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .param p4, "progress"    # J

    .line 1478
    cmp-long v0, p4, p0

    if-lez v0, :cond_b

    .line 1479
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1480
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->cancel()V

    .line 1482
    :cond_b
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2
    .param p0, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 153
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$1(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2
    .param p0, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 155
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static linkFilesAndSetModes(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;[Ljava/io/File;I)V
    .registers 23
    .param p0, "installer"    # Lcom/android/server/pm/Installer;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sourcePath"    # Ljava/io/File;
    .param p3, "targetPath"    # Ljava/io/File;
    .param p4, "files"    # [Ljava/io/File;
    .param p5, "mode"    # I

    .line 1581
    move-object/from16 v1, p4

    const-string v2, "> to <"

    array-length v3, v1

    const/4 v0, 0x0

    move v4, v0

    :goto_7
    if-ge v4, v3, :cond_11a

    aget-object v5, v1, v4

    .line 1582
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1583
    .local v6, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    move-object/from16 v7, p2

    invoke-direct {v0, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    .line 1584
    .local v8, "sourceFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    move-object/from16 v9, p3

    invoke-direct {v0, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v0

    .line 1585
    .local v10, "targetFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v11, ">"

    const-string v12, "PackageManager"

    if-eqz v0, :cond_5b

    .line 1586
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    if-eqz v0, :cond_51

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping existing linked file <"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v13, p5

    move/from16 v16, v3

    goto/16 :goto_112

    .line 1586
    :cond_51
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v13, p5

    move/from16 v16, v3

    goto/16 :goto_112

    .line 1593
    :cond_5b
    nop

    .line 1594
    :try_start_5c
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13
    :try_end_64
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5c .. :try_end_64} :catch_e6

    .line 1593
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    :try_start_68
    invoke-virtual {v14, v15, v6, v0, v13}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    if-eqz v0, :cond_91

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Linked <"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_68 .. :try_end_91} :catch_e4

    .line 1603
    :cond_91
    nop

    .line 1605
    :try_start_92
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_96
    .catch Landroid/system/ErrnoException; {:try_start_92 .. :try_end_96} :catch_c4

    move/from16 v13, p5

    :try_start_98
    invoke-static {v0, v13}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_9b
    .catch Landroid/system/ErrnoException; {:try_start_98 .. :try_end_9b} :catch_c2

    .line 1610
    nop

    .line 1611
    invoke-static {v10}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to restorecon for linked file <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v3

    goto :goto_112

    .line 1611
    :cond_bf
    move/from16 v16, v3

    goto :goto_112

    .line 1606
    :catch_c2
    move-exception v0

    goto :goto_c7

    :catch_c4
    move-exception v0

    move/from16 v13, p5

    .line 1607
    .local v0, "e":Landroid/system/ErrnoException;
    :goto_c7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    const-string v3, "Failed to set mode for linked file <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1609
    goto :goto_112

    .line 1599
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_e4
    move-exception v0

    goto :goto_eb

    :catch_e6
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    :goto_eb
    move/from16 v13, p5

    move/from16 v16, v3

    .line 1600
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to link native library <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1602
    nop

    .line 1581
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "sourceFile":Ljava/io/File;
    .end local v10    # "targetFile":Ljava/io/File;
    :goto_112
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p4

    move/from16 v3, v16

    goto/16 :goto_7

    .line 1616
    :cond_11a
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move/from16 v13, p5

    return-void
.end method

.method public static linkFilesToOldDirs(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/util/Set;)V
    .registers 13
    .param p0, "installer"    # Lcom/android/server/pm/Installer;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Installer;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1502
    .local p3, "oldPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    if-eqz p3, :cond_8d

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    goto/16 :goto_90

    .line 1505
    :cond_d
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1507
    return-void

    .line 1509
    :cond_18
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1510
    .local v0, "filesInNewPath":[Ljava/io/File;
    if-eqz v0, :cond_89

    array-length v1, v0

    if-nez v1, :cond_26

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    goto/16 :goto_8c

    .line 1513
    :cond_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    .local v1, "splitApks":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_2e
    if-ge v4, v2, :cond_4a

    aget-object v5, v0, v4

    .line 1515
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_47

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1516
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    .end local v5    # "file":Ljava/io/File;
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 1519
    :cond_4a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1520
    return-void

    .line 1522
    :cond_51
    new-array v2, v3, [Ljava/io/File;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [Ljava/io/File;

    .line 1523
    .local v7, "splitApkNames":[Ljava/io/File;
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/io/File;

    .line 1524
    .local v6, "oldPath":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_72

    .line 1525
    goto :goto_5e

    .line 1527
    :cond_72
    const/16 v8, 0x1a4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p0    # "installer":Lcom/android/server/pm/Installer;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "newPath":Ljava/io/File;
    .local v3, "installer":Lcom/android/server/pm/Installer;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "newPath":Ljava/io/File;
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkFilesAndSetModes(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;[Ljava/io/File;I)V

    .line 1529
    const-string/jumbo p0, "lib"

    invoke-static {v3, v4, v5, v6, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkNativeLibraries(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 1530
    const-string/jumbo p0, "lib64"

    invoke-static {v3, v4, v5, v6, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkNativeLibraries(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 1531
    .end local v6    # "oldPath":Ljava/io/File;
    move-object p0, v3

    goto :goto_5e

    .line 1533
    .end local v3    # "installer":Lcom/android/server/pm/Installer;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "newPath":Ljava/io/File;
    .restart local p0    # "installer":Lcom/android/server/pm/Installer;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "newPath":Ljava/io/File;
    :cond_88
    return-void

    .line 1510
    .end local v1    # "splitApks":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v7    # "splitApkNames":[Ljava/io/File;
    :cond_89
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 1511
    .end local p0    # "installer":Lcom/android/server/pm/Installer;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "newPath":Ljava/io/File;
    .restart local v3    # "installer":Lcom/android/server/pm/Installer;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "newPath":Ljava/io/File;
    :goto_8c
    return-void

    .line 1502
    .end local v0    # "filesInNewPath":[Ljava/io/File;
    .end local v3    # "installer":Lcom/android/server/pm/Installer;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "newPath":Ljava/io/File;
    .restart local p0    # "installer":Lcom/android/server/pm/Installer;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "newPath":Ljava/io/File;
    :cond_8d
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 1503
    .end local p0    # "installer":Lcom/android/server/pm/Installer;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "newPath":Ljava/io/File;
    .restart local v3    # "installer":Lcom/android/server/pm/Installer;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "newPath":Ljava/io/File;
    :goto_90
    return-void
.end method

.method private static linkNativeLibraries(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .registers 24
    .param p0, "installer"    # Lcom/android/server/pm/Installer;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sourcePath"    # Ljava/io/File;
    .param p3, "targetPath"    # Ljava/io/File;
    .param p4, "libDirName"    # Ljava/lang/String;

    .line 1539
    move-object/from16 v1, p4

    new-instance v0, Ljava/io/File;

    move-object/from16 v2, p2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 1540
    .local v3, "sourceLibDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1541
    return-void

    .line 1543
    :cond_11
    new-instance v0, Ljava/io/File;

    move-object/from16 v4, p3

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 1544
    .local v5, "targetLibDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v6, ">"

    const-string v7, "PackageManager"

    if-nez v0, :cond_43

    .line 1546
    :try_start_23
    invoke-static {v5}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    .line 1551
    goto :goto_43

    .line 1547
    :catch_27
    move-exception v0

    .line 1548
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create native library dir at <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1550
    return-void

    .line 1553
    .end local v0    # "e":Ljava/io/IOException;
    :cond_43
    :goto_43
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 1554
    .local v8, "archs":[Ljava/io/File;
    if-nez v8, :cond_4a

    .line 1555
    return-void

    .line 1557
    :cond_4a
    array-length v9, v8

    const/4 v0, 0x0

    move v10, v0

    :goto_4d
    if-ge v10, v9, :cond_a9

    aget-object v11, v8, v10

    .line 1558
    .local v11, "arch":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v5, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    .line 1559
    .local v12, "targetArchDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_81

    .line 1561
    :try_start_61
    invoke-static {v12}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 1566
    goto :goto_81

    .line 1562
    :catch_65
    move-exception v0

    .line 1563
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to create native library subdir at <"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1565
    goto :goto_a6

    .line 1568
    .end local v0    # "e":Ljava/io/IOException;
    :cond_81
    :goto_81
    new-instance v15, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1569
    .local v15, "sourceArchDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1570
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_a2

    array-length v13, v0

    if-nez v13, :cond_94

    .line 1571
    goto :goto_a6

    .line 1573
    :cond_94
    const/16 v18, 0x1ed

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v17, v0

    move-object/from16 v16, v12

    .end local v0    # "files":[Ljava/io/File;
    .end local v12    # "targetArchDir":Ljava/io/File;
    .local v16, "targetArchDir":Ljava/io/File;
    .local v17, "files":[Ljava/io/File;
    invoke-static/range {v13 .. v18}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkFilesAndSetModes(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;[Ljava/io/File;I)V

    goto :goto_a6

    .line 1570
    .end local v16    # "targetArchDir":Ljava/io/File;
    .end local v17    # "files":[Ljava/io/File;
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v12    # "targetArchDir":Ljava/io/File;
    :cond_a2
    move-object/from16 v17, v0

    move-object/from16 v16, v12

    .line 1557
    .end local v0    # "files":[Ljava/io/File;
    .end local v11    # "arch":Ljava/io/File;
    .end local v12    # "targetArchDir":Ljava/io/File;
    .end local v15    # "sourceArchDir":Ljava/io/File;
    :goto_a6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4d

    .line 1576
    :cond_a9
    return-void
.end method

.method public static logCriticalInfo(ILjava/lang/String;)V
    .registers 10
    .param p0, "priority"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 273
    const-string v0, "PackageManager"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writePmCriticalInfo(Ljava/lang/String;)V

    .line 276
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 277
    .local v0, "fname":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 278
    .local v1, "out":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 279
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 280
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "dateString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 283
    nop

    .line 284
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    const/4 v6, -0x1

    const/16 v7, 0x1fc

    invoke-static {v5, v7, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_51} :catch_53

    .line 288
    nop

    .end local v0    # "fname":Ljava/io/File;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "dateString":Ljava/lang/String;
    goto :goto_54

    .line 287
    :catch_53
    move-exception v0

    .line 289
    :goto_54
    return-void
.end method

.method public static makeDirRecursive(Ljava/io/File;I)V
    .registers 7
    .param p0, "targetDir"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1020
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 1021
    .local v0, "targetDirPath":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v1

    .line 1023
    .local v1, "directoriesCount":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    if-gt v2, v1, :cond_2c

    .line 1024
    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    .line 1025
    .local v3, "currentDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1026
    goto :goto_29

    .line 1028
    :cond_1b
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 1029
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 1023
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1031
    .end local v2    # "i":I
    .end local v3    # "currentDir":Ljava/io/File;
    :cond_2c
    return-void
.end method

.method private static matchSignatureInSystem(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/PackageSetting;)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 461
    nop

    .line 462
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 461
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 464
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_32

    .line 469
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated system app mismatches cert on /system: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 471
    const/4 v0, 0x0

    return v0

    .line 467
    :cond_32
    :goto_32
    return v1
.end method

.method private static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z
    .registers 14
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageSignatures"    # Lcom/android/server/pm/PackageSignatures;
    .param p2, "parsedSignatures"    # Landroid/content/pm/SigningDetails;

    .line 403
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 404
    .local v0, "existingSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_18

    aget-object v5, v1, v4

    .line 405
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 404
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 407
    :cond_18
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 408
    .local v1, "scannedCompatSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_23
    if-ge v5, v4, :cond_40

    aget-object v6, v2, v5

    .line 410
    .local v6, "sig":Landroid/content/pm/Signature;
    :try_start_27
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getChainSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 411
    .local v7, "chainSignatures":[Landroid/content/pm/Signature;
    array-length v8, v7

    move v9, v3

    :goto_2d
    if-ge v9, v8, :cond_38

    aget-object v10, v7, v9

    .line 412
    .local v10, "chainSig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_27 .. :try_end_34} :catch_39

    .line 411
    nop

    .end local v10    # "chainSig":Landroid/content/pm/Signature;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 416
    .end local v7    # "chainSignatures":[Landroid/content/pm/Signature;
    :cond_38
    goto :goto_3d

    .line 414
    :catch_39
    move-exception v7

    .line 415
    .local v7, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v6    # "sig":Landroid/content/pm/Signature;
    .end local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 419
    :cond_40
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 421
    iput-object p2, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 422
    const/4 v2, 0x1

    return v2

    .line 423
    :cond_4a
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 432
    :cond_6d
    return v3
.end method

.method private static matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "existingSignatures"    # Landroid/content/pm/SigningDetails;
    .param p2, "parsedSignatures"    # Landroid/content/pm/SigningDetails;
    .param p3, "flags"    # I

    .line 440
    const/4 v0, 0x0

    .line 442
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x4

    :try_start_2
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovered effectively matching certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1e
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_1e} :catch_21

    .line 445
    const/4 v1, 0x1

    return v1

    .line 449
    :cond_20
    goto :goto_26

    .line 447
    :catch_21
    move-exception v2

    .line 448
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 450
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to recover certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 452
    const/4 v1, 0x0

    return v1
.end method

.method public static preparePackageParserCache(ZZLjava/lang/String;)Ljava/io/File;
    .registers 13
    .param p0, "forEngBuild"    # Z
    .param p1, "isUserDebugBuild"    # Z
    .param p2, "incrementalVersion"    # Ljava/lang/String;

    .line 1294
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1295
    return-object v0

    .line 1298
    :cond_4
    const-string/jumbo v1, "pm.boot.disable_package_cache"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "PackageManager"

    if-eqz v1, :cond_16

    .line 1299
    const-string v1, "Disabling package parser cache due to system property."

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-object v0

    .line 1305
    :cond_16
    invoke-static {}, Landroid/os/Environment;->getPackageCacheDirectory()Ljava/io/File;

    move-result-object v1

    .line 1306
    .local v1, "cacheBaseDir":Ljava/io/File;
    invoke-static {v1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 1307
    return-object v0

    .line 1313
    :cond_21
    sget-object v4, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 1317
    .local v4, "cacheName":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    :goto_28
    if-ge v2, v6, :cond_71

    aget-object v7, v5, v2

    .line 1318
    .local v7, "cacheDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 1319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Keeping known cache "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 1321
    :cond_51
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Destroying unknown cache "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-static {v7}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 1317
    .end local v7    # "cacheDir":Ljava/io/File;
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1327
    :cond_71
    invoke-static {v1, v4}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1329
    .local v2, "cacheDir":Ljava/io/File;
    if-nez v2, :cond_91

    .line 1331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache directory cannot be created - wiping base dir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 1333
    return-object v0

    .line 1343
    :cond_91
    if-eqz p1, :cond_be

    const-string v0, "eng."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1344
    const-string v0, "Wiping cache directory because the system partition changed."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    new-instance v0, Ljava/io/File;

    .line 1351
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v5, "framework"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1352
    .local v0, "frameworkDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gez v3, :cond_be

    .line 1353
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 1354
    invoke-static {v1, v4}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1358
    .end local v0    # "frameworkDir":Ljava/io/File;
    :cond_be
    return-object v2
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 211
    :catch_9
    move-exception v0

    .line 212
    .local v0, "ee":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static removeNativeBinariesLI(Lcom/android/server/pm/PackageSetting;)V
    .registers 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 704
    if-eqz p0, :cond_9

    .line 705
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesLI(Ljava/lang/String;)V

    .line 707
    :cond_9
    return-void
.end method

.method static tryParsePackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "codePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1181
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1182
    .local v0, "packageNameEnds":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 1185
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1183
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a valid package folder name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1126
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1127
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    .line 1129
    :cond_a
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_13

    .line 1130
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1132
    :cond_13
    return-object p0
.end method

.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z
    .registers 15
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "sharedUserSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "parsedSignatures"    # Landroid/content/pm/SigningDetails;
    .param p4, "compareCompat"    # Z
    .param p5, "compareRecover"    # Z
    .param p6, "isRollback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 488
    .local v1, "compatMatch":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_96

    .line 491
    nop

    .line 492
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 491
    invoke-virtual {p3, v2, v4}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    const/16 v5, 0x8

    if-nez v2, :cond_2b

    .line 494
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2, p3, v5}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_2b

    :cond_29
    move v2, v3

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v2, v4

    .line 500
    .local v2, "match":Z
    :goto_2c
    if-eqz v2, :cond_3c

    if-eqz p2, :cond_3c

    .line 501
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    sget-object v7, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v6, v7, :cond_3c

    .line 502
    invoke-static {v0, p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignatureInSystem(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    .line 505
    :cond_3c
    if-nez v2, :cond_49

    if-eqz p4, :cond_49

    .line 506
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v6

    invoke-static {v0, v6, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z

    move-result v2

    .line 508
    move v1, v2

    .line 510
    :cond_49
    if-nez v2, :cond_67

    if-eqz p5, :cond_67

    .line 511
    nop

    .line 513
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    .line 511
    invoke-static {v0, v6, p3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v6

    if-nez v6, :cond_65

    .line 519
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    .line 516
    invoke-static {v0, p3, v6, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_65

    :cond_63
    move v5, v3

    goto :goto_66

    :cond_65
    :goto_65
    move v5, v4

    :goto_66
    move v2, v5

    .line 523
    :cond_67
    if-nez v2, :cond_73

    if-eqz p6, :cond_73

    .line 527
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v2

    .line 530
    :cond_73
    if-eqz v2, :cond_76

    goto :goto_96

    .line 531
    :cond_76
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signatures do not match newer version; ignoring!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x7

    invoke-direct {v3, v5, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 537
    .end local v2    # "match":Z
    :cond_96
    :goto_96
    if-eqz p1, :cond_143

    .line 538
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v2, v5, :cond_143

    .line 544
    nop

    .line 545
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    if-eqz v2, :cond_ad

    .line 546
    move v2, v4

    goto :goto_ae

    :cond_ad
    move v2, v3

    .line 544
    :goto_ae
    invoke-static {v0, p3, p1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result v2

    .line 547
    .restart local v2    # "match":Z
    if-nez v2, :cond_bc

    if-eqz p4, :cond_bc

    .line 548
    iget-object v5, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, v5, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z

    move-result v2

    .line 551
    :cond_bc
    if-nez v2, :cond_d8

    if-eqz p5, :cond_d8

    .line 552
    iget-object v5, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 553
    const/4 v6, 0x2

    invoke-static {v0, v5, p3, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v5

    if-nez v5, :cond_d5

    iget-object v5, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 557
    invoke-static {v0, p3, v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v5

    if-eqz v5, :cond_d6

    :cond_d5
    move v3, v4

    :cond_d6
    move v2, v3

    .line 561
    or-int/2addr v1, v2

    .line 564
    :cond_d8
    if-nez v2, :cond_ed

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceStub;->get()Lcom/android/server/pm/permission/PermissionManagerServiceStub;

    move-result-object v3

    .line 565
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 564
    invoke-virtual {v3, v0, p3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceStub;->canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 566
    return v1

    .line 569
    :cond_ed
    const-string v3, "Package "

    const/4 v4, -0x8

    if-eqz v2, :cond_11a

    .line 577
    iget-object v5, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p3, v5}, Landroid/content/pm/SigningDetails;->hasCommonAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v5

    if-eqz v5, :cond_fd

    goto :goto_143

    .line 579
    :cond_fd
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " has a signing lineage that diverges from the lineage of the sharedUserId"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 570
    :cond_11a
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " has no signatures that match those in shared user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "; ignoring!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 584
    .end local v2    # "match":Z
    :cond_143
    :goto_143
    return v1
.end method

.method public static waitForNativeBinariesExtractionForIncremental(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/os/incremental/IncrementalStorage;",
            ">;)V"
        }
    .end annotation

    .line 714
    .local p0, "incrementalStorages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/incremental/IncrementalStorage;>;"
    const-string/jumbo v0, "native_lib_extract"

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 715
    return-void

    .line 723
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 724
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 725
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/incremental/IncrementalStorage;

    .line 726
    .local v2, "storage":Landroid/os/incremental/IncrementalStorage;
    invoke-virtual {v2}, Landroid/os/incremental/IncrementalStorage;->waitForNativeBinariesExtraction()Z
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_2e

    .line 724
    nop

    .end local v2    # "storage":Landroid/os/incremental/IncrementalStorage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 729
    .end local v1    # "i":I
    :cond_25
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 730
    nop

    .line 731
    return-void

    .line 729
    :catchall_2e
    move-exception v1

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 730
    throw v1
.end method
