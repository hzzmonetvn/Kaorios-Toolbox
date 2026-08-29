.class public Landroid/util/apk/ApkSignatureSchemeV3Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV3Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;,
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
    }
.end annotation


# static fields
.field static final blacklist APK_SIGNATURE_SCHEME_V31_BLOCK_ID:I = 0x1b93ad61

.field static final blacklist APK_SIGNATURE_SCHEME_V32_BLOCK_ID:I = 0x70e1c89f

.field static final greylist-max-o APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field private static final blacklist HYBRID_MAX_SDK_VERSION_ATTR_ID:I = -0x60f94864

.field private static final blacklist HYBRID_MIN_SDK_VERSION_ATTR_ID:I = -0x406bfad7

.field private static final greylist-max-o PROOF_OF_ROTATION_ATTR_ID:I = 0x3ba06f8c

.field private static final blacklist ROTATION_MIN_SDK_VERSION_ATTR_ID:I = 0x559f8b02

.field public static final greylist-max-o SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x3

.field private static final blacklist SIGNER_TARGETS_DEV_RELEASE_ATTR_ID:I = -0x3d594c46


# instance fields
.field private final blacklist mApk:Ljava/io/RandomAccessFile;

.field private blacklist mBlockId:I

.field private blacklist mOptionalHybridMaxSdkVersion:Ljava/util/OptionalInt;

.field private blacklist mOptionalHybridMinSdkVersion:Ljava/util/OptionalInt;

.field private blacklist mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

.field private blacklist mSignerMinSdkVersion:I

.field private final blacklist mVerifyIntegrity:Z


# direct methods
.method private constructor blacklist <init>(Ljava/io/RandomAccessFile;Z)V
    .registers 4
    .param p1, "apk"    # Ljava/io/RandomAccessFile;
    .param p2, "verifyIntegrity"    # Z

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    .line 202
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalHybridMinSdkVersion:Ljava/util/OptionalInt;

    .line 203
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalHybridMaxSdkVersion:Ljava/util/OptionalInt;

    .line 208
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mApk:Ljava/io/RandomAccessFile;

    .line 209
    iput-boolean p2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mVerifyIntegrity:Z

    .line 210
    return-void
.end method

.method public static greylist-max-o findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    .registers 2
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 183
    const v0, -0xfac9740

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;
    .registers 3
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 196
    invoke-static {p0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 5
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "bufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1062
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 1064
    .local v1, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-static {p0, p1, v1}, Landroid/util/apk/VerityBuilder;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    .line 1065
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1064
    return-object v2

    .line 1062
    .end local v1    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catchall_14
    move-exception v1

    :try_start_15
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw v1
.end method

.method static greylist-max-o getVerityRootHash(Ljava/lang/String;)[B
    .registers 5
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1052
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 1054
    .local v1, "signatureInfo":Landroid/util/apk/SignatureInfo;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v2

    .line 1055
    .local v2, "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-object v3, v2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 1056
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1055
    return-object v3

    .line 1052
    .end local v1    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v2    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :catchall_17
    move-exception v1

    :try_start_18
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw v1
.end method

.method public static greylist-max-o hasSignature(Ljava/lang/String;)Z
    .registers 4
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_8} :catch_1b

    .line 89
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    .line 90
    nop

    .line 91
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_c .. :try_end_f} :catch_1b

    .line 90
    const/4 v1, 0x1

    return v1

    .line 88
    :catchall_11
    move-exception v1

    :try_start_12
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v2

    :try_start_17
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "apkFile":Ljava/lang/String;
    :goto_1a
    throw v1
    :try_end_1b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 91
    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local p0    # "apkFile":Ljava/lang/String;
    :catch_1b
    move-exception v0

    .line 92
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 2
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    return-object v0
.end method

