.method public shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 17
    .param p1, "snapshot"
    .param p2, "callingUid"
    .param p3, "callingSetting"
    .param p4, "targetPkgSetting"
    .param p5, "userId"

    move/from16 v0, p2

    move-object/from16 v1, p4

    if-eqz v1, :cond_13

    :try_start_6
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppList(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    return v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_13} :catch_13

    .line 333
    :catch_13
    :cond_13
    move/from16 v6, p5

    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    const-wide/32 v7, 0x40000

    if-eqz v0, :cond_22

    .line 334
    const-string/jumbo v0, "shouldFilterApplication"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 337
    :cond_22
    :try_start_22
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 338
    .local v0, "callingAppId":I
    const/16 v1, 0x2710

    const/4 v9, 0x0

    if-lt v0, v1, :cond_fd

    .line 339
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    if-lt v2, v1, :cond_fd

    .line 340
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    if-ne v0, v1, :cond_39

    goto/16 :goto_fd

    .line 342
    :cond_39
    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_69

    .line 343
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    .line 344
    .local v1, "targetAppId":I
    invoke-static {v6, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 347
    .local v2, "targetUid":I
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v3

    if-nez v3, :cond_60

    .line 348
    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result v3

    if-nez v3, :cond_60

    .line 349
    invoke-static {p2, v2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableBySdkSandbox(II)Z

    move-result v3
    :try_end_5c
    .catchall {:try_start_22 .. :try_end_5c} :catchall_106

    if-nez v3, :cond_60

    move v9, v10

    goto :goto_61

    :cond_60
    nop

    .line 385
    :goto_61
    sget-boolean v3, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v3, :cond_68

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 347
    :cond_68
    return v9

    .line 350
    .end local v1
    .end local v2
    :cond_69
    :try_start_69
    invoke-static {v0}, Landroid/os/Process;->isPrivateComputeCoreUid(I)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 351
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPccId()I

    move-result v1
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_106

    .line 355
    .local v1, "targetPccId":I
    if-ne v0, v1, :cond_7e

    .line 356
    nop

    .line 385
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_7d

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    :cond_7d
    return v9

    .line 358
    :cond_7e
    :try_start_7e
    move-object v2, p3

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 359
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_a4

    .line 360
    const-string v3, "AppsFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No setting found for pcc uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_7e .. :try_end_9b} :catchall_106

    .line 361
    nop

    .line 385
    sget-boolean v3, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v3, :cond_a3

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 361
    :cond_a3
    return v10

    .line 365
    :cond_a4
    :try_start_a4
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-static {v6, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_106

    move p2, v3

    goto :goto_af

    .line 350
    .end local v1
    .end local v2
    :cond_ae
    move v3, p2

    .line 368
    .end local p2
    .local v3, "callingUid":I
    :goto_af
    :try_start_af
    iget-boolean p2, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz p2, :cond_cb

    iget-boolean p2, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    if-eqz p2, :cond_cb

    .line 369
    nop

    .line 370
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result p2

    .line 369
    invoke-virtual {p0, v3, p2, v6}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    move-result p2
    :try_end_c0
    .catchall {:try_start_af .. :try_end_c0} :catchall_fa

    if-nez p2, :cond_e0

    .line 372
    nop

    .line 385
    sget-boolean p2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p2, :cond_ca

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 372
    :cond_ca
    return v9

    .line 375
    :cond_cb
    :try_start_cb
    move-object v2, p1

    check-cast v2, Lcom/android/server/pm/Computer;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result p2
    :try_end_d5
    .catchall {:try_start_cb .. :try_end_d5} :catchall_fa

    if-nez p2, :cond_e0

    .line 377
    nop

    .line 385
    sget-boolean p2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p2, :cond_df

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 377
    :cond_df
    return v9

    .line 380
    :cond_e0
    :try_start_e0
    sget-boolean p2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-nez p2, :cond_ec

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p2, v0}, Lcom/android/server/pm/FeatureConfig;->isLoggingEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_f1

    .line 381
    :cond_ec
    const-string p2, "BLOCKED"

    invoke-static {p3, p4, p2}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_e0 .. :try_end_f1} :catchall_fa

    .line 383
    :cond_f1
    nop

    .line 385
    sget-boolean p2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p2, :cond_f9

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 383
    :cond_f9
    return v10

    .line 385
    .end local v0
    :catchall_fa
    move-exception v0

    move p2, v3

    goto :goto_107

    .line 341
    .end local v3
    .restart local v0
    .restart local p2
    :cond_fd
    :goto_fd
    nop

    .line 385
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_105

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 341
    :cond_105
    return v9

    .line 385
    .end local v0
    :catchall_106
    move-exception v0

    :goto_107
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_10e

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    :cond_10e
    throw v0
.end method


