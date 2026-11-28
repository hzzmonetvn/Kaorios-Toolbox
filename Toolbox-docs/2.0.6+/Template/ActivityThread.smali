# Kaorios Toolbox v2.0.6.2 Reference Template — F2
# Target Archive : framework.jar
# Target Class   : Landroid/app/ActivityThread;
# Hook Purpose   : Early bind-application PIF & GameProps initialization
# Callee (Kept)  : Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
#
# Notes:
# - Stock handleBindApplication(AppBindData)V on Android 13-17 typically has 20-50 locals,
#   meaning p1 (AppBindData) exceeds the 4-bit v0..v15 register limit of invoke-static.
# - Always lower p1 into v0 via move-object/from16 when effective(p1) > 15 (shown below).
# - If your ROM's method happens to have effective(p1) <= 15, invoke-static {p1} also works.
# - Using the (Ljava/lang/Object;)V overload avoids Android 13-17 AppBindData field-visibility drift.

.class public final Landroid/app/ActivityThread;
.super Landroid/app/ClientTransactionHandler;

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 18

    #Start Kaorios
    # With .locals 18: p0 = v18, p1 = v19 (> v15). Lower p1 -> v0 before invoke-static.
    move-object/from16 v0, p1

    invoke-static {v0}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
    #End Kaorios

    # Stock handleBindApplication logic continues below (abbreviated reference):
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v2, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    return-void
.end method