.method private blacklist verify(Landroid/util/apk/SignatureInfo;I)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 16
    .param p1, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 222
    .local v7, "verificationStartTimeMs":J
    iput p2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 226
    .local v9, "verifiedSigners":Ljava/util/List;, "Ljava/util/List<Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;>;"
    :try_start_c
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_12
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_12} :catch_169

    move-object v10, v0

    .line 229
    .local v10, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 232
    const/4 v2, 0x2

    const v3, 0x70e1c89f

    :try_start_18
    iget-object v0, p1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_15b

    move-object v11, v0

    .line 239
    .local v11, "signers":Ljava/nio/ByteBuffer;
    nop

    .line 240
    :goto_20
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 242
    :try_start_26
    invoke-static {v11}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    .local v0, "signer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0, v10}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_45

    .line 246
    if-ne p2, v3, :cond_3d

    .line 247
    const/4 v4, 0x4

    invoke-static {p2, v4}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationBlockFailure(II)V

    .line 250
    :cond_3d
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "APK Signature Scheme V3 found at least 3 signers targeting this release"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v7    # "verificationStartTimeMs":J
    .end local v9    # "verifiedSigners":Ljava/util/List;, "Ljava/util/List<Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;>;"
    .end local v10    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v11    # "signers":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .end local p1    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local p2    # "blockId":I
    throw v4
    :try_end_45
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_26 .. :try_end_45} :catch_6a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_45} :catch_46
    .catch Ljava/nio/BufferUnderflowException; {:try_start_26 .. :try_end_45} :catch_46
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_45} :catch_46

    .line 261
    .end local v0    # "signer":Ljava/nio/ByteBuffer;
    .restart local v7    # "verificationStartTimeMs":J
    .restart local v9    # "verifiedSigners":Ljava/util/List;, "Ljava/util/List<Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;>;"
    .restart local v10    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v11    # "signers":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .restart local p1    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .restart local p2    # "blockId":I
    :cond_45
    goto :goto_20

    .line 257
    :catch_46
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse/verify signer #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " block"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6a
    move-exception v0

    .line 256
    .local v0, "e":Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
    goto :goto_20

    .line 264
    .end local v0    # "e":Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
    :cond_6c
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 267
    const v0, -0xfac9740

    if-ne p2, v0, :cond_7f

    .line 268
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "No signers found"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_7f
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    const-string v2, "None of the signers support the current platform version"

    invoke-direct {v0, v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_87
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->apkPqcHybridSigning()Z

    move-result v0

    const-string v2, "APK Signature Scheme V3 only supports one signer: multiple signers found."

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_dd

    .line 276
    if-ne p2, v3, :cond_99

    .line 277
    invoke-virtual {p0, v9}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifyV32Signers(Ljava/util/List;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    move-object v12, v0

    .local v0, "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    goto :goto_ea

    .line 278
    .end local v0    # "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :cond_99
    const v0, 0x1b93ad61

    if-ne p2, v0, :cond_a4

    .line 279
    invoke-direct {p0, v9}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifyV31Signers(Ljava/util/List;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    move-object v12, v0

    .restart local v0    # "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    goto :goto_ea

    .line 282
    .end local v0    # "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :cond_a4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_d7

    .line 286
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    .line 287
    .restart local v0    # "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-object v2, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v2, v2, v5

    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->isCertificatePqc(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 288
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->apkPqcHybridSigning()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 289
    iget v2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v5, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    const/16 v6, 0x17

    invoke-static {v2, v3, v4, v5, v6}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 293
    :cond_cd
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The platform does not currently support single PQC signers in the v3 signature blocks"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_d5
    move-object v12, v0

    goto :goto_ea

    .line 283
    .end local v0    # "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :cond_d7
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_dd
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_155

    .line 303
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-object v12, v0

    .line 306
    .local v12, "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :goto_ea
    iget-object v0, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 307
    if-ne p2, v3, :cond_f8

    .line 308
    const/4 v0, 0x5

    invoke-static {p2, v0}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationBlockFailure(II)V

    .line 311
    :cond_f8
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "No content digests found"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v5, v4, v7

    .line 319
    .local v5, "verificationDurationMs":J
    iget-boolean v0, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mVerifyIntegrity:Z

    if-eqz v0, :cond_11a

    .line 321
    :try_start_10a
    iget-object v0, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    iget-object v2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mApk:Ljava/io/RandomAccessFile;

    invoke-static {v0, v2, p1}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V
    :try_end_111
    .catch Ljava/lang/SecurityException; {:try_start_10a .. :try_end_111} :catch_112

    .line 328
    goto :goto_11a

    .line 322
    :catch_112
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/SecurityException;
    if-ne p2, v3, :cond_119

    .line 324
    const/4 v2, 0x6

    invoke-static {p2, v2}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationBlockFailure(II)V

    .line 327
    :cond_119
    throw v0

    .line 331
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_11a
    :goto_11a
    const/4 v0, 0x0

    .line 332
    .local v0, "verityRootHash":[B
    iget-object v2, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 333
    iget-object v2, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 334
    .local v2, "verityDigest":[B
    iget-object v3, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mApk:Ljava/io/RandomAccessFile;

    .line 335
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    .line 334
    invoke-static {v2, v3, v4, p1}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v0

    .line 338
    .end local v2    # "verityDigest":[B
    :cond_142
    iput-object v0, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B

    .line 339
    iput p2, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->blockId:I

    .line 342
    iget-boolean v2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mVerifyIntegrity:Z

    if-eqz v2, :cond_154

    .line 343
    iget v2, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v3, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v4, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    move v1, p2

    invoke-static/range {v1 .. v6}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSuccess(IIIIJ)V

    .line 346
    :cond_154
    return-object v12

    .line 300
    .end local v0    # "verityRootHash":[B
    .end local v5    # "verificationDurationMs":J
    .end local v12    # "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :cond_155
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    .end local v11    # "signers":Ljava/nio/ByteBuffer;
    :catch_15b
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    if-ne p2, v3, :cond_161

    .line 235
    invoke-static {p2, v2}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationBlockFailure(II)V

    .line 238
    :cond_161
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Failed to read list of signers"

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    .end local v10    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_169
    move-exception v0

    .line 228
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static greylist-max-o verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 5
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "verifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;

    invoke-direct {v0, p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;-><init>(Ljava/io/RandomAccessFile;Z)V

    .line 146
    .local v0, "verifier":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->apkPqcHybridSigning()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 148
    const v1, 0x70e1c89f

    :try_start_e
    invoke-static {p0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 149
    .local v2, "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-direct {v0, v2, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Landroid/util/apk/SignatureInfo;I)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_16
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_e .. :try_end_16} :catch_19
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_e .. :try_end_16} :catch_17

    return-object v1

    .line 152
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catch_17
    move-exception v1

    goto :goto_1b

    .line 150
    :catch_19
    move-exception v1

    .line 155
    nop

    .line 158
    :cond_1b
    :goto_1b
    const v1, 0x1b93ad61

    :try_start_1e
    invoke-static {p0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 159
    .restart local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-direct {v0, v2, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Landroid/util/apk/SignatureInfo;I)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_26
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_1e .. :try_end_26} :catch_29
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_1e .. :try_end_26} :catch_27

    return-object v1

    .line 162
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catch_27
    move-exception v1

    goto :goto_2b

    .line 160
    :catch_29
    move-exception v1

    .line 165
    nop

    .line 167
    :goto_2b
    const v1, -0xfac9740

    :try_start_2e
    invoke-static {p0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    .line 168
    .restart local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    invoke-direct {v0, v2, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Landroid/util/apk/SignatureInfo;I)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_36
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_2e .. :try_end_36} :catch_37

    return-object v1

    .line 169
    .end local v2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catch_37
    move-exception v1

    .line 170
    .local v1, "e":Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static greylist-max-o verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 2
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 5
    .param p0, "apkFile"    # Ljava/lang/String;
    .param p1, "verifyIntegrity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v0, "apk":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {v0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 129
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 128
    return-object v1

    .line 127
    :catchall_10
    move-exception v1

    :try_start_11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v1
.end method

.method private blacklist verifyAdditionalAttributes(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;Ljava/util/Map;III)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 26
    .param p1, "attrs"    # Ljava/nio/ByteBuffer;
    .param p3, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .param p5, "minSdkVersion"    # I
    .param p6, "maxSdkVersion"    # I
    .param p7, "algorithmId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertificateFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;III)",
            "Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    .line 630
    .local p2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p4, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    move-object/from16 v1, p0

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v10, p2

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/security/cert/X509Certificate;

    .line 631
    .local v3, "certChain":[Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 632
    .local v0, "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    const/4 v2, 0x0

    .line 633
    .local v2, "isDevTarget":Z
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v4

    .line 634
    .local v4, "optionalAttrHybridMinSdkVersion":Ljava/util/OptionalInt;
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v5

    move v9, v2

    move-object v11, v4

    move-object v12, v5

    move-object v4, v0

    .line 635
    .end local v0    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .end local v2    # "isDevTarget":Z
    .local v4, "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .local v9, "isDevTarget":Z
    .local v11, "optionalAttrHybridMinSdkVersion":Ljava/util/OptionalInt;
    .local v12, "optionalAttrHybridMaxSdkVersion":Ljava/util/OptionalInt;
    :goto_25
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_22e

    .line 636
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 637
    .local v5, "attr":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v13, 0x12

    const/4 v14, 0x4

    const v15, 0x70e1c89f

    if-ge v0, v14, :cond_62

    .line 638
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    if-ne v0, v15, :cond_45

    .line 639
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    invoke-static {v0, v6, v7, v8, v13}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 642
    :cond_45
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 643
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_62
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v16

    .line 646
    .local v16, "id":I
    sparse-switch v16, :sswitch_data_340

    goto/16 :goto_22c

    .line 700
    :sswitch_6b
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v14, :cond_c7

    .line 706
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 707
    .local v0, "attrRotationMinSdkVersion":I
    iget-object v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v2

    const-string v13, "Expected a v3.1 signing block targeting SDK version "

    if-eqz v2, :cond_aa

    .line 713
    iget-object v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    .line 714
    .local v2, "rotationMinSdkVersion":I
    if-ne v2, v0, :cond_89

    goto/16 :goto_22c

    .line 715
    :cond_89
    new-instance v14, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", but the v3.1 block was targeting "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 708
    .end local v2    # "rotationMinSdkVersion":I
    :cond_aa
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", but a v3.1 block was not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 701
    .end local v0    # "attrRotationMinSdkVersion":I
    :cond_c7
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remaining buffer too short to contain rotation minSdkVersion value. Remaining: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 704
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :sswitch_e4
    if-eqz v4, :cond_f9

    .line 649
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    if-ne v0, v15, :cond_f1

    .line 650
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v2, 0x13

    invoke-static {v0, v6, v7, v8, v2}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 654
    :cond_f1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Encountered multiple Proof-of-rotation records when verifying APK Signature Scheme v3 signature"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_f9
    move-object/from16 v13, p3

    :try_start_fb
    invoke-static {v5, v13}, Landroid/util/apk/ApkSigningBlockUtils;->verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move-result-object v0
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_ff} :catch_15f
    .catch Ljava/lang/SecurityException; {:try_start_fb .. :try_end_ff} :catch_152

    move-object v4, v0

    .line 673
    nop

    .line 677
    :try_start_101
    iget-object v0, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13c

    iget-object v0, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    iget-object v14, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 678
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    aget-object v2, v3, v2

    .line 679
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 678
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_13c

    .line 680
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    if-ne v0, v15, :cond_134

    .line 681
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v2, 0x16

    invoke-static {v0, v6, v7, v8, v2}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 685
    :cond_134
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Terminal certificate in Proof-of-rotation record does not match APK signing certificate"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .end local v5    # "attr":Ljava/nio/ByteBuffer;
    .end local v9    # "isDevTarget":Z
    .end local v11    # "optionalAttrHybridMinSdkVersion":Ljava/util/OptionalInt;
    .end local v12    # "optionalAttrHybridMaxSdkVersion":Ljava/util/OptionalInt;
    .end local v16    # "id":I
    .end local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .end local p1    # "attrs":Ljava/nio/ByteBuffer;
    .end local p2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local p4    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local p5    # "minSdkVersion":I
    .end local p6    # "maxSdkVersion":I
    .end local p7    # "algorithmId":I
    throw v0
    :try_end_13c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_101 .. :try_end_13c} :catch_13e

    .line 696
    .restart local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v5    # "attr":Ljava/nio/ByteBuffer;
    .restart local v9    # "isDevTarget":Z
    .restart local v11    # "optionalAttrHybridMinSdkVersion":Ljava/util/OptionalInt;
    .restart local v12    # "optionalAttrHybridMaxSdkVersion":Ljava/util/OptionalInt;
    .restart local v16    # "id":I
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .restart local p1    # "attrs":Ljava/nio/ByteBuffer;
    .restart local p2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local p4    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local p5    # "minSdkVersion":I
    .restart local p6    # "maxSdkVersion":I
    .restart local p7    # "algorithmId":I
    :cond_13c
    goto/16 :goto_22c

    .line 688
    :catch_13e
    move-exception v0

    .line 689
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    if-ne v2, v15, :cond_14a

    .line 690
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v14, 0xe

    invoke-static {v2, v6, v7, v8, v14}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 694
    :cond_14a
    new-instance v2, Ljava/lang/SecurityException;

    const-string v14, "Failed to encode certificate when comparing Proof-of-rotation record and signing certificate"

    invoke-direct {v2, v14, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 666
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_152
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/SecurityException;
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    if-ne v2, v15, :cond_15e

    .line 668
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v14, 0x15

    invoke-static {v2, v6, v7, v8, v14}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 672
    :cond_15e
    throw v0

    .line 659
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_15f
    move-exception v0

    .line 660
    .local v0, "e":Ljava/io/IOException;
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    if-ne v2, v15, :cond_16b

    .line 661
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v14, 0x14

    invoke-static {v2, v6, v7, v8, v14}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 665
    :cond_16b
    throw v0

    .line 753
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_16c
    move-object/from16 v13, p3

    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v2, 0x1b93ad61

    if-eq v0, v2, :cond_17f

    .line 754
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->apkPqcHybridSigning()Z

    move-result v0

    if-eqz v0, :cond_22c

    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    if-ne v0, v15, :cond_22c

    .line 760
    :cond_17f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    if-ne v0, v2, :cond_1b9

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 761
    const-string v2, "REL"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_190

    goto :goto_1b9

    .line 764
    :cond_190
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    .line 765
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The device is running a release version of "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v14, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ", but the signer is targeting a dev release"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_1b9
    :goto_1b9
    const/4 v0, 0x1

    move v9, v0

    .end local v9    # "isDevTarget":Z
    .local v0, "isDevTarget":Z
    goto :goto_22c

    .line 723
    .end local v0    # "isDevTarget":Z
    .restart local v9    # "isDevTarget":Z
    :sswitch_1bc
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->apkPqcHybridSigning()Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 724
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v14, :cond_1d2

    .line 733
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    move-object v11, v0

    .end local v11    # "optionalAttrHybridMinSdkVersion":Ljava/util/OptionalInt;
    .local v0, "optionalAttrHybridMinSdkVersion":Ljava/util/OptionalInt;
    goto :goto_22c

    .line 725
    .end local v0    # "optionalAttrHybridMinSdkVersion":Ljava/util/OptionalInt;
    .restart local v11    # "optionalAttrHybridMinSdkVersion":Ljava/util/OptionalInt;
    :cond_1d2
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    invoke-static {v0, v6, v7, v8, v13}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 728
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remining buffer too short to contain the hybrid minSdkVersion value. Remaining: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 731
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :sswitch_1f4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->apkPqcHybridSigning()Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 738
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v14, :cond_20a

    .line 747
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    move-object v12, v0

    .end local v12    # "optionalAttrHybridMaxSdkVersion":Ljava/util/OptionalInt;
    .local v0, "optionalAttrHybridMaxSdkVersion":Ljava/util/OptionalInt;
    goto :goto_22c

    .line 739
    .end local v0    # "optionalAttrHybridMaxSdkVersion":Ljava/util/OptionalInt;
    .restart local v12    # "optionalAttrHybridMaxSdkVersion":Ljava/util/OptionalInt;
    :cond_20a
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    invoke-static {v0, v6, v7, v8, v13}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 742
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remining buffer too short to contain the hybrid maxSdkVersion value. Remaining: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 745
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    .end local v5    # "attr":Ljava/nio/ByteBuffer;
    .end local v16    # "id":I
    :cond_22c
    :goto_22c
    goto/16 :goto_25

    .line 785
    :cond_22e
    invoke-virtual {v11}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_240

    .line 786
    invoke-virtual {v12}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_23b

    goto :goto_240

    :cond_23b
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_2a6

    .line 787
    :cond_240
    :goto_240
    invoke-virtual {v11, v2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    .line 788
    .local v0, "attrHybridMinSdkVersion":I
    const v2, 0x7fffffff

    invoke-virtual {v12, v2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v2

    .line 789
    .local v2, "attrHybridMaxSdkVersion":I
    invoke-virtual {v11}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_310

    .line 797
    iget-object v5, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalHybridMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v5}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_2dc

    .line 806
    iget-object v5, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalHybridMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v5}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v5

    .line 807
    .local v5, "hybridMinSdkVersion":I
    const-string v13, ", but the v3.2 block was targeting "

    const/16 v14, 0x25

    if-ne v5, v0, :cond_2b2

    .line 817
    invoke-virtual {v12}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v15

    if-eqz v15, :cond_2a2

    .line 818
    iget-object v15, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalHybridMaxSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v15}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v15

    .line 819
    .local v15, "hybridMaxSdkVersion":I
    if-ne v15, v2, :cond_278

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_2a6

    .line 820
    :cond_278
    move-object/from16 v16, v3

    .end local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .local v16, "certChain":[Ljava/security/cert/X509Certificate;
    iget v3, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    invoke-static {v3, v0, v2, v8, v14}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 823
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .local v17, "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    const-string v4, "Expected a v3.2 signing block targeting max SDK version "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 817
    .end local v15    # "hybridMaxSdkVersion":I
    .end local v16    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v17    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :cond_2a2
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 831
    .end local v0    # "attrHybridMinSdkVersion":I
    .end local v2    # "attrHybridMaxSdkVersion":I
    .end local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .end local v5    # "hybridMinSdkVersion":I
    .restart local v16    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v17    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :goto_2a6
    new-instance v2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-object/from16 v5, p4

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    .end local v16    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v17    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    invoke-direct/range {v2 .. v9}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;-><init>([Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;Ljava/util/Map;IIIZ)V

    .end local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v16    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v17    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    return-object v2

    .line 808
    .end local v16    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v17    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v0    # "attrHybridMinSdkVersion":I
    .restart local v2    # "attrHybridMaxSdkVersion":I
    .restart local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v5    # "hybridMinSdkVersion":I
    :cond_2b2
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v16    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v17    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    iget v3, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    invoke-static {v3, v0, v2, v8, v14}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 811
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a v3.2 signing block targeting min SDK version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 798
    .end local v5    # "hybridMinSdkVersion":I
    .end local v16    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v17    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :cond_2dc
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v16    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v17    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    iget v3, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v4, 0x24

    invoke-static {v3, v0, v2, v8, v4}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 801
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a v3.2 signing block targeting SDK version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but a v3.2 block was not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 790
    .end local v16    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v17    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :cond_310
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "certChain":[Ljava/security/cert/X509Certificate;
    .end local v4    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v16    # "certChain":[Ljava/security/cert/X509Certificate;
    .restart local v17    # "por":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    iget v3, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v4, 0x2c

    invoke-static {v3, v0, v2, v8, v4}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 793
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature block "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contains a hybrid max SDK version stripping protection attribute without a min SDK version attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_340
    .sparse-switch
        -0x60f94864 -> :sswitch_1f4
        -0x406bfad7 -> :sswitch_1bc
        -0x3d594c46 -> :sswitch_16c
        0x3ba06f8c -> :sswitch_e4
        0x559f8b02 -> :sswitch_6b
    .end sparse-switch
.end method

.method private blacklist verifySigner(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 34
    .param p1, "signerBlock"    # Ljava/nio/ByteBuffer;
    .param p2, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    .line 353
    move-object/from16 v1, p0

    const-string v2, " signature"

    const-string v3, "Failed to verify "

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 354
    .local v9, "signedData":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 355
    .local v10, "minSdkVersion":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 357
    .local v11, "maxSdkVersion":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v5, 0x70e1c89f

    if-lt v0, v10, :cond_3a8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v11, :cond_21

    move-object/from16 v18, v9

    goto/16 :goto_3aa

    .line 399
    :cond_21
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 400
    .local v12, "signatures":Ljava/nio/ByteBuffer;
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v13

    .line 402
    .local v13, "publicKeyBytes":[B
    const/4 v0, 0x0

    .line 403
    .local v0, "signatureCount":I
    const/4 v6, -0x1

    .line 404
    .local v6, "bestSigAlgorithm":I
    const/4 v7, 0x0

    .line 405
    .local v7, "bestSigAlgorithmSignatureBytes":[B
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v8

    move v15, v0

    move v8, v6

    move-object v6, v7

    .line 406
    .end local v0    # "signatureCount":I
    .end local v7    # "bestSigAlgorithmSignatureBytes":[B
    .local v6, "bestSigAlgorithmSignatureBytes":[B
    .local v8, "bestSigAlgorithm":I
    .local v14, "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "signatureCount":I
    :goto_35
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/16 v7, 0x8

    if-eqz v0, :cond_a3

    .line 407
    add-int/lit8 v15, v15, 0x1

    .line 409
    :try_start_3f
    invoke-static {v12}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 410
    .local v0, "signature":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v7, :cond_5c

    .line 411
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    if-ne v2, v5, :cond_54

    .line 412
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v10, v11, v4, v3}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 415
    :cond_54
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Signature record too short"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "bestSigAlgorithmSignatureBytes":[B
    .end local v8    # "bestSigAlgorithm":I
    .end local v9    # "signedData":Ljava/nio/ByteBuffer;
    .end local v10    # "minSdkVersion":I
    .end local v11    # "maxSdkVersion":I
    .end local v12    # "signatures":Ljava/nio/ByteBuffer;
    .end local v13    # "publicKeyBytes":[B
    .end local v14    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "signatureCount":I
    .end local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .end local p1    # "signerBlock":Ljava/nio/ByteBuffer;
    .end local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v2

    .line 417
    .restart local v6    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v8    # "bestSigAlgorithm":I
    .restart local v9    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v10    # "minSdkVersion":I
    .restart local v11    # "maxSdkVersion":I
    .restart local v12    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v13    # "publicKeyBytes":[B
    .restart local v14    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "signatureCount":I
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .restart local p1    # "signerBlock":Ljava/nio/ByteBuffer;
    .restart local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    :cond_5c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 418
    .local v4, "sigAlgorithm":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v7

    if-nez v7, :cond_6e

    .line 420
    goto :goto_35

    .line 422
    :cond_6e
    const/4 v7, -0x1

    if-eq v8, v7, :cond_77

    .line 423
    invoke-static {v4, v8}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v7

    if-lez v7, :cond_7d

    .line 424
    :cond_77
    move v8, v4

    .line 425
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_7c} :catch_7e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3f .. :try_end_7c} :catch_7e

    move-object v6, v7

    .line 435
    .end local v0    # "signature":Ljava/nio/ByteBuffer;
    .end local v4    # "sigAlgorithm":I
    :cond_7d
    goto :goto_35

    .line 427
    :catch_7e
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    if-ne v2, v5, :cond_8a

    .line 429
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v10, v11, v4, v3}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 432
    :cond_8a
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse signature record #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 437
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a3
    const/4 v0, -0x1

    if-ne v8, v0, :cond_cc

    .line 438
    nop

    .line 445
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    .line 438
    if-nez v15, :cond_bc

    .line 439
    if-ne v0, v5, :cond_b4

    .line 440
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/4 v2, 0x7

    const/4 v4, 0x0

    invoke-static {v0, v10, v11, v4, v2}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 443
    :cond_b4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "No signatures found"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_bc
    if-ne v0, v5, :cond_c4

    .line 446
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/4 v4, 0x0

    invoke-static {v0, v10, v11, v4, v7}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 449
    :cond_c4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "No supported signatures found"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_cc
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v16

    .line 454
    .local v16, "keyAlgorithm":Ljava/lang/String;
    nop

    .line 455
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v4

    .line 456
    .local v4, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 457
    .local v7, "jcaSignatureAlgorithm":Ljava/lang/String;
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/security/spec/AlgorithmParameterSpec;

    .line 460
    .local v5, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    nop

    .line 461
    :try_start_e0
    invoke-static/range {v16 .. v16}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_e4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e0 .. :try_end_e4} :catch_375
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e0 .. :try_end_e4} :catch_375
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_e0 .. :try_end_e4} :catch_342
    .catch Ljava/security/InvalidKeyException; {:try_start_e0 .. :try_end_e4} :catch_342
    .catch Ljava/security/SignatureException; {:try_start_e0 .. :try_end_e4} :catch_342

    move-object/from16 v21, v4

    .end local v4    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .local v21, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    :try_start_e6
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v13}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 462
    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 463
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 464
    .local v4, "sig":Ljava/security/Signature;
    invoke-virtual {v4, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_f6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e6 .. :try_end_f6} :catch_339
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e6 .. :try_end_f6} :catch_339
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_e6 .. :try_end_f6} :catch_330
    .catch Ljava/security/InvalidKeyException; {:try_start_e6 .. :try_end_f6} :catch_330
    .catch Ljava/security/SignatureException; {:try_start_e6 .. :try_end_f6} :catch_330

    .line 465
    if-eqz v5, :cond_110

    .line 466
    :try_start_f8
    invoke-virtual {v4, v5}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_fb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f8 .. :try_end_fb} :catch_106
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_f8 .. :try_end_fb} :catch_106
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_f8 .. :try_end_fb} :catch_fc
    .catch Ljava/security/InvalidKeyException; {:try_start_f8 .. :try_end_fb} :catch_fc
    .catch Ljava/security/SignatureException; {:try_start_f8 .. :try_end_fb} :catch_fc

    goto :goto_110

    .line 481
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v4    # "sig":Ljava/security/Signature;
    :catch_fc
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v9

    move-object v9, v7

    goto/16 :goto_34c

    .line 470
    :catch_106
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v9

    move-object v9, v7

    goto/16 :goto_37f

    .line 468
    .restart local v0    # "publicKey":Ljava/security/PublicKey;
    .restart local v4    # "sig":Ljava/security/Signature;
    :cond_110
    :goto_110
    :try_start_110
    invoke-virtual {v4, v9}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 469
    invoke-virtual {v4, v6}, Ljava/security/Signature;->verify([B)Z

    move-result v2
    :try_end_117
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_110 .. :try_end_117} :catch_339
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_110 .. :try_end_117} :catch_339
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_110 .. :try_end_117} :catch_330
    .catch Ljava/security/InvalidKeyException; {:try_start_110 .. :try_end_117} :catch_330
    .catch Ljava/security/SignatureException; {:try_start_110 .. :try_end_117} :catch_330

    move/from16 v22, v2

    .line 488
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v4    # "sig":Ljava/security/Signature;
    .local v22, "sigVerified":Z
    nop

    .line 489
    if-nez v22, :cond_143

    .line 490
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v2, 0x70e1c89f

    if-ne v0, v2, :cond_12a

    .line 491
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v2, 0xb

    invoke-static {v0, v10, v11, v8, v2}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 495
    :cond_12a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature did not verify"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_143
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v0

    .line 500
    .local v2, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v0, 0x0

    .line 501
    .local v0, "contentDigest":[B
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 502
    invoke-static {v9}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 503
    .local v23, "digests":Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v3, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    move/from16 v24, v4

    move-object v4, v0

    .line 505
    .end local v0    # "contentDigest":[B
    .local v4, "contentDigest":[B
    .local v24, "digestCount":I
    :goto_15a
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 506
    move-object/from16 v25, v5

    .end local v5    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .local v25, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    add-int/lit8 v5, v24, 0x1

    .line 508
    .end local v24    # "digestCount":I
    .local v5, "digestCount":I
    :try_start_164
    invoke-static/range {v23 .. v23}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 509
    .local v0, "digest":Ljava/nio/ByteBuffer;
    move-object/from16 v24, v0

    .end local v0    # "digest":Ljava/nio/ByteBuffer;
    .local v24, "digest":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_16e} :catch_1a4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_164 .. :try_end_16e} :catch_1a4

    move-object/from16 v26, v6

    const/16 v6, 0x8

    .end local v6    # "bestSigAlgorithmSignatureBytes":[B
    .local v26, "bestSigAlgorithmSignatureBytes":[B
    if-ge v0, v6, :cond_189

    .line 510
    :try_start_174
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v6, 0x70e1c89f

    if-ne v0, v6, :cond_181

    .line 511
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/4 v6, 0x3

    invoke-static {v0, v10, v11, v8, v6}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 515
    :cond_181
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Record too short"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local v3    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "contentDigest":[B
    .end local v5    # "digestCount":I
    .end local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .end local v8    # "bestSigAlgorithm":I
    .end local v9    # "signedData":Ljava/nio/ByteBuffer;
    .end local v10    # "minSdkVersion":I
    .end local v11    # "maxSdkVersion":I
    .end local v12    # "signatures":Ljava/nio/ByteBuffer;
    .end local v13    # "publicKeyBytes":[B
    .end local v14    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "signatureCount":I
    .end local v16    # "keyAlgorithm":Ljava/lang/String;
    .end local v21    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v22    # "sigVerified":Z
    .end local v23    # "digests":Ljava/nio/ByteBuffer;
    .end local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v26    # "bestSigAlgorithmSignatureBytes":[B
    .end local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .end local p1    # "signerBlock":Ljava/nio/ByteBuffer;
    .end local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v0

    .line 517
    .restart local v2    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local v3    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "contentDigest":[B
    .restart local v5    # "digestCount":I
    .restart local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v8    # "bestSigAlgorithm":I
    .restart local v9    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v10    # "minSdkVersion":I
    .restart local v11    # "maxSdkVersion":I
    .restart local v12    # "signatures":Ljava/nio/ByteBuffer;
    .restart local v13    # "publicKeyBytes":[B
    .restart local v14    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "signatureCount":I
    .restart local v16    # "keyAlgorithm":Ljava/lang/String;
    .restart local v21    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v22    # "sigVerified":Z
    .restart local v23    # "digests":Ljava/nio/ByteBuffer;
    .restart local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v26    # "bestSigAlgorithmSignatureBytes":[B
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .restart local p1    # "signerBlock":Ljava/nio/ByteBuffer;
    .restart local p2    # "certFactory":Ljava/security/cert/CertificateFactory;
    :cond_189
    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 518
    .local v0, "sigAlgorithm":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    if-ne v0, v8, :cond_19b

    .line 520
    invoke-static/range {v24 .. v24}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_19a} :catch_1a2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_174 .. :try_end_19a} :catch_1a2

    move-object v4, v6

    .line 529
    .end local v0    # "sigAlgorithm":I
    .end local v24    # "digest":Ljava/nio/ByteBuffer;
    :cond_19b
    move/from16 v24, v5

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    goto :goto_15a

    .line 522
    :catch_1a2
    move-exception v0

    goto :goto_1a7

    .end local v26    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v6    # "bestSigAlgorithmSignatureBytes":[B
    :catch_1a4
    move-exception v0

    move-object/from16 v26, v6

    .line 523
    .end local v6    # "bestSigAlgorithmSignatureBytes":[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v26    # "bestSigAlgorithmSignatureBytes":[B
    :goto_1a7
    iget v6, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    move-object/from16 v19, v7

    const v7, 0x70e1c89f

    .end local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .local v19, "jcaSignatureAlgorithm":Ljava/lang/String;
    if-ne v6, v7, :cond_1b6

    .line 524
    iget v6, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/4 v7, 0x3

    invoke-static {v6, v10, v11, v8, v7}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 528
    :cond_1b6
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v9

    .end local v9    # "signedData":Ljava/nio/ByteBuffer;
    .local v18, "signedData":Ljava/nio/ByteBuffer;
    const-string v9, "Failed to parse digest record #"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v18    # "signedData":Ljava/nio/ByteBuffer;
    .end local v19    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .end local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v26    # "bestSigAlgorithmSignatureBytes":[B
    .local v5, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v6    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v9    # "signedData":Ljava/nio/ByteBuffer;
    .local v24, "digestCount":I
    :cond_1d1
    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v9

    .end local v5    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "bestSigAlgorithmSignatureBytes":[B
    .end local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .end local v9    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v19    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v26    # "bestSigAlgorithmSignatureBytes":[B
    invoke-interface {v14, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f5

    .line 533
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v6, 0x70e1c89f

    if-ne v0, v6, :cond_1ed

    .line 534
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v5, 0xc

    invoke-static {v0, v10, v11, v8, v5}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 538
    :cond_1ed
    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_1f5
    if-nez v4, :cond_21d

    .line 542
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v6, 0x70e1c89f

    if-ne v0, v6, :cond_204

    .line 543
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/4 v5, 0x5

    invoke-static {v0, v10, v11, v8, v5}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 546
    :cond_204
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No content digests found for signer with signature algorithm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_21d
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v9

    .line 551
    .local v9, "digestAlgorithm":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-static/range {v18 .. v18}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 554
    .local v27, "certificates":Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 555
    .local v5, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    .line 556
    .local v0, "certificateCount":I
    :goto_233
    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_28b

    .line 557
    add-int/lit8 v6, v0, 0x1

    .line 558
    .end local v0    # "certificateCount":I
    .local v6, "certificateCount":I
    invoke-static/range {v27 .. v27}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 561
    .local v7, "encodedCert":[B
    :try_start_23f
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_244
    .catch Ljava/security/cert/CertificateException; {:try_start_23f .. :try_end_244} :catch_25d

    .line 562
    move-object/from16 v28, v2

    move-object/from16 v2, p2

    .end local v2    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .local v28, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    :try_start_248
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_24e
    .catch Ljava/security/cert/CertificateException; {:try_start_248 .. :try_end_24e} :catch_25b

    .line 570
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    nop

    .line 571
    new-instance v2, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v2, v0, v7}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 572
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    .local v2, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v2    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v7    # "encodedCert":[B
    move v0, v6

    move-object/from16 v2, v28

    goto :goto_233

    .line 563
    .restart local v7    # "encodedCert":[B
    :catch_25b
    move-exception v0

    goto :goto_260

    .end local v28    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .local v2, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    :catch_25d
    move-exception v0

    move-object/from16 v28, v2

    .line 564
    .end local v2    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .local v0, "e":Ljava/security/cert/CertificateException;
    .restart local v28    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    :goto_260
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    move-object/from16 v29, v3

    const v3, 0x70e1c89f

    .end local v3    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v29, "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-ne v2, v3, :cond_270

    .line 565
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v3, 0xe

    invoke-static {v2, v10, v11, v8, v3}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 569
    :cond_270
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v4

    .end local v4    # "contentDigest":[B
    .local v30, "contentDigest":[B
    const-string v4, "Failed to decode certificate #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 575
    .end local v6    # "certificateCount":I
    .end local v7    # "encodedCert":[B
    .end local v28    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local v29    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "contentDigest":[B
    .local v0, "certificateCount":I
    .restart local v2    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local v3    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "contentDigest":[B
    :cond_28b
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    .end local v2    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local v3    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "contentDigest":[B
    .restart local v28    # "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local v29    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v30    # "contentDigest":[B
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2ad

    .line 576
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v6, 0x70e1c89f

    if-ne v2, v6, :cond_2a5

    .line 577
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v3, 0xf

    invoke-static {v2, v10, v11, v8, v3}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 580
    :cond_2a5
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "No certificates listed"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 582
    :cond_2ad
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/security/cert/X509Certificate;

    .line 583
    .local v17, "mainCertificate":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 584
    .local v2, "certificatePublicKeyBytes":[B
    invoke-static {v13, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2da

    .line 585
    iget v3, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v6, 0x70e1c89f

    if-ne v3, v6, :cond_2d2

    .line 586
    iget v3, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v4, 0x10

    invoke-static {v3, v10, v11, v8, v4}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 589
    :cond_2d2
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Public key mismatch between certificate and signature record"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 593
    :cond_2da
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 594
    .local v6, "signedMinSDK":I
    const/16 v3, 0x11

    if-eq v6, v10, :cond_2f7

    .line 595
    iget v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v7, 0x70e1c89f

    if-ne v4, v7, :cond_2ee

    .line 596
    iget v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    invoke-static {v4, v10, v11, v8, v3}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 599
    :cond_2ee
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "minSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 602
    :cond_2f7
    iput v6, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mSignerMinSdkVersion:I

    .line 604
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 605
    .local v7, "signedMaxSDK":I
    if-eq v7, v11, :cond_316

    .line 606
    iget v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v3, 0x70e1c89f

    if-ne v4, v3, :cond_30d

    .line 607
    iget v3, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v4, 0x11

    invoke-static {v3, v10, v11, v8, v4}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 610
    :cond_30d
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "maxSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 614
    :cond_316
    move-object v3, v2

    .end local v2    # "certificatePublicKeyBytes":[B
    .local v3, "certificatePublicKeyBytes":[B
    invoke-static/range {v18 .. v18}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 615
    .local v2, "additionalAttrs":Ljava/nio/ByteBuffer;
    move-object/from16 v4, v19

    move/from16 v19, v9

    move-object v9, v4

    move-object/from16 v4, p2

    move-object/from16 v20, v3

    move-object v3, v5

    move-object/from16 v5, v28

    move/from16 v28, v0

    .end local v0    # "certificateCount":I
    .local v3, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v5, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .local v9, "jcaSignatureAlgorithm":Ljava/lang/String;
    .local v19, "digestAlgorithm":I
    .local v20, "certificatePublicKeyBytes":[B
    .local v28, "certificateCount":I
    invoke-direct/range {v1 .. v8}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifyAdditionalAttributes(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;Ljava/util/Map;III)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    .line 617
    .local v0, "verifiedSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iput v8, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    .line 618
    return-object v0

    .line 481
    .end local v0    # "verifiedSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v2    # "additionalAttrs":Ljava/nio/ByteBuffer;
    .end local v3    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v17    # "mainCertificate":Ljava/security/cert/X509Certificate;
    .end local v18    # "signedData":Ljava/nio/ByteBuffer;
    .end local v19    # "digestAlgorithm":I
    .end local v20    # "certificatePublicKeyBytes":[B
    .end local v22    # "sigVerified":Z
    .end local v23    # "digests":Ljava/nio/ByteBuffer;
    .end local v24    # "digestCount":I
    .end local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v26    # "bestSigAlgorithmSignatureBytes":[B
    .end local v27    # "certificates":Ljava/nio/ByteBuffer;
    .end local v28    # "certificateCount":I
    .end local v29    # "digestsSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "contentDigest":[B
    .local v5, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .local v6, "bestSigAlgorithmSignatureBytes":[B
    .local v7, "jcaSignatureAlgorithm":Ljava/lang/String;
    .local v9, "signedData":Ljava/nio/ByteBuffer;
    :catch_330
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v9

    move-object v9, v7

    .end local v5    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "bestSigAlgorithmSignatureBytes":[B
    .end local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .local v9, "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v18    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v26    # "bestSigAlgorithmSignatureBytes":[B
    goto :goto_34c

    .line 470
    .end local v18    # "signedData":Ljava/nio/ByteBuffer;
    .end local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v26    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v5    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v6    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .local v9, "signedData":Ljava/nio/ByteBuffer;
    :catch_339
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v9

    move-object v9, v7

    .end local v5    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "bestSigAlgorithmSignatureBytes":[B
    .end local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .local v9, "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v18    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v26    # "bestSigAlgorithmSignatureBytes":[B
    goto :goto_37f

    .line 481
    .end local v18    # "signedData":Ljava/nio/ByteBuffer;
    .end local v21    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v26    # "bestSigAlgorithmSignatureBytes":[B
    .local v4, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v5    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v6    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .local v9, "signedData":Ljava/nio/ByteBuffer;
    :catch_342
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v9

    move-object v9, v7

    .line 482
    .end local v4    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v5    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "bestSigAlgorithmSignatureBytes":[B
    .end local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .local v9, "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v18    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v21    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v26    # "bestSigAlgorithmSignatureBytes":[B
    :goto_34c
    iget v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v6, 0x70e1c89f

    if-ne v4, v6, :cond_35a

    .line 483
    iget v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v5, 0xa

    invoke-static {v4, v10, v11, v8, v5}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 486
    :cond_35a
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 470
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v18    # "signedData":Ljava/nio/ByteBuffer;
    .end local v21    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v26    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v4    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v5    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v6    # "bestSigAlgorithmSignatureBytes":[B
    .restart local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .local v9, "signedData":Ljava/nio/ByteBuffer;
    :catch_375
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v9

    move-object v9, v7

    .line 474
    .end local v4    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v5    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "bestSigAlgorithmSignatureBytes":[B
    .end local v7    # "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v0    # "e":Ljava/security/GeneralSecurityException;
    .local v9, "jcaSignatureAlgorithm":Ljava/lang/String;
    .restart local v18    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v21    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .restart local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v26    # "bestSigAlgorithmSignatureBytes":[B
    :goto_37f
    iget v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v6, 0x70e1c89f

    if-ne v4, v6, :cond_38d

    .line 475
    iget v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v5, 0x9

    invoke-static {v4, v10, v11, v8, v5}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 479
    :cond_38d
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 357
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v8    # "bestSigAlgorithm":I
    .end local v12    # "signatures":Ljava/nio/ByteBuffer;
    .end local v13    # "publicKeyBytes":[B
    .end local v14    # "signaturesSigAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "signatureCount":I
    .end local v16    # "keyAlgorithm":Ljava/lang/String;
    .end local v18    # "signedData":Ljava/nio/ByteBuffer;
    .end local v21    # "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v25    # "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v26    # "bestSigAlgorithmSignatureBytes":[B
    .local v9, "signedData":Ljava/nio/ByteBuffer;
    :cond_3a8
    move-object/from16 v18, v9

    .line 360
    .end local v9    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "signedData":Ljava/nio/ByteBuffer;
    :goto_3aa
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v2, 0x1b93ad61

    if-ne v0, v2, :cond_3c8

    .line 361
    iget-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3c1

    iget-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    .line 362
    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    if-le v0, v10, :cond_438

    .line 363
    :cond_3c1
    invoke-static {v10}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalRotationMinSdkVersion:Ljava/util/OptionalInt;

    goto :goto_438

    .line 365
    :cond_3c8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->apkPqcHybridSigning()Z

    move-result v0

    if-eqz v0, :cond_438

    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const v6, 0x70e1c89f

    if-ne v0, v6, :cond_438

    .line 370
    iget-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalHybridMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_42c

    .line 373
    iget-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalHybridMinSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    .line 374
    .local v0, "firstSignerMinSdkVersion":I
    iget-object v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalHybridMaxSdkVersion:Ljava/util/OptionalInt;

    invoke-virtual {v2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    .line 375
    .local v2, "firstSignerMaxSdkVersion":I
    if-ne v0, v10, :cond_3ef

    if-eq v2, v11, :cond_3ee

    goto :goto_3ef

    .line 386
    .end local v0    # "firstSignerMinSdkVersion":I
    .end local v2    # "firstSignerMaxSdkVersion":I
    :cond_3ee
    goto :goto_438

    .line 377
    .restart local v0    # "firstSignerMinSdkVersion":I
    .restart local v2    # "firstSignerMaxSdkVersion":I
    :cond_3ef
    :goto_3ef
    iget v3, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-static {v3, v10, v11, v5, v4}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 380
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hybrid signer SDK versions do not match; signer1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", signer2: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 387
    .end local v0    # "firstSignerMinSdkVersion":I
    .end local v2    # "firstSignerMaxSdkVersion":I
    :cond_42c
    invoke-static {v10}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalHybridMinSdkVersion:Ljava/util/OptionalInt;

    .line 388
    invoke-static {v11}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mOptionalHybridMaxSdkVersion:Ljava/util/OptionalInt;

    .line 392
    :cond_438
    :goto_438
    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signer not supported by this platform version. This platform: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", signer minSdkVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxSdkVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist verifyV31Signers(Ljava/util/List;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;",
            ">;)",
            "Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;"
        }
    .end annotation

    .line 848
    .local p1, "verifiedSigners":Ljava/util/List;, "Ljava/util/List<Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2b

    .line 849
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    .line 850
    .local v0, "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    .line 853
    .local v1, "signer2":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-boolean v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->isDevTarget:Z

    iget-boolean v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->isDevTarget:Z

    if-eq v3, v4, :cond_23

    .line 858
    iget-boolean v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->isDevTarget:Z

    if-eqz v3, :cond_21

    move-object v3, v0

    goto :goto_22

    :cond_21
    move-object v3, v1

    .line 859
    .end local v0    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v1    # "signer2":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .local v3, "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :goto_22
    goto :goto_32

    .line 854
    .end local v3    # "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v0    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v1    # "signer2":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :cond_23
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "APK Signature Scheme V3 only supports one signer: multiple signers found."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    .end local v0    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v1    # "signer2":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :cond_2b
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    .line 862
    .restart local v3    # "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :goto_32
    iget-object v0, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->isCertificatePqc(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 863
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->apkPqcHybridSigning()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 864
    iget v0, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v1, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v2, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v4, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    const/16 v5, 0x17

    invoke-static {v0, v1, v2, v4, v5}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 868
    :cond_4f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The platform does not currently support single PQC signers in the v3 signature blocks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_57
    return-object v3
.end method


# virtual methods
.method public blacklist verifyV32Signers(Ljava/util/List;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;",
            ">;)",
            "Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;"
        }
    .end annotation

    .line 885
    .local p1, "verifiedSigners":Ljava/util/List;, "Ljava/util/List<Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_4f

    .line 889
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-ne v0, v4, :cond_27

    .line 890
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    .line 891
    .local v0, "verifiedSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v5, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v6, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v7, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    invoke-static {v4, v5, v6, v7, v3}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 894
    .end local v0    # "verifiedSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    goto :goto_2c

    .line 895
    :cond_27
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationBlockFailure(II)V

    .line 898
    :goto_2c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APK Signature Scheme V3.2 supports exactly two signers; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 899
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_4f
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    .line 902
    .local v3, "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    .line 906
    .local v6, "signer2":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-object v0, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v0, v0, v5

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->isCertificatePqc(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    .line 907
    .local v7, "signer1IsPqc":Z
    iget-object v0, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v0, v0, v5

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->isCertificatePqc(Ljava/security/cert/X509Certificate;)Z

    move-result v8

    .line 908
    .local v8, "signer2IsPqc":Z
    if-ne v7, v8, :cond_9c

    .line 909
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v4, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v5, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v9, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    const/16 v10, 0x1f

    invoke-static {v0, v4, v5, v9, v10}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 912
    if-eqz v7, :cond_81

    const-string v0, "PQC"

    goto :goto_83

    :cond_81
    const-string v0, "classical"

    .line 913
    .local v0, "algoType":Ljava/lang/String;
    :goto_83
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APK Signature Scheme V3.2 requires one classical and one PQC signer; both are "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 917
    .end local v0    # "algoType":Ljava/lang/String;
    :cond_9c
    if-eqz v7, :cond_a0

    move-object v0, v6

    goto :goto_a1

    :cond_a0
    move-object v0, v3

    :goto_a1
    move-object v9, v0

    .line 918
    .local v9, "classicalSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    if-eqz v7, :cond_a6

    move-object v0, v3

    goto :goto_a7

    :cond_a6
    move-object v0, v6

    :goto_a7
    move-object v10, v0

    .line 921
    .local v10, "pqcSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget v0, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v11, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    if-ne v0, v11, :cond_2e2

    iget v0, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v11, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    if-ne v0, v11, :cond_2e2

    .line 935
    iget-object v0, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-nez v0, :cond_f0

    iget-object v0, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v0, :cond_bd

    goto :goto_f0

    .line 1013
    :cond_bd
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v0, "pqcLineage":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v4, "pqcFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v11, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v11, v11, v5

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    const/16 v11, 0x17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object v12, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v5, v12, v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v5, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    invoke-direct {v5, v0, v4}, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v18, v3

    move-object/from16 v21, v5

    .local v5, "pqcPor":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    goto/16 :goto_210

    .line 936
    .end local v0    # "pqcLineage":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "pqcFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "pqcPor":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :cond_f0
    :goto_f0
    iget-object v0, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v0, :cond_2c4

    iget-object v0, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-nez v0, :cond_fc

    move-object/from16 v18, v3

    goto/16 :goto_2c6

    .line 948
    :cond_fc
    iget-object v0, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v0, v0, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 949
    .local v11, "classicalLineageSize":I
    iget-object v0, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v0, v0, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 950
    .local v12, "pqcLineageSize":I
    const/16 v0, 0x21

    if-ne v11, v12, :cond_294

    .line 961
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_111
    add-int/lit8 v14, v11, -0x1

    if-ge v13, v14, :cond_1d4

    .line 963
    :try_start_115
    iget-object v14, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v14, v14, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/X509Certificate;

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v14

    .line 964
    .local v14, "classicalCertBytes":[B
    iget-object v15, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v15, v15, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v15

    .line 965
    .local v15, "pqcCertBytes":[B
    invoke-static {v14, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16

    if-eqz v16, :cond_183

    .line 974
    move/from16 v16, v4

    iget-object v4, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v4, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move/from16 v17, v5

    iget-object v5, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v5, v5, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    .line 975
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 974
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 993
    .end local v14    # "classicalCertBytes":[B
    .end local v15    # "pqcCertBytes":[B
    nop

    .line 961
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_111

    .line 976
    .restart local v14    # "classicalCertBytes":[B
    .restart local v15    # "pqcCertBytes":[B
    :cond_15b
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v4, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v5, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v2, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I
    :try_end_163
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_115 .. :try_end_163} :catch_1ab

    move-object/from16 v18, v3

    .end local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .local v18, "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    const/16 v3, 0x22

    :try_start_167
    invoke-static {v0, v4, v5, v2, v3}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 979
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK Signature Scheme V3.2 requires both signers have the same capabilities granted to the signing history, but the capabilities diverge at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "signer2":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v7    # "signer1IsPqc":Z
    .end local v8    # "signer2IsPqc":Z
    .end local v9    # "classicalSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v10    # "pqcSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v11    # "classicalLineageSize":I
    .end local v12    # "pqcLineageSize":I
    .end local v13    # "i":I
    .end local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .end local p1    # "verifiedSigners":Ljava/util/List;, "Ljava/util/List<Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;>;"
    throw v0

    .line 966
    .restart local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v6    # "signer2":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v7    # "signer1IsPqc":Z
    .restart local v8    # "signer2IsPqc":Z
    .restart local v9    # "classicalSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v10    # "pqcSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v11    # "classicalLineageSize":I
    .restart local v12    # "pqcLineageSize":I
    .restart local v13    # "i":I
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .restart local p1    # "verifiedSigners":Ljava/util/List;, "Ljava/util/List<Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;>;"
    :cond_183
    move-object/from16 v18, v3

    .end local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v3, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v4, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v5, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    invoke-static {v2, v3, v4, v5, v0}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 969
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK Signature Scheme V3.2 requires both signers have the same signing history, but the history diverges at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v6    # "signer2":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v7    # "signer1IsPqc":Z
    .end local v8    # "signer2IsPqc":Z
    .end local v9    # "classicalSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v10    # "pqcSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v11    # "classicalLineageSize":I
    .end local v12    # "pqcLineageSize":I
    .end local v13    # "i":I
    .end local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .end local p1    # "verifiedSigners":Ljava/util/List;, "Ljava/util/List<Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;>;"
    throw v0
    :try_end_1a9
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_167 .. :try_end_1a9} :catch_1a9

    .line 985
    .end local v14    # "classicalCertBytes":[B
    .end local v15    # "pqcCertBytes":[B
    .restart local v6    # "signer2":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v7    # "signer1IsPqc":Z
    .restart local v8    # "signer2IsPqc":Z
    .restart local v9    # "classicalSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v10    # "pqcSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v11    # "classicalLineageSize":I
    .restart local v12    # "pqcLineageSize":I
    .restart local v13    # "i":I
    .restart local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local p0    # "this":Landroid/util/apk/ApkSignatureSchemeV3Verifier;
    .restart local p1    # "verifiedSigners":Ljava/util/List;, "Ljava/util/List<Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;>;"
    :catch_1a9
    move-exception v0

    goto :goto_1ae

    .end local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :catch_1ab
    move-exception v0

    move-object/from16 v18, v3

    .line 986
    .end local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :goto_1ae
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v3, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v4, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v5, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    const/16 v14, 0xe

    invoke-static {v2, v3, v4, v5, v14}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 989
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to encode certificate when comparing signing history between V3.2 hybrid signers at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 961
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :cond_1d4
    move-object/from16 v18, v3

    move/from16 v16, v4

    move/from16 v17, v5

    .line 998
    .end local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v13    # "i":I
    .restart local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .local v0, "pqcLineage":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v2, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v2, v2, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1002
    iget-object v2, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v2, v2, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    .local v2, "pqcFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v3, v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1008
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    new-instance v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    invoke-direct {v3, v0, v2}, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v5, v3

    .line 1010
    .end local v0    # "pqcLineage":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "pqcFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "classicalLineageSize":I
    .end local v12    # "pqcLineageSize":I
    .restart local v5    # "pqcPor":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    move-object/from16 v21, v5

    .line 1025
    .end local v5    # "pqcPor":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .local v21, "pqcPor":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :goto_210
    iget-object v0, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_276

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1026
    .local v2, "classicalEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1027
    .local v3, "classicalDigestAlgo":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1028
    .local v4, "classicalDigestValue":[B
    iget-object v5, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1032
    .local v5, "pqcDigestValue":[B
    if-eqz v5, :cond_275

    .line 1033
    invoke-static {v5, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_24b

    goto :goto_275

    .line 1034
    :cond_24b
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v11, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v12, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v13, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    const/16 v14, 0xd

    invoke-static {v0, v11, v12, v13, v14}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 1037
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1038
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    .end local v2    # "classicalEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    .end local v3    # "classicalDigestAlgo":I
    .end local v4    # "classicalDigestValue":[B
    .end local v5    # "pqcDigestValue":[B
    :cond_275
    :goto_275
    goto :goto_21a

    .line 1044
    :cond_276
    new-instance v19, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    iget-object v0, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    iget-object v2, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    iget v3, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v4, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v5, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    iget-boolean v11, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->isDevTarget:Z

    move-object/from16 v20, v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v11

    invoke-direct/range {v19 .. v26}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;-><init>([Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;Ljava/util/Map;IIIZ)V

    .line 1047
    .local v19, "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    return-object v19

    .line 951
    .end local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v19    # "result":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v21    # "pqcPor":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .local v3, "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v11    # "classicalLineageSize":I
    .restart local v12    # "pqcLineageSize":I
    :cond_294
    move-object/from16 v18, v3

    .end local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v3, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v4, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v5, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    invoke-static {v2, v3, v4, v5, v0}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 954
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK Signature Scheme V3.2 requires both signers have the same signing history, but classical has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PQC has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    .end local v11    # "classicalLineageSize":I
    .end local v12    # "pqcLineageSize":I
    .end local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :cond_2c4
    move-object/from16 v18, v3

    .line 938
    .end local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :goto_2c6
    iget-object v0, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-nez v0, :cond_2cc

    move-object v0, v9

    goto :goto_2cd

    :cond_2cc
    move-object v0, v10

    .line 939
    .local v0, "signerMissingPor":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :goto_2cd
    iget v2, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v5, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    const/16 v11, 0x20

    invoke-static {v2, v3, v4, v5, v11}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 942
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "APK Signature Scheme V3.2 requires both signers have the same signing history, but one of the signers is missing its lineage"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 921
    .end local v0    # "signerMissingPor":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    :cond_2e2
    move-object/from16 v18, v3

    .line 923
    .end local v3    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .restart local v18    # "signer1":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget v0, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->mBlockId:I

    iget v2, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    iget v3, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    iget v4, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->algorithmId:I

    const/16 v5, 0x23

    invoke-static {v0, v2, v3, v4, v5}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSignatureVerificationSignerFailure(IIIII)V

    .line 926
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK Signature Scheme V3.2 requires both signers target the same SDK range; classical: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v9, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", PQC: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->minSdkVersion:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->maxSdkVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
