.class public Landroid/util/apk/ApkSignatureVerifier;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;,
        Landroid/util/apk/ApkSignatureVerifier$Result;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final blacklist NUMBER_OF_CORES:I

.field private static final blacklist TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final greylist-max-o sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final blacklist sOverrideSigningDetails:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/SigningDetails;",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetNUMBER_OF_CORES()I
    .registers 1

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    .line 91
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1a

    goto :goto_22

    :cond_1a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    :goto_22
    sput v1, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    .line 90
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addOverrideSigningDetails(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)V
    .registers 4
    .param p0, "oldSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p1, "newSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 150
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 151
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist clearOverrideSigningDetails()V
    .registers 2

    .line 172
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 173
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static greylist-max-o closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .registers 2
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;

    .line 712
    if-eqz p0, :cond_7

    .line 714
    :try_start_2
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 716
    goto :goto_7

    .line 715
    :catch_6
    move-exception v0

    .line 718
    :cond_7
    :goto_7
    return-void
.end method

.method static greylist-max-o convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .registers 5
    .param p0, "certs"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 704
    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    .line 705
    .local v0, "res":[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 706
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v0, v1

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 708
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method public static greylist-max-o generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .registers 3
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

    .line 774
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 775
    :catch_5
    move-exception v0

    .line 778
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o getVerityRootHash(Ljava/lang/String;)[B
    .registers 3
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 752
    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 753
    :catch_5
    move-exception v0

    .line 757
    :try_start_6
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 758
    :catch_b
    move-exception v0

    .line 759
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p2, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/util/jar/StrictJarFile;",
            "Ljava/util/zip/ZipEntry;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 661
    const/4 v0, 0x0

    .line 665
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 666
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)V

    .line 667
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_11} :catch_17
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    .line 672
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 667
    return-object v1

    .line 672
    :catchall_15
    move-exception v1

    goto :goto_43

    .line 668
    :catch_17
    move-exception v1

    .line 669
    .local v1, "e":Ljava/lang/Exception;
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 670
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    const/16 v3, -0x66

    invoke-interface {p0, v3, v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_15

    .line 672
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 669
    return-object v2

    .line 672
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 673
    throw v1
.end method

.method private static greylist-max-o readFullyIgnoringContents(Ljava/io/InputStream;)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 678
    .local v0, "buffer":[B
    if-nez v0, :cond_f

    .line 679
    const/16 v1, 0x1000

    new-array v0, v1, [B

    .line 682
    :cond_f
    const/4 v1, 0x0

    .line 683
    .local v1, "n":I
    const/4 v2, 0x0

    .line 684
    .local v2, "count":I
    :goto_11
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v1, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    .line 685
    add-int/2addr v2, v1

    goto :goto_11

    .line 688
    :cond_1d
    sget-object v3, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 689
    return-void
.end method

.method public static blacklist removeOverrideSigningDetails(Landroid/content/pm/SigningDetails;)V
    .registers 3
    .param p0, "oldSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 163
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 164
    :try_start_3
    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 102
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifySignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 122
    nop

    .line 123
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 124
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 125
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 127
    :cond_10
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    iget-object v1, v1, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 128
    .local v1, "signingDetails":Landroid/content/pm/SigningDetails;
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 130
    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 131
    :try_start_21
    sget-object v3, Landroid/util/apk/ApkSignatureVerifier;->sOverrideSigningDetails:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SigningDetails;

    .line 132
    .local v3, "overrideSigningDetails":Landroid/content/pm/SigningDetails;
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_46

    .line 133
    if-eqz v3, :cond_49

    .line 134
    const-string v2, "ApkSignatureVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying override signing details for APK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move-object v1, v3

    goto :goto_49

    .line 132
    .end local v3    # "overrideSigningDetails":Landroid/content/pm/SigningDetails;
    :catchall_46
    move-exception v3

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v3

    .line 138
    :cond_49
    :goto_49
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 190
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/16 v2, -0x67

    const/4 v3, 0x4

    if-le p2, v3, :cond_27

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 199
    :cond_27
    :try_start_27
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_27 .. :try_end_2b} :catch_2c

    return-object v0

    .line 200
    :catch_2c
    move-exception v4

    .line 202
    .local v4, "e":Landroid/util/apk/SignatureNotFoundException;
    if-lt p2, v3, :cond_47

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme v4 signature in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 208
    .end local v4    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_47
    const/4 v3, 0x3

    if-le p2, v3, :cond_68

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 215
    :cond_68
    invoke-static {p0, p1, p2, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 33
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 450
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p2

    const/4 v9, 0x1

    if-eqz v8, :cond_c

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    goto :goto_d

    :cond_c
    move v0, v9

    :goto_d
    move v10, v0

    .line 451
    .local v10, "objectNumber":I
    new-array v3, v10, [Landroid/util/jar/StrictJarFile;

    .line 452
    .local v3, "jarFile":[Landroid/util/jar/StrictJarFile;
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 458
    .local v2, "strictJarFiles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/jar/StrictJarFile;>;"
    const/16 v11, -0x67

    const-wide/32 v12, 0x40000

    :try_start_1a
    const-string/jumbo v0, "strictJarFileCtor"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 461
    invoke-static {}, Landroid/util/apk/ApkSignatureVerifierStub;->getInstance()Landroid/util/apk/ApkSignatureVerifierStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/apk/ApkSignatureVerifierStub;->setVendingPerfCore()V
    :try_end_27
    .catch Ljava/security/GeneralSecurityException; {:try_start_1a .. :try_end_27} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_27} :catch_27f
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_27} :catch_27f
    .catchall {:try_start_1a .. :try_end_27} :catchall_27a

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    if-ge v0, v10, :cond_46

    .line 482
    :try_start_2a
    new-instance v1, Landroid/util/jar/StrictJarFile;

    invoke-direct {v1, v6, v9, v8}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    aput-object v1, v3, v0
    :try_end_31
    .catch Ljava/security/GeneralSecurityException; {:try_start_2a .. :try_end_31} :catch_40
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_31} :catch_3a
    .catchall {:try_start_2a .. :try_end_31} :catchall_34

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 647
    .end local v0    # "i":I
    :catchall_34
    move-exception v0

    move v5, v10

    move-wide/from16 v20, v12

    goto/16 :goto_2de

    .line 633
    :catch_3a
    move-exception v0

    move v5, v10

    move-wide/from16 v20, v12

    goto/16 :goto_283

    .line 630
    :catch_40
    move-exception v0

    move v5, v10

    move-wide/from16 v20, v12

    goto/16 :goto_2b2

    .line 488
    :cond_46
    :try_start_46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 493
    .local v14, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    const/4 v15, 0x0

    aget-object v0, v3, v15

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_55
    .catch Ljava/security/GeneralSecurityException; {:try_start_46 .. :try_end_55} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_55} :catch_27f
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_55} :catch_27f
    .catchall {:try_start_46 .. :try_end_55} :catchall_27a

    move-object v1, v0

    .line 496
    .local v1, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_89

    .line 497
    :try_start_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " has no manifest"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, -0x65

    invoke-interface {v4, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_77
    .catch Ljava/security/GeneralSecurityException; {:try_start_58 .. :try_end_77} :catch_40
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_77} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_77} :catch_3a
    .catchall {:try_start_58 .. :try_end_77} :catchall_34

    .line 647
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 648
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7e
    if-ge v5, v10, :cond_88

    .line 650
    aget-object v7, v3, v5

    invoke-static {v7}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 649
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    .line 497
    .end local v5    # "i":I
    :cond_88
    return-object v0

    .line 500
    :cond_89
    :try_start_89
    aget-object v0, v3, v15

    .line 502
    invoke-static {v4, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v5, v0

    .line 504
    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0
    :try_end_94
    .catch Ljava/security/GeneralSecurityException; {:try_start_89 .. :try_end_94} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_94} :catch_27f
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_94} :catch_27f
    .catchall {:try_start_89 .. :try_end_94} :catchall_27a

    if-eqz v0, :cond_ac

    .line 505
    :try_start_96
    invoke-interface {v4, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_9a
    .catch Ljava/security/GeneralSecurityException; {:try_start_96 .. :try_end_9a} :catch_40
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9a} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_9a} :catch_3a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_34

    .line 647
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 648
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a1
    if-ge v7, v10, :cond_ab

    .line 650
    aget-object v9, v3, v7

    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 649
    add-int/lit8 v7, v7, 0x1

    goto :goto_a1

    .line 505
    .end local v7    # "i":I
    :cond_ab
    return-object v0

    .line 507
    :cond_ac
    :try_start_ac
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/Certificate;

    move-object/from16 v16, v0

    .line 508
    .local v16, "lastCerts":[[Ljava/security/cert/Certificate;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0
    :try_end_b8
    .catch Ljava/security/GeneralSecurityException; {:try_start_ac .. :try_end_b8} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b8} :catch_27f
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_b8} :catch_27f
    .catchall {:try_start_ac .. :try_end_b8} :catchall_27a

    if-eqz v0, :cond_ef

    .line 509
    :try_start_ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " has no certificates at entry "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "AndroidManifest.xml"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v11, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_dd
    .catch Ljava/security/GeneralSecurityException; {:try_start_ba .. :try_end_dd} :catch_40
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_dd} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_ba .. :try_end_dd} :catch_3a
    .catchall {:try_start_ba .. :try_end_dd} :catchall_34

    .line 647
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 648
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_e4
    if-ge v7, v10, :cond_ee

    .line 650
    aget-object v9, v3, v7

    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 649
    add-int/lit8 v7, v7, 0x1

    goto :goto_e4

    .line 509
    .end local v7    # "i":I
    :cond_ee
    return-object v0

    .line 513
    :cond_ef
    :try_start_ef
    invoke-static/range {v16 .. v16}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v7

    .line 516
    .local v7, "lastSigs":[Landroid/content/pm/Signature;
    if-eqz v8, :cond_24e

    .line 518
    aget-object v0, v3, v15

    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v17, v0

    .line 520
    .local v17, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :goto_fd
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_101
    .catch Ljava/security/GeneralSecurityException; {:try_start_ef .. :try_end_101} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_101} :catch_27f
    .catch Ljava/lang/RuntimeException; {:try_start_ef .. :try_end_101} :catch_27f
    .catchall {:try_start_ef .. :try_end_101} :catchall_27a

    if-eqz v0, :cond_14e

    .line 521
    :try_start_103
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 522
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_110

    goto :goto_fd

    .line 524
    :cond_110
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18
    :try_end_114
    .catch Ljava/security/GeneralSecurityException; {:try_start_103 .. :try_end_114} :catch_148
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_114} :catch_142
    .catch Ljava/lang/RuntimeException; {:try_start_103 .. :try_end_114} :catch_142
    .catchall {:try_start_103 .. :try_end_114} :catchall_13c

    move-object/from16 v19, v18

    .line 525
    .local v19, "entryName":Ljava/lang/String;
    move-wide/from16 v20, v12

    :try_start_118
    const-string v12, "META-INF/"

    move-object/from16 v13, v19

    .end local v19    # "entryName":Ljava/lang/String;
    .local v13, "entryName":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_125

    move-wide/from16 v12, v20

    goto :goto_fd

    .line 526
    :cond_125
    const-string v12, "AndroidManifest.xml"

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_130

    move-wide/from16 v12, v20

    goto :goto_fd

    .line 528
    :cond_130
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_133
    .catch Ljava/security/GeneralSecurityException; {:try_start_118 .. :try_end_133} :catch_13a
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_133} :catch_138
    .catch Ljava/lang/RuntimeException; {:try_start_118 .. :try_end_133} :catch_138
    .catchall {:try_start_118 .. :try_end_133} :catchall_136

    .line 529
    move-wide/from16 v12, v20

    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v13    # "entryName":Ljava/lang/String;
    goto :goto_fd

    .line 647
    .end local v1    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .end local v7    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v14    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v16    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v17    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :catchall_136
    move-exception v0

    goto :goto_13f

    .line 633
    :catch_138
    move-exception v0

    goto :goto_145

    .line 630
    :catch_13a
    move-exception v0

    goto :goto_14b

    .line 647
    :catchall_13c
    move-exception v0

    move-wide/from16 v20, v12

    :goto_13f
    move v5, v10

    goto/16 :goto_2de

    .line 633
    :catch_142
    move-exception v0

    move-wide/from16 v20, v12

    :goto_145
    move v5, v10

    goto/16 :goto_283

    .line 630
    :catch_148
    move-exception v0

    move-wide/from16 v20, v12

    :goto_14b
    move v5, v10

    goto/16 :goto_2b2

    .line 539
    .restart local v1    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v7    # "lastSigs":[Landroid/content/pm/Signature;
    .restart local v14    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v16    # "lastCerts":[[Ljava/security/cert/Certificate;
    .restart local v17    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_14e
    move-wide/from16 v20, v12

    :try_start_150
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    invoke-direct {v0}, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;-><init>()V

    move-object v12, v0

    .line 540
    .local v12, "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    .line 541
    new-instance v22, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v23, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    sget v24, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    sget-object v27, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v28, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v28 .. v28}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v25, 0x1

    invoke-direct/range {v22 .. v28}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move-object/from16 v13, v22

    .line 547
    .local v13, "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_175
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_179
    .catch Ljava/security/GeneralSecurityException; {:try_start_150 .. :try_end_179} :catch_24a
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_179} :catch_247
    .catch Ljava/lang/RuntimeException; {:try_start_150 .. :try_end_179} :catch_247
    .catchall {:try_start_150 .. :try_end_179} :catchall_244

    if-eqz v0, :cond_1b5

    :try_start_17b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    .line 548
    .local v19, "entry":Ljava/util/zip/ZipEntry;
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$1;

    move-object/from16 v29, v12

    move-object v12, v1

    move-object/from16 v1, v29

    move-object/from16 v29, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v29

    .local v1, "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    .local v12, "manifestEntry":Ljava/util/zip/ZipEntry;
    .local v19, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    invoke-direct/range {v0 .. v7}, Landroid/util/apk/ApkSignatureVerifier$1;-><init>(Landroid/util/apk/ApkSignatureVerifier$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Landroid/content/pm/parsing/result/ParseInput;Ljava/util/zip/ZipEntry;Ljava/lang/String;[Landroid/content/pm/Signature;)V

    move-object/from16 v22, v0

    .line 602
    .local v22, "verifyTask":Ljava/lang/Runnable;
    iget-object v15, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v15
    :try_end_198
    .catch Ljava/security/GeneralSecurityException; {:try_start_17b .. :try_end_198} :catch_13a
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_198} :catch_138
    .catch Ljava/lang/RuntimeException; {:try_start_17b .. :try_end_198} :catch_138
    .catchall {:try_start_17b .. :try_end_198} :catchall_136

    .line 603
    :try_start_198
    iget v0, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I
    :try_end_19a
    .catchall {:try_start_198 .. :try_end_19a} :catchall_1ae

    if-nez v0, :cond_1a2

    .line 604
    move-object/from16 v11, v22

    .end local v22    # "verifyTask":Ljava/lang/Runnable;
    .local v11, "verifyTask":Ljava/lang/Runnable;
    :try_start_19e
    invoke-virtual {v13, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1a4

    .line 603
    .end local v11    # "verifyTask":Ljava/lang/Runnable;
    .restart local v22    # "verifyTask":Ljava/lang/Runnable;
    :cond_1a2
    move-object/from16 v11, v22

    .line 606
    .end local v22    # "verifyTask":Ljava/lang/Runnable;
    .restart local v11    # "verifyTask":Ljava/lang/Runnable;
    :goto_1a4
    monitor-exit v15

    .line 607
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "verifyTask":Ljava/lang/Runnable;
    move-object v5, v12

    move-object v12, v1

    move-object v1, v5

    move-object/from16 v5, v19

    const/16 v11, -0x67

    const/4 v15, 0x0

    goto :goto_175

    .line 606
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v22    # "verifyTask":Ljava/lang/Runnable;
    :catchall_1ae
    move-exception v0

    move-object/from16 v11, v22

    .end local v22    # "verifyTask":Ljava/lang/Runnable;
    .restart local v11    # "verifyTask":Ljava/lang/Runnable;
    :goto_1b1
    monitor-exit v15
    :try_end_1b2
    .catchall {:try_start_19e .. :try_end_1b2} :catchall_1b3

    .end local v2    # "strictJarFiles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/jar/StrictJarFile;>;"
    .end local v3    # "jarFile":[Landroid/util/jar/StrictJarFile;
    .end local v10    # "objectNumber":I
    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_1b2
    throw v0
    :try_end_1b3
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b2 .. :try_end_1b3} :catch_13a
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1b3} :catch_138
    .catch Ljava/lang/RuntimeException; {:try_start_1b2 .. :try_end_1b3} :catch_138
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_136

    .restart local v2    # "strictJarFiles":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/jar/StrictJarFile;>;"
    .restart local v3    # "jarFile":[Landroid/util/jar/StrictJarFile;
    .restart local v10    # "objectNumber":I
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :catchall_1b3
    move-exception v0

    goto :goto_1b1

    .line 608
    .end local v11    # "verifyTask":Ljava/lang/Runnable;
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .local v1, "manifestEntry":Ljava/util/zip/ZipEntry;
    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .local v12, "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    :cond_1b5
    move-object/from16 v19, v12

    move-object v12, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v5

    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .local v1, "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .local v12, "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    :try_start_1bc
    iput-boolean v9, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z

    .line 609
    invoke-virtual {v13}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 610
    :goto_1c1
    iget-boolean v0, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_1c3
    .catch Ljava/security/GeneralSecurityException; {:try_start_1bc .. :try_end_1c3} :catch_24a
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1c3} :catch_247
    .catch Ljava/lang/RuntimeException; {:try_start_1bc .. :try_end_1c3} :catch_247
    .catchall {:try_start_1bc .. :try_end_1c3} :catchall_244

    if-eqz v0, :cond_212

    .line 612
    :try_start_1c5
    iget v0, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I
    :try_end_1c7
    .catch Ljava/lang/InterruptedException; {:try_start_1c5 .. :try_end_1c7} :catch_206
    .catch Ljava/security/GeneralSecurityException; {:try_start_1c5 .. :try_end_1c7} :catch_24a
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1c7} :catch_247
    .catch Ljava/lang/RuntimeException; {:try_start_1c5 .. :try_end_1c7} :catch_247
    .catchall {:try_start_1c5 .. :try_end_1c7} :catchall_244

    if-eqz v0, :cond_1f1

    :try_start_1c9
    iget-boolean v0, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    if-nez v0, :cond_1f1

    .line 613
    const-string v0, "ApkSignatureVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "verifyV1 Exception "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v11, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v13}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 615
    iput-boolean v9, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z
    :try_end_1ed
    .catch Ljava/lang/InterruptedException; {:try_start_1c9 .. :try_end_1ed} :catch_1ee
    .catch Ljava/security/GeneralSecurityException; {:try_start_1c9 .. :try_end_1ed} :catch_13a
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1ed} :catch_138
    .catch Ljava/lang/RuntimeException; {:try_start_1c9 .. :try_end_1ed} :catch_138
    .catchall {:try_start_1c9 .. :try_end_1ed} :catchall_136

    goto :goto_1f1

    .line 619
    :catch_1ee
    move-exception v0

    move v5, v10

    goto :goto_208

    .line 617
    :cond_1f1
    :goto_1f1
    :try_start_1f1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_1f3
    .catch Ljava/lang/InterruptedException; {:try_start_1f1 .. :try_end_1f3} :catch_206
    .catch Ljava/security/GeneralSecurityException; {:try_start_1f1 .. :try_end_1f3} :catch_24a
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_1f3} :catch_247
    .catch Ljava/lang/RuntimeException; {:try_start_1f1 .. :try_end_1f3} :catch_247
    .catchall {:try_start_1f1 .. :try_end_1f3} :catchall_244

    move v5, v10

    .end local v10    # "objectNumber":I
    .local v5, "objectNumber":I
    const-wide/16 v9, 0x32

    :try_start_1f6
    invoke-virtual {v13, v9, v10, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1fe

    const/4 v0, 0x1

    goto :goto_1ff

    :cond_1fe
    const/4 v0, 0x0

    :goto_1ff
    iput-boolean v0, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_201
    .catch Ljava/lang/InterruptedException; {:try_start_1f6 .. :try_end_201} :catch_204
    .catch Ljava/security/GeneralSecurityException; {:try_start_1f6 .. :try_end_201} :catch_278
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_201} :catch_276
    .catch Ljava/lang/RuntimeException; {:try_start_1f6 .. :try_end_201} :catch_276
    .catchall {:try_start_1f6 .. :try_end_201} :catchall_2dd

    .line 621
    move v10, v5

    const/4 v9, 0x1

    goto :goto_1c1

    .line 619
    :catch_204
    move-exception v0

    goto :goto_208

    .end local v5    # "objectNumber":I
    .restart local v10    # "objectNumber":I
    :catch_206
    move-exception v0

    move v5, v10

    .line 620
    .end local v10    # "objectNumber":I
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v5    # "objectNumber":I
    :goto_208
    :try_start_208
    const-string v9, "ApkSignatureVerifier"

    const-string v10, "VerifyV1 interrupted while awaiting all threads done..."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    move v10, v5

    const/4 v9, 0x1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1c1

    .line 623
    .end local v5    # "objectNumber":I
    .restart local v10    # "objectNumber":I
    :cond_212
    move v5, v10

    .end local v10    # "objectNumber":I
    .restart local v5    # "objectNumber":I
    iget v0, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v0, :cond_254

    .line 624
    iget v0, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to collect certificates from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    invoke-interface {v4, v0, v9, v10}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_232
    .catch Ljava/security/GeneralSecurityException; {:try_start_208 .. :try_end_232} :catch_278
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_232} :catch_276
    .catch Ljava/lang/RuntimeException; {:try_start_208 .. :try_end_232} :catch_276
    .catchall {:try_start_208 .. :try_end_232} :catchall_2dd

    .line 647
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 648
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_239
    if-ge v9, v5, :cond_243

    .line 650
    aget-object v10, v3, v9

    invoke-static {v10}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 649
    add-int/lit8 v9, v9, 0x1

    goto :goto_239

    .line 624
    .end local v9    # "i":I
    :cond_243
    return-object v0

    .line 647
    .end local v1    # "vData":Landroid/util/apk/ApkSignatureVerifier$1VerificationData;
    .end local v5    # "objectNumber":I
    .end local v7    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "verificationExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v14    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v16    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v17    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v10    # "objectNumber":I
    :catchall_244
    move-exception v0

    move v5, v10

    goto :goto_27e

    .line 633
    :catch_247
    move-exception v0

    move v5, v10

    goto :goto_283

    .line 630
    :catch_24a
    move-exception v0

    move v5, v10

    goto/16 :goto_2b2

    .line 516
    .local v1, "manifestEntry":Ljava/util/zip/ZipEntry;
    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    .restart local v7    # "lastSigs":[Landroid/content/pm/Signature;
    .restart local v14    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .restart local v16    # "lastCerts":[[Ljava/security/cert/Certificate;
    :cond_24e
    move-object/from16 v19, v5

    move v5, v10

    move-wide/from16 v20, v12

    move-object v12, v1

    .line 628
    .end local v1    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "objectNumber":I
    .local v5, "objectNumber":I
    .restart local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    :cond_254
    :try_start_254
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v1, Landroid/content/pm/SigningDetails;

    const/4 v11, 0x1

    invoke-direct {v1, v7, v11}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_264
    .catch Ljava/security/GeneralSecurityException; {:try_start_254 .. :try_end_264} :catch_278
    .catch Ljava/io/IOException; {:try_start_254 .. :try_end_264} :catch_276
    .catch Ljava/lang/RuntimeException; {:try_start_254 .. :try_end_264} :catch_276
    .catchall {:try_start_254 .. :try_end_264} :catchall_2dd

    .line 647
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 648
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26b
    if-ge v1, v5, :cond_275

    .line 650
    aget-object v9, v3, v1

    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_26b

    .line 628
    .end local v1    # "i":I
    :cond_275
    return-object v0

    .line 633
    .end local v7    # "lastSigs":[Landroid/content/pm/Signature;
    .end local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v14    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .end local v16    # "lastCerts":[[Ljava/security/cert/Certificate;
    .end local v19    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[[Ljava/security/cert/Certificate;>;"
    :catch_276
    move-exception v0

    goto :goto_283

    .line 630
    :catch_278
    move-exception v0

    goto :goto_2b2

    .line 647
    .end local v5    # "objectNumber":I
    .restart local v10    # "objectNumber":I
    :catchall_27a
    move-exception v0

    move v5, v10

    move-wide/from16 v20, v12

    .end local v10    # "objectNumber":I
    .restart local v5    # "objectNumber":I
    :goto_27e
    goto :goto_2de

    .line 633
    .end local v5    # "objectNumber":I
    .restart local v10    # "objectNumber":I
    :catch_27f
    move-exception v0

    move v5, v10

    move-wide/from16 v20, v12

    .line 634
    .end local v10    # "objectNumber":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "objectNumber":I
    :goto_283
    :try_start_283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to collect certificates from "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v7, -0x67

    invoke-interface {v4, v7, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_29c
    .catchall {:try_start_283 .. :try_end_29c} :catchall_2dd

    .line 647
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 648
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2a3
    if-ge v7, v5, :cond_2ad

    .line 650
    aget-object v9, v3, v7

    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 649
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a3

    .line 634
    .end local v7    # "i":I
    :cond_2ad
    return-object v1

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "objectNumber":I
    .restart local v10    # "objectNumber":I
    :catch_2ae
    move-exception v0

    move v5, v10

    move-wide/from16 v20, v12

    .line 631
    .end local v10    # "objectNumber":I
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v5    # "objectNumber":I
    :goto_2b2
    :try_start_2b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to collect certificates from "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v7, -0x69

    invoke-interface {v4, v7, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2cb
    .catchall {:try_start_2b2 .. :try_end_2cb} :catchall_2dd

    .line 647
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 648
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2d2
    if-ge v7, v5, :cond_2dc

    .line 650
    aget-object v9, v3, v7

    invoke-static {v9}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 649
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d2

    .line 631
    .end local v7    # "i":I
    :cond_2dc
    return-object v1

    .line 647
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_2dd
    move-exception v0

    :goto_2de
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 648
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2e5
    if-ge v1, v5, :cond_2ef

    .line 650
    aget-object v7, v3, v1

    invoke-static {v7}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e5

    .line 653
    .end local v1    # "i":I
    :cond_2ef
    throw v0
.end method

.method private static blacklist verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 422
    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV2"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV2"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 424
    nop

    .line 425
    :try_start_f
    invoke-static {p1, p2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 426
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    .line 427
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 428
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    new-instance v5, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v6, Landroid/content/pm/SigningDetails;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v7}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I)V

    iget-object v7, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_2a
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_f .. :try_end_2a} :catch_54
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_30
    .catchall {:try_start_f .. :try_end_2a} :catchall_2e

    .line 438
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 428
    return-object v5

    .line 438
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    :catchall_2e
    move-exception v0

    goto :goto_57

    .line 432
    :catch_30
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    :try_start_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using APK Signature Scheme v2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x67

    invoke-interface {p0, v4, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_2e

    .line 438
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 434
    return-object v3

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_54
    move-exception v0

    .line 431
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_2e

    .line 438
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :goto_57
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 439
    throw v0
.end method

.method private static blacklist verifyV3AndBelowSignatures(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .line 223
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 224
    :catch_5
    move-exception v0

    .line 226
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    const/4 v1, 0x3

    const/16 v2, -0x67

    if-lt p2, v1, :cond_23

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 233
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_23
    const-string v0, " or newer for package "

    const-string v1, "No signature found in package of version "

    const/4 v3, 0x2

    if-le p2, v3, :cond_48

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 242
    :cond_48
    :try_start_48
    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV2Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4c
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_48 .. :try_end_4c} :catch_4d

    return-object v0

    .line 243
    :catch_4d
    move-exception v4

    .line 245
    .local v4, "e":Landroid/util/apk/SignatureNotFoundException;
    if-lt p2, v3, :cond_68

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 252
    .end local v4    # "e":Landroid/util/apk/SignatureNotFoundException;
    :cond_68
    const/4 v3, 0x1

    if-le p2, v3, :cond_89

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 260
    :cond_89
    const p3, 0x0

    invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist verifyV3Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 378
    if-eqz p2, :cond_6

    const-string/jumbo v0, "verifyV3"

    goto :goto_8

    :cond_6
    const-string v0, "certsOnlyV3"

    :goto_8
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 381
    if-eqz p2, :cond_15

    :try_start_10
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    goto :goto_19

    .line 382
    :cond_15
    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    :goto_19
    nop

    .line 384
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    const/4 v3, 0x1

    new-array v3, v3, [[Ljava/security/cert/Certificate;

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 385
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 386
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    const/4 v6, 0x0

    .line 387
    .local v6, "pastSignerSigs":[Landroid/content/pm/Signature;
    iget-object v7, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v7, :cond_65

    .line 389
    iget-object v7, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v7, v7, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/pm/Signature;

    move-object v6, v7

    .line 390
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_37
    array-length v8, v6

    if-ge v7, v8, :cond_65

    .line 391
    new-instance v8, Landroid/content/pm/Signature;

    iget-object v9, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v9, v9, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v8, v6, v7

    .line 392
    aget-object v8, v6, v7

    iget-object v9, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v9, v9, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 390
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 395
    .end local v7    # "i":I
    :cond_65
    iget v7, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->blockId:I

    const v8, 0x70e1c89f

    if-ne v7, v8, :cond_6e

    .line 396
    const/4 v5, 0x2

    goto :goto_6f

    .line 397
    :cond_6e
    nop

    :goto_6f
    nop

    .line 398
    .local v5, "signatureSchemeMinorVersion":I
    new-instance v7, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v8, Landroid/content/pm/SigningDetails;

    const/4 v9, 0x3

    invoke-direct {v8, v4, v9, v5, v6}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;II[Landroid/content/pm/Signature;)V

    iget-object v9, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v7, v8, v9}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {p0, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_81
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_10 .. :try_end_81} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_81} :catch_87
    .catchall {:try_start_10 .. :try_end_81} :catchall_85

    .line 409
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 398
    return-object v7

    .line 409
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    .end local v5    # "signatureSchemeMinorVersion":I
    .end local v6    # "pastSignerSigs":[Landroid/content/pm/Signature;
    :catchall_85
    move-exception v0

    goto :goto_ae

    .line 403
    :catch_87
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    :try_start_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using APK Signature Scheme v3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x67

    invoke-interface {p0, v4, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_a7
    .catchall {:try_start_88 .. :try_end_a7} :catchall_85

    .line 409
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 405
    return-object v3

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_ab
    move-exception v0

    .line 402
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "verifyFull":Z
    :try_start_ad
    throw v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_85

    .line 409
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "verifyFull":Z
    :goto_ae
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 410
    throw v0
.end method

.method private static blacklist verifyV4Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "minSignatureSchemeVersion"    # I
    .param p3, "verifyFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 273
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_a

    const-string/jumbo v0, "verifyV4"

    goto :goto_c

    :cond_a
    const-string v0, "certsOnlyV4"

    :goto_c
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 275
    nop

    .line 276
    :try_start_13
    invoke-static {v2}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractSignature(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    move-object v5, v0

    .line 277
    .local v5, "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$HashingInfo;

    move-object v6, v0

    .line 278
    .local v6, "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/incremental/V4Signature$SigningInfos;

    move-object v7, v0

    .line 280
    .local v7, "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    const/4 v8, 0x0

    .line 281
    .local v8, "pastSignerSigs":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 282
    .local v9, "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v10, 0x0

    .line 284
    .local v10, "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    const/4 v11, -0x1

    .line 288
    .local v11, "v3BlockId":I
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->alwaysLoadPastCertsV4()Z

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_3a

    if-nez p3, :cond_3a

    iget-object v0, v7, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    array-length v0, v0
    :try_end_33
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_13 .. :try_end_33} :catch_18d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_167
    .catchall {:try_start_13 .. :try_end_33} :catchall_163

    if-lez v0, :cond_36

    goto :goto_3a

    :cond_36
    move-wide/from16 v16, v3

    goto/16 :goto_a6

    .line 293
    :cond_3a
    :goto_3a
    nop

    .line 294
    :try_start_3b
    invoke-static {v2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    .line 295
    .local v0, "v3Signer":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    move-object v9, v14

    .line 296
    new-array v14, v13, [[Ljava/security/cert/Certificate;

    iget-object v15, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v15, v14, v12

    move-object v10, v14

    .line 297
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    if-eqz v14, :cond_8e

    .line 299
    iget-object v14, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v14, v14, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/pm/Signature;

    move-object v8, v14

    .line 300
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_59
    array-length v15, v8

    if-ge v14, v15, :cond_8b

    .line 301
    new-instance v15, Landroid/content/pm/Signature;
    :try_end_5e
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3b .. :try_end_5e} :catch_96
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5e} :catch_167
    .catchall {:try_start_3b .. :try_end_5e} :catchall_163

    move-wide/from16 v16, v3

    :try_start_60
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v3, v3, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 302
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v8, v14

    .line 303
    aget-object v3, v8, v14

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    iget-object v4, v4, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 300
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v3, v16

    goto :goto_59

    :cond_8b
    move-wide/from16 v16, v3

    goto :goto_90

    .line 297
    .end local v14    # "i":I
    :cond_8e
    move-wide/from16 v16, v3

    .line 306
    :goto_90
    iget v3, v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->blockId:I
    :try_end_92
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_60 .. :try_end_92} :catch_94
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_92} :catch_147
    .catchall {:try_start_60 .. :try_end_92} :catchall_192

    move v11, v3

    .line 318
    .end local v0    # "v3Signer":Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    goto :goto_a6

    .line 307
    :catch_94
    move-exception v0

    goto :goto_99

    :catch_96
    move-exception v0

    move-wide/from16 v16, v3

    :goto_99
    move-object v3, v0

    .line 309
    .local v3, "e":Landroid/util/apk/SignatureNotFoundException;
    nop

    .line 310
    :try_start_9b
    invoke-static {v2, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    .line 311
    .local v0, "v2Signer":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    move-object v9, v4

    .line 312
    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;
    :try_end_a4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_9b .. :try_end_a4} :catch_149
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a4} :catch_147
    .catchall {:try_start_9b .. :try_end_a4} :catchall_192

    move-object v10, v4

    .line 317
    .end local v0    # "v2Signer":Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    nop

    .line 321
    .end local v3    # "e":Landroid/util/apk/SignatureNotFoundException;
    :goto_a6
    nop

    .line 322
    :try_start_a7
    invoke-static {v2, v6, v7, v11}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->verify(Ljava/lang/String;Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;I)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v0

    .line 324
    .local v0, "vSigner":Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    new-array v3, v13, [[Ljava/security/cert/Certificate;

    iget-object v4, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->certs:[Ljava/security/cert/Certificate;

    aput-object v4, v3, v12

    .line 325
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 327
    .local v4, "signerSigs":[Landroid/content/pm/Signature;
    if-eqz p3, :cond_12e

    .line 328
    invoke-static {v10}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v12

    .line 329
    .local v12, "nonstreamingSigs":[Landroid/content/pm/Signature;
    array-length v13, v12

    array-length v14, v4

    if-ne v13, v14, :cond_112

    .line 334
    const/4 v13, 0x0

    .local v13, "i":I
    array-length v14, v4

    .local v14, "size":I
    :goto_c1
    if-ge v13, v14, :cond_dc

    .line 335
    aget-object v15, v12, v13

    move-object/from16 v18, v3

    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .local v18, "signerCerts":[[Ljava/security/cert/Certificate;
    aget-object v3, v4, v13

    invoke-virtual {v15, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 334
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v18

    goto :goto_c1

    .line 336
    :cond_d4
    new-instance v3, Ljava/lang/SecurityException;

    const-string v15, "V4 signature certificate does not match V2/V3"

    invoke-direct {v3, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v3

    .line 334
    .end local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_dc
    move-object/from16 v18, v3

    .line 341
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .end local v13    # "i":I
    .end local v14    # "size":I
    .restart local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .line 342
    .local v3, "found":Z
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_105

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 343
    .local v14, "nonstreamingDigest":[B
    iget-object v15, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    move/from16 v19, v3

    .end local v3    # "found":Z
    .local v19, "found":Z
    iget-object v3, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    array-length v3, v3

    invoke-static {v15, v14, v3}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 345
    const/4 v3, 0x1

    .line 346
    .end local v19    # "found":Z
    .restart local v3    # "found":Z
    goto :goto_107

    .line 348
    .end local v3    # "found":Z
    .end local v14    # "nonstreamingDigest":[B
    .restart local v19    # "found":Z
    :cond_102
    move/from16 v3, v19

    goto :goto_e7

    .line 342
    .end local v19    # "found":Z
    .restart local v3    # "found":Z
    :cond_105
    move/from16 v19, v3

    .line 349
    :goto_107
    if-eqz v3, :cond_10a

    goto :goto_130

    .line 350
    :cond_10a
    new-instance v13, Ljava/lang/SecurityException;

    const-string v14, "APK digest in V4 signature does not match V2/V3"

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v13

    .line 330
    .end local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    .local v3, "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_112
    move-object/from16 v18, v3

    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid number of certificates: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v3

    .line 327
    .end local v12    # "nonstreamingSigs":[Landroid/content/pm/Signature;
    .end local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :cond_12e
    move-object/from16 v18, v3

    .line 354
    .end local v3    # "signerCerts":[[Ljava/security/cert/Certificate;
    .restart local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    :goto_130
    new-instance v3, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    new-instance v12, Landroid/content/pm/SigningDetails;

    const/4 v13, 0x4

    invoke-direct {v12, v4, v13, v8}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    iget-object v13, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    invoke-direct {v3, v12, v13}, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;-><init>(Landroid/content/pm/SigningDetails;Ljava/util/Map;)V

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_141
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_a7 .. :try_end_141} :catch_145
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_141} :catch_147
    .catchall {:try_start_a7 .. :try_end_141} :catchall_192

    .line 365
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 354
    return-object v3

    .line 357
    .end local v0    # "vSigner":Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
    .end local v4    # "signerSigs":[Landroid/content/pm/Signature;
    .end local v5    # "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    .end local v6    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .end local v7    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    .end local v8    # "pastSignerSigs":[Landroid/content/pm/Signature;
    .end local v9    # "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local v10    # "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    .end local v11    # "v3BlockId":I
    .end local v18    # "signerCerts":[[Ljava/security/cert/Certificate;
    :catch_145
    move-exception v0

    goto :goto_190

    .line 359
    :catch_147
    move-exception v0

    goto :goto_16a

    .line 313
    .local v3, "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local v5    # "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    .restart local v6    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .restart local v7    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    .restart local v8    # "pastSignerSigs":[Landroid/content/pm/Signature;
    .restart local v9    # "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .restart local v10    # "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    .restart local v11    # "v3BlockId":I
    :catch_149
    move-exception v0

    .line 314
    .local v0, "ee":Landroid/util/apk/SignatureNotFoundException;
    :try_start_14a
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "V4 verification failed to collect V2/V3 certificates from : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    throw v4
    :try_end_163
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_14a .. :try_end_163} :catch_145
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_163} :catch_147
    .catchall {:try_start_14a .. :try_end_163} :catchall_192

    .line 365
    .end local v0    # "ee":Landroid/util/apk/SignatureNotFoundException;
    .end local v3    # "e":Landroid/util/apk/SignatureNotFoundException;
    .end local v5    # "v4Pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfos;>;"
    .end local v6    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .end local v7    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    .end local v8    # "pastSignerSigs":[Landroid/content/pm/Signature;
    .end local v9    # "nonstreamingDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    .end local v10    # "nonstreamingCerts":[[Ljava/security/cert/Certificate;
    .end local v11    # "v3BlockId":I
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :catchall_163
    move-exception v0

    move-wide/from16 v16, v3

    goto :goto_193

    .line 359
    :catch_167
    move-exception v0

    move-wide/from16 v16, v3

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    :goto_16a
    :try_start_16a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect certificates from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using APK Signature Scheme v4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x67

    invoke-interface {v1, v4, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_189
    .catchall {:try_start_16a .. :try_end_189} :catchall_192

    .line 365
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 361
    return-object v3

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_18d
    move-exception v0

    move-wide/from16 v16, v3

    .line 358
    .local v0, "e":Landroid/util/apk/SignatureNotFoundException;
    :goto_190
    nop

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkPath":Ljava/lang/String;
    .end local p2    # "minSignatureSchemeVersion":I
    .end local p3    # "verifyFull":Z
    :try_start_191
    throw v0
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_192

    .line 365
    .end local v0    # "e":Landroid/util/apk/SignatureNotFoundException;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkPath":Ljava/lang/String;
    .restart local p2    # "minSignatureSchemeVersion":I
    .restart local p3    # "verifyFull":Z
    :catchall_192
    move-exception v0

    :goto_193
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 366
    throw v0
.end method
