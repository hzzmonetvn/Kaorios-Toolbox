.class public final Landroid/content/pm/SigningDetails;
.super Ljava/lang/Object;
.source "SigningDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SigningDetails$SignatureSchemeMinorVersion;,
        Landroid/content/pm/SigningDetails$SignatureSchemeVersion;,
        Landroid/content/pm/SigningDetails$CapabilityMergeRule;,
        Landroid/content/pm/SigningDetails$CertCapabilities;,
        Landroid/content/pm/SigningDetails$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PAST_CERT_EXISTS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SigningDetails"

.field public static final blacklist UNKNOWN:Landroid/content/pm/SigningDetails;


# instance fields
.field private final blacklist mPastSigningCertificates:[Landroid/content/pm/Signature;

.field private final blacklist mPublicKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSignatureSchemeMinorVersion:I

.field private final blacklist mSignatureSchemeVersion:I

.field private final blacklist mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 154
    new-instance v0, Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    sput-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 1076
    new-instance v0, Landroid/content/pm/SigningDetails$1;

    invoke-direct {v0}, Landroid/content/pm/SigningDetails$1;-><init>()V

    sput-object v0, Landroid/content/pm/SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/SigningDetails;)V
    .registers 5
    .param p1, "orig"    # Landroid/content/pm/SigningDetails;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    .line 201
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_15

    .line 202
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v1}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    goto :goto_17

    .line 204
    :cond_15
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 206
    :goto_17
    iget v1, p1, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 207
    iget v1, p1, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    .line 208
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 209
    iget-object v1, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_37

    .line 210
    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {v0}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_45

    .line 212
    :cond_37
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    goto :goto_45

    .line 215
    :cond_3a
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 216
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 217
    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    .line 218
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 219
    iput-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 221
    :goto_45
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1069
    .local v0, "boot":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 1070
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 1071
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    .line 1072
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 1073
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 1074
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;I)V
    .registers 4
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V

    .line 197
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;IILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V
    .registers 6
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .param p3, "signatureSchemeMinorVersion"    # I
    .param p5, "pastSigningCertificates"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "II",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;[",
            "Landroid/content/pm/Signature;",
            ")V"
        }
    .end annotation

    .line 168
    .local p4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    .line 170
    iput p2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    .line 171
    iput-object p4, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    .line 172
    iput-object p5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    .line 173
    iput p3, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    .line 174
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;II[Landroid/content/pm/Signature;)V
    .registers 11
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .param p3, "signatureSchemeMinorVersion"    # I
    .param p4, "pastSigningCertificates"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 189
    nop

    .line 190
    invoke-static {p1}, Landroid/content/pm/SigningDetails;->toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;

    move-result-object v4

    .line 189
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .end local p1    # "signatures":[Landroid/content/pm/Signature;
    .end local p2    # "signatureSchemeVersion":I
    .end local p3    # "signatureSchemeMinorVersion":I
    .end local p4    # "pastSigningCertificates":[Landroid/content/pm/Signature;
    .local v1, "signatures":[Landroid/content/pm/Signature;
    .local v2, "signatureSchemeVersion":I
    .local v3, "signatureSchemeMinorVersion":I
    .local v5, "pastSigningCertificates":[Landroid/content/pm/Signature;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;IILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    .line 191
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V
    .registers 11
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .param p4, "pastSigningCertificates"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;[",
            "Landroid/content/pm/Signature;",
            ")V"
        }
    .end annotation

    .line 161
    .local p3, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "signatures":[Landroid/content/pm/Signature;
    .end local p2    # "signatureSchemeVersion":I
    .end local p3    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .end local p4    # "pastSigningCertificates":[Landroid/content/pm/Signature;
    .local v1, "signatures":[Landroid/content/pm/Signature;
    .local v2, "signatureSchemeVersion":I
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .local v5, "pastSigningCertificates":[Landroid/content/pm/Signature;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;IILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    .line 163
    return-void
.end method

.method public constructor blacklist <init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    .registers 5
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .param p2, "signatureSchemeVersion"    # I
    .param p3, "pastSigningCertificates"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 180
    invoke-static {p1}, Landroid/content/pm/SigningDetails;->toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    .line 182
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1273
    return-void
.end method

.method private blacklist checkV32HybridCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 14
    .param p1, "oldDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "flags"    # I

    .line 789
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->isV32Hybrid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 792
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getV32ClassicalHybridSigner()Landroid/content/pm/Signature;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 794
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_18

    .line 795
    const/16 v0, 0x29

    .local v0, "verificationResult":I
    goto :goto_21

    .line 797
    .end local v0    # "verificationResult":I
    :cond_18
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1f

    .line 798
    const/16 v0, 0x2a

    .restart local v0    # "verificationResult":I
    goto :goto_21

    .line 801
    .end local v0    # "verificationResult":I
    :cond_1f
    const/16 v0, 0x2b

    .line 803
    .restart local v0    # "verificationResult":I
    :goto_21
    iget v2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iget v3, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    invoke-static {v2, v3, v0}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSigningKeyPolicyFailure(III)V

    .line 805
    return v1

    .line 809
    .end local v0    # "verificationResult":I
    :cond_29
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    .line 810
    .local v0, "newPrimarySignature":Landroid/content/pm/Signature;
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->isV32Hybrid()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getV32ClassicalHybridSigner()Landroid/content/pm/Signature;

    move-result-object v2

    goto :goto_3a

    :cond_39
    move-object v2, v3

    .line 811
    .local v2, "newClassicalSignature":Landroid/content/pm/Signature;
    :goto_3a
    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    .line 812
    .local v4, "oldPrimarySignature":Landroid/content/pm/Signature;
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->isV32Hybrid()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 813
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getV32ClassicalHybridSigner()Landroid/content/pm/Signature;

    move-result-object v3

    goto :goto_4a

    :cond_49
    nop

    .line 815
    .local v3, "oldClassicalSignature":Landroid/content/pm/Signature;
    :goto_4a
    invoke-virtual {v0, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 816
    .local v5, "hasSamePrimary":Z
    const/4 v6, 0x1

    if-nez v2, :cond_53

    if-eqz v3, :cond_5d

    :cond_53
    if-eqz v2, :cond_5f

    if-eqz v3, :cond_5f

    .line 819
    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    :cond_5d
    move v7, v6

    goto :goto_60

    :cond_5f
    move v7, v1

    .line 823
    .local v7, "hasSameClassical":Z
    :goto_60
    if-eqz v5, :cond_65

    if-eqz v7, :cond_65

    .line 824
    return v6

    .line 829
    :cond_65
    const/4 v8, 0x0

    .line 832
    .local v8, "reuseDetected":Z
    if-eqz v5, :cond_69

    .line 833
    const/4 v8, 0x1

    .line 837
    :cond_69
    if-eqz v3, :cond_72

    .line 838
    invoke-virtual {v0, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 839
    const/4 v8, 0x1

    .line 841
    :cond_72
    if-eqz v2, :cond_84

    .line 844
    invoke-virtual {v2, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 845
    const/4 v8, 0x1

    .line 849
    :cond_7b
    if-eqz v3, :cond_84

    .line 850
    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 851
    const/4 v8, 0x1

    .line 855
    :cond_84
    if-eqz v8, :cond_9e

    .line 857
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_8d

    .line 858
    const/16 v6, 0x26

    .local v6, "verificationResult":I
    goto :goto_96

    .line 859
    .end local v6    # "verificationResult":I
    :cond_8d
    and-int/lit8 v6, p2, 0x8

    if-eqz v6, :cond_94

    .line 860
    const/16 v6, 0x27

    .restart local v6    # "verificationResult":I
    goto :goto_96

    .line 862
    .end local v6    # "verificationResult":I
    :cond_94
    const/16 v6, 0x28

    .line 864
    .restart local v6    # "verificationResult":I
    :goto_96
    iget v9, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iget v10, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    invoke-static {v9, v10, v6}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSigningKeyPolicyFailure(III)V

    .line 866
    return v1

    .line 871
    .end local v6    # "verificationResult":I
    :cond_9e
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_aa

    .line 872
    iget v9, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iget v10, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    invoke-static {v9, v10, v6, v1}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSigningKeyChangeSuccess(IIZZ)V

    goto :goto_b5

    .line 874
    :cond_aa
    and-int/lit8 v9, p2, 0x8

    if-eqz v9, :cond_b5

    .line 875
    iget v9, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iget v10, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    invoke-static {v9, v10, v1, v6}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSigningKeyChangeSuccess(IIZZ)V

    .line 878
    :cond_b5
    :goto_b5
    return v6
.end method

.method private blacklist getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;
    .registers 9
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 498
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 501
    move-object v0, p0

    .line 502
    .local v0, "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    move-object v2, p1

    .local v2, "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    goto :goto_12

    .line 503
    .end local v0    # "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v2    # "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    :cond_a
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 507
    move-object v0, p1

    .line 508
    .restart local v0    # "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    move-object v2, p0

    .line 516
    .restart local v2    # "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    :goto_12
    iget-object v3, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 517
    .local v3, "descendantIndex":I
    iget-object v4, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 518
    .local v4, "ancestorIndex":I
    :goto_1c
    if-ltz v3, :cond_2f

    iget-object v5, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    iget-object v6, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    .line 519
    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 521
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 525
    :cond_2f
    if-gez v3, :cond_32

    .line 526
    return-object v1

    .line 531
    :cond_32
    add-int/lit8 v3, v3, -0x1

    .line 532
    add-int/lit8 v4, v4, -0x1

    .line 533
    if-ltz v3, :cond_48

    if-ltz v4, :cond_48

    iget-object v5, v0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    iget-object v6, v2, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v4

    .line 534
    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 539
    :cond_48
    if-ltz v3, :cond_4d

    if-ltz v4, :cond_4d

    .line 540
    return-object v1

    .line 544
    :cond_4d
    return-object v0

    .line 512
    .end local v0    # "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v2    # "ancestorSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v3    # "descendantIndex":I
    .end local v4    # "ancestorIndex":I
    :cond_4e
    return-object v1
.end method

.method private blacklist hasCertificateInternal(Landroid/content/pm/Signature;I)Z
    .registers 7
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "flags"    # I

    .line 934
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 935
    return v1

    .line 939
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 942
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2f

    .line 943
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 944
    if-eqz p2, :cond_2b

    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 945
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_2c

    .line 946
    :cond_2b
    return v2

    .line 942
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 954
    .end local v0    # "i":I
    :cond_2f
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-ne v0, v2, :cond_3f

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v1, v2

    :cond_3f
    return v1
.end method

.method private blacklist hasSha256CertificateInternal([BI)Z
    .registers 8
    .param p1, "sha256Certificate"    # [B
    .param p2, "flags"    # I

    .line 1017
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 1018
    return v1

    .line 1020
    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 1023
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_37

    .line 1024
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    .line 1025
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 1024
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v3

    .line 1026
    .local v3, "digest":[B
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1027
    if-eqz p2, :cond_33

    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v0

    .line 1028
    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_34

    .line 1029
    :cond_33
    return v2

    .line 1023
    .end local v3    # "digest":[B
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1036
    .end local v0    # "i":I
    :cond_37
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-ne v0, v2, :cond_4d

    .line 1037
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0

    .line 1038
    .local v0, "digest":[B
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 1040
    .end local v0    # "digest":[B
    :cond_4d
    return v1
.end method

.method private blacklist mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;
    .registers 13
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "mergeRule"    # I

    .line 330
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 331
    .local v0, "index":I
    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 332
    .local v2, "otherIndex":I
    if-ltz v0, :cond_ee

    if-gez v2, :cond_f

    goto/16 :goto_ee

    .line 336
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v3, "mergedSignatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    const/4 v4, 0x0

    .line 340
    .local v4, "capabilitiesModified":Z
    :goto_15
    if-ltz v0, :cond_35

    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v0

    iget-object v6, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 342
    new-instance v5, Landroid/content/pm/Signature;

    iget-object v6, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v0, -0x1

    .end local v0    # "index":I
    .local v7, "index":I
    aget-object v0, v6, v0

    invoke-direct {v5, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    goto :goto_15

    .line 346
    .end local v7    # "index":I
    .restart local v0    # "index":I
    :cond_35
    if-gez v0, :cond_38

    .line 347
    return-object p0

    .line 353
    :cond_38
    :goto_38
    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v6, v0, -0x1

    .end local v0    # "index":I
    .local v6, "index":I
    aget-object v0, v5, v0

    .line 354
    .local v0, "signature":Landroid/content/pm/Signature;
    iget-object v5, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v7, v2, -0x1

    .end local v2    # "otherIndex":I
    .local v7, "otherIndex":I
    aget-object v2, v5, v2

    .line 356
    .local v2, "ancestorSignature":Landroid/content/pm/Signature;
    new-instance v5, Landroid/content/pm/Signature;

    invoke-direct {v5, v0}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    .line 357
    .local v5, "mergedSignature":Landroid/content/pm/Signature;
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    if-eq v8, v9, :cond_76

    .line 358
    const/4 v4, 0x1

    .line 359
    packed-switch p2, :pswitch_data_f0

    goto :goto_76

    .line 367
    :pswitch_58
    nop

    .line 368
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v9

    and-int/2addr v8, v9

    .line 367
    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    goto :goto_76

    .line 364
    :pswitch_66
    invoke-virtual {v2}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 365
    goto :goto_76

    .line 361
    :pswitch_6e
    invoke-virtual {v0}, Landroid/content/pm/Signature;->getFlags()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/pm/Signature;->setFlags(I)V

    .line 362
    nop

    .line 372
    :cond_76
    :goto_76
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v0    # "signature":Landroid/content/pm/Signature;
    .end local v2    # "ancestorSignature":Landroid/content/pm/Signature;
    .end local v5    # "mergedSignature":Landroid/content/pm/Signature;
    if-ltz v6, :cond_8f

    if-ltz v7, :cond_8f

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v0, v0, v6

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto :goto_8f

    :cond_8c
    move v0, v6

    move v2, v7

    goto :goto_38

    .line 378
    :cond_8f
    :goto_8f
    if-ltz v6, :cond_94

    if-ltz v7, :cond_94

    .line 379
    return-object p0

    .line 384
    :cond_94
    :goto_94
    if-ltz v7, :cond_a6

    .line 385
    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v5, v7, -0x1

    .end local v7    # "otherIndex":I
    .local v5, "otherIndex":I
    aget-object v2, v2, v7

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v5

    goto :goto_94

    .line 388
    .end local v5    # "otherIndex":I
    .restart local v7    # "otherIndex":I
    :cond_a6
    :goto_a6
    if-ltz v6, :cond_b8

    .line 389
    new-instance v0, Landroid/content/pm/Signature;

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    add-int/lit8 v5, v6, -0x1

    .end local v6    # "index":I
    .local v5, "index":I
    aget-object v2, v2, v6

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_a6

    .line 394
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_b8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ne v0, v2, :cond_c4

    if-nez v4, :cond_c4

    .line 396
    return-object p0

    .line 400
    :cond_c4
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 402
    :try_start_c7
    new-instance v0, Landroid/content/pm/SigningDetails;

    new-array v1, v1, [Landroid/content/pm/Signature;

    new-instance v2, Landroid/content/pm/Signature;

    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-direct {v2, v5}, Landroid/content/pm/Signature;-><init>(Landroid/content/pm/Signature;)V

    aput-object v2, v1, v8

    iget v2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    new-array v5, v8, [Landroid/content/pm/Signature;

    .line 403
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/Signature;

    invoke-direct {v0, v1, v2, v5}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;)V
    :try_end_e4
    .catch Ljava/security/cert/CertificateException; {:try_start_c7 .. :try_end_e4} :catch_e5

    .line 402
    return-object v0

    .line 404
    :catch_e5
    move-exception v0

    .line 405
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "SigningDetails"

    const-string v2, "Caught an exception creating the merged lineage: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    return-object p0

    .line 333
    .end local v3    # "mergedSignatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    .end local v4    # "capabilitiesModified":Z
    .end local v6    # "index":I
    .end local v7    # "otherIndex":I
    .local v0, "index":I
    .local v2, "otherIndex":I
    :cond_ee
    :goto_ee
    return-object p0

    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_66
        :pswitch_58
    .end packed-switch
.end method

.method public static blacklist toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
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

    .line 1195
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1196
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 1197
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1196
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1199
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method


# virtual methods
.method public blacklist checkCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist checkCapability(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1050
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 1094
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1095
    :cond_4
    instance-of v1, p1, Landroid/content/pm/SigningDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1097
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/content/pm/SigningDetails;

    .line 1099
    .local v1, "that":Landroid/content/pm/SigningDetails;
    iget v3, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iget v4, v1, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    if-eq v3, v4, :cond_14

    return v2

    .line 1100
    :cond_14
    iget v3, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    iget v4, v1, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    if-eq v3, v4, :cond_1b

    return v2

    .line 1101
    :cond_1b
    invoke-static {p0, v1}, Landroid/content/pm/Signature;->areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v3

    if-nez v3, :cond_22

    return v2

    .line 1102
    :cond_22
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v3, :cond_31

    .line 1103
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1104
    return v2

    .line 1106
    :cond_31
    iget-object v3, v1, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v3, :cond_36

    .line 1107
    return v2

    .line 1111
    :cond_36
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 1112
    return v2

    .line 1115
    :cond_41
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_61

    .line 1116
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-ge v3, v4, :cond_61

    .line 1117
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    iget-object v5, v1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v3

    .line 1118
    invoke-virtual {v5}, Landroid/content/pm/Signature;->getFlags()I

    move-result v5

    if-eq v4, v5, :cond_5e

    .line 1119
    return v2

    .line 1116
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 1123
    .end local v3    # "i":I
    :cond_61
    return v0
.end method

.method public blacklist getPastSigningCertificates()[Landroid/content/pm/Signature;
    .registers 2

    .line 1264
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public blacklist getPublicKeys()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 1246
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSignatureSchemeMinorVersion()I
    .registers 2

    .line 1238
    iget v0, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    return v0
.end method

.method public blacklist getSignatureSchemeVersion()I
    .registers 2

    .line 1230
    iget v0, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    return v0
.end method

.method public blacklist getSignatures()[Landroid/content/pm/Signature;
    .registers 2

    .line 1222
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method blacklist getV32ClassicalHybridSigner()Landroid/content/pm/Signature;
    .registers 4

    .line 719
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->isV32Hybrid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 720
    return-object v1

    .line 722
    :cond_8
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_13

    goto :goto_1c

    .line 725
    :cond_13
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 723
    :cond_1c
    :goto_1c
    return-object v1
.end method

.method public blacklist hasAncestor(Landroid/content/pm/SigningDetails;)Z
    .registers 7
    .param p1, "oldDetails"    # Landroid/content/pm/SigningDetails;

    .line 585
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_30

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p1, v0, :cond_a

    goto :goto_30

    .line 588
    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 590
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2f

    .line 591
    iget-object v3, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    iget-object v4, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 592
    return v2

    .line 590
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 596
    .end local v0    # "i":I
    :cond_2f
    return v1

    .line 586
    :cond_30
    :goto_30
    return v1
.end method

.method public blacklist hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist hasCertificate(Landroid/content/pm/Signature;)Z
    .registers 3
    .param p1, "signature"    # Landroid/content/pm/Signature;

    .line 913
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasCertificate(Landroid/content/pm/Signature;I)Z
    .registers 4
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "flags"    # I

    .line 924
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasCertificateInternal(Landroid/content/pm/Signature;I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasCertificate([B)Z
    .registers 4
    .param p1, "certificate"    # [B

    .line 929
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, p1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 930
    .local v0, "signature":Landroid/content/pm/Signature;
    invoke-virtual {p0, v0}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v1

    return v1
.end method

.method public blacklist hasCommonAncestor(Landroid/content/pm/SigningDetails;)Z
    .registers 3
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 422
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_b

    .line 425
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 427
    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_16

    .line 428
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 433
    :cond_16
    invoke-direct {p0, p1}, Landroid/content/pm/SigningDetails;->getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public blacklist hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z
    .registers 10
    .param p1, "otherDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "flags"    # I

    .line 612
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_ba

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p1, v0, :cond_b

    goto/16 :goto_ba

    .line 617
    :cond_b
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_b5

    iget-object v0, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-le v0, v2, :cond_18

    goto/16 :goto_b5

    .line 623
    :cond_18
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 624
    .local v0, "otherSignatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 625
    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_36

    .line 627
    :cond_2d
    iget-object v3, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 630
    :goto_36
    const/4 v3, 0x0

    .line 633
    .local v3, "matchFound":Z
    iget-object v4, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 634
    const/4 v3, 0x1

    goto :goto_69

    .line 635
    :cond_43
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 638
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4a
    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v5, v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_69

    .line 639
    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v4

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 641
    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/content/pm/Signature;->getFlags()I

    move-result v5

    and-int/2addr v5, p2

    if-ne v5, p2, :cond_66

    .line 642
    const/4 v3, 0x1

    .line 638
    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 648
    .end local v4    # "i":I
    :cond_69
    :goto_69
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->apkPqcHybridSigning()Z

    move-result v4

    if-eqz v4, :cond_b4

    if-nez v3, :cond_72

    goto :goto_b4

    .line 656
    :cond_72
    const/4 v4, 0x0

    .line 659
    .local v4, "reuseDetected":Z
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->isV32Hybrid()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 660
    iget-object v5, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v1

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 661
    .local v5, "otherHasPrimary":Z
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getV32ClassicalHybridSigner()Landroid/content/pm/Signature;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 664
    .local v6, "otherHasClassical":Z
    if-eq v5, v6, :cond_8c

    .line 665
    const/4 v4, 0x1

    .line 672
    .end local v5    # "otherHasPrimary":Z
    .end local v6    # "otherHasClassical":Z
    :cond_8c
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->isV32Hybrid()Z

    move-result v5

    if-eqz v5, :cond_a7

    if-nez v4, :cond_a7

    .line 673
    iget-object v5, p1, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v5

    .line 674
    .local v5, "thisHasPrimary":Z
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getV32ClassicalHybridSigner()Landroid/content/pm/Signature;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v6

    .line 675
    .local v6, "thisHasClassical":Z
    if-eq v5, v6, :cond_a7

    .line 676
    const/4 v4, 0x1

    .line 680
    .end local v5    # "thisHasPrimary":Z
    .end local v6    # "thisHasClassical":Z
    :cond_a7
    if-eqz v4, :cond_b3

    .line 681
    iget v2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    iget v5, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    const/16 v6, 0x28

    invoke-static {v2, v5, v6}, Landroid/util/apk/ApkSignatureVerifierMetrics;->logSigningKeyPolicyFailure(III)V

    .line 683
    return v1

    .line 685
    :cond_b3
    return v2

    .line 649
    .end local v4    # "reuseDetected":Z
    :cond_b4
    :goto_b4
    return v3

    .line 618
    .end local v0    # "otherSignatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    .end local v3    # "matchFound":Z
    :cond_b5
    :goto_b5
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0

    .line 613
    :cond_ba
    :goto_ba
    return v1
.end method

.method public blacklist hasPastSigningCertificates()Z
    .registers 2

    .line 554
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist hasSha256Certificate([B)Z
    .registers 3
    .param p1, "sha256Certificate"    # [B

    .line 1001
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSha256Certificate([BI)Z
    .registers 4
    .param p1, "sha256Certificate"    # [B
    .param p2, "flags"    # I

    .line 1013
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->hasSha256CertificateInternal([BI)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSignatures()Z
    .registers 2

    .line 549
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1128
    iget-object v0, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 1129
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    add-int/2addr v1, v2

    .line 1130
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    add-int/2addr v0, v2

    .line 1131
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1132
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist isPqcSigned()Z
    .registers 2

    .line 707
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->isV32Hybrid()Z

    move-result v0

    return v0
.end method

.method blacklist isV32Hybrid()Z
    .registers 3

    .line 694
    iget v0, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;
    .registers 3
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;
    .registers 6
    .param p1, "otherSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "mergeRule"    # I

    .line 279
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_17

    .line 281
    nop

    .line 280
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 281
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, p1

    goto :goto_16

    :cond_15
    move-object v0, p0

    .line 280
    :goto_16
    return-object v0

    .line 283
    :cond_17
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 284
    return-object p0

    .line 288
    :cond_1e
    invoke-direct {p0, p1}, Landroid/content/pm/SigningDetails;->getDescendantOrSelf(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 289
    .local v0, "descendantSigningDetails":Landroid/content/pm/SigningDetails;
    if-nez v0, :cond_25

    .line 290
    return-object p0

    .line 292
    :cond_25
    move-object v1, p0

    .line 293
    .local v1, "mergedDetails":Landroid/content/pm/SigningDetails;
    if-ne v0, p0, :cond_2d

    .line 296
    invoke-direct {p0, p1, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_42

    .line 300
    :cond_2d
    packed-switch p2, :pswitch_data_44

    goto :goto_42

    .line 310
    :pswitch_31
    invoke-direct {p1, p0, p2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_42

    .line 306
    :pswitch_36
    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 308
    goto :goto_42

    .line 302
    :pswitch_3c
    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Landroid/content/pm/SigningDetails;->mergeLineageWithAncestorOrSelf(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 304
    nop

    .line 315
    :goto_42
    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_36
        :pswitch_31
    .end packed-switch
.end method

.method public blacklist signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z
    .registers 3
    .param p1, "other"    # Landroid/content/pm/SigningDetails;

    .line 1045
    invoke-static {p0, p1}, Landroid/content/pm/Signature;->areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1055
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 1056
    .local v0, "isUnknown":Z
    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1057
    if-eqz v0, :cond_d

    .line 1058
    return-void

    .line 1060
    :cond_d
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1061
    iget v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    iget v1, p0, Landroid/content/pm/SigningDetails;->mSignatureSchemeMinorVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPublicKeys:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 1064
    iget-object v1, p0, Landroid/content/pm/SigningDetails;->mPastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1065
    return-void
.end method
