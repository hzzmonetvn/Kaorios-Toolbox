.method public greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 25
    .param p1, "cr"
    .param p2, "name"
    .param p3, "userId"

    if-eqz p2, :cond_b

    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "0"

    return-object v0

    .line 3841
    :cond_b
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    move/from16 v8, p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-ne v8, v0, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v9

    :goto_1c
    move v10, v0

    .line 3842
    .local v10, "isSelf":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v11

    .line 3843
    .local v11, "attributionSource":Landroid/content/AttributionSource;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v11, :cond_2e

    .line 3845
    invoke-virtual {v11}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v0

    goto :goto_2f

    :cond_2e
    move v0, v9

    :goto_2f
    move v12, v0

    .line 3846
    .local v12, "deviceId":I
    new-instance v0, Landroid/provider/Settings$GenerationTracker$Key;

    invoke-direct {v0, v6, v12}, Landroid/provider/Settings$GenerationTracker$Key;-><init>(Ljava/lang/String;I)V

    move-object v14, v0

    .line 3847
    .local v14, "key":Landroid/provider/Settings$GenerationTracker$Key;
    if-eqz v10, :cond_40

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-nez v0, :cond_40

    move v0, v2

    goto :goto_41

    :cond_40
    move v0, v9

    :goto_41
    move/from16 v19, v0

    .line 3848
    .local v19, "useCache":Z
    const/4 v3, 0x0

    .line 3851
    .local v3, "needsGenerationTracker":Z
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 3853
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-nez v0, :cond_61

    .line 3854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v4, 0x2710

    if-ge v0, v4, :cond_5f

    goto :goto_61

    :cond_5f
    move v0, v9

    goto :goto_62

    :cond_61
    :goto_61
    move v0, v2

    .line 3856
    .local v0, "isSystemCaller":Z
    :goto_62
    if-nez v0, :cond_7b

    .line 3857
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3858
    .local v4, "redactedValue":Ljava/lang/String;
    if-eqz v4, :cond_7b

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 3859
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->enableRedactedValueForReadable()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 3860
    return-object v4

    .line 3865
    .end local v0
    .end local v4
    :cond_7b
    if-eqz v19, :cond_b4

    .line 3866
    monitor-enter p0

    .line 3867
    :try_start_7e
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3868
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_ac

    .line 3869
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v4
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_b1

    .line 3881
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 3869
    if-eqz v4, :cond_9c

    .line 3878
    :try_start_90
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3879
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3880
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ac

    .line 3881
    :cond_9c
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 3885
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit p0

    return-object v2

    .line 3888
    .end local v0
    :cond_ac
    :goto_ac
    monitor-exit p0

    .line 3893
    const/4 v3, 0x1

    move/from16 v20, v3

    goto :goto_b6

    .line 3888
    :catchall_b1
    move-exception v0

    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_90 .. :try_end_b3} :catchall_b1

    throw v0

    .line 3865
    :cond_b4
    move/from16 v20, v3

    .line 3906
    .end local v3
    .local v20, "needsGenerationTracker":Z
    :goto_b6
    invoke-static {}, Landroid/provider/Settings$NameValueCache;->isCallerExemptFromReadableRestriction()Z

    move-result v0

    if-nez v0, :cond_13b

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 3907
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 3916
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 3917
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3918
    .local v0, "maxTargetSdk":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    .line 3919
    .local v3, "application":Landroid/app/Application;
    if-eqz v3, :cond_f5

    .line 3920
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_f5

    .line 3921
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt v4, v0, :cond_f5

    goto :goto_f6

    :cond_f5
    move v2, v9

    .line 3923
    .local v2, "targetSdkCheckOk":Z
    :goto_f6
    if-eqz v2, :cond_f9

    goto :goto_13b

    .line 3924
    :cond_f9
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings key: <"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3908
    .end local v0
    .end local v2
    .end local v3
    :cond_11c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings key: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3934
    :cond_13b
    :goto_13b
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3935
    .local v2, "cp":Landroid/content/IContentProvider;
    const/4 v15, 0x0

    if-nez v2, :cond_165

    .line 3936
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because cp is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    return-object v15

    .line 3944
    :cond_165
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v0, :cond_241

    .line 3946
    :try_start_169
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3947
    .local v7, "args":Landroid/os/Bundle;
    if-nez v10, :cond_175

    .line 3948
    const-string v0, "_user"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3950
    :cond_175
    if-eqz v20, :cond_17c

    .line 3951
    const-string v0, "_track_generation"

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3966
    :cond_17c
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_1b2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v0, v3, :cond_1b2

    .line 3967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_190} :catch_23e

    move-wide/from16 v16, v3

    .line 3969
    .local v16, "token":J
    :try_start_192
    invoke-virtual {v13}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3970
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3969
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_1a6
    .catchall {:try_start_192 .. :try_end_1a6} :catchall_1ac

    .line 3973
    .local v0, "b":Landroid/os/Bundle;
    :try_start_1a6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3974
    nop

    .line 3975
    .end local v16
    move-object v3, v0

    goto :goto_1c9

    .line 3973
    .end local v0
    .restart local v16
    :catchall_1ac
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3974
    nop

    .end local v2
    .end local v10
    .end local v11
    .end local v12
    .end local v14
    .end local v19
    .end local v20
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    throw v0

    .line 3976
    .end local v16
    .restart local v2
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v14
    .restart local v19
    .restart local v20
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1b2
    invoke-virtual {v13}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3977
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3976
    move-object/from16 v6, p2

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v3, v0

    .line 3979
    .local v3, "b":Landroid/os/Bundle;
    :goto_1c9
    if-eqz v3, :cond_23c

    .line 3980
    const-string/jumbo v0, "value"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 3982
    .local v4, "value":Ljava/lang/String;
    if-eqz v10, :cond_23b

    .line 3983
    monitor-enter p0
    :try_end_1d6
    .catch Landroid/os/RemoteException; {:try_start_1a6 .. :try_end_1d6} :catch_23e

    .line 3984
    if-eqz v20, :cond_21e

    .line 3985
    :try_start_1d8
    const-string v0, "_track_generation"

    const-class v5, Landroid/util/MemoryIntArray;

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3987
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v5, "_generation_index"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 3989
    .local v16, "index":I
    if-eqz v0, :cond_215

    if-ltz v16, :cond_215

    .line 3990
    const-string v5, "_generation"

    invoke-virtual {v3, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 4002
    .local v17, "generation":I
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Settings$GenerationTracker;

    .line 4003
    .local v5, "oldTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v5, :cond_200

    .line 4004
    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 4006
    :cond_200
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    new-instance v13, Landroid/provider/Settings$GenerationTracker;
    :try_end_204
    .catchall {:try_start_1d8 .. :try_end_204} :catchall_21b

    :try_start_204
    iget-object v15, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_206
    .catchall {:try_start_204 .. :try_end_206} :catchall_212

    move-object/from16 v18, v15

    const/4 v9, 0x0

    move-object v15, v0

    .end local v0
    .local v15, "array":Landroid/util/MemoryIntArray;
    :try_start_20a
    invoke-direct/range {v13 .. v18}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/provider/Settings$GenerationTracker$Key;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v6, v14, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4009
    nop

    .end local v5
    .end local v17
    goto :goto_21f

    .line 4020
    .end local v15
    .end local v16
    :catchall_212
    move-exception v0

    const/4 v9, 0x0

    goto :goto_237

    .line 3989
    .restart local v0
    .restart local v16
    :cond_215
    move-object v9, v15

    move-object v15, v0

    .line 4010
    .end local v0
    .restart local v15
    invoke-static {v15}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    goto :goto_21f

    .line 4020
    .end local v15
    .end local v16
    :catchall_21b
    move-exception v0

    move-object v9, v15

    goto :goto_237

    .line 3984
    :cond_21e
    move-object v9, v15

    .line 4013
    :goto_21f
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 4014
    .local v0, "tracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_234

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v5

    if-nez v5, :cond_234

    .line 4018
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4020
    .end local v0
    :cond_234
    monitor-exit p0

    goto :goto_23b

    :catchall_236
    move-exception v0

    :goto_237
    monitor-exit p0
    :try_end_238
    .catchall {:try_start_20a .. :try_end_238} :catchall_236

    .end local v2
    .end local v10
    .end local v11
    .end local v12
    .end local v14
    .end local v19
    .end local v20
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :try_start_238
    throw v0
    :try_end_239
    .catch Landroid/os/RemoteException; {:try_start_238 .. :try_end_239} :catch_239

    .line 4033
    .end local v3
    .end local v4
    .end local v7
    .restart local v2
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v14
    .restart local v19
    .restart local v20
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :catch_239
    move-exception v0

    goto :goto_242

    .line 4029
    .restart local v3
    .restart local v4
    .restart local v7
    :cond_23b
    :goto_23b
    return-object v4

    .line 3979
    .end local v4
    :cond_23c
    move-object v9, v15

    .line 4036
    .end local v3
    .end local v7
    goto :goto_242

    .line 4033
    :catch_23e
    move-exception v0

    move-object v9, v15

    goto :goto_242

    .line 3944
    :cond_241
    move-object v9, v15

    .line 4039
    :goto_242
    const/4 v13, 0x0

    .line 4041
    .local v13, "c":Landroid/database/Cursor;
    :try_start_243
    const-string/jumbo v0, "name=?"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v9}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 4044
    .local v6, "queryArgs":Landroid/os/Bundle;
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_286

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v0, v3, :cond_286

    .line 4045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_262
    .catch Landroid/os/RemoteException; {:try_start_243 .. :try_end_262} :catch_2fa
    .catchall {:try_start_243 .. :try_end_262} :catchall_2f6

    move-wide v15, v3

    .line 4047
    .local v15, "token":J
    :try_start_263
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;
    :try_end_26b
    .catchall {:try_start_263 .. :try_end_26b} :catchall_27c

    const/4 v7, 0x0

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    :try_start_270
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_274
    .catchall {:try_start_270 .. :try_end_274} :catchall_27a

    move-object v13, v0

    .line 4050
    :try_start_275
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4051
    nop

    .line 4052
    .end local v15
    goto :goto_298

    .line 4050
    .restart local v15
    :catchall_27a
    move-exception v0

    goto :goto_281

    :catchall_27c
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    :goto_281
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4051
    nop

    .end local v2
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v19
    .end local v20
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    throw v0

    .line 4044
    .end local v15
    .restart local v2
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v19
    .restart local v20
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_286
    move-object/from16 v18, v9

    move-object/from16 v9, p2

    .line 4053
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v13, v0

    .line 4056
    :goto_298
    if-nez v13, :cond_2c5

    .line 4057
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2be
    .catch Landroid/os/RemoteException; {:try_start_275 .. :try_end_2be} :catch_2f4
    .catchall {:try_start_275 .. :try_end_2be} :catchall_32a

    .line 4058
    nop

    .line 4076
    if-eqz v13, :cond_2c4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4058
    :cond_2c4
    return-object v18

    .line 4061
    :cond_2c5
    :try_start_2c5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2d1

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_2d3

    :cond_2d1
    move-object/from16 v15, v18

    .line 4062
    .local v15, "value":Ljava/lang/String;
    :goto_2d3
    monitor-enter p0
    :try_end_2d4
    .catch Landroid/os/RemoteException; {:try_start_2c5 .. :try_end_2d4} :catch_2f4
    .catchall {:try_start_2c5 .. :try_end_2d4} :catchall_32a

    .line 4063
    :try_start_2d4
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 4064
    .restart local v0
    if-eqz v0, :cond_2e9

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v3

    if-nez v3, :cond_2e9

    .line 4068
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4070
    .end local v0
    :cond_2e9
    monitor-exit p0
    :try_end_2ea
    .catchall {:try_start_2d4 .. :try_end_2ea} :catchall_2f1

    .line 4071
    nop

    .line 4076
    if-eqz v13, :cond_2f0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4071
    :cond_2f0
    return-object v15

    .line 4070
    :catchall_2f1
    move-exception v0

    :try_start_2f2
    monitor-exit p0
    :try_end_2f3
    .catchall {:try_start_2f2 .. :try_end_2f3} :catchall_2f1

    .end local v2
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v19
    .end local v20
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :try_start_2f3
    throw v0
    :try_end_2f4
    .catch Landroid/os/RemoteException; {:try_start_2f3 .. :try_end_2f4} :catch_2f4
    .catchall {:try_start_2f3 .. :try_end_2f4} :catchall_32a

    .line 4072
    .end local v6
    .end local v15
    .restart local v2
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    .restart local v14
    .restart local v19
    .restart local v20
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :catch_2f4
    move-exception v0

    goto :goto_2ff

    .line 4076
    :catchall_2f6
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_32b

    .line 4072
    :catch_2fa
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    .line 4073
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2ff
    :try_start_2ff
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_323
    .catchall {:try_start_2ff .. :try_end_323} :catchall_32a

    .line 4074
    nop

    .line 4076
    if-eqz v13, :cond_329

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4074
    :cond_329
    return-object v18

    .line 4076
    .end local v0
    :catchall_32a
    move-exception v0

    :goto_32b
    if-eqz v13, :cond_330

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4077
    :cond_330
    throw v0
.end method


