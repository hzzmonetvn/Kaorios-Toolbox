# Kaorios Toolbox v2.0.6.2 Reference Template — F5
# Target Archive : framework.jar
# Target Class   : Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
# Hook Purpose   : Software KeyPair generation & forged certificate import (GENERATE mode)
# Callee (Kept)  : Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
#
# Register Note:
# - In this example, the stock method originally used .registers 15 (locals v0..v13, p0 = v14).
# - Bump .registers 15 -> .registers 16 so v14 (= registers - 2) becomes a fresh scratch local
#   and p0 shifts to v15 (still within the 4-bit v0..v15 invoke-static limit).
# - If your ROM's stock method ALREADY uses .registers 16 or higher (meaning p0 >= v16),
#   do NOT pass {p0} to non-range invoke-static! Instead either:
#     (a) copy p0 into v0 first: move-object/from16 v0, p0  +  invoke-static {v0}, ...
#     (b) OR use: invoke-static/range {p0 .. p0}, ...
# - Notice that because the hook runs at method entry before any stock local is initialized,
#   reusing v0 at method entry (when .locals >= 1) avoids shifting p0 at all!

.class public abstract Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;

.field private mKeyStore:Landroid/security/KeyStore2;
.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;

.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 16

    #Start Kaorios
    invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;

    move-result-object v14

    if-eqz v14, :kaorios_gen_passthrough_0

    return-object v14

    :kaorios_gen_passthrough_0
    #End Kaorios

    # Stock generateKeyPair logic continues below (abbreviated reference):
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    if-eqz v0, :cond_not_init

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v1, :cond_not_init

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v2

    if-eqz v2, :cond_tee

    const/4 v3, 0x2

    goto :goto_sec

    :cond_tee
    const/4 v3, 0x1

    :goto_sec
    invoke-virtual {v0, v3}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v4

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Stock Keystore2 generation path continues here"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_not_init
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
