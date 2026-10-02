.class public Landroid/security/keystore2/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;
    }
.end annotation


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "AndroidKeyStore"

.field public static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreSpi"


# instance fields
.field private blacklist mKeyStore:Landroid/security/KeyStore2;

.field private blacklist mNamespace:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAliasesBatch(Landroid/security/keystore2/AndroidKeyStoreSpi;Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 2

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getAliasesBatch(Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    return-void
.end method

.method private static blacklist assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V
    .registers 10
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "targetDomain"    # I
    .param p2, "targetNamespace"    # I
    .param p3, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 679
    iget-object v0, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1a

    iget v0, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v0, p1, :cond_1a

    iget v0, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    if-ne v0, v1, :cond_19

    iget-wide v2, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    int-to-long v4, p2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_19

    goto :goto_1a

    .line 689
    :cond_19
    return-void

    .line 682
    :cond_1a
    :goto_1a
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only replace keys with same alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in the same target domain: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 685
    if-ne p1, v1, :cond_6b

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in the same target namespace: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    :cond_6b
    const-string v1, ""

    :goto_6d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getAliasesBatch(Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 6
    .param p1, "startPastAlias"    # Ljava/lang/String;

    .line 1114
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1115
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1116
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    .line 1115
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/security/KeyStore2;->listBatch(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0
    :try_end_10
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 1120
    :catch_11
    move-exception v0

    .line 1121
    .local v0, "e":Landroid/security/KeyStoreException;
    const-string v1, "AndroidKeyStoreSpi"

    const-string v2, "Failed to list keystore entries."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/system/keystore2/KeyDescriptor;

    return-object v1
.end method

.method private blacklist getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .line 162
    if-eqz p1, :cond_21

    .line 166
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 169
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :try_start_6
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 170
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1
    :try_end_f
    .catch Landroid/security/KeyStoreException; {:try_start_6 .. :try_end_f} :catch_10

    return-object v1

    .line 171
    :catch_10
    move-exception v1

    .line 172
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1f

    .line 173
    const-string v2, "AndroidKeyStoreSpi"

    const-string v3, "Could not get key metadata from Keystore."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_1f
    const/4 v2, 0x0

    return-object v2

    .line 163
    .end local v0    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getKeymasterEcCurve(Ljava/security/PrivateKey;)I
    .registers 5
    .param p1, "key"    # Ljava/security/PrivateKey;

    .line 643
    instance-of v0, p1, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_17

    .line 644
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 645
    .local v0, "param":Ljava/security/spec/ECParameterSpec;
    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore2/KeymasterUtils;->getKeymasterEcCurve(Ljava/lang/String;)I

    move-result v1

    .line 646
    .local v1, "kmECCurve":I
    if-ltz v1, :cond_16

    .line 647
    return v1

    .line 649
    .end local v0    # "param":Ljava/security/spec/ECParameterSpec;
    .end local v1    # "kmECCurve":I
    :cond_16
    goto :goto_4e

    :cond_17
    instance-of v0, p1, Ljava/security/interfaces/XECKey;

    const/4 v1, 0x4

    if-eqz v0, :cond_2d

    .line 650
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/XECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/XECPrivateKey;->getParams()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 651
    .local v0, "param":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v2, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-interface {v0, v2}, Ljava/security/spec/AlgorithmParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 652
    return v1

    .line 654
    .end local v0    # "param":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_2c
    goto :goto_4e

    :cond_2d
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XDH"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 657
    return v1

    .line 658
    :cond_3a
    instance-of v0, p1, Ljava/security/interfaces/EdECKey;

    if-eqz v0, :cond_4e

    .line 659
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/EdECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/EdECPrivateKey;->getParams()Ljava/security/spec/NamedParameterSpec;

    move-result-object v0

    .line 660
    .restart local v0    # "param":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v2, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    invoke-interface {v0, v2}, Ljava/security/spec/AlgorithmParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 661
    return v1

    .line 664
    .end local v0    # "param":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4e
    :goto_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/PrivateKey;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .registers 11
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 301
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 304
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 309
    .local v1, "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    const-string v3, "NONE"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_67

    .line 316
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_28
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 317
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xf

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 324
    .restart local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const-string v8, "SHA-384"

    const-string v9, "SHA-512"

    const-string v3, "NONE"

    const-string v4, "MD5"

    const-string v5, "SHA-1"

    const-string v6, "SHA-224"

    const-string v7, "SHA-256"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 334
    const-string v3, "PKCS1Padding"

    const-string v4, "OAEPPadding"

    const-string v5, "NoPadding"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 338
    const-string v3, "PKCS1"

    const-string v4, "PSS"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 343
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 347
    :goto_67
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 349
    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    return-object v2

    .line 345
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_6f
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getMgf1DigestSetterFlag()Z
    .registers 3

    .line 262
    :try_start_0
    invoke-static {}, Landroid/security/Flags;->mgf1DigestSetterV2()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 263
    :catch_5
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AndroidKeyStore"

    const-string v2, "Cannot read MGF1 Digest setter flag value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getTargetDomain()I
    .registers 3

    .line 157
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 158
    const/4 v0, 0x0

    goto :goto_8

    .line 159
    :cond_7
    const/4 v0, 0x2

    .line 157
    :goto_8
    return v0
.end method

.method private blacklist isKeyEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1158
    if-eqz p1, :cond_10

    .line 1162
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 1165
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1

    .line 1159
    .end local v0    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$setPrivateKeyEntry$0(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "importArgs"    # Ljava/util/List;
    .param p1, "purpose"    # Ljava/lang/Integer;

    .line 496
    nop

    .line 498
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v0

    .line 496
    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    return-void
.end method

.method static synthetic blacklist lambda$setSecretKeyEntry$1(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "importArgs"    # Ljava/util/List;
    .param p1, "purpose"    # Ljava/lang/Integer;

    .line 805
    nop

    .line 807
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v0

    .line 805
    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    return-void
.end method

.method private blacklist makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 149
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 150
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 151
    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 152
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 153
    return-object v0
.end method

.method private blacklist setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 33
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p4, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 354
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "SHA-1"

    const/4 v5, 0x1

    .line 355
    .local v5, "securitylevel":I
    const/4 v6, 0x0

    .line 357
    .local v6, "flags":I
    if-nez v4, :cond_15

    .line 358
    invoke-static/range {p2 .. p2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v7

    move v12, v6

    move-object v13, v7

    .local v7, "spec":Landroid/security/keystore/KeyProtection;
    goto :goto_3e

    .line 359
    .end local v7    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_15
    instance-of v7, v4, Landroid/security/KeyStoreParameter;

    if-eqz v7, :cond_23

    .line 360
    invoke-static/range {p2 .. p2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v7

    .line 361
    .restart local v7    # "spec":Landroid/security/keystore/KeyProtection;
    move-object v8, v4

    check-cast v8, Landroid/security/KeyStoreParameter;

    .line 362
    move v12, v6

    move-object v13, v7

    goto :goto_3e

    .end local v7    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_23
    instance-of v7, v4, Landroid/security/keystore/KeyProtection;

    if-eqz v7, :cond_404

    .line 363
    move-object v7, v4

    check-cast v7, Landroid/security/keystore/KeyProtection;

    .line 364
    .restart local v7    # "spec":Landroid/security/keystore/KeyProtection;
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 370
    or-int/lit8 v6, v6, 0x1

    .line 374
    :cond_32
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 375
    const/4 v5, 0x2

    move v12, v6

    move-object v13, v7

    goto :goto_3e

    .line 374
    :cond_3c
    move v12, v6

    move-object v13, v7

    .line 385
    .end local v6    # "flags":I
    .end local v7    # "spec":Landroid/security/keystore/KeyProtection;
    .local v12, "flags":I
    .local v13, "spec":Landroid/security/keystore/KeyProtection;
    :goto_3e
    if-eqz v3, :cond_3fc

    array-length v6, v3

    if-eqz v6, :cond_3fc

    .line 390
    array-length v6, v3

    new-array v14, v6, [Ljava/security/cert/X509Certificate;

    .line 391
    .local v14, "x509chain":[Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_47
    array-length v7, v3

    if-ge v6, v7, :cond_97

    .line 392
    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "X.509"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "Certificates must be in X.509 format: invalid cert #"

    if-eqz v7, :cond_80

    .line 397
    aget-object v7, v3, v6

    instance-of v7, v7, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_69

    .line 402
    aget-object v7, v3, v6

    check-cast v7, Ljava/security/cert/X509Certificate;

    aput-object v7, v14, v6

    .line 391
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 398
    :cond_69
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_80
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    .end local v6    # "i":I
    :cond_97
    const/4 v6, 0x0

    :try_start_98
    aget-object v7, v14, v6

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7
    :try_end_9e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_98 .. :try_end_9e} :catch_3f3

    move-object v15, v7

    .line 410
    .local v15, "userCertBytes":[B
    nop

    .line 418
    array-length v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_fb

    .line 423
    array-length v7, v14

    sub-int/2addr v7, v8

    new-array v7, v7, [[B

    .line 424
    .local v7, "certsBytes":[[B
    const/4 v9, 0x0

    .line 425
    .local v9, "totalCertLength":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_aa
    array-length v11, v7

    if-ge v10, v11, :cond_d9

    .line 427
    add-int/lit8 v11, v10, 0x1

    :try_start_af
    aget-object v11, v14, v11

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v11

    aput-object v11, v7, v10

    .line 428
    aget-object v11, v7, v10

    array-length v11, v11
    :try_end_ba
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_af .. :try_end_ba} :catch_bf

    add-int/2addr v9, v11

    .line 431
    nop

    .line 425
    add-int/lit8 v10, v10, 0x1

    goto :goto_aa

    .line 429
    :catch_bf
    move-exception v0

    .line 430
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to encode certificate #"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 438
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v10    # "i":I
    :cond_d9
    new-array v10, v9, [B

    .line 439
    .local v10, "chainBytes":[B
    const/4 v11, 0x0

    .line 440
    .local v11, "outputOffset":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "i":I
    :goto_e0
    array-length v6, v7

    if-ge v8, v6, :cond_f8

    .line 441
    aget-object v6, v7, v8

    array-length v6, v6

    .line 442
    .local v6, "certLength":I
    aget-object v3, v7, v8

    const/4 v4, 0x0

    invoke-static {v3, v4, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    add-int/2addr v11, v6

    .line 444
    const/4 v3, 0x0

    aput-object v3, v7, v8

    .line 440
    .end local v6    # "certLength":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p3

    move v6, v4

    move-object/from16 v4, p4

    goto :goto_e0

    :cond_f8
    const/4 v4, 0x0

    .line 446
    .end local v7    # "certsBytes":[[B
    .end local v8    # "i":I
    .end local v9    # "totalCertLength":I
    .end local v11    # "outputOffset":I
    move-object v3, v10

    goto :goto_fe

    .line 447
    .end local v10    # "chainBytes":[B
    :cond_fb
    move v4, v6

    const/4 v10, 0x0

    move-object v3, v10

    .line 450
    .local v3, "chainBytes":[B
    :goto_fe
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v11

    .line 454
    .local v11, "targetDomain":I
    instance-of v6, v2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    const-string v10, "Failed to store certificate and certificate chain"

    if-eqz v6, :cond_12e

    .line 455
    move-object v4, v2

    check-cast v4, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 456
    .local v4, "ksKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    invoke-virtual {v4}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v6

    .line 459
    .local v6, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v9, p1

    invoke-static {v9, v11, v0, v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    .line 462
    :try_start_116
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 463
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    move-object v7, v2

    check-cast v7, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 464
    invoke-virtual {v7}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v7

    .line 463
    invoke-virtual {v0, v7, v15, v3}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_125
    .catch Landroid/security/KeyStoreException; {:try_start_116 .. :try_end_125} :catch_127

    .line 468
    nop

    .line 469
    return-void

    .line 466
    :catch_127
    move-exception v0

    .line 467
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 473
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v4    # "ksKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    .end local v6    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :cond_12e
    move-object/from16 v9, p1

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    .line 474
    .local v8, "keyFormat":Ljava/lang/String;
    if-eqz v8, :cond_3ce

    const-string v6, "PKCS#8"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3ce

    .line 482
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v17

    .line 483
    .local v17, "pkcs8EncodedPrivateKeyBytes":[B
    if-eqz v17, :cond_3c6

    .line 487
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v6

    .line 490
    .local v7, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    nop

    .line 493
    :try_start_14b
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 492
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v6

    .line 490
    const v4, 0x10000002

    invoke-static {v4, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v4

    new-instance v6, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;

    invoke-direct {v6, v7}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v4, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    .line 501
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v4
    :try_end_16d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14b .. :try_end_16d} :catch_3ba
    .catch Ljava/lang/IllegalStateException; {:try_start_14b .. :try_end_16d} :catch_3ba

    if-eqz v4, :cond_1a0

    .line 502
    :try_start_16f
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4
    :try_end_174
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16f .. :try_end_174} :catch_196
    .catch Ljava/lang/IllegalStateException; {:try_start_16f .. :try_end_174} :catch_196

    move-object/from16 v18, v8

    const/4 v8, 0x0

    .end local v8    # "keyFormat":Ljava/lang/String;
    .local v18, "keyFormat":Ljava/lang/String;
    :goto_177
    if-ge v8, v6, :cond_1a2

    :try_start_179
    aget-object v19, v4, v8

    .line 503
    .local v19, "digest":Ljava/lang/String;
    nop

    .line 505
    move-object/from16 v20, v4

    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 503
    move/from16 v21, v6

    const v6, 0x20000005

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_179 .. :try_end_18e} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_179 .. :try_end_18e} :catch_1c7

    .line 502
    nop

    .end local v19    # "digest":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v20

    move/from16 v6, v21

    goto :goto_177

    .line 616
    .end local v18    # "keyFormat":Ljava/lang/String;
    .restart local v8    # "keyFormat":Ljava/lang/String;
    :catch_196
    move-exception v0

    move-object/from16 v18, v8

    move-object v4, v7

    move/from16 v16, v11

    move-object/from16 v26, v18

    .end local v8    # "keyFormat":Ljava/lang/String;
    .restart local v18    # "keyFormat":Ljava/lang/String;
    goto/16 :goto_3c0

    .line 501
    .end local v18    # "keyFormat":Ljava/lang/String;
    .restart local v8    # "keyFormat":Ljava/lang/String;
    :cond_1a0
    move-object/from16 v18, v8

    .line 509
    .end local v8    # "keyFormat":Ljava/lang/String;
    .restart local v18    # "keyFormat":Ljava/lang/String;
    :cond_1a2
    :try_start_1a2
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4
    :try_end_1a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a2 .. :try_end_1a7} :catch_3b3
    .catch Ljava/lang/IllegalStateException; {:try_start_1a2 .. :try_end_1a7} :catch_3b3

    const/4 v8, 0x0

    :goto_1a8
    if-ge v8, v6, :cond_1cf

    :try_start_1aa
    aget-object v19, v4, v8

    .line 510
    .local v19, "blockMode":Ljava/lang/String;
    nop

    .line 512
    move-object/from16 v20, v4

    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 510
    move/from16 v21, v6

    const v6, 0x20000004

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1aa .. :try_end_1bf} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_1aa .. :try_end_1bf} :catch_1c7

    .line 509
    nop

    .end local v19    # "blockMode":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v20

    move/from16 v6, v21

    goto :goto_1a8

    .line 616
    :catch_1c7
    move-exception v0

    move-object v4, v7

    move/from16 v16, v11

    move-object/from16 v26, v18

    goto/16 :goto_3c0

    .line 515
    :cond_1cf
    nop

    .line 517
    :try_start_1d0
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v4

    .line 516
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    .line 518
    .local v4, "keymasterEncryptionPaddings":[I
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v6
    :try_end_1dc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d0 .. :try_end_1dc} :catch_3b3
    .catch Ljava/lang/IllegalStateException; {:try_start_1d0 .. :try_end_1dc} :catch_3b3

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-eqz v6, :cond_219

    .line 519
    :try_start_1e0
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    if-eqz v6, :cond_219

    .line 520
    array-length v6, v4

    const/4 v8, 0x0

    :goto_1e8
    if-ge v8, v6, :cond_219

    aget v16, v4, v8

    .line 521
    .local v16, "keymasterPadding":I
    nop

    .line 522
    invoke-static/range {v16 .. v16}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v19

    if-eqz v19, :cond_1f6

    .line 520
    .end local v16    # "keymasterPadding":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e8

    .line 524
    .restart local v16    # "keymasterPadding":I
    :cond_1f6
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 527
    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". See KeyProtection documentation."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v3    # "chainBytes":[B
    .end local v5    # "securitylevel":I
    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v11    # "targetDomain":I
    .end local v12    # "flags":I
    .end local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .end local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v15    # "userCertBytes":[B
    .end local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local v18    # "keyFormat":Ljava/lang/String;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljava/security/PrivateKey;
    .end local p3    # "chain":[Ljava/security/cert/Certificate;
    .end local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v0
    :try_end_219
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e0 .. :try_end_219} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_1e0 .. :try_end_219} :catch_1c7

    .line 533
    .end local v16    # "keymasterPadding":I
    .restart local v3    # "chainBytes":[B
    .restart local v5    # "securitylevel":I
    .restart local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v11    # "targetDomain":I
    .restart local v12    # "flags":I
    .restart local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .restart local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v15    # "userCertBytes":[B
    .restart local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .restart local v18    # "keyFormat":Ljava/lang/String;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljava/security/PrivateKey;
    .restart local p3    # "chain":[Ljava/security/cert/Certificate;
    .restart local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_219
    :try_start_219
    array-length v6, v4
    :try_end_21a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_219 .. :try_end_21a} :catch_3b3
    .catch Ljava/lang/IllegalStateException; {:try_start_219 .. :try_end_21a} :catch_3b3

    const/4 v8, 0x0

    :goto_21b
    const v9, 0x20000006

    if-ge v8, v6, :cond_2d0

    :try_start_220
    aget v16, v4, v8

    move/from16 v19, v16

    .line 534
    .local v19, "padding":I
    move-object/from16 v16, v4

    move/from16 v4, v19

    .end local v19    # "padding":I
    .local v4, "padding":I
    .local v16, "keymasterEncryptionPaddings":[I
    invoke-static {v9, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    const/4 v9, 0x2

    if-ne v4, v9, :cond_2be

    .line 539
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isMgf1DigestsSpecified()Z

    move-result v9

    move/from16 v19, v4

    .end local v4    # "padding":I
    .restart local v19    # "padding":I
    if-eqz v9, :cond_267

    .line 540
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getMgf1Digests()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_242
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_262

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 541
    .local v20, "mgf1Digest":Ljava/lang/String;
    nop

    .line 543
    invoke-static/range {v20 .. v20}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 541
    move/from16 v22, v6

    const v6, 0x200000cb

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    move/from16 v6, v22

    .end local v20    # "mgf1Digest":Ljava/lang/String;
    goto :goto_242

    :cond_262
    move/from16 v22, v6

    move-object/from16 v20, v0

    goto :goto_2c4

    .line 556
    :cond_267
    move/from16 v22, v6

    .line 558
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 556
    const v6, 0x200000cb

    invoke-static {v6, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getMgf1DigestSetterFlag()Z

    move-result v4

    if-nez v4, :cond_2bb

    .line 561
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v4

    .line 563
    .local v4, "defaultMgf1Digest":I
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    move-object/from16 v20, v0

    const/4 v0, 0x0

    :goto_289
    if-ge v0, v9, :cond_2b8

    aget-object v23, v6, v0

    .line 564
    .local v23, "digest":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v24

    move/from16 v25, v24

    .line 567
    .local v25, "digestToAddAsMgf1Digest":I
    move-object/from16 v24, v6

    move/from16 v6, v25

    .end local v25    # "digestToAddAsMgf1Digest":I
    .local v6, "digestToAddAsMgf1Digest":I
    if-eq v6, v4, :cond_2a8

    .line 568
    move/from16 v25, v4

    move/from16 v21, v9

    const v4, 0x200000cb

    .end local v4    # "defaultMgf1Digest":I
    .local v25, "defaultMgf1Digest":I
    invoke-static {v4, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_220 .. :try_end_2a7} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_220 .. :try_end_2a7} :catch_1c7

    goto :goto_2af

    .line 567
    .end local v25    # "defaultMgf1Digest":I
    .restart local v4    # "defaultMgf1Digest":I
    :cond_2a8
    move/from16 v25, v4

    move/from16 v21, v9

    const v4, 0x200000cb

    .line 563
    .end local v4    # "defaultMgf1Digest":I
    .end local v6    # "digestToAddAsMgf1Digest":I
    .end local v23    # "digest":Ljava/lang/String;
    .restart local v25    # "defaultMgf1Digest":I
    :goto_2af
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v21

    move-object/from16 v6, v24

    move/from16 v4, v25

    goto :goto_289

    .end local v25    # "defaultMgf1Digest":I
    .restart local v4    # "defaultMgf1Digest":I
    :cond_2b8
    move/from16 v25, v4

    .end local v4    # "defaultMgf1Digest":I
    .restart local v25    # "defaultMgf1Digest":I
    goto :goto_2c4

    .line 560
    .end local v25    # "defaultMgf1Digest":I
    :cond_2bb
    move-object/from16 v20, v0

    goto :goto_2c4

    .line 538
    .end local v19    # "padding":I
    .local v4, "padding":I
    :cond_2be
    move-object/from16 v20, v0

    move/from16 v19, v4

    move/from16 v22, v6

    .line 533
    .end local v4    # "padding":I
    :goto_2c4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, p1

    move-object/from16 v4, v16

    move-object/from16 v0, v20

    move/from16 v6, v22

    goto/16 :goto_21b

    .line 578
    .end local v16    # "keymasterEncryptionPaddings":[I
    .local v4, "keymasterEncryptionPaddings":[I
    :cond_2d0
    move-object/from16 v16, v4

    .end local v4    # "keymasterEncryptionPaddings":[I
    .restart local v16    # "keymasterEncryptionPaddings":[I
    :try_start_2d2
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0
    :try_end_2d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d2 .. :try_end_2d7} :catch_3b3
    .catch Ljava/lang/IllegalStateException; {:try_start_2d2 .. :try_end_2d7} :catch_3b3

    const/4 v6, 0x0

    :goto_2d8
    if-ge v6, v4, :cond_2f4

    :try_start_2da
    aget-object v8, v0, v6

    .line 579
    .local v8, "padding":Ljava/lang/String;
    nop

    .line 581
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->toKeymaster(Ljava/lang/String;)I

    move-result v9

    .line 579
    move-object/from16 v19, v0

    const v0, 0x20000006

    invoke-static {v0, v9}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2ed
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2da .. :try_end_2ed} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_2da .. :try_end_2ed} :catch_1c7

    .line 578
    nop

    .end local v8    # "padding":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move v9, v0

    move-object/from16 v0, v19

    goto :goto_2d8

    .line 584
    :cond_2f4
    :try_start_2f4
    invoke-static {v7, v13}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 585
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0
    :try_end_2fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f4 .. :try_end_2fb} :catch_3b3
    .catch Ljava/lang/IllegalStateException; {:try_start_2f4 .. :try_end_2fb} :catch_3b3

    if-eqz v0, :cond_30c

    .line 586
    nop

    .line 587
    :try_start_2fe
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    .line 586
    const v4, 0x60000190

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2fe .. :try_end_30c} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_2fe .. :try_end_30c} :catch_1c7

    .line 590
    :cond_30c
    :try_start_30c
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0
    :try_end_310
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30c .. :try_end_310} :catch_3b3
    .catch Ljava/lang/IllegalStateException; {:try_start_30c .. :try_end_310} :catch_3b3

    if-eqz v0, :cond_321

    .line 591
    nop

    .line 593
    :try_start_313
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    .line 591
    const v4, 0x60000191

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_321
    .catch Ljava/lang/IllegalArgumentException; {:try_start_313 .. :try_end_321} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_313 .. :try_end_321} :catch_1c7

    .line 596
    :cond_321
    :try_start_321
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0
    :try_end_325
    .catch Ljava/lang/IllegalArgumentException; {:try_start_321 .. :try_end_325} :catch_3b3
    .catch Ljava/lang/IllegalStateException; {:try_start_321 .. :try_end_325} :catch_3b3

    if-eqz v0, :cond_336

    .line 597
    nop

    .line 599
    :try_start_328
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    .line 597
    const v4, 0x60000192

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_336
    .catch Ljava/lang/IllegalArgumentException; {:try_start_328 .. :try_end_336} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_328 .. :try_end_336} :catch_1c7

    .line 602
    :cond_336
    :try_start_336
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0
    :try_end_33a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_336 .. :try_end_33a} :catch_3b3
    .catch Ljava/lang/IllegalStateException; {:try_start_336 .. :try_end_33a} :catch_3b3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_34c

    .line 603
    nop

    .line 605
    :try_start_33e
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0

    .line 603
    const v4, 0x30000195

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33e .. :try_end_34c} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_33e .. :try_end_34c} :catch_1c7

    .line 608
    :cond_34c
    nop

    .line 610
    :try_start_34d
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v0
    :try_end_355
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34d .. :try_end_355} :catch_3b3
    .catch Ljava/lang/IllegalStateException; {:try_start_34d .. :try_end_355} :catch_3b3

    const/4 v4, 0x3

    if-ne v4, v0, :cond_367

    .line 611
    nop

    .line 613
    :try_start_359
    invoke-direct {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeymasterEcCurve(Ljava/security/PrivateKey;)I

    move-result v0

    .line 611
    const v4, 0x1000000a

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_367
    .catch Ljava/lang/IllegalArgumentException; {:try_start_359 .. :try_end_367} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_359 .. :try_end_367} :catch_1c7

    .line 618
    .end local v16    # "keymasterEncryptionPaddings":[I
    :cond_367
    nop

    .line 621
    :try_start_368
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v5}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    .line 624
    .local v6, "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0
    :try_end_372
    .catch Landroid/security/KeyStoreException; {:try_start_368 .. :try_end_372} :catch_3a5

    move-object v4, v7

    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v4, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    move-object v7, v0

    .line 626
    .local v7, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    const/4 v8, 0x0

    move-object/from16 v9, v18

    .end local v18    # "keyFormat":Ljava/lang/String;
    .local v9, "keyFormat":Ljava/lang/String;
    move-object/from16 v26, v9

    .end local v9    # "keyFormat":Ljava/lang/String;
    .local v26, "keyFormat":Ljava/lang/String;
    move-object v9, v4

    move-object/from16 v27, v10

    move v10, v12

    move/from16 v16, v11

    .end local v11    # "targetDomain":I
    .local v16, "targetDomain":I
    move-object/from16 v11, v17

    :try_start_381
    invoke-virtual/range {v6 .. v11}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0
    :try_end_385
    .catch Landroid/security/KeyStoreException; {:try_start_381 .. :try_end_385} :catch_3a3

    move-object v8, v0

    .line 630
    .local v8, "metadata":Landroid/system/keystore2/KeyMetadata;
    :try_start_386
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 631
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v9, v8, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v0, v9, v15, v3}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_390
    .catch Landroid/security/KeyStoreException; {:try_start_386 .. :try_end_390} :catch_393

    .line 635
    nop

    .line 639
    .end local v6    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .end local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v8    # "metadata":Landroid/system/keystore2/KeyMetadata;
    nop

    .line 640
    return-void

    .line 632
    .restart local v6    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .restart local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v8    # "metadata":Landroid/system/keystore2/KeyMetadata;
    :catch_393
    move-exception v0

    .line 633
    .restart local v0    # "e":Landroid/security/KeyStoreException;
    :try_start_394
    iget-object v9, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v10, v8, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v9, v10}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 634
    new-instance v9, Ljava/security/KeyStoreException;

    move-object/from16 v10, v27

    invoke-direct {v9, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "chainBytes":[B
    .end local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v5    # "securitylevel":I
    .end local v12    # "flags":I
    .end local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .end local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v15    # "userCertBytes":[B
    .end local v16    # "targetDomain":I
    .end local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local v26    # "keyFormat":Ljava/lang/String;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljava/security/PrivateKey;
    .end local p3    # "chain":[Ljava/security/cert/Certificate;
    .end local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v9
    :try_end_3a3
    .catch Landroid/security/KeyStoreException; {:try_start_394 .. :try_end_3a3} :catch_3a3

    .line 637
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v6    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .end local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v8    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .restart local v3    # "chainBytes":[B
    .restart local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v5    # "securitylevel":I
    .restart local v12    # "flags":I
    .restart local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .restart local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v15    # "userCertBytes":[B
    .restart local v16    # "targetDomain":I
    .restart local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .restart local v26    # "keyFormat":Ljava/lang/String;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljava/security/PrivateKey;
    .restart local p3    # "chain":[Ljava/security/cert/Certificate;
    .restart local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :catch_3a3
    move-exception v0

    goto :goto_3ab

    .end local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v16    # "targetDomain":I
    .end local v26    # "keyFormat":Ljava/lang/String;
    .local v7, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v11    # "targetDomain":I
    .restart local v18    # "keyFormat":Ljava/lang/String;
    :catch_3a5
    move-exception v0

    move-object v4, v7

    move/from16 v16, v11

    move-object/from16 v26, v18

    .line 638
    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v11    # "targetDomain":I
    .end local v18    # "keyFormat":Ljava/lang/String;
    .restart local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v16    # "targetDomain":I
    .restart local v26    # "keyFormat":Ljava/lang/String;
    :goto_3ab
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "Failed to store private key"

    invoke-direct {v6, v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 616
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v16    # "targetDomain":I
    .end local v26    # "keyFormat":Ljava/lang/String;
    .restart local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v11    # "targetDomain":I
    .restart local v18    # "keyFormat":Ljava/lang/String;
    :catch_3b3
    move-exception v0

    move-object v4, v7

    move/from16 v16, v11

    move-object/from16 v26, v18

    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v11    # "targetDomain":I
    .end local v18    # "keyFormat":Ljava/lang/String;
    .restart local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v16    # "targetDomain":I
    .restart local v26    # "keyFormat":Ljava/lang/String;
    goto :goto_3c0

    .end local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v16    # "targetDomain":I
    .end local v26    # "keyFormat":Ljava/lang/String;
    .restart local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v8, "keyFormat":Ljava/lang/String;
    .restart local v11    # "targetDomain":I
    :catch_3ba
    move-exception v0

    move-object v4, v7

    move-object/from16 v26, v8

    move/from16 v16, v11

    .line 617
    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v8    # "keyFormat":Ljava/lang/String;
    .end local v11    # "targetDomain":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v16    # "targetDomain":I
    .restart local v26    # "keyFormat":Ljava/lang/String;
    :goto_3c0
    new-instance v6, Ljava/security/KeyStoreException;

    invoke-direct {v6, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 484
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v16    # "targetDomain":I
    .end local v26    # "keyFormat":Ljava/lang/String;
    .restart local v8    # "keyFormat":Ljava/lang/String;
    .restart local v11    # "targetDomain":I
    :cond_3c6
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v4, "Private key did not export any key material"

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    .end local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    :cond_3ce
    move-object/from16 v26, v8

    move/from16 v16, v11

    .line 475
    .end local v8    # "keyFormat":Ljava/lang/String;
    .end local v11    # "targetDomain":I
    .restart local v16    # "targetDomain":I
    .restart local v26    # "keyFormat":Ljava/lang/String;
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported private key export format: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v26

    .end local v26    # "keyFormat":Ljava/lang/String;
    .local v6, "keyFormat":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ". Only private keys which export their key material in PKCS#8 format are supported."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    .end local v3    # "chainBytes":[B
    .end local v6    # "keyFormat":Ljava/lang/String;
    .end local v15    # "userCertBytes":[B
    .end local v16    # "targetDomain":I
    :catch_3f3
    move-exception v0

    .line 409
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "Failed to encode certificate #0"

    invoke-direct {v3, v4, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 386
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    :cond_3fc
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v3, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    .end local v12    # "flags":I
    .end local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .local v6, "flags":I
    :cond_404
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported protection parameter class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 379
    invoke-interface/range {p4 .. p4}, Ljava/security/KeyStore$ProtectionParameter;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/keystore/KeyProtection;

    .line 380
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/KeyStoreParameter;

    .line 381
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 24
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 694
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_3e

    instance-of v0, v3, Landroid/security/keystore/KeyProtection;

    if-eqz v0, :cond_d

    goto :goto_3e

    .line 695
    :cond_d
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported protection parameter class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 696
    invoke-interface/range {p3 .. p3}, Ljava/security/KeyStore$ProtectionParameter;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/keystore/KeyProtection;

    .line 697
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_3e
    :goto_3e
    move-object v4, v3

    check-cast v4, Landroid/security/keystore/KeyProtection;

    .line 701
    .local v4, "params":Landroid/security/keystore/KeyProtection;
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v5

    .line 703
    .local v5, "targetDomain":I
    instance-of v0, v2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_6b

    .line 704
    move-object v0, v2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    .line 705
    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-object v0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 707
    .local v0, "keyAliasInKeystore":Ljava/lang/String;
    move-object v6, v2

    check-cast v6, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {v6}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v6

    .line 710
    .local v6, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget v7, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v8, p1

    invoke-static {v8, v5, v7, v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    .line 713
    if-nez v4, :cond_63

    .line 717
    return-void

    .line 714
    :cond_63
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v9, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v7, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 720
    .end local v0    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v6    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :cond_6b
    move-object/from16 v8, p1

    if-eqz v4, :cond_317

    .line 726
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 727
    .local v6, "keyExportFormat":Ljava/lang/String;
    if-eqz v6, :cond_30f

    .line 730
    const-string v0, "RAW"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f6

    .line 734
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    .line 735
    .local v7, "keyMaterial":[B
    if-eqz v7, :cond_2ee

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 743
    .local v15, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    nop

    .line 745
    :try_start_8a
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v0

    .line 747
    .local v0, "keymasterAlgorithm":I
    const v9, 0x10000002

    invoke-static {v9, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    const/16 v9, 0x80

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v0, v9, :cond_15c

    .line 758
    nop

    .line 759
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v9

    .line 760
    .local v9, "keymasterImpliedDigest":I
    if-eq v9, v12, :cond_13f

    .line 766
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v16

    if-eqz v16, :cond_106

    .line 769
    nop

    .line 770
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v16

    move-object/from16 v17, v16

    .line 771
    .local v17, "keymasterDigestsFromParams":[I
    move-object/from16 v10, v17

    .end local v17    # "keymasterDigestsFromParams":[I
    .local v10, "keymasterDigestsFromParams":[I
    array-length v11, v10

    if-ne v11, v14, :cond_c9

    aget v11, v10, v13

    if-ne v11, v9, :cond_c9

    goto :goto_106

    .line 773
    :cond_c9
    new-instance v11, Ljava/security/KeyStoreException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported digests specification: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 775
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Only "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 776
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " supported for HMAC key algorithm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 778
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v4    # "params":Landroid/security/keystore/KeyProtection;
    .end local v5    # "targetDomain":I
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    .end local v7    # "keyMaterial":[B
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v11

    .line 781
    .end local v10    # "keymasterDigestsFromParams":[I
    .restart local v4    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v5    # "targetDomain":I
    .restart local v6    # "keyExportFormat":Ljava/lang/String;
    .restart local v7    # "keyMaterial":[B
    .restart local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_106
    :goto_106
    invoke-static {v9}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v10

    .line 782
    .local v10, "outputBits":I
    if-eq v10, v12, :cond_122

    .line 787
    const v11, 0x20000005

    invoke-static {v11, v9}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    const v11, 0x30000008

    invoke-static {v11, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    nop

    .end local v9    # "keymasterImpliedDigest":I
    .end local v10    # "outputBits":I
    goto :goto_181

    .line 783
    .restart local v9    # "keymasterImpliedDigest":I
    .restart local v10    # "outputBits":I
    :cond_122
    new-instance v11, Ljava/security/ProviderException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 785
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v4    # "params":Landroid/security/keystore/KeyProtection;
    .end local v5    # "targetDomain":I
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    .end local v7    # "keyMaterial":[B
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v11

    .line 761
    .end local v10    # "outputBits":I
    .restart local v4    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v5    # "targetDomain":I
    .restart local v6    # "keyExportFormat":Ljava/lang/String;
    .restart local v7    # "keyMaterial":[B
    .restart local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_13f
    new-instance v10, Ljava/security/ProviderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 763
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v4    # "params":Landroid/security/keystore/KeyProtection;
    .end local v5    # "targetDomain":I
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    .end local v7    # "keyMaterial":[B
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v10

    .line 794
    .end local v9    # "keymasterImpliedDigest":I
    .restart local v4    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v5    # "targetDomain":I
    .restart local v6    # "keyExportFormat":Ljava/lang/String;
    .restart local v7    # "keyMaterial":[B
    .restart local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_15c
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v9

    if-eqz v9, :cond_181

    .line 795
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_168
    if-ge v11, v10, :cond_181

    aget-object v13, v9, v11

    .line 796
    .local v13, "digest":Ljava/lang/String;
    nop

    .line 798
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v12

    .line 796
    const v14, 0x20000005

    invoke-static {v14, v12}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    nop

    .end local v13    # "digest":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    const/4 v12, -0x1

    const/4 v14, 0x1

    goto :goto_168

    .line 804
    :cond_181
    :goto_181
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v9

    new-instance v10, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;

    invoke-direct {v10, v15}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-static {v9, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    .line 811
    const/4 v9, 0x0

    .line 812
    .local v9, "indCpa":Z
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v10

    const/4 v11, 0x1

    and-int/2addr v10, v11

    if-eqz v10, :cond_1ab

    .line 813
    move-object v10, v3

    check-cast v10, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v10}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v10

    if-eqz v10, :cond_1a1

    .line 814
    const/4 v9, 0x1

    goto :goto_1ab

    .line 816
    :cond_1a1
    const v10, 0x70000007

    invoke-static {v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_1ab
    :goto_1ab
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v10

    array-length v12, v10

    const/4 v13, 0x0

    :goto_1b1
    if-ge v13, v12, :cond_218

    aget-object v14, v10, v13

    .line 823
    .local v14, "blockMode":Ljava/lang/String;
    invoke-static {v14}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v17

    move/from16 v18, v17

    .line 824
    .local v18, "keymasterBlockMode":I
    if-eqz v9, :cond_1e3

    .line 825
    invoke-static/range {v18 .. v18}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v17

    if-eqz v17, :cond_1c4

    goto :goto_1e3

    .line 827
    :cond_1c4
    new-instance v10, Ljava/security/KeyStoreException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". See KeyProtection documentation."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v4    # "params":Landroid/security/keystore/KeyProtection;
    .end local v5    # "targetDomain":I
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    .end local v7    # "keyMaterial":[B
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v10

    .line 833
    .restart local v4    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v5    # "targetDomain":I
    .restart local v6    # "keyExportFormat":Ljava/lang/String;
    .restart local v7    # "keyMaterial":[B
    .restart local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_1e3
    :goto_1e3
    const/16 v11, 0x20

    if-ne v0, v11, :cond_1fe

    move/from16 v19, v0

    move/from16 v0, v18

    .end local v18    # "keymasterBlockMode":I
    .local v0, "keymasterBlockMode":I
    .local v19, "keymasterAlgorithm":I
    if-ne v0, v11, :cond_1fa

    .line 835
    const/16 v11, 0x60

    const v2, 0x30000008

    invoke-static {v2, v11}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_205

    .line 833
    :cond_1fa
    const v2, 0x30000008

    goto :goto_205

    .end local v19    # "keymasterAlgorithm":I
    .local v0, "keymasterAlgorithm":I
    .restart local v18    # "keymasterBlockMode":I
    :cond_1fe
    move/from16 v19, v0

    move/from16 v0, v18

    const v2, 0x30000008

    .line 841
    .end local v18    # "keymasterBlockMode":I
    .local v0, "keymasterBlockMode":I
    .restart local v19    # "keymasterAlgorithm":I
    :goto_205
    const v11, 0x20000004

    invoke-static {v11, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    nop

    .end local v0    # "keymasterBlockMode":I
    .end local v14    # "blockMode":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move/from16 v0, v19

    const/4 v11, 0x1

    goto :goto_1b1

    .line 847
    .end local v19    # "keymasterAlgorithm":I
    .local v0, "keymasterAlgorithm":I
    :cond_218
    move/from16 v19, v0

    .end local v0    # "keymasterAlgorithm":I
    .restart local v19    # "keymasterAlgorithm":I
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_2df

    .line 851
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v13, 0x0

    :goto_227
    if-ge v13, v2, :cond_23e

    aget-object v10, v0, v13

    .line 852
    .local v10, "padding":Ljava/lang/String;
    nop

    .line 854
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v11

    .line 852
    const v12, 0x20000006

    invoke-static {v12, v11}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    nop

    .end local v10    # "padding":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_227

    .line 858
    :cond_23e
    invoke-static {v15, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 860
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_256

    .line 861
    nop

    .line 862
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    .line 861
    const v2, 0x60000190

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    :cond_256
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_26b

    .line 866
    nop

    .line 868
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    .line 866
    const v2, 0x60000191

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_26b
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_280

    .line 872
    nop

    .line 874
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    .line 872
    const v2, 0x60000192

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_280
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_296

    .line 878
    nop

    .line 880
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0

    .line 878
    const v2, 0x30000195

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_296
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isRollbackResistant()Z

    move-result v0

    if-eqz v0, :cond_2a6

    .line 885
    const v0, 0x7000012f

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_2a6} :catch_2e7
    .catch Ljava/lang/IllegalStateException; {:try_start_8a .. :try_end_2a6} :catch_2e7

    .line 891
    .end local v9    # "indCpa":Z
    .end local v19    # "keymasterAlgorithm":I
    :cond_2a6
    nop

    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, "flags":I
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v2

    if-eqz v2, :cond_2b2

    .line 895
    or-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_2b3

    .line 894
    :cond_2b2
    move v2, v0

    .line 898
    .end local v0    # "flags":I
    .local v2, "flags":I
    :goto_2b3
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v0

    if-eqz v0, :cond_2bb

    const/4 v14, 0x2

    goto :goto_2bc

    .line 899
    :cond_2bb
    const/4 v14, 0x1

    :goto_2bc
    nop

    .line 902
    .local v14, "securityLevel":I
    :try_start_2bd
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v14}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v9

    .line 905
    .local v9, "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v10
    :try_end_2c7
    .catch Landroid/security/KeyStoreException; {:try_start_2bd .. :try_end_2c7} :catch_2d4

    .line 907
    .local v10, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    const/4 v11, 0x0

    move-object v12, v15

    move v13, v2

    move/from16 v16, v14

    .end local v14    # "securityLevel":I
    .local v16, "securityLevel":I
    move-object v14, v7

    :try_start_2cd
    invoke-virtual/range {v9 .. v14}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    :try_end_2d0
    .catch Landroid/security/KeyStoreException; {:try_start_2cd .. :try_end_2d0} :catch_2d2

    .line 911
    nop

    .line 912
    .end local v9    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .end local v10    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    return-void

    .line 909
    :catch_2d2
    move-exception v0

    goto :goto_2d7

    .end local v16    # "securityLevel":I
    .restart local v14    # "securityLevel":I
    :catch_2d4
    move-exception v0

    move/from16 v16, v14

    .line 910
    .end local v14    # "securityLevel":I
    .local v0, "e":Landroid/security/KeyStoreException;
    .restart local v16    # "securityLevel":I
    :goto_2d7
    new-instance v9, Ljava/security/KeyStoreException;

    const-string v10, "Failed to import secret key."

    invoke-direct {v9, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 848
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v2    # "flags":I
    .end local v16    # "securityLevel":I
    .local v9, "indCpa":Z
    .restart local v19    # "keymasterAlgorithm":I
    :cond_2df
    :try_start_2df
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Signature paddings not supported for symmetric keys"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v4    # "params":Landroid/security/keystore/KeyProtection;
    .end local v5    # "targetDomain":I
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    .end local v7    # "keyMaterial":[B
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljavax/crypto/SecretKey;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v0
    :try_end_2e7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2df .. :try_end_2e7} :catch_2e7
    .catch Ljava/lang/IllegalStateException; {:try_start_2df .. :try_end_2e7} :catch_2e7

    .line 889
    .end local v9    # "indCpa":Z
    .end local v19    # "keymasterAlgorithm":I
    .restart local v4    # "params":Landroid/security/keystore/KeyProtection;
    .restart local v5    # "targetDomain":I
    .restart local v6    # "keyExportFormat":Ljava/lang/String;
    .restart local v7    # "keyMaterial":[B
    .restart local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :catch_2e7
    move-exception v0

    .line 890
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 736
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    :cond_2ee
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    .end local v7    # "keyMaterial":[B
    :cond_2f6
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported secret key material export format: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_30f
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Only secret keys that export their key material are supported"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    .end local v6    # "keyExportFormat":Ljava/lang/String;
    :cond_317
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Protection parameters must be specified when importing a symmetric key"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 26
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Landroid/security/keystore/WrappedKeyEntry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 916
    move-object/from16 v1, p0

    const-string v2, "Failed to import wrapped key. Keystore error code: "

    if-nez p3, :cond_1ca

    .line 920
    const/16 v0, 0x20

    new-array v3, v0, [B

    .line 922
    .local v3, "maskingKey":[B
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getTransformation()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 924
    .local v4, "parts":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 926
    .local v12, "args":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const/4 v0, 0x0

    aget-object v13, v4, v0

    .line 927
    .local v13, "algorithm":Ljava/lang/String;
    const-string v5, "RSA"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1ab

    .line 928
    const v5, 0x10000002

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    array-length v5, v4

    if-le v5, v6, :cond_44

    .line 938
    aget-object v5, v4, v6

    .line 939
    .local v5, "mode":Ljava/lang/String;
    nop

    .line 941
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v7

    .line 939
    const v8, 0x20000004

    invoke-static {v8, v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    .end local v5    # "mode":Ljava/lang/String;
    :cond_44
    array-length v5, v4

    const/4 v7, 0x2

    if-le v5, v7, :cond_5a

    .line 946
    aget-object v5, v4, v7

    .line 947
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    .line 948
    .local v5, "padding":I
    if-eq v5, v6, :cond_5a

    .line 949
    const v8, 0x20000006

    invoke-static {v8, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    .end local v5    # "padding":I
    :cond_5a
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/security/keystore/KeyGenParameterSpec;

    .line 957
    .local v14, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 958
    nop

    .line 959
    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    .line 960
    .local v5, "digest":I
    if-eqz v5, :cond_7e

    .line 961
    const v8, 0x20000005

    invoke-static {v8, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    .end local v5    # "digest":I
    :cond_7e
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappingKeyAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v15

    .line 970
    .local v15, "wrappingkey":Landroid/system/keystore2/KeyDescriptor;
    const/4 v5, 0x0

    .line 972
    .local v5, "response":Landroid/system/keystore2/KeyEntryResponse;
    :try_start_87
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 973
    iget-object v8, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v8, v15}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v8
    :try_end_90
    .catch Landroid/security/KeyStoreException; {:try_start_87 .. :try_end_90} :catch_18d

    move-object v11, v8

    .line 977
    .end local v5    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v11, "response":Landroid/system/keystore2/KeyEntryResponse;
    nop

    .line 979
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v16

    .line 981
    .local v16, "wrappedKey":Landroid/system/keystore2/KeyDescriptor;
    new-instance v5, Landroid/security/KeyStoreSecurityLevel;

    iget-object v8, v11, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v5, v8}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    .line 983
    .local v5, "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v8

    const-class v9, Landroid/hardware/biometrics/BiometricManager;

    .line 984
    invoke-virtual {v8, v9}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Landroid/hardware/biometrics/BiometricManager;

    .line 986
    .local v17, "bm":Landroid/hardware/biometrics/BiometricManager;
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds()[J

    move-result-object v10

    .line 988
    .local v10, "biometricSids":[J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v8

    .line 990
    .local v9, "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    new-instance v8, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct {v8}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    .line 991
    .local v8, "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    iput v6, v8, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    .line 992
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    iput-wide v0, v8, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    .line 993
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    array-length v0, v10

    const/4 v1, 0x0

    :goto_c7
    if-ge v1, v0, :cond_e8

    aget-wide v6, v10, v1

    .line 996
    .local v6, "sid":J
    new-instance v20, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct/range {v20 .. v20}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    move-object/from16 v21, v20

    .line 997
    .local v21, "authSpec":Landroid/system/keystore2/AuthenticatorSpec;
    move/from16 v20, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v21

    const/4 v3, 0x2

    .end local v3    # "maskingKey":[B
    .end local v21    # "authSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .local v0, "authSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .local v18, "maskingKey":[B
    iput v3, v0, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    .line 998
    iput-wide v6, v0, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    .line 999
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    .end local v0    # "authSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v6    # "sid":J
    add-int/lit8 v1, v1, 0x1

    move v7, v3

    move-object/from16 v3, v18

    move/from16 v0, v20

    goto :goto_c7

    .line 1002
    .end local v18    # "maskingKey":[B
    .restart local v3    # "maskingKey":[B
    :cond_e8
    move-object/from16 v18, v3

    move v3, v7

    .end local v3    # "maskingKey":[B
    .restart local v18    # "maskingKey":[B
    array-length v0, v4

    if-le v0, v3, :cond_134

    .line 1003
    aget-object v0, v4, v3

    .line 1004
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v0

    .line 1005
    .local v0, "padding":I
    if-ne v0, v3, :cond_132

    iget-object v1, v11, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v1, :cond_132

    iget-object v1, v11, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    if-eqz v1, :cond_132

    .line 1008
    iget-object v1, v11, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    .line 1010
    .local v1, "keyCharacteristics":[Landroid/system/keystore2/Authorization;
    array-length v3, v1

    const/4 v6, 0x0

    :goto_106
    if-ge v6, v3, :cond_12d

    aget-object v7, v1, v6

    .line 1013
    .local v7, "authorization":Landroid/system/keystore2/Authorization;
    move/from16 v20, v0

    .end local v0    # "padding":I
    .local v20, "padding":I
    iget-object v0, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    move-object/from16 v21, v1

    .end local v1    # "keyCharacteristics":[Landroid/system/keystore2/Authorization;
    .local v21, "keyCharacteristics":[Landroid/system/keystore2/Authorization;
    const v1, 0x200000cb

    if-ne v0, v1, :cond_126

    .line 1018
    nop

    .line 1020
    const-string v0, "SHA-1"

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v0

    .line 1018
    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    goto :goto_134

    .line 1010
    .end local v7    # "authorization":Landroid/system/keystore2/Authorization;
    :cond_126
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v21

    goto :goto_106

    .end local v20    # "padding":I
    .end local v21    # "keyCharacteristics":[Landroid/system/keystore2/Authorization;
    .restart local v0    # "padding":I
    .restart local v1    # "keyCharacteristics":[Landroid/system/keystore2/Authorization;
    :cond_12d
    move/from16 v20, v0

    move-object/from16 v21, v1

    .end local v0    # "padding":I
    .end local v1    # "keyCharacteristics":[Landroid/system/keystore2/Authorization;
    .restart local v20    # "padding":I
    .restart local v21    # "keyCharacteristics":[Landroid/system/keystore2/Authorization;
    goto :goto_134

    .line 1005
    .end local v20    # "padding":I
    .end local v21    # "keyCharacteristics":[Landroid/system/keystore2/Authorization;
    .restart local v0    # "padding":I
    :cond_132
    move/from16 v20, v0

    .line 1029
    .end local v0    # "padding":I
    :cond_134
    :goto_134
    :try_start_134
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 1030
    nop

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappedKeyBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/system/keystore2/AuthenticatorSpec;

    .line 1035
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/system/keystore2/AuthenticatorSpec;
    :try_end_145
    .catch Landroid/security/KeyStoreException; {:try_start_134 .. :try_end_145} :catch_15b

    .line 1030
    const/4 v3, 0x0

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v19, v8

    .end local v8    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .local v19, "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    move-object v8, v0

    move-object/from16 v20, v9

    .end local v9    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .local v20, "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    move-object v9, v3

    move-object v3, v10

    .end local v10    # "biometricSids":[J
    .local v3, "biometricSids":[J
    move-object v10, v12

    move-object/from16 v21, v11

    .end local v11    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v21, "response":Landroid/system/keystore2/KeyEntryResponse;
    move-object v11, v1

    :try_start_154
    invoke-virtual/range {v5 .. v11}, Landroid/security/KeyStoreSecurityLevel;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    :try_end_157
    .catch Landroid/security/KeyStoreException; {:try_start_154 .. :try_end_157} :catch_159

    .line 1045
    nop

    .line 1046
    return-void

    .line 1036
    :catch_159
    move-exception v0

    goto :goto_163

    .end local v3    # "biometricSids":[J
    .end local v19    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v20    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .end local v21    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .restart local v8    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .restart local v9    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .restart local v10    # "biometricSids":[J
    .restart local v11    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :catch_15b
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object v3, v10

    move-object/from16 v21, v11

    .line 1037
    .end local v8    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v9    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .end local v10    # "biometricSids":[J
    .end local v11    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v0, "e":Landroid/security/KeyStoreException;
    .restart local v3    # "biometricSids":[J
    .restart local v19    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .restart local v20    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .restart local v21    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :goto_163
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1d2

    .line 1042
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1043
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1039
    :pswitch_185
    new-instance v1, Landroid/security/keystore/SecureKeyImportUnavailableException;

    const-string v2, "Could not import wrapped key"

    invoke-direct {v1, v2}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 974
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v16    # "wrappedKey":Landroid/system/keystore2/KeyDescriptor;
    .end local v17    # "bm":Landroid/hardware/biometrics/BiometricManager;
    .end local v18    # "maskingKey":[B
    .end local v19    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v20    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .end local v21    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v3, "maskingKey":[B
    .local v5, "response":Landroid/system/keystore2/KeyEntryResponse;
    :catch_18d
    move-exception v0

    move-object/from16 v18, v3

    .line 975
    .end local v3    # "maskingKey":[B
    .restart local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v18    # "maskingKey":[B
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 976
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 933
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v5    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .end local v14    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v15    # "wrappingkey":Landroid/system/keystore2/KeyDescriptor;
    .end local v18    # "maskingKey":[B
    .restart local v3    # "maskingKey":[B
    :cond_1ab
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Algorithm \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not supported for wrapping. Only RSA wrapping keys are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    .end local v3    # "maskingKey":[B
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v12    # "args":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v13    # "algorithm":Ljava/lang/String;
    :cond_1ca
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Protection parameters are specified inside wrapped keys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_1d2
    .packed-switch -0x64
        :pswitch_185
    .end packed-switch
.end method

.method static blacklist toCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p0, "bytes"    # [B

    .line 239
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 240
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 242
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_12
    move-exception v0

    .line 243
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificate in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist toCertificates([B)Ljava/util/Collection;
    .registers 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 251
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 252
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 254
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_10
    move-exception v0

    .line 255
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1128
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;-><init>(Landroid/security/keystore2/AndroidKeyStoreSpi;Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator-IA;)V

    return-object v0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1133
    if-eqz p1, :cond_c

    .line 1137
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 1134
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1101
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 1103
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :try_start_4
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 1104
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_c
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_c} :catch_d

    .line 1109
    goto :goto_15

    .line 1105
    :catch_d
    move-exception v1

    .line 1106
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_16

    .line 1110
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :goto_15
    return-void

    .line 1107
    .restart local v1    # "e":Landroid/security/KeyStoreException;
    :cond_16
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .line 217
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 219
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 220
    return-object v1

    .line 223
    :cond_8
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 224
    .local v2, "encodedCert":[B
    if-eqz v2, :cond_13

    .line 225
    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 228
    :cond_13
    iget-object v3, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v3, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 229
    if-eqz v2, :cond_1e

    .line 230
    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 234
    :cond_1e
    return-object v1
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 10
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 1186
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1187
    return-object v0

    .line 1189
    :cond_4
    const-string v1, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AndroidKeyStoreSpi"

    if-nez v1, :cond_18

    .line 1190
    const-string v1, "In engineGetCertificateAlias: only X.509 certificates are supported."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return-object v0

    .line 1195
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1
    :try_end_1c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_18 .. :try_end_1c} :catch_74

    .line 1199
    .local v1, "targetCertBytes":[B
    nop

    .line 1200
    if-nez v1, :cond_20

    .line 1201
    return-object v0

    .line 1204
    :cond_20
    const/4 v0, 0x0

    .line 1206
    .local v0, "keyDescriptors":[Landroid/system/keystore2/KeyDescriptor;
    :try_start_21
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1207
    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1208
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v4

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v5, v5

    .line 1207
    invoke-virtual {v3, v4, v5, v6}, Landroid/security/KeyStore2;->list(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2
    :try_end_31
    .catch Landroid/security/KeyStoreException; {:try_start_21 .. :try_end_31} :catch_33

    move-object v0, v2

    .line 1213
    goto :goto_39

    .line 1211
    :catch_33
    move-exception v3

    .line 1212
    .local v3, "e":Landroid/security/KeyStoreException;
    const-string v4, "Failed to get list of keystore entries."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1215
    .end local v3    # "e":Landroid/security/KeyStoreException;
    :goto_39
    const/4 v2, 0x0

    .line 1216
    .local v2, "caAlias":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_3c
    if-ge v4, v3, :cond_73

    aget-object v5, v0, v4

    .line 1217
    .local v5, "d":Landroid/system/keystore2/KeyDescriptor;
    iget-object v6, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v6

    .line 1218
    .local v6, "response":Landroid/system/keystore2/KeyEntryResponse;
    if-nez v6, :cond_49

    .line 1219
    goto :goto_70

    .line 1229
    :cond_49
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v7, :cond_5c

    .line 1230
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v7, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1231
    iget-object v3, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    return-object v3

    .line 1233
    :cond_5c
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v7, :cond_70

    if-nez v2, :cond_70

    .line 1234
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    invoke-static {v7, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1235
    iget-object v2, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 1216
    .end local v5    # "d":Landroid/system/keystore2/KeyDescriptor;
    .end local v6    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :cond_70
    :goto_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 1239
    :cond_73
    return-object v2

    .line 1196
    .end local v0    # "keyDescriptors":[Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "targetCertBytes":[B
    .end local v2    # "caAlias":Ljava/lang/String;
    :catch_74
    move-exception v1

    .line 1197
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v3, "While trying to get the alias for a certificate."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1198
    return-object v0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 11
    .param p1, "alias"    # Ljava/lang/String;

    .line 181
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 183
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    if-eqz v0, :cond_49

    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v2, :cond_e

    goto :goto_49

    .line 187
    :cond_e
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 188
    .local v2, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_19

    .line 189
    return-object v1

    .line 194
    :cond_19
    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 196
    .local v1, "caBytes":[B
    const/4 v3, 0x1

    if-eqz v1, :cond_43

    .line 197
    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object v4

    .line 199
    .local v4, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v5, v3

    new-array v3, v5, [Ljava/security/cert/Certificate;

    .line 201
    .local v3, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 202
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v6, 0x1

    .line 203
    .local v6, "i":I
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 204
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;

    aput-object v8, v3, v6

    move v6, v7

    goto :goto_30

    .line 206
    .end local v4    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "i":I
    :cond_42
    goto :goto_45

    .line 207
    .end local v3    # "caList":[Ljava/security/cert/Certificate;
    :cond_43
    new-array v3, v3, [Ljava/security/cert/Certificate;

    .line 210
    .restart local v3    # "caList":[Ljava/security/cert/Certificate;
    :goto_45
    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 212
    invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3

    .line 184
    .end local v1    # "caBytes":[B
    .end local v2    # "leaf":Ljava/security/cert/X509Certificate;
    .end local v3    # "caList":[Ljava/security/cert/Certificate;
    :cond_49
    :goto_49
    return-object v1
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;

    .line 271
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 273
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 274
    return-object v1

    .line 277
    :cond_8
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v2, v2, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    .line 278
    return-object v1

    .line 280
    :cond_13
    new-instance v1, Ljava/util/Date;

    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v2, v2, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    invoke-static {v0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0
    :try_end_8
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_8} :catch_1f
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 128
    :catch_9
    move-exception v0

    .line 129
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 130
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Landroid/security/KeyStoreException;

    if-eqz v2, :cond_1e

    .line 131
    move-object v2, v1

    check-cast v2, Landroid/security/KeyStoreException;

    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1e

    .line 133
    const/4 v2, 0x0

    return-object v2

    .line 136
    :cond_1e
    throw v0

    .line 126
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1f
    move-exception v0

    .line 127
    .local v0, "e":Landroid/security/keystore/KeyPermanentlyInvalidatedException;
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1171
    if-eqz p1, :cond_16

    .line 1174
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 1179
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    if-eqz v0, :cond_14

    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1

    .line 1172
    .end local v0    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 1154
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1262
    if-nez p1, :cond_17

    .line 1266
    if-nez p2, :cond_e

    .line 1271
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1272
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1273
    return-void

    .line 1267
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 6
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1278
    const/4 v0, -0x1

    .line 1279
    .local v0, "namespace":I
    if-eqz p1, :cond_2c

    .line 1280
    instance-of v1, p1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    if-eqz v1, :cond_f

    .line 1281
    move-object v1, p1

    check-cast v1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->getNamespace()I

    move-result v0

    goto :goto_2c

    .line 1283
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported param type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1284
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1287
    :cond_2c
    :goto_2c
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1288
    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1289
    return-void
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1073
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1078
    if-eqz p2, :cond_2c

    .line 1084
    :try_start_8
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_c} :catch_25

    .line 1087
    .local v0, "encoded":[B
    nop

    .line 1090
    :try_start_d
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 1091
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_1a
    .catch Landroid/security/KeyStoreException; {:try_start_d .. :try_end_1a} :catch_1c

    .line 1096
    nop

    .line 1097
    return-void

    .line 1094
    :catch_1c
    move-exception v1

    .line 1095
    .local v1, "e":Landroid/security/KeyStoreException;
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Couldn\'t insert certificate."

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1085
    .end local v0    # "encoded":[B
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :catch_25
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1079
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cert == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_34
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Entry exists and is not a trusted certificate"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1294
    if-eqz p2, :cond_5b

    .line 1298
    instance-of v0, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v0, :cond_14

    .line 1299
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 1305
    .local v0, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v0}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1307
    return-void

    .line 1310
    .end local v0    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_14
    instance-of v0, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_27

    .line 1311
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 1312
    .local v0, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1313
    .end local v0    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    goto :goto_41

    :cond_27
    instance-of v0, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v0, :cond_36

    .line 1314
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    .line 1315
    .local v0, "secE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1316
    .end local v0    # "secE":Ljava/security/KeyStore$SecretKeyEntry;
    goto :goto_41

    :cond_36
    instance-of v0, p2, Landroid/security/keystore/WrappedKeyEntry;

    if-eqz v0, :cond_42

    .line 1317
    move-object v0, p2

    check-cast v0, Landroid/security/keystore/WrappedKeyEntry;

    .line 1318
    .local v0, "wke":Landroid/security/keystore/WrappedKeyEntry;
    invoke-direct {p0, p1, v0, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1319
    .end local v0    # "wke":Landroid/security/keystore/WrappedKeyEntry;
    nop

    .line 1324
    :goto_41
    return-void

    .line 1320
    :cond_42
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry must be a PrivateKeyEntry, SecretKeyEntry, WrappedKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_5b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entry == null"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 286
    if-eqz p3, :cond_e

    array-length v0, p3

    if-gtz v0, :cond_6

    goto :goto_e

    .line 287
    :cond_6
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_e
    :goto_e
    instance-of v0, p2, Ljava/security/PrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 291
    move-object v0, p2

    check-cast v0, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, v0, p4, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_24

    .line 292
    :cond_1a
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_25

    .line 293
    move-object v0, p2

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 297
    :goto_24
    return-void

    .line 295
    :cond_25
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only PrivateKey and SecretKey are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userKey"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1051
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSize()I
    .registers 5

    .line 1142
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1143
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1144
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    .line 1143
    invoke-virtual {v0, v1, v2, v3}, Landroid/security/KeyStore2;->getNumberOfEntries(IJ)I

    move-result v0
    :try_end_10
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 1147
    :catch_11
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/security/KeyStoreException;
    const-string v1, "AndroidKeyStoreSpi"

    const-string v2, "Failed to get the number of keystore entries."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist initForTesting(Landroid/security/KeyStore2;)V
    .registers 3
    .param p1, "keystore"    # Landroid/security/KeyStore2;

    .line 1249
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1250
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1251
    return-void
.end method
