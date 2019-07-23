.class public Lcom/android/systemui/statusbar/notification/NotificationInflater;
.super Ljava/lang/Object;
.source "NotificationInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    }
.end annotation


# static fields
.field static final EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

.field static final FLAG_REINFLATE_ALL:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FLAG_REINFLATE_EXPANDED_VIEW:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final sOPNotificationController:Lcom/oneplus/notification/OPNotificationController;


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field private mIsChildInGroup:Z

.field private mIsLowPriority:Z

.field private mRedactAmbient:Z

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mUsesIncreasedHeadsUpHeight:Z

.field private mUsesIncreasedHeight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    .line 85
    const-class v0, Lcom/oneplus/notification/OPNotificationController;

    .line 86
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/notification/OPNotificationController;

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->sOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 91
    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p4, "x4"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p5, "x5"    # Z

    .line 57
    invoke-static/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;
    .param p1, "x1"    # Ljava/lang/Exception;
    .param p2, "x2"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "x3"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .line 57
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    return-void
.end method

.method static synthetic access$1800(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/app/Notification$Builder;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Landroid/content/Context;

    .line 57
    invoke-static/range {p0 .. p7}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    return-object v0
.end method

.method public static apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)Landroid/os/CancellationSignal;
    .locals 30
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "redactAmbient"    # Z
    .param p4, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p5, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    move-object/from16 v14, p0

    .line 229
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    .line 230
    .local v12, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v11

    .line 231
    .local v11, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v10

    .line 232
    .local v10, "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 234
    .local v9, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->sOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OPNotificationController;->isOnQuickReplyList(Ljava/lang/String;)Z

    move-result v15

    .line 236
    .local v15, "isOnQuickReplyList":Z
    const/16 v16, 0x1

    .line 237
    .local v16, "flag":I
    and-int v0, p1, v16

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 238
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 239
    .local v5, "isNewView":Z
    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 250
    .local v13, "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    nop

    .line 252
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v17

    invoke-virtual {v11, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v18

    .line 250
    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v12

    move-object/from16 v21, v9

    move-object v9, v11

    .end local v9    # "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    .local v21, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    move-object/from16 v22, v10

    move-object/from16 v10, v17

    .end local v10    # "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .local v22, "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    move-object/from16 v23, v11

    move-object/from16 v11, v18

    .end local v11    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .local v23, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    move-object/from16 v24, v12

    move-object/from16 v12, v21

    .end local v12    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .local v24, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    .end local v5    # "isNewView":Z
    .end local v13    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    goto :goto_0

    .line 257
    .end local v21    # "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    .end local v22    # "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v23    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v24    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v9    # "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    .restart local v10    # "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v11    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v12    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    .end local v9    # "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    .end local v10    # "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v11    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v12    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v21    # "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    .restart local v22    # "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v23    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v24    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    const/16 v16, 0x2

    .line 258
    and-int v0, p1, v16

    if-eqz v0, :cond_1

    .line 259
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v12, v24

    iget-object v1, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .end local v24    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v12    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v11, 0x1

    xor-int/lit8 v5, v0, 0x1

    .line 262
    .restart local v5    # "isNewView":Z
    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 273
    .restart local v13    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    nop

    .line 275
    move-object/from16 v10, v23

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v17

    .line 276
    .end local v23    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .local v10, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v18

    .line 273
    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v12

    move-object v9, v10

    move-object/from16 v25, v10

    move-object/from16 v10, v17

    .end local v10    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .local v25, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    move/from16 v17, v11

    move-object/from16 v11, v18

    move-object/from16 v26, v12

    move-object/from16 v12, v21

    .end local v12    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .local v26, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    .end local v5    # "isNewView":Z
    .end local v13    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    goto :goto_1

    .line 282
    .end local v25    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v26    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v23    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v24    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    move-object/from16 v25, v23

    move-object/from16 v26, v24

    const/16 v17, 0x1

    .end local v23    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v24    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v25    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v26    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_1
    const/16 v16, 0x4

    .line 283
    and-int v0, p1, v16

    if-eqz v0, :cond_2

    .line 284
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 285
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v12, v26

    iget-object v1, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .end local v26    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v12    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 287
    .restart local v5    # "isNewView":Z
    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 298
    .restart local v13    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    nop

    .line 300
    move-object/from16 v11, v25

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v10

    .end local v25    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v11    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    const/4 v0, 0x2

    .line 301
    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v18

    .line 298
    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v12

    move-object v9, v11

    move-object/from16 v19, v11

    move-object/from16 v11, v18

    .end local v11    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .local v19, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    move-object/from16 v27, v12

    move-object/from16 v12, v21

    .end local v12    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .local v27, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    .end local v5    # "isNewView":Z
    .end local v13    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    goto :goto_2

    .line 307
    .end local v19    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v27    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v25    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v26    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    move-object/from16 v19, v25

    move-object/from16 v27, v26

    .end local v25    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v26    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v19    # "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v27    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_2
    const/16 v16, 0x8

    .line 308
    and-int v0, p1, v16

    if-eqz v0, :cond_3

    .line 309
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$500(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v12, v27

    iget-object v1, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .end local v27    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v12    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 311
    .restart local v5    # "isNewView":Z
    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 322
    .restart local v13    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    nop

    .line 324
    move-object/from16 v11, v22

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v10

    .line 325
    .end local v22    # "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .local v11, "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    const/4 v9, 0x0

    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v18

    .line 322
    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v12

    move/from16 v20, v9

    move-object v9, v11

    move-object/from16 v11, v18

    .end local v11    # "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v22    # "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    move-object/from16 v28, v12

    move-object/from16 v12, v21

    .end local v12    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .local v28, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    .end local v5    # "isNewView":Z
    .end local v13    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    goto :goto_3

    .line 329
    .end local v28    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v27    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    move-object/from16 v28, v27

    const/16 v20, 0x0

    .end local v27    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v28    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_3
    const/16 v16, 0x10

    .line 330
    and-int v0, p1, v16

    if-eqz v0, :cond_7

    .line 331
    if-eqz p3, :cond_4

    move-object/from16 v0, v22

    goto :goto_4

    :cond_4
    move-object/from16 v0, v19

    :goto_4
    move-object v12, v0

    .line 332
    .local v12, "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-static/range {p2 .. p3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 333
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$600(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v11, v28

    iget-object v1, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    .end local v28    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .local v11, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v5, v20

    goto :goto_6

    .end local v11    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v28    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_6
    move-object/from16 v11, v28

    .end local v28    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v11    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_5
    move/from16 v5, v17

    .line 334
    .restart local v5    # "isNewView":Z
    :goto_6
    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;

    invoke-direct {v13, v14}, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 345
    .restart local v13    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    nop

    .line 347
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v10

    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v17

    .line 345
    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v11

    move-object v9, v12

    move-object v14, v11

    move-object/from16 v11, v17

    .end local v11    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .local v14, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v17, v12

    move-object/from16 v12, v21

    .end local v12    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    .local v17, "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-static/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V

    .end local v5    # "isNewView":Z
    .end local v13    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .end local v17    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    goto :goto_7

    .line 352
    .end local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v28    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_7
    move-object/from16 v14, v28

    .end local v28    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_7
    const/16 v0, 0x20

    .line 353
    .end local v16    # "flag":I
    .local v0, "flag":I
    and-int v1, p1, v0

    if-eqz v1, :cond_8

    if-eqz v15, :cond_8

    .line 354
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationInflater;->sOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    iget-object v2, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/oneplus/notification/OPNotificationController;->getQuickReplyView(Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v1

    move-object v7, v14

    move-object/from16 v6, p0

    invoke-static {v6, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1402(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;

    goto :goto_8

    .line 357
    :cond_8
    move-object v7, v14

    move-object/from16 v6, p0

    .end local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .local v7, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_8
    const/16 v8, 0x40

    .line 358
    .end local v0    # "flag":I
    .local v8, "flag":I
    and-int v0, p1, v8

    if-eqz v0, :cond_9

    if-eqz v15, :cond_9

    .line 359
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->sOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OPNotificationController;->getQuickReplyView(Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1502(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;

    .line 363
    :cond_9
    move-object v0, v6

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    .line 365
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 366
    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$YqX46rBxwrjWs1TkaBTYm0eniC8;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$YqX46rBxwrjWs1TkaBTYm0eniC8;-><init>(Ljava/util/HashMap;)V

    .end local v21    # "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    .local v2, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 368
    return-object v0
.end method

.method static applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V
    .locals 19
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p2, "inflationId"    # I
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "redactAmbient"    # Z
    .param p5, "isNewView"    # Z
    .param p6, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p7, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p8, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p9, "parentLayout"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p10, "existingView"    # Landroid/view/View;
    .param p11, "existingWrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .param p13, "applyCallback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "ZZ",
            "Landroid/widget/RemoteViews$OnClickHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/NotificationContentView;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;",
            ")V"
        }
    .end annotation

    .local p12, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p12

    .line 382
    invoke-virtual/range {p13 .. p13}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v11

    .line 383
    .local v11, "newContentView":Landroid/widget/RemoteViews;
    if-eqz v13, :cond_1

    invoke-interface/range {p7 .. p7}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->doInflateSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    if-eqz p5, :cond_0

    .line 386
    :try_start_0
    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p9

    :try_start_1
    invoke-virtual {v11, v0, v10, v14}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setIsRootNamespace(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    move-object/from16 v9, p13

    :try_start_2
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    .line 392
    .end local v0    # "v":Landroid/view/View;
    nop

    .line 404
    move-object/from16 v8, p10

    goto :goto_2

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v10, p9

    :goto_0
    move-object/from16 v9, p13

    :goto_1
    move-object/from16 v8, p10

    goto :goto_3

    .line 393
    :cond_0
    move-object/from16 v10, p9

    move-object/from16 v9, p13

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v8, p10

    :try_start_3
    invoke-virtual {v11, v0, v8, v14}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 397
    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onReinflated()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 404
    :goto_2
    nop

    .line 405
    move-object/from16 v7, p8

    goto :goto_4

    .line 399
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_1

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    move-object/from16 v7, p8

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v12, v0, v1, v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    .line 403
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 410
    :cond_1
    move-object/from16 v7, p8

    move-object/from16 v10, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p13

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object v4, v9

    move-object/from16 v5, p11

    move-object v6, v12

    move/from16 v7, p2

    move-object v8, v15

    move/from16 v9, p1

    move-object v10, v13

    move-object/from16 v17, v11

    move/from16 v11, p4

    .end local v11    # "newContentView":Landroid/widget/RemoteViews;
    .local v17, "newContentView":Landroid/widget/RemoteViews;
    move-object/from16 v12, p10

    move-object/from16 v13, v17

    move-object/from16 v14, p9

    move-object/from16 v15, p6

    move-object/from16 v16, p8

    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;ZLandroid/view/View;Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    move-object v5, v0

    .line 460
    .local v5, "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    if-eqz p5, :cond_2

    .line 461
    move-object/from16 v12, p0

    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    move-object/from16 v1, v17

    move-object/from16 v3, p9

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    goto :goto_5

    .line 468
    .end local v0    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_2
    move-object/from16 v12, p0

    iget-object v7, v12, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    sget-object v9, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    move-object/from16 v6, v17

    move-object/from16 v8, p10

    move-object v10, v5

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    .line 475
    .restart local v0    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_5
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p12

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-void
.end method

.method private static canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 2
    .param p0, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "redactAmbient"    # Z

    .line 634
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 636
    .local v0, "ambientView":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 2
    .param p0, "newView"    # Landroid/widget/RemoteViews;
    .param p1, "oldView"    # Landroid/widget/RemoteViews;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 598
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 600
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 601
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 602
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 604
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->isReapplyDisallowed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 598
    :goto_0
    return v0
.end method

.method private static createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "isLowPriority"    # Z
    .param p2, "useLarge"    # Z

    .line 584
    if-eqz p1, :cond_0

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 587
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 2
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "isLowPriority"    # Z

    .line 570
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 571
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .line 572
    return-object v0

    .line 574
    :cond_0
    if-eqz p1, :cond_1

    .line 575
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 576
    .local v1, "contentView":Landroid/widget/RemoteViews;
    invoke-static {v1}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 577
    return-object v1

    .line 579
    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 4
    .param p0, "reInflateFlags"    # I
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "isLowPriority"    # Z
    .param p3, "isChildInGroup"    # Z
    .param p4, "usesIncreasedHeight"    # Z
    .param p5, "usesIncreasedHeadsUpHeight"    # Z
    .param p6, "redactAmbient"    # Z
    .param p7, "packageContext"    # Landroid/content/Context;

    .line 196
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;-><init>()V

    .line 197
    .local v0, "result":Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move p2, v3

    .line 198
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1

    .line 199
    invoke-static {p1, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$202(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 202
    :cond_1
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_2

    .line 203
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$302(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 206
    :cond_2
    and-int/lit8 v3, p0, 0x4

    if-eqz v3, :cond_3

    .line 207
    invoke-virtual {p1, p5}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$402(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 210
    :cond_3
    and-int/lit8 v3, p0, 0x8

    if-eqz v3, :cond_4

    .line 211
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$502(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 214
    :cond_4
    and-int/lit8 v3, p0, 0x10

    if-eqz v3, :cond_6

    .line 215
    if-eqz p6, :cond_5

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makePublicAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v3

    goto :goto_1

    .line 216
    :cond_5
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 215
    :goto_1
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$602(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 218
    :cond_6
    iput-object p7, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 219
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$702(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 220
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$802(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 222
    return-object v0
.end method

.method private static finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 8
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p3, "endListener"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p5, "redactAmbient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Z)Z"
        }
    .end annotation

    .line 496
    .local p2, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 497
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 498
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    .line 499
    .local v1, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v2

    .line 500
    .local v2, "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    .line 501
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    .line 502
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$900(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 503
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$900(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 505
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 508
    :cond_1
    and-int/lit8 v3, p1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    .line 509
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1000(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 510
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1000(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    goto :goto_0

    .line 511
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v3

    if-nez v3, :cond_3

    .line 512
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 514
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 515
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_4

    move v4, v6

    nop

    :cond_4
    invoke-virtual {p4, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    .line 518
    :cond_5
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_8

    .line 519
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1100(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 520
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1100(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    goto :goto_1

    .line 521
    :cond_6
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v3

    if-nez v3, :cond_7

    .line 522
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 524
    :cond_7
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 527
    :cond_8
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_a

    .line 528
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1200(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 529
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1200(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 531
    :cond_9
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$500(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 534
    :cond_a
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_e

    .line 535
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 536
    if-eqz p5, :cond_b

    .line 537
    move-object v3, v2

    goto :goto_2

    :cond_b
    move-object v3, v1

    .line 538
    .local v3, "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_2
    if-nez p5, :cond_c

    .line 539
    move-object v4, v2

    goto :goto_3

    :cond_c
    move-object v4, v1

    .line 540
    .local v4, "otherParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1300(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    .line 541
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    .line 543
    .end local v3    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v4    # "otherParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_d
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$600(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    .line 546
    :cond_e
    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_f

    .line 547
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 548
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1400(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setQuickReplyContractedChild(Landroid/view/View;)V

    .line 552
    :cond_f
    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_10

    .line 553
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1500(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 554
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$1500(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setQuickReplyHeadsUpChild(Landroid/view/View;)V

    .line 558
    :cond_10
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$700(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->headsUpStatusBarText:Ljava/lang/CharSequence;

    .line 559
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->access$800(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    .line 560
    if-eqz p3, :cond_11

    .line 561
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 563
    :cond_11
    return v6

    .line 565
    :cond_12
    return v4
.end method

.method private static handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Ljava/lang/Exception;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            ")V"
        }
    .end annotation

    .line 480
    .local p0, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 481
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$POlPJz26zF5Nt5Z2kVGSqFxN8Co;->INSTANCE:Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$POlPJz26zF5Nt5Z2kVGSqFxN8Co;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 482
    if-eqz p3, :cond_0

    .line 483
    invoke-interface {p3, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    .line 485
    :cond_0
    return-void
.end method

.method public static synthetic lambda$POlPJz26zF5Nt5Z2kVGSqFxN8Co(Landroid/os/CancellationSignal;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method static synthetic lambda$apply$0(Ljava/util/HashMap;)V
    .locals 2
    .param p0, "runningInflations"    # Ljava/util/HashMap;

    .line 367
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$POlPJz26zF5Nt5Z2kVGSqFxN8Co;->INSTANCE:Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInflater$POlPJz26zF5Nt5Z2kVGSqFxN8Co;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method inflateNotificationViews(ILandroid/app/Notification$Builder;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 14
    .param p1, "reInflateFlags"    # I
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "packageContext"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    .line 185
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v1

    .line 188
    .local v1, "result":Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v13, 0x0

    move-object v8, v1

    move v9, p1

    invoke-static/range {v8 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)Landroid/os/CancellationSignal;

    .line 189
    return-object v1
.end method

.method public inflateNotificationViews()V
    .locals 1

    .line 146
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    .line 147
    return-void
.end method

.method inflateNotificationViews(I)V
    .locals 14
    .param p1, "reInflateFlags"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 168
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getImageResolver()Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->preloadImages(Landroid/app/Notification;)V

    .line 171
    new-instance v13, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v12, 0x0

    move-object v1, v13

    move-object v2, v0

    move v3, p1

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;-><init>(Landroid/service/notification/StatusBarNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$1;)V

    .line 175
    .local v1, "task":Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->doInflateSynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    goto :goto_0

    .line 178
    :cond_1
    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    :goto_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 625
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    .line 626
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 627
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 628
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 629
    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 630
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews()V

    .line 631
    return-void
.end method

.method public reinflateQuickReply()V
    .locals 1

    .line 136
    const/16 v0, 0x60

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    .line 138
    return-void
.end method

.method public setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .line 608
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .line 609
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 1
    .param p1, "childInGroup"    # Z

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    if-eq p1, v0, :cond_0

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x3

    .line 107
    .local v0, "flags":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    .line 110
    .end local v0    # "flags":I
    :cond_0
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0
    .param p1, "isLowPriority"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    .line 95
    return-void
.end method

.method public setRedactAmbient(Z)V
    .locals 1
    .param p1, "redactAmbient"    # Z

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    if-eq v0, p1, :cond_1

    .line 126
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    .line 132
    :cond_1
    return-void
.end method

.method public setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 122
    return-void
.end method

.method public setUsesIncreasedHeadsUpHeight(Z)V
    .locals 0
    .param p1, "usesIncreasedHeight"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    .line 118
    return-void
.end method

.method public setUsesIncreasedHeight(Z)V
    .locals 0
    .param p1, "usesIncreasedHeight"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    .line 114
    return-void
.end method
