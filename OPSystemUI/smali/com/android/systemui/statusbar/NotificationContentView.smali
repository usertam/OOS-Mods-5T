.class public Lcom/android/systemui/statusbar/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"


# instance fields
.field private mAmbientChild:Landroid/view/View;

.field private mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

.field private mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mAnimate:Z

.field private mAnimationStartVisibleType:I

.field private mBeforeN:Z

.field private mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mClipBottomAmount:I

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipToActualHeight:Z

.field private mClipTopAmount:I

.field private mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mContentHeight:I

.field private mContentHeightAtAnimationStart:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mDark:Z

.field private final mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedChild:Landroid/view/View;

.field private mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private mExpandedVisibleListener:Ljava/lang/Runnable;

.field private mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mFirstSeen:Z

.field private mFocusOnVisibilityChange:Z

.field private mForceSelectNextLayout:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpChild:Landroid/view/View;

.field private mHeadsUpHeight:I

.field private mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mIconsVisible:Z

.field private mIsChildInGroup:Z

.field private mIsContentExpandable:Z

.field private mIsHeadsUp:Z

.field private mIsLowPriority:Z

.field private mIsQuickReply:Z

.field private mLegacy:Z

.field private mMinContractedHeight:I

.field private mNotificationAmbientHeight:I

.field private mNotificationContentMarginEnd:I

.field private mNotificationMaxHeight:I

.field private mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

.field private mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

.field private mQuickReplyChild:Landroid/view/View;

.field private mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mQuickReplyHeadsUpChild:Landroid/view/View;

.field private mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mQuickReplyHeight:I

.field private mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private mRemoteInputVisible:Z

.field private mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

.field private mSingleLineWidthIndention:I

.field private mSmallHeight:I

.field private mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field private mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mTransformationStartVisibleType:I

.field private mUnrestrictedContentHeight:I

.field private mUserExpanding:Z

.field private mVisibleType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 121
    new-instance v1, Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    .line 146
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 149
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 155
    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 166
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    .line 168
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFirstSeen:Z

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 175
    const-class v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 176
    const-class v0, Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->initView()V

    .line 178
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/NotificationContentView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .line 57
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationContentView;I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/NotificationContentView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    return p1
.end method

.method private animateToVisibleType(I)V
    .locals 4
    .param p1, "visibleType"    # I

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 1079
    .local v0, "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 1080
    .local v1, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1084
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 1085
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1086
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    new-instance v2, Lcom/android/systemui/statusbar/NotificationContentView$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 1096
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1097
    return-void

    .line 1081
    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 1082
    return-void
.end method

