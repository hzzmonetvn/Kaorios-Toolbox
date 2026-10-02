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

    .line 109
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 114
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

    .line 647
    iget-object v0, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 657
    :cond_19
    return-void

    .line 650
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

    .line 653
    if-ne p1, v1, :cond_6b

    .line 654
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

    .line 1052
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1053
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    .line 1052
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/security/KeyStore2;->listBatch(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0
    :try_end_d
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 1057
    :catch_e
    move-exception v0

    .line 1058
    .local v0, "e":Landroid/security/KeyStoreException;
    const-string v1, "AndroidKeyStoreSpi"

    const-string v2, "Failed to list keystore entries."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/system/keystore2/KeyDescriptor;

    return-object v1
.end method

.method private blacklist getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .line 159
    if-eqz p1, :cond_1e

    .line 163
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 166
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :try_start_6
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1
    :try_end_c
    .catch Landroid/security/KeyStoreException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v1

    .line 167
    :catch_d
    move-exception v1

    .line 168
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1c

    .line 169
    const-string v2, "AndroidKeyStoreSpi"

    const-string v3, "Could not get key metadata from Keystore."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_1c
    const/4 v2, 0x0

    return-object v2

    .line 160
    .end local v0    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getKeymasterEcCurve(Ljava/security/PrivateKey;)I
    .registers 5
    .param p1, "key"    # Ljava/security/PrivateKey;

    .line 611
    instance-of v0, p1, Ljava/security/interfaces/ECKey;

    if-eqz v0, :cond_17

    .line 612
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 613
    .local v0, "param":Ljava/security/spec/ECParameterSpec;
    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore2/KeymasterUtils;->getKeymasterEcCurve(Ljava/lang/String;)I

    move-result v1

    .line 614
    .local v1, "kmECCurve":I
    if-ltz v1, :cond_16

    .line 615
    return v1

    .line 617
    .end local v0    # "param":Ljava/security/spec/ECParameterSpec;
    .end local v1    # "kmECCurve":I
    :cond_16
    goto :goto_4e

    :cond_17
    instance-of v0, p1, Ljava/security/interfaces/XECKey;

    const/4 v1, 0x4

    if-eqz v0, :cond_2d

    .line 618
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/XECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/XECPrivateKey;->getParams()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 619
    .local v0, "param":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v2, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 620
    return v1

    .line 622
    .end local v0    # "param":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_2c
    goto :goto_4e

    :cond_2d
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XDH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 625
    return v1

    .line 626
    :cond_3a
    instance-of v0, p1, Ljava/security/interfaces/EdECKey;

    if-eqz v0, :cond_4e

    .line 627
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/EdECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/EdECPrivateKey;->getParams()Ljava/security/spec/NamedParameterSpec;

    move-result-object v0

    .line 628
    .restart local v0    # "param":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v2, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 629
    return v1

    .line 632
    .end local v0    # "param":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4e
    :goto_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    .line 288
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 291
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 296
    .local v1, "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const-string v3, "NONE"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_67

    .line 303
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_28
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 304
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xf

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 311
    .restart local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const-string v3, "NONE"

    const-string v4, "MD5"

    const-string v5, "SHA-1"

    const-string v6, "SHA-224"

    const-string v7, "SHA-256"

    const-string v8, "SHA-384"

    const-string v9, "SHA-512"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 321
    const-string v3, "PKCS1Padding"

    const-string v4, "OAEPPadding"

    const-string v5, "NoPadding"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 325
    const-string v3, "PKCS1"

    const-string v4, "PSS"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 330
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 334
    :goto_67
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 336
    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    return-object v2

    .line 332
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

.method private blacklist getTargetDomain()I
    .registers 3

    .line 154
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 155
    const/4 v0, 0x0

    goto :goto_8

    .line 156
    :cond_7
    const/4 v0, 0x2

    .line 154
    :goto_8
    return v0
.end method

.method private blacklist isKeyEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1094
    if-eqz p1, :cond_10

    .line 1098
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 1101
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

    .line 1095
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

    .line 482
    nop

    .line 484
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v0

    .line 482
    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method static synthetic blacklist lambda$setSecretKeyEntry$1(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 4
    .param p0, "importArgs"    # Ljava/util/List;
    .param p1, "purpose"    # Ljava/lang/Integer;

    .line 773
    nop

    .line 775
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v0

    .line 773
    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    return-void
.end method

.method private blacklist makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 145
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 146
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 147
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 148
    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 149
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 150
    return-object v0
.end method

.method private blacklist setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 32
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p4, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 341
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v0, 0x1

    .line 342
    .local v0, "securitylevel":I
    const/4 v5, 0x0

    .line 344
    .local v5, "flags":I
    if-nez v4, :cond_14

    .line 345
    invoke-static/range {p2 .. p2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v6

    move v12, v5

    move-object v13, v6

    move v5, v0

    .local v6, "spec":Landroid/security/keystore/KeyProtection;
    goto :goto_40

    .line 346
    .end local v6    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_14
    instance-of v6, v4, Landroid/security/KeyStoreParameter;

    if-eqz v6, :cond_23

    .line 347
    invoke-static/range {p2 .. p2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v6

    .line 348
    .restart local v6    # "spec":Landroid/security/keystore/KeyProtection;
    move-object v7, v4

    check-cast v7, Landroid/security/KeyStoreParameter;

    .line 349
    move v12, v5

    move-object v13, v6

    move v5, v0

    goto :goto_40

    .end local v6    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_23
    instance-of v6, v4, Landroid/security/keystore/KeyProtection;

    if-eqz v6, :cond_3c5

    .line 350
    move-object v6, v4

    check-cast v6, Landroid/security/keystore/KeyProtection;

    .line 351
    .restart local v6    # "spec":Landroid/security/keystore/KeyProtection;
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 357
    or-int/lit8 v5, v5, 0x1

    .line 361
    :cond_32
    invoke-virtual {v6}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 362
    const/4 v0, 0x2

    move v12, v5

    move-object v13, v6

    move v5, v0

    goto :goto_40

    .line 361
    :cond_3d
    move v12, v5

    move-object v13, v6

    move v5, v0

    .line 372
    .end local v0    # "securitylevel":I
    .end local v6    # "spec":Landroid/security/keystore/KeyProtection;
    .local v5, "securitylevel":I
    .local v12, "flags":I
    .local v13, "spec":Landroid/security/keystore/KeyProtection;
    :goto_40
    if-eqz v3, :cond_3bd

    array-length v0, v3

    if-eqz v0, :cond_3bd

    .line 377
    array-length v0, v3

    new-array v14, v0, [Ljava/security/cert/X509Certificate;

    .line 378
    .local v14, "x509chain":[Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_49
    array-length v6, v3

    if-ge v0, v6, :cond_99

    .line 379
    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "X.509"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Certificates must be in X.509 format: invalid cert #"

    if-eqz v6, :cond_82

    .line 384
    aget-object v6, v3, v0

    instance-of v6, v6, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_6b

    .line 389
    aget-object v6, v3, v0

    check-cast v6, Ljava/security/cert/X509Certificate;

    aput-object v6, v14, v0

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 385
    :cond_6b
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 380
    :cond_82
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 394
    .end local v0    # "i":I
    :cond_99
    const/4 v0, 0x0

    :try_start_9a
    aget-object v6, v14, v0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6
    :try_end_a0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9a .. :try_end_a0} :catch_3b4

    move-object v15, v6

    .line 397
    .local v15, "userCertBytes":[B
    nop

    .line 405
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_f6

    .line 410
    array-length v6, v14

    sub-int/2addr v6, v7

    new-array v6, v6, [[B

    .line 411
    .local v6, "certsBytes":[[B
    const/4 v8, 0x0

    .line 412
    .local v8, "totalCertLength":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_ac
    array-length v10, v6

    if-ge v9, v10, :cond_db

    .line 414
    add-int/lit8 v10, v9, 0x1

    :try_start_b1
    aget-object v10, v14, v10

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v10

    aput-object v10, v6, v9

    .line 415
    aget-object v10, v6, v9

    array-length v10, v10
    :try_end_bc
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_b1 .. :try_end_bc} :catch_c1

    add-int/2addr v8, v10

    .line 418
    nop

    .line 412
    add-int/lit8 v9, v9, 0x1

    goto :goto_ac

    .line 416
    :catch_c1
    move-exception v0

    .line 417
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v7, Ljava/security/KeyStoreException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to encode certificate #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 425
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v9    # "i":I
    :cond_db
    new-array v9, v8, [B

    .line 426
    .local v9, "chainBytes":[B
    const/4 v10, 0x0

    .line 427
    .local v10, "outputOffset":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_df
    array-length v7, v6

    if-ge v11, v7, :cond_f4

    .line 428
    aget-object v7, v6, v11

    array-length v7, v7

    .line 429
    .local v7, "certLength":I
    aget-object v3, v6, v11

    invoke-static {v3, v0, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    add-int/2addr v10, v7

    .line 431
    const/4 v3, 0x0

    aput-object v3, v6, v11

    .line 427
    .end local v7    # "certLength":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p3

    const/4 v7, 0x1

    goto :goto_df

    .line 433
    .end local v6    # "certsBytes":[[B
    .end local v8    # "totalCertLength":I
    .end local v10    # "outputOffset":I
    .end local v11    # "i":I
    :cond_f4
    move-object v3, v9

    goto :goto_f8

    .line 434
    .end local v9    # "chainBytes":[B
    :cond_f6
    const/4 v9, 0x0

    move-object v3, v9

    .line 437
    .local v3, "chainBytes":[B
    :goto_f8
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v11

    .line 441
    .local v11, "targetDomain":I
    instance-of v6, v2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    const-string v10, "Failed to store certificate and certificate chain"

    if-eqz v6, :cond_125

    .line 442
    move-object v6, v2

    check-cast v6, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 443
    .local v6, "ksKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    invoke-virtual {v6}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v7

    .line 446
    .local v7, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v9, p1

    invoke-static {v9, v11, v0, v7}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    .line 449
    :try_start_110
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    move-object v8, v2

    check-cast v8, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 450
    invoke-virtual {v8}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v8

    .line 449
    invoke-virtual {v0, v8, v15, v3}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_11c
    .catch Landroid/security/KeyStoreException; {:try_start_110 .. :try_end_11c} :catch_11e

    .line 454
    nop

    .line 455
    return-void

    .line 452
    :catch_11e
    move-exception v0

    .line 453
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v8, Ljava/security/KeyStoreException;

    invoke-direct {v8, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 459
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v6    # "ksKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    .end local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :cond_125
    move-object/from16 v9, p1

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    .line 460
    .local v8, "keyFormat":Ljava/lang/String;
    if-eqz v8, :cond_392

    const-string v6, "PKCS#8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_392

    .line 468
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v17

    .line 469
    .local v17, "pkcs8EncodedPrivateKeyBytes":[B
    if-eqz v17, :cond_38a

    .line 473
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v6

    .line 476
    .local v7, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    nop

    .line 479
    :try_start_142
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v6

    .line 476
    const v0, 0x10000002

    invoke-static {v0, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v0

    new-instance v6, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;

    invoke-direct {v6, v7}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v0, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    .line 487
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v0
    :try_end_164
    .catch Ljava/lang/IllegalArgumentException; {:try_start_142 .. :try_end_164} :catch_37f
    .catch Ljava/lang/IllegalStateException; {:try_start_142 .. :try_end_164} :catch_37f

    if-eqz v0, :cond_192

    .line 488
    :try_start_166
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v4, 0x0

    :goto_16c
    if-ge v4, v6, :cond_192

    aget-object v18, v0, v4

    .line 489
    .local v18, "digest":Ljava/lang/String;
    nop

    .line 491
    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v0

    .line 489
    move/from16 v20, v6

    const v6, 0x20000005

    invoke-static {v6, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_183
    .catch Ljava/lang/IllegalArgumentException; {:try_start_166 .. :try_end_183} :catch_18b
    .catch Ljava/lang/IllegalStateException; {:try_start_166 .. :try_end_183} :catch_18b

    .line 488
    nop

    .end local v18    # "digest":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v19

    move/from16 v6, v20

    goto :goto_16c

    .line 585
    :catch_18b
    move-exception v0

    move-object v4, v7

    move-object v2, v8

    move/from16 v16, v11

    goto/16 :goto_384

    .line 495
    :cond_192
    :try_start_192
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0
    :try_end_197
    .catch Ljava/lang/IllegalArgumentException; {:try_start_192 .. :try_end_197} :catch_37f
    .catch Ljava/lang/IllegalStateException; {:try_start_192 .. :try_end_197} :catch_37f

    const/4 v6, 0x0

    :goto_198
    if-ge v6, v4, :cond_1b7

    :try_start_19a
    aget-object v18, v0, v6

    .line 496
    .local v18, "blockMode":Ljava/lang/String;
    nop

    .line 498
    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v0

    .line 496
    move/from16 v20, v4

    const v4, 0x20000004

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19a .. :try_end_1af} :catch_18b
    .catch Ljava/lang/IllegalStateException; {:try_start_19a .. :try_end_1af} :catch_18b

    .line 495
    nop

    .end local v18    # "blockMode":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v4, v20

    goto :goto_198

    .line 501
    :cond_1b7
    nop

    .line 503
    :try_start_1b8
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    .line 504
    .local v0, "keymasterEncryptionPaddings":[I
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v4
    :try_end_1c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b8 .. :try_end_1c4} :catch_37f
    .catch Ljava/lang/IllegalStateException; {:try_start_1b8 .. :try_end_1c4} :catch_37f

    const/4 v6, 0x1

    and-int/2addr v4, v6

    if-eqz v4, :cond_201

    .line 505
    :try_start_1c8
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v4

    if-eqz v4, :cond_201

    .line 506
    array-length v4, v0

    const/4 v6, 0x0

    :goto_1d0
    if-ge v6, v4, :cond_201

    aget v16, v0, v6

    .line 507
    .local v16, "keymasterPadding":I
    nop

    .line 508
    invoke-static/range {v16 .. v16}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v18

    if-eqz v18, :cond_1de

    .line 506
    .end local v16    # "keymasterPadding":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d0

    .line 510
    .restart local v16    # "keymasterPadding":I
    :cond_1de
    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ". See KeyProtection documentation."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .end local v3    # "chainBytes":[B
    .end local v5    # "securitylevel":I
    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v8    # "keyFormat":Ljava/lang/String;
    .end local v11    # "targetDomain":I
    .end local v12    # "flags":I
    .end local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .end local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v15    # "userCertBytes":[B
    .end local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljava/security/PrivateKey;
    .end local p3    # "chain":[Ljava/security/cert/Certificate;
    .end local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v4
    :try_end_201
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c8 .. :try_end_201} :catch_18b
    .catch Ljava/lang/IllegalStateException; {:try_start_1c8 .. :try_end_201} :catch_18b

    .line 519
    .end local v16    # "keymasterPadding":I
    .restart local v3    # "chainBytes":[B
    .restart local v5    # "securitylevel":I
    .restart local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v8    # "keyFormat":Ljava/lang/String;
    .restart local v11    # "targetDomain":I
    .restart local v12    # "flags":I
    .restart local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .restart local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v15    # "userCertBytes":[B
    .restart local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljava/security/PrivateKey;
    .restart local p3    # "chain":[Ljava/security/cert/Certificate;
    .restart local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_201
    :try_start_201
    array-length v4, v0
    :try_end_202
    .catch Ljava/lang/IllegalArgumentException; {:try_start_201 .. :try_end_202} :catch_37f
    .catch Ljava/lang/IllegalStateException; {:try_start_201 .. :try_end_202} :catch_37f

    const/4 v6, 0x0

    :goto_203
    move-object/from16 v16, v8

    .end local v8    # "keyFormat":Ljava/lang/String;
    .local v16, "keyFormat":Ljava/lang/String;
    const v8, 0x20000006

    if-ge v6, v4, :cond_295

    :try_start_20a
    aget v18, v0, v6

    move/from16 v19, v18

    .line 520
    .local v19, "padding":I
    move-object/from16 v18, v0

    move/from16 v0, v19

    .end local v19    # "padding":I
    .local v0, "padding":I
    .local v18, "keymasterEncryptionPaddings":[I
    invoke-static {v8, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    const/4 v8, 0x2

    if-ne v0, v8, :cond_275

    .line 525
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v8

    if-eqz v8, :cond_26c

    .line 526
    const/4 v8, 0x0

    .line 527
    .local v8, "hasDefaultMgf1DigestBeenAdded":Z
    move/from16 v19, v0

    .end local v0    # "padding":I
    .restart local v19    # "padding":I
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v0

    move/from16 v20, v4

    array-length v4, v0
    :try_end_22c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20a .. :try_end_22c} :catch_28d
    .catch Ljava/lang/IllegalStateException; {:try_start_20a .. :try_end_22c} :catch_28d

    const/4 v9, 0x0

    :goto_22d
    move-object/from16 v21, v10

    const-string v10, "SHA-1"

    move/from16 v22, v11

    .end local v11    # "targetDomain":I
    .local v22, "targetDomain":I
    if-ge v9, v4, :cond_25a

    :try_start_235
    aget-object v23, v0, v9

    move-object/from16 v24, v23

    .line 528
    .local v24, "digest":Ljava/lang/String;
    nop

    .line 530
    invoke-static/range {v24 .. v24}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v11

    .line 528
    move-object/from16 v25, v0

    const v0, 0x200000cb

    invoke-static {v0, v11}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    move-object/from16 v0, v24

    .end local v24    # "digest":Ljava/lang/String;
    .local v0, "digest":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    .line 527
    .end local v0    # "digest":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v21

    move/from16 v11, v22

    move-object/from16 v0, v25

    goto :goto_22d

    .line 538
    :cond_25a
    if-nez v8, :cond_27d

    .line 539
    nop

    .line 541
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v0

    .line 539
    const v4, 0x200000cb

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_235 .. :try_end_26b} :catch_2b5
    .catch Ljava/lang/IllegalStateException; {:try_start_235 .. :try_end_26b} :catch_2b5

    goto :goto_27d

    .line 525
    .end local v8    # "hasDefaultMgf1DigestBeenAdded":Z
    .end local v19    # "padding":I
    .end local v22    # "targetDomain":I
    .local v0, "padding":I
    .restart local v11    # "targetDomain":I
    :cond_26c
    move/from16 v19, v0

    move/from16 v20, v4

    move-object/from16 v21, v10

    move/from16 v22, v11

    .end local v0    # "padding":I
    .end local v11    # "targetDomain":I
    .restart local v19    # "padding":I
    .restart local v22    # "targetDomain":I
    goto :goto_27d

    .line 524
    .end local v19    # "padding":I
    .end local v22    # "targetDomain":I
    .restart local v0    # "padding":I
    .restart local v11    # "targetDomain":I
    :cond_275
    move/from16 v19, v0

    move/from16 v20, v4

    move-object/from16 v21, v10

    move/from16 v22, v11

    .line 519
    .end local v0    # "padding":I
    .end local v11    # "targetDomain":I
    .restart local v22    # "targetDomain":I
    :cond_27d
    :goto_27d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v9, p1

    move-object/from16 v8, v16

    move-object/from16 v0, v18

    move/from16 v4, v20

    move-object/from16 v10, v21

    move/from16 v11, v22

    goto/16 :goto_203

    .line 585
    .end local v18    # "keymasterEncryptionPaddings":[I
    .end local v22    # "targetDomain":I
    .restart local v11    # "targetDomain":I
    :catch_28d
    move-exception v0

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v16, v11

    .end local v11    # "targetDomain":I
    .restart local v22    # "targetDomain":I
    goto/16 :goto_384

    .line 547
    .end local v22    # "targetDomain":I
    .local v0, "keymasterEncryptionPaddings":[I
    .restart local v11    # "targetDomain":I
    :cond_295
    move-object/from16 v18, v0

    move-object/from16 v21, v10

    move/from16 v22, v11

    .end local v0    # "keymasterEncryptionPaddings":[I
    .end local v11    # "targetDomain":I
    .restart local v18    # "keymasterEncryptionPaddings":[I
    .restart local v22    # "targetDomain":I
    :try_start_29b
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0
    :try_end_2a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29b .. :try_end_2a0} :catch_378
    .catch Ljava/lang/IllegalStateException; {:try_start_29b .. :try_end_2a0} :catch_378

    const/4 v6, 0x0

    :goto_2a1
    if-ge v6, v4, :cond_2bd

    :try_start_2a3
    aget-object v9, v0, v6

    .line 548
    .local v9, "padding":Ljava/lang/String;
    nop

    .line 550
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$SignaturePadding;->toKeymaster(Ljava/lang/String;)I

    move-result v10

    .line 548
    invoke-static {v8, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a3 .. :try_end_2b1} :catch_2b5
    .catch Ljava/lang/IllegalStateException; {:try_start_2a3 .. :try_end_2b1} :catch_2b5

    .line 547
    nop

    .end local v9    # "padding":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a1

    .line 585
    .end local v18    # "keymasterEncryptionPaddings":[I
    :catch_2b5
    move-exception v0

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v16, v22

    goto/16 :goto_384

    .line 553
    .restart local v18    # "keymasterEncryptionPaddings":[I
    :cond_2bd
    :try_start_2bd
    invoke-static {v7, v13}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 554
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0
    :try_end_2c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2bd .. :try_end_2c4} :catch_378
    .catch Ljava/lang/IllegalStateException; {:try_start_2bd .. :try_end_2c4} :catch_378

    if-eqz v0, :cond_2d5

    .line 555
    nop

    .line 556
    :try_start_2c7
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    .line 555
    const v4, 0x60000190

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c7 .. :try_end_2d5} :catch_2b5
    .catch Ljava/lang/IllegalStateException; {:try_start_2c7 .. :try_end_2d5} :catch_2b5

    .line 559
    :cond_2d5
    :try_start_2d5
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0
    :try_end_2d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d5 .. :try_end_2d9} :catch_378
    .catch Ljava/lang/IllegalStateException; {:try_start_2d5 .. :try_end_2d9} :catch_378

    if-eqz v0, :cond_2ea

    .line 560
    nop

    .line 562
    :try_start_2dc
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    .line 560
    const v4, 0x60000191

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2ea
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2dc .. :try_end_2ea} :catch_2b5
    .catch Ljava/lang/IllegalStateException; {:try_start_2dc .. :try_end_2ea} :catch_2b5

    .line 565
    :cond_2ea
    :try_start_2ea
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0
    :try_end_2ee
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ea .. :try_end_2ee} :catch_378
    .catch Ljava/lang/IllegalStateException; {:try_start_2ea .. :try_end_2ee} :catch_378

    if-eqz v0, :cond_2ff

    .line 566
    nop

    .line 568
    :try_start_2f1
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    .line 566
    const v4, 0x60000192

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2ff
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f1 .. :try_end_2ff} :catch_2b5
    .catch Ljava/lang/IllegalStateException; {:try_start_2f1 .. :try_end_2ff} :catch_2b5

    .line 571
    :cond_2ff
    :try_start_2ff
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0
    :try_end_303
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ff .. :try_end_303} :catch_378
    .catch Ljava/lang/IllegalStateException; {:try_start_2ff .. :try_end_303} :catch_378

    const/4 v4, -0x1

    if-eq v0, v4, :cond_315

    .line 572
    nop

    .line 574
    :try_start_307
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0

    .line 572
    const v4, 0x30000195

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_315
    .catch Ljava/lang/IllegalArgumentException; {:try_start_307 .. :try_end_315} :catch_2b5
    .catch Ljava/lang/IllegalStateException; {:try_start_307 .. :try_end_315} :catch_2b5

    .line 577
    :cond_315
    nop

    .line 579
    :try_start_316
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v0
    :try_end_31e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_316 .. :try_end_31e} :catch_378
    .catch Ljava/lang/IllegalStateException; {:try_start_316 .. :try_end_31e} :catch_378

    const/4 v4, 0x3

    if-ne v4, v0, :cond_330

    .line 580
    nop

    .line 582
    :try_start_322
    invoke-direct {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeymasterEcCurve(Ljava/security/PrivateKey;)I

    move-result v0

    .line 580
    const v4, 0x1000000a

    invoke-static {v4, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_330
    .catch Ljava/lang/IllegalArgumentException; {:try_start_322 .. :try_end_330} :catch_2b5
    .catch Ljava/lang/IllegalStateException; {:try_start_322 .. :try_end_330} :catch_2b5

    .line 587
    .end local v18    # "keymasterEncryptionPaddings":[I
    :cond_330
    nop

    .line 590
    :try_start_331
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v5}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    .line 593
    .local v6, "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0
    :try_end_33b
    .catch Landroid/security/KeyStoreException; {:try_start_331 .. :try_end_33b} :catch_36a

    move-object v4, v7

    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v4, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    move-object v7, v0

    .line 595
    .local v7, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    const/4 v8, 0x0

    move-object/from16 v11, v16

    .end local v16    # "keyFormat":Ljava/lang/String;
    .local v11, "keyFormat":Ljava/lang/String;
    move-object v9, v4

    move-object/from16 v26, v21

    move v10, v12

    move-object v2, v11

    move/from16 v16, v22

    .end local v11    # "keyFormat":Ljava/lang/String;
    .end local v22    # "targetDomain":I
    .local v2, "keyFormat":Ljava/lang/String;
    .local v16, "targetDomain":I
    move-object/from16 v11, v17

    :try_start_349
    invoke-virtual/range {v6 .. v11}, Landroid/security/KeyStoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0
    :try_end_34d
    .catch Landroid/security/KeyStoreException; {:try_start_349 .. :try_end_34d} :catch_368

    move-object v8, v0

    .line 599
    .local v8, "metadata":Landroid/system/keystore2/KeyMetadata;
    :try_start_34e
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v9, v8, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v0, v9, v15, v3}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_355
    .catch Landroid/security/KeyStoreException; {:try_start_34e .. :try_end_355} :catch_358

    .line 603
    nop

    .line 607
    .end local v6    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .end local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v8    # "metadata":Landroid/system/keystore2/KeyMetadata;
    nop

    .line 608
    return-void

    .line 600
    .restart local v6    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .restart local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v8    # "metadata":Landroid/system/keystore2/KeyMetadata;
    :catch_358
    move-exception v0

    .line 601
    .local v0, "e":Landroid/security/KeyStoreException;
    :try_start_359
    iget-object v9, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget-object v10, v8, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    invoke-virtual {v9, v10}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 602
    new-instance v9, Ljava/security/KeyStoreException;

    move-object/from16 v10, v26

    invoke-direct {v9, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "keyFormat":Ljava/lang/String;
    .end local v3    # "chainBytes":[B
    .end local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v5    # "securitylevel":I
    .end local v12    # "flags":I
    .end local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .end local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .end local v15    # "userCertBytes":[B
    .end local v16    # "targetDomain":I
    .end local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":Ljava/security/PrivateKey;
    .end local p3    # "chain":[Ljava/security/cert/Certificate;
    .end local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    throw v9
    :try_end_368
    .catch Landroid/security/KeyStoreException; {:try_start_359 .. :try_end_368} :catch_368

    .line 605
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v6    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .end local v7    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v8    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .restart local v2    # "keyFormat":Ljava/lang/String;
    .restart local v3    # "chainBytes":[B
    .restart local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v5    # "securitylevel":I
    .restart local v12    # "flags":I
    .restart local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .restart local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    .restart local v15    # "userCertBytes":[B
    .restart local v16    # "targetDomain":I
    .restart local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSpi;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "key":Ljava/security/PrivateKey;
    .restart local p3    # "chain":[Ljava/security/cert/Certificate;
    .restart local p4    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :catch_368
    move-exception v0

    goto :goto_370

    .end local v2    # "keyFormat":Ljava/lang/String;
    .end local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v7, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v16, "keyFormat":Ljava/lang/String;
    .restart local v22    # "targetDomain":I
    :catch_36a
    move-exception v0

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v16, v22

    .line 606
    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v22    # "targetDomain":I
    .restart local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v2    # "keyFormat":Ljava/lang/String;
    .restart local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v16, "targetDomain":I
    :goto_370
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "Failed to store private key"

    invoke-direct {v6, v7, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 585
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v2    # "keyFormat":Ljava/lang/String;
    .end local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v16, "keyFormat":Ljava/lang/String;
    .restart local v22    # "targetDomain":I
    :catch_378
    move-exception v0

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v16, v22

    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v22    # "targetDomain":I
    .restart local v2    # "keyFormat":Ljava/lang/String;
    .restart local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v16, "targetDomain":I
    goto :goto_384

    .end local v2    # "keyFormat":Ljava/lang/String;
    .end local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v16    # "targetDomain":I
    .restart local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v8, "keyFormat":Ljava/lang/String;
    .local v11, "targetDomain":I
    :catch_37f
    move-exception v0

    move-object v4, v7

    move-object v2, v8

    move/from16 v16, v11

    .line 586
    .end local v7    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v8    # "keyFormat":Ljava/lang/String;
    .end local v11    # "targetDomain":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v2    # "keyFormat":Ljava/lang/String;
    .restart local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .restart local v16    # "targetDomain":I
    :goto_384
    new-instance v6, Ljava/security/KeyStoreException;

    invoke-direct {v6, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 470
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "keyFormat":Ljava/lang/String;
    .end local v4    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v16    # "targetDomain":I
    .restart local v8    # "keyFormat":Ljava/lang/String;
    .restart local v11    # "targetDomain":I
    :cond_38a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v4, "Private key did not export any key material"

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    .end local v17    # "pkcs8EncodedPrivateKeyBytes":[B
    :cond_392
    move-object v2, v8

    move/from16 v16, v11

    .line 461
    .end local v8    # "keyFormat":Ljava/lang/String;
    .end local v11    # "targetDomain":I
    .restart local v2    # "keyFormat":Ljava/lang/String;
    .restart local v16    # "targetDomain":I
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported private key export format: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". Only private keys which export their key material in PKCS#8 format are supported."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    .end local v2    # "keyFormat":Ljava/lang/String;
    .end local v3    # "chainBytes":[B
    .end local v15    # "userCertBytes":[B
    .end local v16    # "targetDomain":I
    :catch_3b4
    move-exception v0

    .line 396
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Failed to encode certificate #0"

    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 373
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v14    # "x509chain":[Ljava/security/cert/X509Certificate;
    :cond_3bd
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    .end local v12    # "flags":I
    .end local v13    # "spec":Landroid/security/keystore/KeyProtection;
    .local v0, "securitylevel":I
    .local v5, "flags":I
    :cond_3c5
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported protection parameter class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 366
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/keystore/KeyProtection;

    .line 367
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/KeyStoreParameter;

    .line 368
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .line 662
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_3e

    instance-of v0, v3, Landroid/security/keystore/KeyProtection;

    if-eqz v0, :cond_d

    goto :goto_3e

    .line 663
    :cond_d
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported protection parameter class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 664
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/keystore/KeyProtection;

    .line 665
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_3e
    :goto_3e
    move-object v4, v3

    check-cast v4, Landroid/security/keystore/KeyProtection;

    .line 669
    .local v4, "params":Landroid/security/keystore/KeyProtection;
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v5

    .line 671
    .local v5, "targetDomain":I
    instance-of v0, v2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_6b

    .line 672
    move-object v0, v2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    .line 673
    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-object v0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 675
    .local v0, "keyAliasInKeystore":Ljava/lang/String;
    move-object v6, v2

    check-cast v6, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {v6}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v6

    .line 678
    .local v6, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget v7, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    move-object/from16 v8, p1

    invoke-static {v8, v5, v7, v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->assertCanReplace(Ljava/lang/String;IILandroid/system/keystore2/KeyDescriptor;)V

    .line 681
    if-nez v4, :cond_63

    .line 685
    return-void

    .line 682
    :cond_63
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v9, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v7, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 688
    .end local v0    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v6    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :cond_6b
    move-object/from16 v8, p1

    if-eqz v4, :cond_317

    .line 694
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 695
    .local v6, "keyExportFormat":Ljava/lang/String;
    if-eqz v6, :cond_30f

    .line 698
    const-string v0, "RAW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f6

    .line 702
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    .line 703
    .local v7, "keyMaterial":[B
    if-eqz v7, :cond_2ee

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 711
    .local v15, "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    nop

    .line 713
    :try_start_8a
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v0

    .line 715
    .local v0, "keymasterAlgorithm":I
    const v9, 0x10000002

    invoke-static {v9, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    const/16 v9, 0x80

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v0, v9, :cond_15c

    .line 726
    nop

    .line 727
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v9

    .line 728
    .local v9, "keymasterImpliedDigest":I
    if-eq v9, v12, :cond_13f

    .line 734
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v16

    if-eqz v16, :cond_106

    .line 737
    nop

    .line 738
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v16

    move-object/from16 v17, v16

    .line 739
    .local v17, "keymasterDigestsFromParams":[I
    move-object/from16 v10, v17

    .end local v17    # "keymasterDigestsFromParams":[I
    .local v10, "keymasterDigestsFromParams":[I
    array-length v11, v10

    if-ne v11, v14, :cond_c9

    aget v11, v10, v13

    if-ne v11, v9, :cond_c9

    goto :goto_106

    .line 741
    :cond_c9
    new-instance v11, Ljava/security/KeyStoreException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported digests specification: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 743
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Only "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 744
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " supported for HMAC key algorithm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 746
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

    .line 749
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

    .line 750
    .local v10, "outputBits":I
    if-eq v10, v12, :cond_122

    .line 755
    const v11, 0x20000005

    invoke-static {v11, v9}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    const v11, 0x30000008

    invoke-static {v11, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    nop

    .end local v9    # "keymasterImpliedDigest":I
    .end local v10    # "outputBits":I
    goto :goto_181

    .line 751
    .restart local v9    # "keymasterImpliedDigest":I
    .restart local v10    # "outputBits":I
    :cond_122
    new-instance v11, Ljava/security/ProviderException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 753
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

    .line 729
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

    .line 731
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

    .line 762
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

    .line 763
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_168
    if-ge v11, v10, :cond_181

    aget-object v13, v9, v11

    .line 764
    .local v13, "digest":Ljava/lang/String;
    nop

    .line 766
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v12

    .line 764
    const v14, 0x20000005

    invoke-static {v14, v12}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    nop

    .end local v13    # "digest":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    const/4 v12, -0x1

    const/4 v14, 0x1

    goto :goto_168

    .line 772
    :cond_181
    :goto_181
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v9

    new-instance v10, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;

    invoke-direct {v10, v15}, Landroid/security/keystore2/AndroidKeyStoreSpi$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-static {v9, v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->forEachSetFlag(ILjava/util/function/Consumer;)V

    .line 779
    const/4 v9, 0x0

    .line 780
    .local v9, "indCpa":Z
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v10

    const/4 v11, 0x1

    and-int/2addr v10, v11

    if-eqz v10, :cond_1ab

    .line 781
    move-object v10, v3

    check-cast v10, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v10}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v10

    if-eqz v10, :cond_1a1

    .line 782
    const/4 v9, 0x1

    goto :goto_1ab

    .line 784
    :cond_1a1
    const v10, 0x70000007

    invoke-static {v10}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_1ab
    :goto_1ab
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v10

    array-length v12, v10

    const/4 v13, 0x0

    :goto_1b1
    if-ge v13, v12, :cond_218

    aget-object v14, v10, v13

    .line 791
    .local v14, "blockMode":Ljava/lang/String;
    invoke-static {v14}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v17

    move/from16 v18, v17

    .line 792
    .local v18, "keymasterBlockMode":I
    if-eqz v9, :cond_1e3

    .line 793
    invoke-static/range {v18 .. v18}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v17

    if-eqz v17, :cond_1c4

    goto :goto_1e3

    .line 795
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

    .line 801
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

    .line 803
    const/16 v11, 0x60

    const v2, 0x30000008

    invoke-static {v2, v11}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_205

    .line 801
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

    .line 809
    .end local v18    # "keymasterBlockMode":I
    .local v0, "keymasterBlockMode":I
    .restart local v19    # "keymasterAlgorithm":I
    :goto_205
    const v11, 0x20000004

    invoke-static {v11, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    nop

    .end local v0    # "keymasterBlockMode":I
    .end local v14    # "blockMode":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move/from16 v0, v19

    const/4 v11, 0x1

    goto :goto_1b1

    .line 815
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

    .line 819
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v13, 0x0

    :goto_227
    if-ge v13, v2, :cond_23e

    aget-object v10, v0, v13

    .line 820
    .local v10, "padding":Ljava/lang/String;
    nop

    .line 822
    invoke-static {v10}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v11

    .line 820
    const v12, 0x20000006

    invoke-static {v12, v11}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    nop

    .end local v10    # "padding":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_227

    .line 826
    :cond_23e
    invoke-static {v15, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 828
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_256

    .line 829
    nop

    .line 830
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    .line 829
    const v2, 0x60000190

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_256
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_26b

    .line 834
    nop

    .line 836
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    .line 834
    const v2, 0x60000191

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_26b
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_280

    .line 840
    nop

    .line 842
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    .line 840
    const v2, 0x60000192

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_280
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_296

    .line 846
    nop

    .line 848
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->getMaxUsageCount()I

    move-result v0

    .line 846
    const v2, 0x30000195

    invoke-static {v2, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_296
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isRollbackResistant()Z

    move-result v0

    if-eqz v0, :cond_2a6

    .line 853
    const v0, 0x7000012f

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_2a6} :catch_2e7
    .catch Ljava/lang/IllegalStateException; {:try_start_8a .. :try_end_2a6} :catch_2e7

    .line 859
    .end local v9    # "indCpa":Z
    .end local v19    # "keymasterAlgorithm":I
    :cond_2a6
    nop

    .line 861
    const/4 v0, 0x0

    .line 862
    .local v0, "flags":I
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v2

    if-eqz v2, :cond_2b2

    .line 863
    or-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_2b3

    .line 862
    :cond_2b2
    move v2, v0

    .line 866
    .end local v0    # "flags":I
    .local v2, "flags":I
    :goto_2b3
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v0

    if-eqz v0, :cond_2bb

    const/4 v14, 0x2

    goto :goto_2bc

    .line 867
    :cond_2bb
    const/4 v14, 0x1

    :goto_2bc
    nop

    .line 870
    .local v14, "securityLevel":I
    :try_start_2bd
    iget-object v0, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v0, v14}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v9

    .line 873
    .local v9, "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v10
    :try_end_2c7
    .catch Landroid/security/KeyStoreException; {:try_start_2bd .. :try_end_2c7} :catch_2d4

    .line 875
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

    .line 879
    nop

    .line 880
    .end local v9    # "securityLevelInterface":Landroid/security/KeyStoreSecurityLevel;
    .end local v10    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    return-void

    .line 877
    :catch_2d2
    move-exception v0

    goto :goto_2d7

    .end local v16    # "securityLevel":I
    .restart local v14    # "securityLevel":I
    :catch_2d4
    move-exception v0

    move/from16 v16, v14

    .line 878
    .end local v14    # "securityLevel":I
    .local v0, "e":Landroid/security/KeyStoreException;
    .restart local v16    # "securityLevel":I
    :goto_2d7
    new-instance v9, Ljava/security/KeyStoreException;

    const-string v10, "Failed to import secret key."

    invoke-direct {v9, v10, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 816
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

    .line 857
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

    .line 858
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 704
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v15    # "importArgs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    :cond_2ee
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
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

    .line 696
    :cond_30f
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v2, "Only secret keys that export their key material are supported"

    invoke-direct {v0, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
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

    .line 884
    move-object/from16 v1, p0

    const-string v2, "Failed to import wrapped key. Keystore error code: "

    if-nez p3, :cond_179

    .line 888
    const/16 v0, 0x20

    new-array v3, v0, [B

    .line 890
    .local v3, "maskingKey":[B
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getTransformation()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 892
    .local v4, "parts":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 894
    .local v12, "args":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const/4 v0, 0x0

    aget-object v13, v4, v0

    .line 895
    .local v13, "algorithm":Ljava/lang/String;
    const-string v5, "RSA"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15a

    .line 896
    const v5, 0x10000002

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    array-length v5, v4

    if-le v5, v6, :cond_44

    .line 906
    aget-object v5, v4, v6

    .line 907
    .local v5, "mode":Ljava/lang/String;
    nop

    .line 909
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v7

    .line 907
    const v8, 0x20000004

    invoke-static {v8, v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    .end local v5    # "mode":Ljava/lang/String;
    :cond_44
    array-length v5, v4

    const/4 v7, 0x2

    if-le v5, v7, :cond_5a

    .line 914
    aget-object v5, v4, v7

    .line 915
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    .line 916
    .local v5, "padding":I
    if-eq v5, v6, :cond_5a

    .line 917
    const v8, 0x20000006

    invoke-static {v8, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    .end local v5    # "padding":I
    :cond_5a
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/security/keystore/KeyGenParameterSpec;

    .line 925
    .local v14, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 926
    nop

    .line 927
    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    .line 928
    .local v5, "digest":I
    if-eqz v5, :cond_7e

    .line 929
    const v8, 0x20000005

    invoke-static {v8, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    .end local v5    # "digest":I
    :cond_7e
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappingKeyAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v15

    .line 938
    .local v15, "wrappingkey":Landroid/system/keystore2/KeyDescriptor;
    const/4 v5, 0x0

    .line 940
    .local v5, "response":Landroid/system/keystore2/KeyEntryResponse;
    :try_start_87
    iget-object v8, v1, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v8, v15}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v8
    :try_end_8d
    .catch Landroid/security/KeyStoreException; {:try_start_87 .. :try_end_8d} :catch_13c

    move-object v11, v8

    .line 944
    .end local v5    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v11, "response":Landroid/system/keystore2/KeyEntryResponse;
    nop

    .line 946
    invoke-direct/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v16

    .line 948
    .local v16, "wrappedKey":Landroid/system/keystore2/KeyDescriptor;
    new-instance v5, Landroid/security/KeyStoreSecurityLevel;

    iget-object v8, v11, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v5, v8}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    .line 950
    .local v5, "securityLevel":Landroid/security/KeyStoreSecurityLevel;
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v8

    const-class v9, Landroid/hardware/biometrics/BiometricManager;

    .line 951
    invoke-virtual {v8, v9}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Landroid/hardware/biometrics/BiometricManager;

    .line 953
    .local v17, "bm":Landroid/hardware/biometrics/BiometricManager;
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds()[J

    move-result-object v10

    .line 955
    .local v10, "biometricSids":[J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v8

    .line 957
    .local v9, "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    new-instance v8, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct {v8}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    .line 958
    .local v8, "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    iput v6, v8, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorType:I

    .line 959
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    iput-wide v0, v8, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    .line 960
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    array-length v0, v10

    const/4 v1, 0x0

    :goto_c4
    if-ge v1, v0, :cond_e5

    aget-wide v6, v10, v1

    .line 963
    .local v6, "sid":J
    new-instance v20, Landroid/system/keystore2/AuthenticatorSpec;

    invoke-direct/range {v20 .. v20}, Landroid/system/keystore2/AuthenticatorSpec;-><init>()V

    move-object/from16 v21, v20

    .line 964
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

    .line 965
    iput-wide v6, v0, Landroid/system/keystore2/AuthenticatorSpec;->authenticatorId:J

    .line 966
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    .end local v0    # "authSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v6    # "sid":J
    add-int/lit8 v1, v1, 0x1

    move v7, v3

    move-object/from16 v3, v18

    move/from16 v0, v20

    goto :goto_c4

    .line 970
    .end local v18    # "maskingKey":[B
    .restart local v3    # "maskingKey":[B
    :cond_e5
    move-object/from16 v18, v3

    .line 972
    .end local v3    # "maskingKey":[B
    .restart local v18    # "maskingKey":[B
    :try_start_e7
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappedKeyBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/system/keystore2/AuthenticatorSpec;

    .line 975
    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/system/keystore2/AuthenticatorSpec;
    :try_end_f5
    .catch Landroid/security/KeyStoreException; {:try_start_e7 .. :try_end_f5} :catch_10a

    .line 970
    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v19, v8

    .end local v8    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .local v19, "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    move-object v8, v0

    move-object/from16 v20, v9

    .end local v9    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .local v20, "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    move-object v9, v1

    move-object v1, v10

    .end local v10    # "biometricSids":[J
    .local v1, "biometricSids":[J
    move-object v10, v12

    move-object/from16 v21, v11

    .end local v11    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v21, "response":Landroid/system/keystore2/KeyEntryResponse;
    move-object v11, v3

    :try_start_103
    invoke-virtual/range {v5 .. v11}, Landroid/security/KeyStoreSecurityLevel;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    :try_end_106
    .catch Landroid/security/KeyStoreException; {:try_start_103 .. :try_end_106} :catch_108

    .line 985
    nop

    .line 986
    return-void

    .line 976
    :catch_108
    move-exception v0

    goto :goto_112

    .end local v1    # "biometricSids":[J
    .end local v19    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v20    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .end local v21    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .restart local v8    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .restart local v9    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .restart local v10    # "biometricSids":[J
    .restart local v11    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :catch_10a
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object v1, v10

    move-object/from16 v21, v11

    .line 977
    .end local v8    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v9    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .end local v10    # "biometricSids":[J
    .end local v11    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v0, "e":Landroid/security/KeyStoreException;
    .restart local v1    # "biometricSids":[J
    .restart local v19    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .restart local v20    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .restart local v21    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :goto_112
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    packed-switch v3, :pswitch_data_182

    .line 982
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 983
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 979
    :pswitch_134
    new-instance v2, Landroid/security/keystore/SecureKeyImportUnavailableException;

    const-string v3, "Could not import wrapped key"

    invoke-direct {v2, v3}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 941
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v1    # "biometricSids":[J
    .end local v16    # "wrappedKey":Landroid/system/keystore2/KeyDescriptor;
    .end local v17    # "bm":Landroid/hardware/biometrics/BiometricManager;
    .end local v18    # "maskingKey":[B
    .end local v19    # "authenticatorSpec":Landroid/system/keystore2/AuthenticatorSpec;
    .end local v20    # "authenticatorSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/system/keystore2/AuthenticatorSpec;>;"
    .end local v21    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .restart local v3    # "maskingKey":[B
    .local v5, "response":Landroid/system/keystore2/KeyEntryResponse;
    :catch_13c
    move-exception v0

    move-object/from16 v18, v3

    .line 942
    .end local v3    # "maskingKey":[B
    .restart local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v18    # "maskingKey":[B
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 943
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 901
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .end local v5    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .end local v14    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v15    # "wrappingkey":Landroid/system/keystore2/KeyDescriptor;
    .end local v18    # "maskingKey":[B
    .restart local v3    # "maskingKey":[B
    :cond_15a
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

    .line 885
    .end local v3    # "maskingKey":[B
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v12    # "args":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v13    # "algorithm":Ljava/lang/String;
    :cond_179
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Protection parameters are specified inside wrapped keys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_182
    .packed-switch -0x64
        :pswitch_134
    .end packed-switch
.end method

.method static blacklist toCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p0, "bytes"    # [B

    .line 235
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 236
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 238
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_12
    move-exception v0

    .line 239
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificate in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
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

    .line 247
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 248
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 250
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_10
    move-exception v0

    .line 251
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
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

    .line 1065
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;-><init>(Landroid/security/keystore2/AndroidKeyStoreSpi;Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator-IA;)V

    return-object v0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 1070
    if-eqz p1, :cond_c

    .line 1074
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 1071
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

    .line 1040
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 1042
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    :try_start_4
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_9
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1047
    goto :goto_12

    .line 1043
    :catch_a
    move-exception v1

    .line 1044
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_13

    .line 1048
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :goto_12
    return-void

    .line 1045
    .restart local v1    # "e":Landroid/security/KeyStoreException;
    :cond_13
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

    .line 213
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 215
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 216
    return-object v1

    .line 219
    :cond_8
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 220
    .local v2, "encodedCert":[B
    if-eqz v2, :cond_13

    .line 221
    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 224
    :cond_13
    iget-object v3, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v3, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 225
    if-eqz v2, :cond_1e

    .line 226
    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 230
    :cond_1e
    return-object v1
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 10
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 1122
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1123
    return-object v0

    .line 1125
    :cond_4
    const-string v1, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AndroidKeyStoreSpi"

    if-nez v1, :cond_18

    .line 1126
    const-string v1, "In engineGetCertificateAlias: only X.509 certificates are supported."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-object v0

    .line 1131
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1
    :try_end_1c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_18 .. :try_end_1c} :catch_71

    .line 1135
    .local v1, "targetCertBytes":[B
    nop

    .line 1136
    if-nez v1, :cond_20

    .line 1137
    return-object v0

    .line 1140
    :cond_20
    const/4 v0, 0x0

    .line 1142
    .local v0, "keyDescriptors":[Landroid/system/keystore2/KeyDescriptor;
    :try_start_21
    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1143
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v4

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v5, v5

    .line 1142
    invoke-virtual {v3, v4, v5, v6}, Landroid/security/KeyStore2;->list(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2
    :try_end_2e
    .catch Landroid/security/KeyStoreException; {:try_start_21 .. :try_end_2e} :catch_30

    move-object v0, v2

    .line 1148
    goto :goto_36

    .line 1146
    :catch_30
    move-exception v3

    .line 1147
    .local v3, "e":Landroid/security/KeyStoreException;
    const-string v4, "Failed to get list of keystore entries."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1150
    .end local v3    # "e":Landroid/security/KeyStoreException;
    :goto_36
    const/4 v2, 0x0

    .line 1151
    .local v2, "caAlias":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_70

    aget-object v5, v0, v4

    .line 1152
    .local v5, "d":Landroid/system/keystore2/KeyDescriptor;
    iget-object v6, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v6

    .line 1153
    .local v6, "response":Landroid/system/keystore2/KeyEntryResponse;
    if-nez v6, :cond_46

    .line 1154
    goto :goto_6d

    .line 1164
    :cond_46
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v7, :cond_59

    .line 1165
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v7, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 1166
    iget-object v3, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    return-object v3

    .line 1168
    :cond_59
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    if-eqz v7, :cond_6d

    if-nez v2, :cond_6d

    .line 1169
    iget-object v7, v6, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v7, v7, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    invoke-static {v7, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 1170
    iget-object v2, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 1151
    .end local v5    # "d":Landroid/system/keystore2/KeyDescriptor;
    .end local v6    # "response":Landroid/system/keystore2/KeyEntryResponse;
    :cond_6d
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 1174
    :cond_70
    return-object v2

    .line 1132
    .end local v0    # "keyDescriptors":[Landroid/system/keystore2/KeyDescriptor;
    .end local v1    # "targetCertBytes":[B
    .end local v2    # "caAlias":Ljava/lang/String;
    :catch_71
    move-exception v1

    .line 1133
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v3, "While trying to get the alias for a certificate."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    return-object v0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 11
    .param p1, "alias"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 179
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    if-eqz v0, :cond_49

    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-nez v2, :cond_e

    goto :goto_49

    .line 183
    :cond_e
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    invoke-static {v2}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 184
    .local v2, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_19

    .line 185
    return-object v1

    .line 190
    :cond_19
    iget-object v1, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v1, v1, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 192
    .local v1, "caBytes":[B
    const/4 v3, 0x1

    if-eqz v1, :cond_43

    .line 193
    invoke-static {v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object v4

    .line 195
    .local v4, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v5, v3

    new-array v3, v5, [Ljava/security/cert/Certificate;

    .line 197
    .local v3, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 198
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v6, 0x1

    .line 199
    .local v6, "i":I
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 200
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;

    aput-object v8, v3, v6

    move v6, v7

    goto :goto_30

    .line 202
    .end local v4    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "i":I
    :cond_42
    goto :goto_45

    .line 203
    .end local v3    # "caList":[Ljava/security/cert/Certificate;
    :cond_43
    new-array v3, v3, [Ljava/security/cert/Certificate;

    .line 206
    .restart local v3    # "caList":[Ljava/security/cert/Certificate;
    :goto_45
    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 208
    invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3

    .line 180
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

    .line 258
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 260
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 261
    return-object v1

    .line 264
    :cond_8
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-wide v2, v2, Landroid/system/keystore2/KeyMetadata;->modificationTimeMs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    .line 265
    return-object v1

    .line 267
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

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    invoke-static {v0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0
    :try_end_8
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_8} :catch_1f
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 125
    :catch_9
    move-exception v0

    .line 126
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 127
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Landroid/security/KeyStoreException;

    if-eqz v2, :cond_1e

    .line 128
    move-object v2, v1

    check-cast v2, Landroid/security/KeyStoreException;

    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1e

    .line 130
    const/4 v2, 0x0

    return-object v2

    .line 133
    :cond_1e
    throw v0

    .line 123
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1f
    move-exception v0

    .line 124
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

    .line 1107
    if-eqz p1, :cond_16

    .line 1110
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v0

    .line 1115
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

    .line 1108
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

    .line 1090
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

    .line 1197
    if-nez p1, :cond_17

    .line 1201
    if-nez p2, :cond_e

    .line 1206
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1207
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1208
    return-void

    .line 1202
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
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

    .line 1213
    const/4 v0, -0x1

    .line 1214
    .local v0, "namespace":I
    if-eqz p1, :cond_2c

    .line 1215
    instance-of v1, p1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    if-eqz v1, :cond_f

    .line 1216
    move-object v1, p1

    check-cast v1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;->getNamespace()I

    move-result v0

    goto :goto_2c

    .line 1218
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported param type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1222
    :cond_2c
    :goto_2c
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1223
    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1224
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

    .line 1013
    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1018
    if-eqz p2, :cond_29

    .line 1024
    :try_start_8
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_c} :catch_22

    .line 1027
    .local v0, "encoded":[B
    nop

    .line 1030
    :try_start_d
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_17
    .catch Landroid/security/KeyStoreException; {:try_start_d .. :try_end_17} :catch_19

    .line 1035
    nop

    .line 1036
    return-void

    .line 1033
    :catch_19
    move-exception v1

    .line 1034
    .local v1, "e":Landroid/security/KeyStoreException;
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Couldn\'t insert certificate."

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1025
    .end local v0    # "encoded":[B
    .end local v1    # "e":Landroid/security/KeyStoreException;
    :catch_22
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1019
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cert == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_31
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

    .line 1229
    if-eqz p2, :cond_5b

    .line 1233
    instance-of v0, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v0, :cond_14

    .line 1234
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 1240
    .local v0, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1242
    return-void

    .line 1245
    .end local v0    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_14
    instance-of v0, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_27

    .line 1246
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 1247
    .local v0, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1248
    .end local v0    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    goto :goto_41

    :cond_27
    instance-of v0, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v0, :cond_36

    .line 1249
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    .line 1250
    .local v0, "secE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1251
    .end local v0    # "secE":Ljava/security/KeyStore$SecretKeyEntry;
    goto :goto_41

    :cond_36
    instance-of v0, p2, Landroid/security/keystore/WrappedKeyEntry;

    if-eqz v0, :cond_42

    .line 1252
    move-object v0, p2

    check-cast v0, Landroid/security/keystore/WrappedKeyEntry;

    .line 1253
    .local v0, "wke":Landroid/security/keystore/WrappedKeyEntry;
    invoke-direct {p0, p1, v0, p3}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1254
    .end local v0    # "wke":Landroid/security/keystore/WrappedKeyEntry;
    nop

    .line 1259
    :goto_41
    return-void

    .line 1255
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

    .line 1230
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

    .line 273
    if-eqz p3, :cond_e

    array-length v0, p3

    if-gtz v0, :cond_6

    goto :goto_e

    .line 274
    :cond_6
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_e
    :goto_e
    instance-of v0, p2, Ljava/security/PrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 278
    move-object v0, p2

    check-cast v0, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, v0, p4, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_24

    .line 279
    :cond_1a
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_25

    .line 280
    move-object v0, p2

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 284
    :goto_24
    return-void

    .line 282
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

    .line 991
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSize()I
    .registers 5

    .line 1079
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1080
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->getTargetDomain()I

    move-result v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    int-to-long v2, v2

    .line 1079
    invoke-virtual {v0, v1, v2, v3}, Landroid/security/KeyStore2;->getNumberOfEntries(IJ)I

    move-result v0
    :try_end_d
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_d} :catch_e

    return v0

    .line 1083
    :catch_e
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/security/KeyStoreException;
    const-string v1, "AndroidKeyStoreSpi"

    const-string v2, "Failed to get the number of keystore entries."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1085
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

    .line 1191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist initForTesting(Landroid/security/KeyStore2;)V
    .registers 3
    .param p1, "keystore"    # Landroid/security/KeyStore2;

    .line 1184
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 1185
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi;->mNamespace:I

    .line 1186
    return-void
.end method
