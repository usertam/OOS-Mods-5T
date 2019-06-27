.class Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method private getCombinedSessionFlags(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;)I"
        }
    .end annotation

    .line 1168
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1169
    const/4 v1, 0x0

    .line 1170
    .local v1, "flags":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 1171
    .local v3, "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->access$300(Lcom/android/settingslib/applications/ApplicationsState$Session;)I

    move-result v4

    or-int/2addr v1, v4

    .line 1172
    .end local v3    # "session":Lcom/android/settingslib/applications/ApplicationsState$Session;
    goto :goto_0

    .line 1173
    :cond_0
    monitor-exit v0

    return v1

    .line 1174
    .end local v1    # "flags":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$handleMessage$0(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V
    .locals 4

    .line 1121
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1125
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 1122
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 1127
    .local v0, "stats":Landroid/app/usage/StorageStats;
    new-instance v1, Landroid/content/pm/PackageStats;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 1130
    .local v1, "legacy":Landroid/content/pm/PackageStats;
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 1131
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1132
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1134
    :try_start_1
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1137
    goto :goto_0

    .line 1136
    :catch_0
    move-exception v2

    .line 1144
    .end local v0    # "stats":Landroid/app/usage/StorageStats;
    .end local v1    # "legacy":Landroid/content/pm/PackageStats;
    :goto_0
    goto :goto_1

    .line 1138
    :catch_1
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationsState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :try_start_2
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1143
    goto :goto_1

    .line 1142
    :catch_2
    move-exception v1

    .line 1146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 913
    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 914
    .local v3, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    monitor-enter v4

    .line 915
    :try_start_0
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 916
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    .line 917
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 919
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 920
    const/4 v0, 0x0

    if-eqz v3, :cond_1

    .line 921
    move v4, v0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 922
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v5}, Lcom/android/settingslib/applications/ApplicationsState$Session;->handleRebuildList()V

    .line 921
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 926
    .end local v4    # "i":I
    :cond_1
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->getCombinedSessionFlags(Ljava/util/List;)I

    move-result v4

    .line 928
    .local v4, "flags":I
    iget v5, v2, Landroid/os/Message;->what:I

    const/high16 v6, 0x800000

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x1

    packed-switch v5, :pswitch_data_0

    .line 1165
    move-object/from16 v23, v3

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .local v23, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    goto/16 :goto_11

    .line 1091
    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :pswitch_0
    invoke-static {v4, v12}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1092
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1094
    :try_start_2
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1097
    monitor-exit v5

    return-void

    .line 1100
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1101
    .local v7, "now":J
    move v9, v0

    .local v9, "i":I
    :goto_1
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 1102
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1103
    .local v10, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v12, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v12, v6}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-wide v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v16, -0x1

    cmp-long v11, v11, v16

    if-eqz v11, :cond_3

    iget-boolean v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v11, :cond_7

    .line 1105
    :cond_3
    iget-wide v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v15, 0x0

    cmp-long v0, v11, v15

    if-eqz v0, :cond_4

    iget-wide v11, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v15, 0x4e20

    sub-long v15, v7, v15

    cmp-long v0, v11, v15

    if-gez v0, :cond_6

    .line 1107
    :cond_4
    iget-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v0, :cond_5

    .line 1108
    iput-boolean v14, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1109
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1110
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1109
    invoke-virtual {v0, v13, v6}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1111
    .local v0, "m":Landroid/os/Message;
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1113
    .end local v0    # "m":Landroid/os/Message;
    :cond_5
    iput-wide v7, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 1114
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    .line 1115
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1116
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iput v6, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1119
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    new-instance v6, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$BackgroundHandler$7jhXQzAcRoT6ACDzmPBTQMi7Ldc;

    invoke-direct {v6, v1}, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$BackgroundHandler$7jhXQzAcRoT6ACDzmPBTQMi7Ldc;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    invoke-virtual {v0, v6}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 1150
    :cond_6
    monitor-exit v5

    return-void

    .line 1101
    .end local v10    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1153
    .end local v9    # "i":I
    :cond_8
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1154
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v6, v9}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 1155
    iput-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1156
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1156
    invoke-virtual {v6, v13, v0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1158
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1161
    .end local v0    # "m":Landroid/os/Message;
    .end local v7    # "now":J
    :cond_9
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1165
    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :cond_a
    :goto_2
    move-object/from16 v23, v3

    goto/16 :goto_11

    .line 1056
    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :pswitch_1
    invoke-static {v4, v10}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1057
    const/4 v5, 0x0

    .line 1058
    .local v5, "numDone":I
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1060
    nop

    .local v0, "i":I
    :goto_3
    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    :try_start_3
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_f

    if-ge v5, v10, :cond_f

    .line 1061
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object v11, v0

    .line 1062
    .local v11, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v0, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-boolean v0, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v0, :cond_e

    .line 1063
    :cond_b
    monitor-enter v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1064
    :try_start_4
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v11, v0, v12}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1065
    iget-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v0, :cond_c

    .line 1066
    iput-boolean v14, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1067
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1068
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1067
    invoke-virtual {v0, v13, v12}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1069
    .local v0, "m":Landroid/os/Message;
    iget-object v12, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v12, v0}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1071
    .end local v0    # "m":Landroid/os/Message;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 1073
    :cond_d
    monitor-exit v11

    .line 1060
    .end local v11    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_e
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "i":I
    .local v0, "i":I
    goto :goto_3

    .line 1073
    .end local v0    # "i":I
    .restart local v7    # "i":I
    .restart local v11    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 1077
    .end local v7    # "i":I
    .end local v11    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_f
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1078
    if-lez v5, :cond_10

    .line 1079
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v9}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1080
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v9}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 1083
    :cond_10
    if-lt v5, v10, :cond_11

    .line 1084
    invoke-virtual {v1, v13}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 1085
    goto :goto_2

    .line 1077
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1088
    .end local v5    # "numDone":I
    :cond_11
    invoke-virtual {v1, v8}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 1089
    goto/16 :goto_2

    .line 1001
    :pswitch_2
    iget v5, v2, Landroid/os/Message;->what:I

    if-ne v5, v12, :cond_12

    .line 1002
    invoke-static {v4, v7}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_12
    iget v5, v2, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_18

    const/16 v5, 0x10

    .line 1004
    invoke-static {v4, v5}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1006
    :cond_13
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1007
    .local v5, "launchIntent":Landroid/content/Intent;
    iget v6, v2, Landroid/os/Message;->what:I

    if-ne v6, v12, :cond_14

    .line 1008
    const-string v6, "android.intent.category.LAUNCHER"

    goto :goto_4

    :cond_14
    const-string v6, "android.intent.category.LEANBACK_LAUNCHER"

    .line 1007
    :goto_4
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    move v6, v0

    .local v6, "i":I
    :goto_5
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_17

    .line 1010
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1017
    .local v7, "userId":I
    iget-object v9, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const v10, 0xc0200

    invoke-virtual {v9, v5, v10, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 1024
    .local v9, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v10

    .line 1026
    :try_start_7
    iget-object v11, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 1027
    .local v11, "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v18, v16

    .line 1028
    .local v18, "N":I
    move/from16 v16, v0

    .local v16, "j":I
    :goto_6
    move/from16 v19, v16

    .end local v16    # "j":I
    .local v19, "j":I
    move/from16 v15, v18

    move/from16 v0, v19

    if-ge v0, v15, :cond_16

    .line 1029
    .end local v18    # "N":I
    .end local v19    # "j":I
    .local v0, "j":I
    .local v15, "N":I
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    move-object/from16 v21, v16

    .line 1030
    .local v21, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v13, v21

    iget-object v12, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local v21    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1031
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v22, v16

    .line 1032
    .local v22, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    move-object/from16 v8, v22

    if-eqz v8, :cond_15

    .line 1033
    .end local v22    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .local v8, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :try_start_8
    iput-boolean v14, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    .line 1034
    iget-boolean v14, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->launcherEntryEnabled:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v23, v3

    :try_start_9
    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->enabled:Z

    or-int/2addr v3, v14

    iput-boolean v3, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->launcherEntryEnabled:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1028
    move-object/from16 v24, v5

    goto :goto_7

    .line 1042
    .end local v0    # "j":I
    .end local v8    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v11    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v15    # "N":I
    :catchall_3
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_8

    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    goto :goto_8

    .line 1037
    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v0    # "j":I
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v8    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .restart local v11    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v15    # "N":I
    :cond_15
    move-object/from16 v23, v3

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :try_start_a
    const-string v3, "ApplicationsState"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v24, v5

    :try_start_b
    const-string v5, "Cannot find pkg: "

    .end local v5    # "launchIntent":Landroid/content/Intent;
    .local v24, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " on user "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .end local v8    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_7
    add-int/lit8 v16, v0, 0x1

    .end local v0    # "j":I
    .restart local v16    # "j":I
    move/from16 v18, v15

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    const/4 v0, 0x0

    const/4 v8, 0x7

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x1

    goto :goto_6

    .line 1042
    .end local v11    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    .end local v15    # "N":I
    .end local v16    # "j":I
    .end local v24    # "launchIntent":Landroid/content/Intent;
    .restart local v5    # "launchIntent":Landroid/content/Intent;
    :catchall_5
    move-exception v0

    move-object/from16 v24, v5

    .end local v5    # "launchIntent":Landroid/content/Intent;
    .restart local v24    # "launchIntent":Landroid/content/Intent;
    goto :goto_8

    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v24    # "launchIntent":Landroid/content/Intent;
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v5    # "launchIntent":Landroid/content/Intent;
    :cond_16
    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v5    # "launchIntent":Landroid/content/Intent;
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v24    # "launchIntent":Landroid/content/Intent;
    monitor-exit v10

    .line 1009
    .end local v7    # "userId":I
    .end local v9    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    const/4 v0, 0x0

    const/4 v8, 0x7

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x1

    goto/16 :goto_5

    .line 1042
    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v24    # "launchIntent":Landroid/content/Intent;
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v5    # "launchIntent":Landroid/content/Intent;
    .restart local v7    # "userId":I
    .restart local v9    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_6
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v5    # "launchIntent":Landroid/content/Intent;
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v24    # "launchIntent":Landroid/content/Intent;
    :goto_8
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_8

    .line 1045
    .end local v6    # "i":I
    .end local v7    # "userId":I
    .end local v9    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v24    # "launchIntent":Landroid/content/Intent;
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v5    # "launchIntent":Landroid/content/Intent;
    :cond_17
    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .end local v5    # "launchIntent":Landroid/content/Intent;
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v24    # "launchIntent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1046
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .end local v24    # "launchIntent":Landroid/content/Intent;
    goto :goto_9

    .line 1049
    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :cond_18
    move-object/from16 v23, v3

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :cond_19
    :goto_9
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1a

    .line 1050
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_11

    .line 1052
    :cond_1a
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 1054
    goto/16 :goto_11

    .line 977
    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :pswitch_3
    move-object/from16 v23, v3

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 978
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 979
    .local v3, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 980
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 981
    :try_start_c
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 982
    .local v0, "entryCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_a
    move/from16 v6, v20

    .end local v20    # "i":I
    .restart local v6    # "i":I
    if-ge v6, v0, :cond_1d

    .line 984
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 986
    .local v7, "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 987
    .local v9, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 988
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 989
    .local v11, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v11, :cond_1b

    .line 990
    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    .line 992
    .end local v9    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_1b
    goto :goto_b

    .line 982
    .end local v7    # "userEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :cond_1c
    add-int/lit8 v20, v6, 0x1

    .end local v6    # "i":I
    .restart local v20    # "i":I
    goto :goto_a

    .line 995
    .end local v0    # "entryCount":I
    .end local v20    # "i":I
    :cond_1d
    monitor-exit v5

    goto :goto_c

    :catchall_8
    move-exception v0

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v0

    .line 997
    .end local v3    # "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1e
    :goto_c
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 998
    goto/16 :goto_11

    .line 932
    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .local v3, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :pswitch_4
    move-object/from16 v23, v3

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    const/4 v0, 0x0

    .line 933
    .local v0, "numDone":I
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 935
    move v5, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v5, "numDone":I
    :goto_d
    :try_start_d
    iget-object v8, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_23

    const/4 v8, 0x6

    if-ge v5, v8, :cond_23

    .line 936
    iget-boolean v8, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v8, :cond_1f

    .line 937
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 938
    iget-object v11, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 939
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 938
    const/4 v13, 0x6

    invoke-virtual {v11, v13, v12}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 940
    .local v11, "m":Landroid/os/Message;
    iget-object v12, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v12, v11}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v11    # "m":Landroid/os/Message;
    goto :goto_e

    .line 942
    :cond_1f
    const/4 v8, 0x1

    :goto_e
    iget-object v11, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 943
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    iget v12, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 944
    .local v12, "userId":I
    iget-object v13, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    iget-object v14, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_20

    .line 945
    add-int/lit8 v5, v5, 0x1

    .line 946
    iget-object v13, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v13, v11}, Lcom/android/settingslib/applications/ApplicationsState;->access$100(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 948
    :cond_20
    if-eqz v12, :cond_22

    iget-object v13, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v13

    if-ltz v13, :cond_21

    .line 956
    iget-object v13, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    iget-object v14, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 957
    .local v13, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v13, :cond_22

    iget-object v14, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v14, v6}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v14

    if-nez v14, :cond_22

    .line 959
    iget-object v14, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v14, v14, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    iget-object v6, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "userId":I
    .end local v13    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    goto :goto_f

    .line 935
    :cond_21
    move v15, v14

    goto :goto_f

    :cond_22
    const/4 v15, 0x0

    :goto_f
    add-int/lit8 v0, v0, 0x1

    const/high16 v6, 0x800000

    goto/16 :goto_d

    .line 965
    .end local v0    # "i":I
    :cond_23
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 967
    const/4 v0, 0x6

    if-lt v5, v0, :cond_24

    .line 968
    invoke-virtual {v1, v10}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_10

    .line 970
    :cond_24
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v7}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 971
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v7}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 973
    :cond_25
    invoke-virtual {v1, v9}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 975
    .end local v5    # "numDone":I
    :goto_10
    goto :goto_11

    .line 965
    .restart local v5    # "numDone":I
    :catchall_9
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    throw v0

    .line 930
    .end local v5    # "numDone":I
    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :pswitch_5
    move-object/from16 v23, v3

    .line 1165
    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :goto_11
    return-void

    .line 919
    .end local v4    # "flags":I
    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v23, v3

    .end local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    goto :goto_12

    .end local v23    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    .restart local v3    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$Session;>;"
    :catchall_b
    move-exception v0

    :goto_12
    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
