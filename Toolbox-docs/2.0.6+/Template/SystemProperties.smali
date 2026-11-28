# Kaorios Toolbox v2.0.6.2 Reference Template — F3
# Target Archive : framework.jar
# Target Class   : Landroid/os/SystemProperties;
# Hook Purpose   : Java-layer SystemProperties fallback spoofing (PIF & GameProps)
# Callee (Kept)  : Landroid/security/kaorios/KaoriosHook;->getSpoofedProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
#
# Notes:
# - Always hook get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; before every return-object.
# - Also hook 1-arg get(Ljava/lang/String;)Ljava/lang/String; ONLY if its body calls native_get directly
#   (i.e. does NOT delegate to 2-arg get(String, String)).
# - KaoriosHook.getSpoofedProperty uses a ThreadLocal re-entrancy guard, so it cannot recurse infinitely.

.class public Landroid/os/SystemProperties;
.super Ljava/lang/Object;

.method private static native native_get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #Start Kaorios
    invoke-static {p0, v0}, Landroid/security/kaorios/KaoriosHook;->getSpoofedProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    #End Kaorios

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #Start Kaorios
    invoke-static {p0, v0}, Landroid/security/kaorios/KaoriosHook;->getSpoofedProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    #End Kaorios

    return-object v0
.end method
