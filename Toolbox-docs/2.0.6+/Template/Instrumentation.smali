# Kaorios Toolbox v2.0.6.2 Reference Template — F1
# Target Archive : framework.jar
# Target Class   : Landroid/app/Instrumentation;
# Hook Purpose   : App Context, PIF, and GameProps initialization
# Callee (Kept)  : Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
#
# Notes:
# - Hook BOTH newApplication overloads immediately before EVERY return-object.
# - Static 2-arg overload: Context is p1.
# - Instance 3-arg overload: Context is p3.
# - If effective(pCtx) > 15 (locals_count + param_idx > 15), copy pCtx into a low
#   local register (v0 if return reg != v0, else v1) using move-object/from16 first.

.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    #Start Kaorios
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
    #End Kaorios

    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    #Start Kaorios
    invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
    #End Kaorios

    return-object v0
.end method