.method private applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "hasRemoteInput"    # Z
    .param p4, "existingPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "cachedView"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .param p6, "wrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 1460
    const v0, 0x102018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1462
    .local v0, "actionContainerCandidate":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    .line 1463
    sget-object v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    .line 1464
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1466
    .local v1, "existing":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    if-eqz v1, :cond_0

    .line 1467
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 1470
    :cond_0
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 1471
    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1472
    .local v2, "actionContainer":Landroid/view/ViewGroup;
    if-nez p5, :cond_1

    .line 1473
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-static {v3, v2, p2, v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v3

    .line 1476
    .local v3, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setVisibility(I)V

    .line 1477
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1481
    move-object v1, v3

    .line 1482
    .end local v3    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    goto :goto_0

    .line 1483
    :cond_1
    invoke-virtual {v2, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1484
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1485
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestFocus()Z

    .line 1486
    move-object v1, p5

    .line 1489
    .end local v2    # "actionContainer":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    if-eqz p3, :cond_7

    .line 1490
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->color:I

    .line 1491
    .local v2, "color":I
    if-nez v2, :cond_3

    .line 1492
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v4, 0x7f060183

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 1494
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v4, 0x7f060433

    .line 1495
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    const v5, 0x7f060430

    .line 1496
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 1494
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextBackgroundColor(III)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBackgroundColor(I)V

    .line 1498
    invoke-virtual {v1, p6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setWrapper(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)V

    .line 1499
    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$ajnJ2IkdZIqGVFWc6Wtl4AFbcm4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/-$$Lambda$ajnJ2IkdZIqGVFWc6Wtl4AFbcm4;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 1501
    if-nez p4, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1504
    :cond_4
    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1505
    .local v3, "actions":[Landroid/app/Notification$Action;
    if-eqz p4, :cond_5

    .line 1506
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 1508
    :cond_5
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1509
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1510
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    goto :goto_1

    .line 1513
    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1514
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1519
    .end local v2    # "color":I
    .end local v3    # "actions":[Landroid/app/Notification$Action;
    :cond_7
    :goto_1
    return-object v1

    .line 1521
    .end local v1    # "existing":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method private applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "hasRemoteInput"    # Z

    .line 1427
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 1428
    .local v7, "bigContentView":Landroid/view/View;
    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 1429
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_0

    .line 1433
    :cond_0
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1435
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v1, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1440
    :cond_1
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1442
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 1443
    .local v9, "headsUpContentView":Landroid/view/View;
    if-eqz v9, :cond_2

    .line 1444
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-object v0, p0

    move-object v1, v9

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_1

    .line 1447
    :cond_2
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1449
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v1, :cond_3

    .line 1452
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1454
    :cond_3
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1455
    return-void
.end method

.method private applyRemoteInputAndSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 19
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, p0

    .line 1387
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-nez v2, :cond_0

    .line 1388
    return-void

    .line 1391
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->isEnabled()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 1392
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->requiresTargetingP()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v5, 0x1c

    if-lt v2, v5, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1395
    .local v2, "enableSmartReplies":Z
    :goto_0
    const/4 v5, 0x0

    .line 1396
    .local v5, "hasRemoteInput":Z
    const/4 v6, 0x0

    .line 1397
    .local v6, "remoteInputWithChoices":Landroid/app/RemoteInput;
    const/4 v7, 0x0

    .line 1399
    .local v7, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1400
    .local v8, "actions":[Landroid/app/Notification$Action;
    if-eqz v8, :cond_a

    .line 1401
    array-length v9, v8

    move-object v10, v7

    move-object v7, v6

    move v6, v5

    const/4 v5, 0x0

    .end local v5    # "hasRemoteInput":Z
    .local v6, "hasRemoteInput":Z
    .local v7, "remoteInputWithChoices":Landroid/app/RemoteInput;
    .local v10, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    :goto_1
    if-ge v5, v9, :cond_9

    aget-object v11, v8, v5

    .line 1402
    .local v11, "a":Landroid/app/Notification$Action;
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 1403
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v12

    array-length v13, v12

    move-object v14, v10

    move-object v10, v7

    move v7, v6

    const/4 v6, 0x0

    .end local v6    # "hasRemoteInput":Z
    .local v7, "hasRemoteInput":Z
    .local v10, "remoteInputWithChoices":Landroid/app/RemoteInput;
    .local v14, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    :goto_2
    if-ge v6, v13, :cond_7

    aget-object v15, v12, v6

    .line 1404
    .local v15, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v16

    .line 1405
    .local v16, "showRemoteInputView":Z
    if-eqz v2, :cond_3

    invoke-virtual {v15}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 1406
    invoke-virtual {v15}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 1407
    .local v3, "showSmartReplyView":Z
    :goto_3
    if-eqz v16, :cond_4

    .line 1408
    const/4 v7, 0x1

    .line 1410
    :cond_4
    if-eqz v3, :cond_5

    .line 1411
    move-object v10, v15

    .line 1412
    iget-object v14, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 1414
    :cond_5
    if-nez v16, :cond_7

    if-eqz v3, :cond_6

    .line 1415
    goto :goto_4

    .line 1403
    .end local v3    # "showSmartReplyView":Z
    .end local v15    # "ri":Landroid/app/RemoteInput;
    .end local v16    # "showRemoteInputView":Z
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1401
    .end local v11    # "a":Landroid/app/Notification$Action;
    :cond_7
    :goto_4
    move v6, v7

    move-object v7, v10

    move-object v10, v14

    .end local v14    # "pendingIntentWithChoices":Landroid/app/PendingIntent;
    .restart local v6    # "hasRemoteInput":Z
    .local v7, "remoteInputWithChoices":Landroid/app/RemoteInput;
    .local v10, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1422
    :cond_9
    move v5, v6

    move-object v6, v7

    move-object v7, v10

    .end local v10    # "pendingIntentWithChoices":Landroid/app/PendingIntent;
    .restart local v5    # "hasRemoteInput":Z
    .local v6, "remoteInputWithChoices":Landroid/app/RemoteInput;
    .local v7, "pendingIntentWithChoices":Landroid/app/PendingIntent;
    :cond_a
    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 1423
    invoke-direct {v0, v6, v7, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->applySmartReplyView(Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1424
    return-void
.end method

.method private applySmartReplyView(Landroid/view/View;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object v0, p0

    .line 1539
    move-object/from16 v7, p4

    const v1, 0x1020406

    move-object/from16 v8, p1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1541
    .local v9, "smartReplyContainerCandidate":Landroid/view/View;
    instance-of v1, v9, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1542
    return-object v2

    .line 1544
    :cond_0
    move-object v10, v9

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1545
    .local v10, "smartReplyContainer":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    if-eqz p2, :cond_7

    if-nez p3, :cond_1

    goto :goto_2

    .line 1550
    :cond_1
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.remoteInputSpinner"

    .line 1551
    const/4 v11, 0x0

    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1552
    .local v12, "showingSpinner":Z
    if-eqz v12, :cond_2

    .line 1553
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1554
    return-object v2

    .line 1557
    :cond_2
    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.hideSmartReplies"

    .line 1558
    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1559
    .local v13, "hideSmartReplies":Z
    if-eqz v13, :cond_3

    .line 1560
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1561
    return-object v2

    .line 1563
    :cond_3
    const/4 v1, 0x0

    .line 1564
    .local v1, "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1565
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v1

    .line 1566
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1573
    .end local v1    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .local v14, "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :cond_4
    :goto_0
    move-object v14, v1

    goto :goto_1

    .line 1567
    .end local v14    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .restart local v1    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :cond_5
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1568
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1569
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v3, :cond_4

    .line 1570
    move-object v1, v2

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .end local v2    # "child":Landroid/view/View;
    goto :goto_0

    .line 1573
    .end local v1    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .restart local v14    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :goto_1
    if-eqz v14, :cond_6

    .line 1574
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v7

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setRepliesFromRemoteInput(Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 1576
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1578
    :cond_6
    return-object v14

    .line 1546
    .end local v12    # "showingSpinner":Z
    .end local v13    # "hideSmartReplies":Z
    .end local v14    # "smartReplyView":Lcom/android/systemui/statusbar/policy/SmartReplyView;
    :cond_7
    :goto_2
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1547
    return-object v2
.end method

.method private applySmartReplyView(Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "remoteInput"    # Landroid/app/RemoteInput;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1526
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 1528
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationContentView;->applySmartReplyView(Landroid/view/View;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1530
    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, p3, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->smartRepliesAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;I)V

    .line 1534
    :cond_0
    return-void
.end method

.method private calculateTransformationAmount()F
    .locals 8

    .line 805
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    .line 806
    .local v0, "startHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    .line 807
    .local v1, "endHeight":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 808
    .local v2, "progress":I
    sub-int v3, v1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 809
    .local v3, "totalDistance":I
    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    .line 810
    const-string v5, "NotificationContentView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the total transformation distance is 0\n StartType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\n VisibleType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\n mContentHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return v4

    .line 816
    :cond_0
    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 817
    .local v5, "amount":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method private fireExpandedVisibleListenerIfVisible()V
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 990
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 992
    .local v0, "listener":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 993
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 995
    .end local v0    # "listener":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private focusExpandButtonIfNecessary()V
    .locals 2

    .line 649
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 651
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getExpandButton()Landroid/widget/ImageView;

    move-result-object v1

    .line 653
    .local v1, "expandButton":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v1}, Landroid/widget/ImageView;->requestAccessibilityFocus()Z

    .line 657
    .end local v1    # "expandButton":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 659
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    return-void
.end method

.method private forceUpdateVisibilities()V
    .locals 3

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 971
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 972
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 973
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 974
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 977
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x6

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 979
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 982
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 985
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 986
    return-void
.end method

.method private forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "wrapper"    # Lcom/android/systemui/statusbar/TransformableView;

    .line 998
    if-nez p2, :cond_0

    .line 999
    return-void

    .line 1001
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 1003
    .local v0, "visible":Z
    :goto_1
    if-nez v0, :cond_3

    .line 1004
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1006
    :cond_3
    invoke-interface {p3, v1}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 1008
    :goto_2
    return-void
.end method

.method private getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I
    .locals 2
    .param p1, "remoteInput"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 351
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 355
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getMinContentHeightHint()I
    .locals 6

    .line 691
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    const v1, 0x1050125

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 698
    nop

    .line 699
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 700
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    .line 701
    .local v0, "transitioningBetweenHunAndExpanded":Z
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 703
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v2

    .line 704
    .local v5, "pinned":Z
    :goto_2
    if-nez v0, :cond_5

    if-eqz v5, :cond_6

    .line 705
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    .line 706
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v2

    .line 705
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 711
    .end local v0    # "transitioningBetweenHunAndExpanded":Z
    .end local v5    # "pinned":Z
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, v4, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 713
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 717
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, "hint":I
    :goto_3
    goto :goto_4

    .line 719
    .end local v0    # "hint":I
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    goto :goto_3

    .line 723
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 724
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 725
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 726
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 728
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 729
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 730
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 731
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    goto :goto_3

    .line 733
    :cond_d
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    .line 734
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    .restart local v0    # "hint":I
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_e

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 739
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 741
    :cond_e
    return v0
.end method

.method private getRemoteInputForView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1863
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object v0

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object v0

    .line 1868
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1
    .param p1, "visibleType"    # I

    .line 1117
    packed-switch p1, :pswitch_data_0

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1132
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1130
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1127
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 1125
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1123
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 1121
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1119
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getViewForVisibleType(I)Landroid/view/View;
    .locals 1
    .param p1, "visibleType"    # I

    .line 1144
    packed-switch p1, :pswitch_data_0

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0

    .line 1159
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    return-object v0

    .line 1157
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    return-object v0

    .line 1154
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 1152
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    return-object v0

    .line 1150
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 1148
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0

    .line 1146
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getViewHeight(I)I
    .locals 4
    .param p1, "visibleType"    # I

    .line 842
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v0

    .line 843
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 844
    .local v1, "height":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 845
    .local v2, "viewWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v2, :cond_0

    .line 846
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getHeaderTranslation()I

    move-result v3

    add-int/2addr v1, v3

    .line 848
    :cond_0
    return v1
.end method

.method private getVisualTypeForHeight(F)I
    .locals 4
    .param p1, "viewHeight"    # F

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1227
    .local v0, "noExpandedChild":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    .line 1228
    return v2

    .line 1230
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1231
    const/4 v1, 0x3

    return v1

    .line 1234
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    if-eqz v3, :cond_4

    .line 1235
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1236
    const/4 v1, 0x7

    return v1

    .line 1237
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1238
    const/4 v1, 0x6

    return v1

    .line 1242
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v3, :cond_8

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1243
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1244
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-lez v3, :cond_7

    if-eqz v0, :cond_6

    goto :goto_1

    .line 1247
    :cond_6
    return v2

    .line 1245
    :cond_7
    :goto_1
    return v1

    .line 1250
    :cond_8
    if-nez v0, :cond_a

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_a

    .line 1251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1252
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    .line 1255
    :cond_9
    return v2

    .line 1253
    :cond_a
    :goto_2
    return v1
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 492
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private isGroupExpanded()Z
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private isTransitioningFromTo(II)Z
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 745
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v0, p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVisibleOrTransitioning(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 750
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private selectLayout(ZZ)V
    .locals 9
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 918
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 919
    return-void

    .line 921
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_1

    .line 922
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContentTransformation()V

    goto/16 :goto_2

    .line 924
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 925
    .local v0, "visibleType":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 926
    .local v1, "changedType":Z
    :goto_0
    if-nez v1, :cond_3

    if-eqz p2, :cond_11

    .line 927
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v4

    .line 928
    .local v4, "visibleView":Landroid/view/View;
    const/4 v5, 0x6

    const/4 v6, 0x7

    if-eqz v4, :cond_7

    .line 929
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 930
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->transferRemoteInputFocus(I)V

    .line 932
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFirstSeen:Z

    if-eqz v7, :cond_7

    if-eq v0, v6, :cond_4

    if-ne v0, v5, :cond_7

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    .line 934
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    .line 935
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    .line 936
    :cond_6
    const-string v7, "NotificationContentView"

    const-string v8, "Notification is displayed as Quick Reply style"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFirstSeen:Z

    .line 942
    :cond_7
    if-eqz p1, :cond_e

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v2, :cond_d

    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v2, :cond_d

    :cond_9
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v2, :cond_d

    :cond_a
    if-ne v0, v5, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-nez v2, :cond_d

    :cond_b
    if-ne v0, v6, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-nez v2, :cond_d

    :cond_c
    if-nez v0, :cond_e

    .line 950
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->animateToVisibleType(I)V

    goto :goto_1

    .line 952
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 954
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 955
    if-eqz v1, :cond_f

    .line 956
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->focusExpandButtonIfNecessary()V

    .line 958
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 959
    .local v2, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v2, :cond_10

    .line 960
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 961
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v5

    .line 960
    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 963
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 966
    .end local v0    # "visibleType":I
    .end local v1    # "changedType":Z
    .end local v2    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .end local v4    # "visibleView":Landroid/view/View;
    :cond_11
    :goto_2
    return-void
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 635
    if-eqz p1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    .line 646
    :goto_0
    return-void
.end method

.method private shouldClipToRounding(IZZ)Z
    .locals 2
    .param p1, "visibleType"    # I
    .param p2, "topRounded"    # Z
    .param p3, "bottomRounded"    # Z

    .line 1818
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1819
    .local v0, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-nez v0, :cond_0

    .line 1820
    const/4 v1, 0x0

    return v1

    .line 1822
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->shouldClipToRounding(ZZ)Z

    move-result v1

    return v1
.end method

.method private shouldContractedBeFixedSize()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private transferRemoteInputFocus(I)V
    .locals 2
    .param p1, "visibleType"    # I

    .line 1100
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1102
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 1105
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1107
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 1110
    :cond_1
    return-void
.end method

.method private updateAllSingleLineViews()V
    .locals 0

    .line 1353
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateSingleLineView()V

    .line 1354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAmbientSingleLineView()V

    .line 1355
    return-void
.end method

.method private updateAmbientSingleLineView()V
    .locals 5

    .line 1372
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_2

    .line 1373
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1374
    .local v0, "isNewView":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1375
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1374
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindAmbientFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1376
    if-eqz v0, :cond_1

    .line 1377
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1380
    .end local v0    # "isNewView":Z
    :cond_1
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_3

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1384
    :cond_3
    :goto_1
    return-void
.end method

.method private updateBackgroundTransformation(F)V
    .locals 4
    .param p1, "transformationAmount"    # F

    .line 788
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 789
    .local v0, "endColor":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    .line 790
    .local v1, "startColor":I
    if-eq v0, v1, :cond_2

    .line 791
    if-nez v1, :cond_0

    .line 792
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v1

    .line 794
    :cond_0
    if-nez v0, :cond_1

    .line 795
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v0

    .line 797
    :cond_1
    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 800
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundAlpha(F)V

    .line 801
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 802
    return-void
.end method

.method private updateClipping()V
    .locals 5

    .line 901
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    if-eqz v0, :cond_0

    .line 902
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 903
    .local v0, "top":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 904
    .local v1, "bottom":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 905
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 906
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 907
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    goto :goto_0

    .line 908
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 910
    :goto_0
    return-void
.end method

.method private updateContentTransformation()V
    .locals 6

    .line 755
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 756
    .local v0, "visibleType":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 758
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 759
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 760
    .local v1, "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v3

    .line 762
    .local v3, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 763
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 764
    invoke-interface {v3, v1, v4}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 765
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 766
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 768
    .end local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v3    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    if-eqz v1, :cond_1

    .line 769
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibilities()V

    .line 771
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 773
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 774
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 775
    .restart local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v2

    .line 777
    .local v2, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateTransformationAmount()F

    move-result v3

    .line 778
    .local v3, "transformationAmount":F
    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 779
    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 780
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundTransformation(F)V

    .line 781
    .end local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v2    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v3    # "transformationAmount":F
    goto :goto_0

    .line 782
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 783
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 785
    :goto_0
    return-void
.end method

.method private updateContractedHeaderWidth()Z
    .locals 10

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 362
    .local v0, "contractedHeader":Landroid/view/NotificationHeaderView;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 363
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 364
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 365
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    .line 366
    .local v2, "expandedHeader":Landroid/view/NotificationHeaderView;
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v4

    .line 367
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    .line 368
    .local v4, "expandedSize":I
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    .line 369
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v6

    sub-int/2addr v5, v6

    .line 370
    .local v5, "collapsedSize":I
    if-eq v4, v5, :cond_2

    .line 371
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v4

    .line 372
    .local v1, "paddingEnd":I
    nop

    .line 373
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 374
    nop

    .line 376
    move v6, v1

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v6

    .line 376
    :goto_0
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v7

    .line 377
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 378
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v8

    goto :goto_1

    .line 379
    :cond_1
    nop

    .line 380
    move v8, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v9

    .line 372
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 381
    invoke-virtual {v0, v3}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    .line 382
    return v3

    .line 384
    .end local v1    # "paddingEnd":I
    .end local v2    # "expandedHeader":Landroid/view/NotificationHeaderView;
    .end local v4    # "expandedSize":I
    .end local v5    # "collapsedSize":I
    :cond_2
    goto :goto_4

    .line 385
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 386
    .local v2, "paddingEnd":I
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 387
    nop

    .line 388
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 389
    nop

    .line 391
    move v4, v2

    goto :goto_2

    .line 390
    :cond_4
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v4

    .line 391
    :goto_2
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v5

    .line 392
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 393
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v6

    goto :goto_3

    .line 394
    :cond_5
    nop

    .line 395
    move v6, v2

    :goto_3
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v7

    .line 387
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 396
    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    .line 397
    return v3

    .line 401
    .end local v2    # "paddingEnd":I
    :cond_6
    :goto_4
    return v1
.end method

.method private updateIconVisibilities()V
    .locals 3

    .line 1747
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1749
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 1750
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1753
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 1754
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1755
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_1

    .line 1756
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1759
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_2

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1761
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_2

    .line 1762
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1765
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_2
    return-void
.end method

.method private updateLegacy()V
    .locals 2

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1302
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1305
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1309
    :cond_4
    return-void
.end method

.method private updateSingleLineView()V
    .locals 5

    .line 1357
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_2

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1359
    .local v0, "isNewView":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1360
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1359
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1361
    if-eqz v0, :cond_1

    .line 1362
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1365
    .end local v0    # "isNewView":Z
    :cond_1
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_3

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1369
    :cond_3
    :goto_1
    return-void
.end method

.method private updateViewVisibilities(I)V
    .locals 3
    .param p1, "visibleType"    # I

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1052
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x3

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x5

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x6

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x7

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 1064
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 1068
    return-void
.end method

.method private updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "visibleType"    # I
    .param p2, "type"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "wrapper"    # Lcom/android/systemui/statusbar/TransformableView;

    .line 1072
    if-eqz p3, :cond_1

    .line 1073
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4, v0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 1075
    :cond_1
    return-void
.end method

.method private updateVisibility()V
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisible(Z)V

    .line 626
    return-void
.end method


# virtual methods
.method public calculateVisibleType()I
    .locals 4

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1192
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    .line 1193
    const/4 v0, 0x5

    return v0

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1195
    const/4 v0, 0x4

    return v0

    .line 1197
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1200
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v0, :cond_8

    .line 1202
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_4

    .line 1201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x1

    .line 1202
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1204
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    goto :goto_1

    .line 1203
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxContentHeight()I

    move-result v0

    .line 1204
    :goto_1
    nop

    .line 1205
    .local v0, "height":I
    if-nez v0, :cond_5

    .line 1206
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 1208
    :cond_5
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v1

    .line 1209
    .local v1, "expandedVisualType":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1210
    const/4 v2, 0x3

    goto :goto_2

    .line 1211
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v2

    .line 1212
    .local v2, "collapsedVisualType":I
    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v3, v2, :cond_7

    .line 1213
    nop

    .line 1212
    move v3, v1

    goto :goto_3

    .line 1214
    :cond_7
    nop

    .line 1212
    move v3, v2

    :goto_3
    return v3

    .line 1216
    .end local v0    # "height":I
    .end local v1    # "expandedVisualType":I
    .end local v2    # "collapsedVisualType":I
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 1217
    .local v0, "intrinsicHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 1218
    .local v1, "viewHeight":I
    if-eqz v0, :cond_9

    .line 1220
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1222
    :cond_9
    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v2

    return v2
.end method

.method public closeRemoteInput()V
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1588
    :cond_1
    return-void
.end method

.method public disallowSingleClick(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1800
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1801
    .local v0, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v0, :cond_0

    .line 1802
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->disallowSingleClick(FF)Z

    move-result v1

    return v1

    .line 1804
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1840
    .local v0, "y":F
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getRemoteInputForView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v1

    .line 1841
    .local v1, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1842
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1843
    .local v2, "inputStart":I
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 1844
    const/4 v3, 0x0

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1845
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1848
    .end local v2    # "inputStart":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public getActiveRemoteInputText()Ljava/lang/CharSequence;
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1830
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1832
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAmbientChild()Landroid/view/View;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    return-object v0
.end method

.method public getAmbientSingleLineChild()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getBackgroundColor(I)I
    .locals 2
    .param p1, "visibleType"    # I

    .line 1037
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1038
    .local v0, "currentVisibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    const/4 v1, 0x0

    .line 1039
    .local v1, "customBackgroundColor":I
    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v1

    .line 1042
    :cond_0
    return v1
.end method

.method public getBackgroundColorForExpansionState()I
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1030
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    goto :goto_1

    .line 1031
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 1032
    :goto_1
    nop

    .line 1033
    .local v0, "visibleType":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    return v1
.end method

.method public getContractedChild()Landroid/view/View;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getContractedNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .line 1657
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    .line 1660
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandHeight()I
    .locals 3

    .line 1872
    const/4 v0, 0x1

    .line 1873
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1874
    const/4 v0, 0x0

    .line 1876
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpHeight()I
    .locals 3

    .line 1898
    const/4 v0, 0x2

    .line 1899
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1900
    const/4 v0, 0x0

    .line 1904
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1905
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1904
    return v1
.end method

.method public getMaxHeight()I
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getShowingAmbientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 828
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    if-eqz v0, :cond_1

    .line 829
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 832
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 833
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    return v0

    .line 834
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 835
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 836
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    add-int/2addr v0, v1

    .line 835
    return v0

    .line 838
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 852
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v0

    return v0
.end method

.method public getMinHeight(Z)I
    .locals 1
    .param p1, "likeGroupExpanded"    # Z

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getShowingAmbientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 860
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 861
    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0

    .line 863
    :cond_2
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 866
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    return v0

    .line 864
    :cond_4
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v0

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .line 1628
    const/4 v0, 0x0

    .line 1629
    .local v0, "header":Landroid/view/NotificationHeaderView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1630
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1632
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1633
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1635
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1636
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1638
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1639
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1641
    :cond_3
    return-object v0
.end method

.method public getQuickReplyContractedChild()Landroid/view/View;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    return-object v0
.end method

.method public getQuickReplyHeadsUpChild()Landroid/view/View;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    return-object v0
.end method

.method public getQuickReplyHeadsUpHeight()I
    .locals 2

    .line 1889
    const/4 v0, 0x7

    .line 1890
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1891
    const/4 v0, 0x0

    .line 1893
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    return v1
.end method

.method public getQuickReplyHeight()I
    .locals 2

    .line 1881
    const/4 v0, 0x6

    .line 1882
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1883
    const/4 v0, 0x0

    .line 1885
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewHeight(I)I

    move-result v1

    return v1
.end method

.method public getShowingAmbientView()Landroid/view/View;
    .locals 2

    .line 871
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    .line 872
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    .line 873
    return-object v0

    .line 875
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v1
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .line 1709
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .line 1664
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1665
    .local v0, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getVisibleType()I
    .locals 1

    .line 1023
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method public getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p1, "visibleType"    # I

    .line 1167
    packed-switch p1, :pswitch_data_0

    .line 1183
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 1180
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1178
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1175
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1171
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1169
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 1173
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1283
    const/4 v0, 0x0

    return v0
.end method

.method public initView()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070325

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeight:I

    .line 188
    return-void
.end method

.method isAnimatingVisibleType()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1729
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    .line 1261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsContentExpandable:Z

    return v0
.end method

.method public isDimmable()Z
    .locals 1

    .line 1790
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1791
    const/4 v0, 0x0

    return v0

    .line 1793
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isQuickReply()Z
    .locals 1

    .line 563
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 427
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 428
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 429
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 630
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 632
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "previousHeight":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 414
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 415
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 416
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 420
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 421
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 422
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 423
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v6, p0

    .line 200
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 201
    .local v7, "heightMode":I
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v7, v8, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v9, v2

    .line 202
    .local v9, "hasFixedHeight":Z
    const/high16 v10, -0x80000000

    if-ne v7, v10, :cond_1

    move v0, v1

    nop

    :cond_1
    move v11, v0

    .line 203
    .local v11, "isHeightLimited":Z
    const v0, 0x3fffffff    # 1.9999999f

    .line 204
    .local v0, "maxSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 205
    .local v12, "width":I
    if-nez v9, :cond_3

    if-eqz v11, :cond_2

    goto :goto_2

    .line 208
    .end local v0    # "maxSize":I
    .local v13, "maxSize":I
    :cond_2
    :goto_1
    move v13, v0

    goto :goto_3

    .line 206
    .end local v13    # "maxSize":I
    .restart local v0    # "maxSize":I
    :cond_3
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    .line 208
    .end local v0    # "maxSize":I
    .restart local v13    # "maxSize":I
    :goto_3
    const/4 v14, 0x0

    .line 209
    .local v14, "maxChildHeight":I
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 210
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 211
    .local v0, "notificationMaxHeight":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v1, :cond_4

    .line 212
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getHeightUpperLimit()I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    :cond_4
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int v15, v0, v1

    .line 215
    .end local v0    # "notificationMaxHeight":I
    .local v15, "notificationMaxHeight":I
    move v0, v15

    .line 216
    .local v0, "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 217
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 218
    .local v1, "useExactly":Z
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_5

    .line 220
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 221
    const/4 v1, 0x1

    .line 223
    .end local v0    # "size":I
    .end local v1    # "useExactly":Z
    .local v4, "size":I
    .local v16, "useExactly":Z
    :cond_5
    move v4, v0

    move/from16 v16, v1

    if-eqz v16, :cond_6

    .line 224
    nop

    .line 223
    move v0, v8

    goto :goto_4

    .line 225
    :cond_6
    nop

    .line 223
    move v0, v10

    :goto_4
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 226
    .local v17, "spec":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/16 v18, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v19, v4

    move/from16 v4, v17

    .end local v4    # "size":I
    .local v19, "size":I
    move-object/from16 v20, v5

    move/from16 v5, v18

    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .local v20, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 227
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 229
    .end local v15    # "notificationMaxHeight":I
    .end local v16    # "useExactly":Z
    .end local v17    # "spec":I
    .end local v19    # "size":I
    .end local v20    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 231
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    .line 232
    .restart local v0    # "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 233
    .local v15, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 234
    .restart local v1    # "useExactly":Z
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_8

    .line 236
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    const/4 v1, 0x1

    .line 239
    .end local v0    # "size":I
    .end local v1    # "useExactly":Z
    .local v5, "size":I
    .restart local v16    # "useExactly":Z
    :cond_8
    move v5, v0

    move/from16 v16, v1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldContractedBeFixedSize()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v16, :cond_9

    goto :goto_5

    .line 242
    :cond_9
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_6

    .line 240
    :cond_a
    :goto_5
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 242
    .local v4, "heightSpec":I
    :goto_6
    move v4, v0

    .line 244
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v18, v5

    move/from16 v5, v17

    .end local v5    # "size":I
    .local v18, "size":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 245
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 246
    .local v5, "measuredHeight":I
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    if-ge v5, v0, :cond_b

    .line 247
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 248
    .end local v4    # "heightSpec":I
    .local v17, "heightSpec":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v4, v17

    move v10, v5

    move/from16 v5, v19

    .end local v5    # "measuredHeight":I
    .local v10, "measuredHeight":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_7

    .line 250
    .end local v10    # "measuredHeight":I
    .end local v17    # "heightSpec":I
    .restart local v4    # "heightSpec":I
    .restart local v5    # "measuredHeight":I
    :cond_b
    move v10, v5

    move/from16 v17, v4

    .end local v4    # "heightSpec":I
    .end local v5    # "measuredHeight":I
    .restart local v10    # "measuredHeight":I
    .restart local v17    # "heightSpec":I
    :goto_7
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContractedHeaderWidth()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 252
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 254
    :cond_c
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 257
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 259
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v2, p1

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 262
    .end local v10    # "measuredHeight":I
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "useExactly":Z
    .end local v17    # "heightSpec":I
    .end local v18    # "size":I
    :cond_d
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 263
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    .line 264
    .local v0, "maxHeight":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int v10, v0, v1

    .line 265
    .end local v0    # "maxHeight":I
    .local v10, "maxHeight":I
    move v0, v10

    .line 266
    .local v0, "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 267
    .restart local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 268
    .restart local v1    # "useExactly":Z
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_e

    .line 270
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 271
    const/4 v1, 0x1

    .line 273
    .end local v0    # "size":I
    .end local v1    # "useExactly":Z
    .local v5, "size":I
    .restart local v16    # "useExactly":Z
    :cond_e
    move v5, v0

    move/from16 v16, v1

    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v3, 0x0

    .line 274
    if-eqz v16, :cond_f

    move v0, v8

    goto :goto_8

    .line 275
    :cond_f
    nop

    .line 274
    const/high16 v0, -0x80000000

    :goto_8
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/16 v17, 0x0

    .line 273
    move-object v0, v6

    move/from16 v2, p1

    move/from16 v18, v5

    move/from16 v5, v17

    .end local v5    # "size":I
    .restart local v18    # "size":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 276
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 278
    .end local v10    # "maxHeight":I
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "useExactly":Z
    .end local v18    # "size":I
    :cond_10
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_12

    .line 279
    move/from16 v0, p1

    .line 280
    .local v0, "singleLineWidthSpec":I
    iget v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eqz v1, :cond_11

    .line 281
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_11

    .line 282
    iget v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    sub-int v1, v12, v1

    iget-object v2, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 283
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 282
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 286
    :cond_11
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget v2, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 287
    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 286
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    .line 288
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .end local v0    # "singleLineWidthSpec":I
    goto :goto_9

    .line 290
    :cond_12
    const/high16 v3, -0x80000000

    :goto_9
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 291
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    .line 292
    .local v0, "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 293
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 294
    .local v2, "useExactly":Z
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_13

    .line 296
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 297
    const/4 v2, 0x1

    .line 299
    :cond_13
    iget-object v4, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    .line 300
    if-eqz v2, :cond_14

    move v5, v8

    goto :goto_a

    .line 301
    :cond_14
    nop

    .line 300
    move v5, v3

    :goto_a
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 299
    move/from16 v10, p1

    invoke-virtual {v4, v10, v5}, Landroid/view/View;->measure(II)V

    .line 302
    iget-object v4, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    .end local v0    # "size":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "useExactly":Z
    goto :goto_b

    .line 304
    :cond_15
    move/from16 v10, p1

    :goto_b
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_19

    .line 305
    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    .line 306
    .restart local v0    # "size":I
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 307
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 308
    .restart local v2    # "useExactly":Z
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_16

    .line 310
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 311
    const/4 v2, 0x1

    .line 313
    :cond_16
    move v4, v10

    .line 314
    .local v4, "ambientSingleLineWidthSpec":I
    iget v5, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eqz v5, :cond_17

    .line 315
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_17

    .line 316
    iget v5, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    sub-int v5, v12, v5

    iget-object v15, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 317
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v15

    add-int/2addr v5, v15

    .line 316
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 320
    :cond_17
    iget-object v5, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 321
    if-eqz v2, :cond_18

    move v3, v8

    goto :goto_c

    .line 322
    :cond_18
    nop

    .line 321
    :goto_c
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 320
    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    .line 323
    iget-object v3, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 326
    .end local v0    # "size":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "useExactly":Z
    .end local v4    # "ambientSingleLineWidthSpec":I
    :cond_19
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 327
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    const/4 v3, 0x0

    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeight:I

    .line 328
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    .line 327
    move-object v0, v6

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 329
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 331
    :cond_1a
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 332
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    const/4 v3, 0x0

    iget v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeight:I

    .line 333
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    .line 332
    move-object v0, v6

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationContentView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 334
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 337
    :cond_1b
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 338
    .local v0, "ownHeight":I
    invoke-virtual {v6, v12, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setMeasuredDimension(II)V

    .line 339
    return-void
.end method

.method public onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1329
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 1330
    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    .line 1331
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1332
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1335
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1336
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1338
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1339
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1341
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1344
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInputAndSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLegacy()V

    .line 1346
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 1347
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 1348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1349
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1350
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 1769
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 1770
    if-eqz p1, :cond_0

    .line 1771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1773
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 620
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 622
    return-void
.end method

.method public pointInView(FFF)Z
    .locals 4
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 1856
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    int-to-float v0, v0

    .line 1857
    .local v0, "top":F
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    int-to-float v1, v1

    .line 1858
    .local v1, "bottom":F
    neg-float v2, p3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sub-float v2, v0, p3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRight:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, p3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    add-float v2, v1, p3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public reInflateViews()V
    .locals 1

    .line 1677
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1680
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1682
    :cond_0
    return-void
.end method

.method public requestSelectLayout(Z)V
    .locals 1
    .param p1, "needsAnimation"    # Z

    .line 1673
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1674
    return-void
.end method

.method public setAmbientChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 609
    :cond_0
    if-nez p1, :cond_1

    .line 610
    return-void

    .line 612
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 613
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    .line 614
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 616
    return-void
.end method

.method public setBackgroundTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1017
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(I)V

    .line 1020
    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .line 890
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBottomAmount:I

    .line 891
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 892
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 1
    .param p1, "clipChildren"    # Z

    .line 1915
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move p1, v0

    .line 1916
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1917
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0
    .param p1, "clipToActualHeight"    # Z

    .line 913
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    .line 914
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 915
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .line 884
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    .line 885
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 886
    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "containingNotification"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1669
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1670
    return-void
.end method

.method public setContentHeight(I)V
    .locals 4
    .param p1, "contentHeight"    # I

    .line 662
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 664
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 665
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExtraRemoteInputHeight(Lcom/android/systemui/statusbar/policy/RemoteInputView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 666
    .local v0, "maxContentHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 667
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 669
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v1

    .line 671
    .local v1, "minHeightHint":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 672
    .local v2, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v2, :cond_0

    .line 673
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 676
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 677
    if-eqz v2, :cond_1

    .line 678
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 681
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 682
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 683
    return-void
.end method

.method public setContentHeightAnimating(Z)V
    .locals 1
    .param p1, "animating"    # Z

    .line 1722
    if-nez p1, :cond_0

    .line 1723
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 1725
    :cond_0
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 465
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 466
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 469
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 1265
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1266
    return-void

    .line 1268
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    .line 1269
    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1270
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "expandClickListener"    # Landroid/view/View$OnClickListener;

    .line 1599
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 1600
    return-void
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 497
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 509
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 511
    :cond_1
    if-nez p1, :cond_4

    .line 512
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 513
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 514
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 517
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v1, :cond_3

    .line 518
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 520
    :cond_3
    return-void

    .line 522
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 523
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 526
    return-void
.end method

.method public setFocusOnVisibilityChange()V
    .locals 1

    .line 1738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 1739
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1591
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1592
    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 1
    .param p1, "headerVisibleAmount"    # F

    .line 1920
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 1924
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1926
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_2

    .line 1927
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 1929
    :cond_2
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 2
    .param p1, "headsUp"    # Z

    .line 1273
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    .line 1274
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1275
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1276
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 2
    .param p1, "headsUpAnimatingAway"    # Z

    .line 1733
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    .line 1734
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1735
    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 573
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 585
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 587
    :cond_1
    if-nez p1, :cond_4

    .line 588
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 589
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 590
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 593
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v1, :cond_3

    .line 594
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 596
    :cond_3
    return-void

    .line 598
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 599
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 600
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 602
    return-void
.end method

.method public setHeights(IIII)V
    .locals 0
    .param p1, "smallHeight"    # I
    .param p2, "headsUpMaxHeight"    # I
    .param p3, "maxHeight"    # I
    .param p4, "ambientHeight"    # I

    .line 192
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    .line 193
    iput p2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    .line 194
    iput p3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 195
    iput p4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    .line 196
    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 0
    .param p1, "iconsVisible"    # Z

    .line 1742
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    .line 1743
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateIconVisibilities()V

    .line 1744
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 2
    .param p1, "isChildInGroup"    # Z

    .line 1312
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    .line 1313
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1322
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1325
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1326
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0
    .param p1, "isLowPriority"    # Z

    .line 1786
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsLowPriority:Z

    .line 1787
    return-void
.end method

.method public setLegacy(Z)V
    .locals 0
    .param p1, "legacy"    # Z

    .line 1287
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    .line 1288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLegacy()V

    .line 1289
    return-void
.end method

.method public setOnExpandedVisibleListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1781
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 1782
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1783
    return-void
.end method

.method public setQuickReply(Z)V
    .locals 0
    .param p1, "isQuickReply"    # Z

    .line 567
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsQuickReply:Z

    .line 568
    return-void
.end method

.method public setQuickReplyContractedChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 534
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 535
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyChild:Landroid/view/View;

    .line 536
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 538
    return-void
.end method

.method public setQuickReplyHeadsUpChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 545
    :cond_0
    if-nez p1, :cond_3

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    .line 547
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 548
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 551
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v1, :cond_2

    .line 552
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 554
    :cond_2
    return-void

    .line 556
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 557
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpChild:Landroid/view/View;

    .line 558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mQuickReplyHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 560
    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 0
    .param p1, "r"    # Lcom/android/systemui/statusbar/RemoteInputController;

    .line 1595
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 1596
    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 1
    .param p1, "remoteInputVisible"    # Z

    .line 1909
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputVisible:Z

    .line 1910
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipChildren(Z)V

    .line 1911
    return-void
.end method

.method public setRemoved()V
    .locals 1

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    .line 1717
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1719
    :cond_1
    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 1
    .param p1, "singleLineWidthIndention"    # I

    .line 1701
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eq p1, v0, :cond_0

    .line 1702
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    .line 1703
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->forceLayout()V

    .line 1704
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceLayout()V

    .line 1706
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .line 896
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 897
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 898
    return-void
.end method

.method public setUserExpanding(Z)V
    .locals 1
    .param p1, "userExpanding"    # Z

    .line 1685
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    .line 1686
    if-eqz p1, :cond_0

    .line 1687
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    goto :goto_0

    .line 1689
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 1690
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 1691
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 1692
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 1694
    :goto_0
    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 2
    .param p1, "topRounded"    # Z
    .param p2, "bottomRounded"    # Z

    .line 1808
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleType()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldClipToRounding(IZZ)Z

    move-result v0

    .line 1809
    .local v0, "needsPaddings":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v1, :cond_0

    .line 1810
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldClipToRounding(IZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1813
    :cond_0
    return v0
.end method

.method public showAppOpsIcons(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1645
    .local p1, "activeOps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1649
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1651
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1652
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 1654
    :cond_2
    return-void
.end method

.method public updateBackgroundColor(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 1011
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 1012
    .local v0, "customBackgroundColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackgroundAlpha()V

    .line 1013
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 1014
    return-void
.end method

.method public updateExpandButtons(Z)V
    .locals 2
    .param p1, "expandable"    # Z

    .line 1603
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    .line 1605
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1606
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1607
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1611
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1612
    const/4 p1, 0x0

    goto :goto_1

    .line 1608
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1609
    const/4 p1, 0x0

    .line 1615
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1618
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1619
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1621
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1624
    :cond_6
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsContentExpandable:Z

    .line 1625
    return-void
.end method
