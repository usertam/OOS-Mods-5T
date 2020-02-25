.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/plugins/qs/QS$HeightListener;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;


# static fields
.field private static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDummyDirtyRect:Landroid/graphics/Rect;

.field public static mLastCameraGestureLaunchSource:I


# instance fields
.field private final PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private final PANEL_ALPHA_IN_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private final PANEL_ALPHA_OUT_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field private final mAlphaPaint:Landroid/graphics/Paint;

.field private mAmbientIndicationBottomPadding:I

.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextPositionUpdate:Z

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mBlockTouches:Z

.field private mBouncerTop:I

.field private mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mClosingWithAlphaFadeOut:Z

.field private mCollapsedOnDown:Z

.field private mConflictingQsExpansionGesture:Z

.field private mCurrentPanelAlpha:I

.field private mDarkAmount:F

.field private mDarkAmountTarget:F

.field private mDarkAnimator:Landroid/animation/ValueAnimator;

.field private mDozing:Z

.field private mDozingOnDown:Z

.field private mEmptyDragAmount:F

.field private mExpandOffset:F

.field private mExpandingFromHeadsUp:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

.field private mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field private mHideIconsDuringNotificationLaunch:Z

.field private mIndicationBottomPadding:I

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntercepting:Z

.field private mIsExpanding:Z

.field private mIsExpansionFromHeadsUp:Z

.field private mIsFullWidth:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

.field private mKeyguardStatusViewAnimating:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mLastCameraLaunchSource:Ljava/lang/String;

.field private mLastOrientation:I

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLaunchingAffordance:Z

.field private mListenForHeadsUp:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMaxFadeoutHeight:I

.field private mNavigationBarBottomHeight:I

.field private mNoVisibleNotifications:Z

.field protected mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field protected mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNotificationsHeaderCollideDistance:I

.field protected mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

.field private mOldLayoutDirection:I

.field private mOnlyAffordanceInThisMotion:Z

.field private mPanelAlpha:I

.field private mPanelAlphaEndAction:Ljava/lang/Runnable;

.field private mPanelExpanded:Z

.field private mPositionMinSideMargin:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPulsing:Z

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsAnimatorExpand:Z

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field protected mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field protected mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFrame:Landroid/widget/FrameLayout;

.field private mQsFullyExpanded:Z

.field protected mQsMaxExpansionHeight:I

.field protected mQsMinExpansionHeight:I

.field private mQsNotificationTopPadding:I

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mQsVelocityTracker:Landroid/view/VelocityTracker;

.field private mShowEmptyShadeView:Z

.field private mShowIconsWhenExpanded:Z

.field private mStackScrollerMeasuringPass:I

.field private mStackScrollerOverscrolling:Z

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarMinHeight:I

.field protected mStatusBarState:I

.field private mTrackingHeadsUpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackingPointer:I

.field private mTwoFingerQsExpandPossible:Z

.field private mUnlockIconActive:Z

.field private mUnlockMoveDistance:I

.field final mUpdateCameraStateTimeout:Ljava/lang/Runnable;

.field private mUserSetupComplete:Z

.field private mVerticalTranslationListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationProperties;-><init>()V

    .line 126
    const-wide/16 v3, 0x168

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    const-string v1, "mDarkAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;

    .line 247
    sput v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraGestureLaunchSource:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 200
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 202
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 225
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 230
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    .line 240
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 245
    const-string v1, "lockscreen_affordance"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 257
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    .line 272
    new-instance v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 273
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    .line 278
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    .line 287
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 289
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 297
    const-string v2, "panelAlpha"

    sget-object v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$aKsp0zdf_wKFZXD1TonJ2cFEsN4;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$aKsp0zdf_wKFZXD1TonJ2cFEsN4;

    sget-object v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$SmdYpsZqQm1fpR9OgK3SiEL3pJQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$SmdYpsZqQm1fpR9OgK3SiEL3pJQ;

    const v5, 0x7f0a02f7

    const v6, 0x7f0a02f6

    const v7, 0x7f0a02f5

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 304
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationProperties;-><init>()V

    .line 305
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 306
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_OUT_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 307
    new-instance v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/stack/AnimationProperties;-><init>()V

    .line 308
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 309
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setAnimationFinishListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 310
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_IN_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 1244
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1252
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 1260
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1267
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1295
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1314
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2815
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 3021
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateCameraStateTimeout:Ljava/lang/Runnable;

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setWillNotDraw(Z)V

    .line 315
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 316
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    .line 317
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 320
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelAlpha(IZ)Z

    .line 323
    const-class v0, Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/notification/OPNotificationController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    .line 324
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDarkAmount(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .line 102
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # F

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    return-void
.end method

.method static synthetic access$1700()Landroid/graphics/Rect;
    .locals 1

    .line 102
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Lcom/android/systemui/plugins/qs/QS;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOverScrolling(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/KeyguardStatusView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    return-object v0
.end method

.method private animateKeyguardStatusBarIn(J)V
    .locals 2
    .param p1, "duration"    # J

    .line 1305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1307
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1308
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1309
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1310
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1311
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1312
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 5

    .line 1277
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1278
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1279
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v1

    goto :goto_0

    .line 1281
    :cond_0
    const-wide/16 v1, 0x0

    .line 1279
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1282
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1283
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    goto :goto_1

    .line 1284
    :cond_1
    const-wide/16 v1, 0x168

    .line 1282
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1285
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1286
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1292
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1293
    return-void
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 5

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1711
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1712
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1717
    .local v0, "notificationHeight":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-eqz v1, :cond_0

    .line 1719
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    move-result v1

    int-to-float v0, v1

    .line 1721
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 1723
    .local v1, "maxQsHeight":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_1

    .line 1724
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 1728
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    .line 1729
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1731
    :cond_2
    nop

    .line 1732
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1733
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1731
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1734
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v3

    add-float/2addr v2, v3

    .line 1735
    .local v2, "totalHeight":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    .line 1736
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1737
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    .line 1738
    .local v3, "fullyCollapsedHeight":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1740
    .end local v3    # "fullyCollapsedHeight":F
    :cond_4
    float-to-int v3, v2

    return v3
.end method

.method private calculatePanelHeightShade()I
    .locals 4

    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    .line 1696
    .local v0, "emptyBottomMargin":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1697
    .local v1, "maxHeight":I
    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 1699
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1700
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 1701
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardStatusView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1702
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicContentHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 1703
    .local v2, "minKeyguardPanelBottom":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 1705
    .end local v2    # "minKeyguardPanelBottom":I
    :cond_0
    return v1
.end method

.method private calculateQsTopPadding()F
    .locals 6

    .line 1476
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_2

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 1485
    .local v0, "maxNotificationPadding":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 1486
    .local v1, "maxQsPadding":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1487
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 1488
    :cond_1
    move v2, v1

    .line 1489
    .local v2, "max":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    return v3

    .line 1491
    .end local v0    # "maxNotificationPadding":I
    .end local v1    # "maxQsPadding":I
    .end local v2    # "max":I
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 1493
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    .line 1496
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1497
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 1496
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v0

    return v0

    .line 1500
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private cancelQsAnimation()V
    .locals 1

    .line 1532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1535
    :cond_0
    return-void
.end method

.method private determineAccessibilityPaneTitle()Ljava/lang/String;
    .locals 2

    .line 1462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110072

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1464
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_1

    .line 1467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110071

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1468
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1469
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11006c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1471
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private flingExpandsQs(F)Z
    .locals 4
    .param p1, "vel"    # F

    .line 884
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFalseTouch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 885
    return v1

    .line 887
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 888
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 890
    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method private flingQsWithCurrentVelocity(FZ)V
    .locals 3
    .param p1, "y"    # F
    .param p2, "isCancelMotionEvent"    # Z

    .line 865
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentQSVelocity()F

    move-result v0

    .line 866
    .local v0, "vel":F
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpandsQs(F)Z

    move-result v1

    .line 867
    .local v1, "expandsQs":Z
    if-eqz v1, :cond_0

    .line 868
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->logQsSwipeDown(F)V

    .line 870
    :cond_0
    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 871
    return-void
.end method

.method private getCurrentQSVelocity()F
    .locals 2

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1525
    const/4 v0, 0x0

    return v0

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method private getFadeoutAlpha()F
    .locals 5

    .line 1753
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstItemMinHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1755
    .local v0, "alpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1756
    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v0, v1

    .line 1757
    return v0
.end method

.method private getFalsingThreshold()I
    .locals 2

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1133
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getKeyguardContentsAlpha()F
    .locals 5

    .line 1815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1819
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1821
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .local v0, "alpha":F
    goto :goto_0

    .line 1826
    .end local v0    # "alpha":F
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1828
    .restart local v0    # "alpha":F
    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 1829
    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v0, v1

    .line 1830
    return v0
.end method

.method private getNotificationsTopY()F
    .locals 1

    .line 1863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1864
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    return v0

    .line 1866
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationsTopY()F

    move-result v0

    return v0
.end method

.method private getQsExpansionFraction()F
    .locals 3

    .line 905
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onQsDown()V

    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1035
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1036
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1038
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1041
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyExpandingFinished()V

    .line 1043
    :cond_0
    return-void
.end method

.method private handleQsTouch(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 962
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 963
    .local v0, "action":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 964
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v2, :cond_0

    .line 968
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 969
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 970
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 971
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 975
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 976
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 978
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v2, :cond_2

    .line 979
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 980
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v2, :cond_2

    .line 981
    return v1

    .line 984
    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    .line 985
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    .line 987
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v2, :cond_5

    .line 989
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 991
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 992
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    .line 993
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v4, "panel_open_qs"

    invoke-static {v2, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 994
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 995
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 996
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1000
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 1002
    :cond_6
    return v3
.end method

.method private initBottomArea()V
    .locals 2

    .line 441
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUserSetupComplete:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    .line 445
    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 857
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 858
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    .line 859
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    .line 860
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    .line 862
    :cond_1
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 1517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1520
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 1521
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F

    .line 2368
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private isFalseTouch()Z
    .locals 1

    .line 895
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->needsAntiFalsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    const/4 v0, 0x0

    return v0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    return v0

    .line 901
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 2790
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2791
    return v0

    .line 2795
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2796
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2797
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0
.end method

.method private isInQsArea(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 1007
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1008
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1009
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1006
    :goto_0
    return v0
.end method

.method private isOnKeyguard()Z
    .locals 2

    .line 2644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1013
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1014
    .local v0, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 1016
    .local v1, "action":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    if-ne v0, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 1019
    .local v5, "twoFingerDrag":Z
    :goto_0
    if-nez v1, :cond_2

    const/16 v6, 0x20

    .line 1020
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x40

    .line 1021
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v3

    .line 1023
    .local v6, "stylusButtonClickDrag":Z
    :goto_1
    if-nez v1, :cond_4

    .line 1024
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x4

    .line 1025
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 1027
    .local v2, "mouseButtonClickDrag":Z
    :goto_2
    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    goto :goto_4

    :cond_6
    :goto_3
    move v3, v4

    :goto_4
    return v3
.end method

.method public static synthetic lambda$setUpHighlightHintInfo$0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 6

    .line 3037
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v0

    .line 3039
    .local v0, "statusBar":Landroid/view/View;
    const v1, 0x7f0a018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3040
    .local v1, "container":Landroid/view/View;
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3041
    .local v3, "target":[I
    if-eqz v1, :cond_0

    .line 3042
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3044
    :cond_0
    new-array v2, v2, [I

    .line 3045
    .local v2, "parent":[I
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3046
    const/4 v4, 0x0

    aget v5, v3, v4

    aget v4, v2, v4

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHighlightHintVisualX:I

    .line 3048
    .end local v0    # "statusBar":Landroid/view/View;
    .end local v1    # "container":Landroid/view/View;
    .end local v2    # "parent":[I
    .end local v3    # "target":[I
    :cond_1
    return-void
.end method

.method private logQsSwipeDown(F)V
    .locals 5
    .param p1, "y"    # F

    .line 874
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentQSVelocity()F

    move-result v0

    .line 875
    .local v0, "vel":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 876
    const/16 v1, 0xc1

    goto :goto_0

    .line 877
    :cond_0
    const/16 v1, 0xc2

    .line 878
    .local v1, "gesture":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v3, p1, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 879
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 880
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v4

    div-float v4, v0, v4

    float-to-int v4, v4

    .line 878
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 881
    return-void
.end method

.method private notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "pickedChild"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1920
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1921
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 1922
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 1923
    .local v1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1920
    .end local v1    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1925
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    .line 1173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    .line 1174
    return-void
.end method

.method private onQsIntercept(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 769
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 770
    .local v0, "pointerIndex":I
    if-gez v0, :cond_0

    .line 771
    const/4 v0, 0x0

    .line 772
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 774
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 775
    .local v1, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 777
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 807
    :pswitch_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v3, v2, v3

    .line 808
    .local v3, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 809
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v4, :cond_1

    .line 814
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 815
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 816
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 817
    return v5

    .line 819
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_7

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 820
    invoke-direct {p0, v4, v7, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 821
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 822
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 823
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyExpandingFinished()V

    .line 824
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 825
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 826
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 827
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 828
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 829
    return v5

    .line 835
    .end local v3    # "h":F
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 836
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v3, :cond_3

    .line 837
    nop

    .line 838
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 837
    :cond_2
    move v5, v6

    :goto_0
    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    .line 839
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 841
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto :goto_1

    .line 779
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 780
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 781
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 782
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 783
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 784
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    const/4 v7, 0x0

    invoke-direct {p0, v3, v4, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 785
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 787
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_7

    .line 788
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 789
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 790
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 791
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    .line 792
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    goto :goto_1

    .line 796
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 797
    .local v3, "upPointer":I
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v4, v3, :cond_7

    .line 799
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-eq v4, v3, :cond_6

    move v5, v6

    nop

    :cond_6
    move v4, v5

    .line 800
    .local v4, "newIndex":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 801
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 802
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 803
    .end local v4    # "newIndex":I
    nop

    .line 844
    .end local v3    # "upPointer":I
    :cond_7
    :goto_1
    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1067
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1068
    .local v0, "pointerIndex":I
    if-gez v0, :cond_0

    .line 1069
    const/4 v0, 0x0

    .line 1070
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1072
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1073
    .local v1, "y":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1074
    .local v2, "x":F
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v3, v1, v3

    .line 1076
    .local v3, "h":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_6

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 1106
    :pswitch_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    .line 1108
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    .line 1110
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1111
    goto/16 :goto_2

    .line 1115
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1116
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v4

    .line 1119
    .local v4, "fraction":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_4

    .line 1120
    :cond_2
    nop

    .line 1121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_3

    .line 1120
    move v6, v7

    goto :goto_0

    .line 1121
    :cond_3
    nop

    .line 1120
    :goto_0
    invoke-direct {p0, v1, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    .line 1123
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_8

    .line 1124
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 1125
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .end local v4    # "fraction":F
    goto :goto_2

    .line 1078
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 1079
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1080
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1082
    const-class v4, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1083
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1086
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1087
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1089
    goto :goto_2

    .line 1092
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1093
    .local v4, "upPointer":I
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v5, v4, :cond_8

    .line 1095
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-eq v5, v4, :cond_7

    goto :goto_1

    :cond_7
    move v6, v7

    :goto_1
    move v5, v6

    .line 1096
    .local v5, "newIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1097
    .local v6, "newY":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1098
    .local v7, "newX":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    .line 1099
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    .line 1100
    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    .line 1101
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    .line 1102
    .end local v5    # "newIndex":I
    .end local v6    # "newY":F
    .end local v7    # "newX":F
    nop

    .line 1129
    .end local v4    # "upPointer":I
    :cond_8
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private positionClockAndNotifications()V
    .locals 18

    .line 532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v1

    .line 533
    .local v1, "animate":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    .line 535
    .local v4, "animateClock":Z
    :goto_1
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v5, v2, :cond_3

    .line 536
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v5, v6

    .local v5, "stackScrollerPadding":I
    goto :goto_3

    .line 539
    .end local v5    # "stackScrollerPadding":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    .line 540
    .local v5, "totalHeight":I
    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientIndicationBottomPadding:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 541
    .local v17, "bottomPadding":I
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    sub-int v8, v5, v17

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 544
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicContentHeight()I

    move-result v9

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v10

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 547
    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardStatusView;->getHeight()I

    move-result v12

    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 549
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result v14

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulsing:Z

    iget v11, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBouncerTop:I

    .line 541
    move/from16 v16, v11

    move v11, v5

    invoke-virtual/range {v6 .. v16}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIIFIIFZZI)V

    .line 552
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    .line 553
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    sget-object v7, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v8, v8, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    int-to-float v8, v8

    sget-object v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {v6, v7, v8, v9, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;Z)V

    .line 555
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    sget-object v7, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v8, v8, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v8, v8

    sget-object v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {v6, v7, v8, v9, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;Z)V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClock()V

    .line 559
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v5, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 561
    .end local v17    # "bottomPadding":I
    .local v5, "stackScrollerPadding":I
    :goto_3
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    .line 562
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAntiBurnInOffsetX(I)V

    .line 563
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setBurnInXOffset(I)V

    .line 565
    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    .line 566
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 567
    iput v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    .line 568
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    .line 569
    return-void
.end method

.method private resetVerticalPanelPosition()V
    .locals 1

    .line 2603
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVerticalPanelTranslation(F)V

    .line 2604
    return-void
.end method

.method private setClosingWithAlphaFadeout(Z)V
    .locals 1
    .param p1, "closing"    # Z

    .line 2573
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    .line 2574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->forceNoOverlappingRendering(Z)V

    .line 2575
    return-void
.end method

.method private setDarkAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .line 2886
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    .line 2887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->setDarkAmount(F)V

    .line 2888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDarkAmount(F)V

    .line 2889
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2890
    return-void
.end method

.method private setIsFullWidth(Z)V
    .locals 1
    .param p1, "isFullWidth"    # Z

    .line 497
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullWidth:Z

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsFullWidth(Z)V

    .line 499
    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 5
    .param p1, "statusBarState"    # I
    .param p2, "goingToFullShade"    # Z

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1324
    if-eqz p2, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1326
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1327
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1328
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1329
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1330
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1331
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 1332
    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1337
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    goto :goto_1

    .line 1334
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 1335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    .line 1340
    :goto_1
    return-void
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 8
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .line 1344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1346
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v5, v4, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 1348
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1350
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1351
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    .line 1352
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1353
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewGoneEndRunnable:Ljava/lang/Runnable;

    .line 1354
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1355
    if-eqz p2, :cond_6

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1357
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1358
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1359
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 1361
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v5, v6, :cond_3

    if-ne p1, v4, :cond_3

    .line 1363
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardStatusView;->setVisibility(I)V

    .line 1364
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardStatusView;->setAlpha(F)V

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1367
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1368
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x140

    .line 1369
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 1370
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    .line 1371
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1372
    :cond_3
    if-ne p1, v4, :cond_5

    .line 1373
    if-eqz p2, :cond_4

    .line 1374
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1376
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 1378
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x7d

    .line 1379
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1380
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1381
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1382
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1384
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardStatusView;->setVisibility(I)V

    .line 1385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, v7}, Lcom/android/keyguard/KeyguardStatusView;->setAlpha(F)V

    goto :goto_0

    .line 1388
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->setVisibility(I)V

    .line 1389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, v7}, Lcom/android/keyguard/KeyguardStatusView;->setAlpha(F)V

    .line 1391
    :cond_6
    :goto_0
    return-void
.end method

.method private setLaunchingAffordance(Z)V
    .locals 1
    .param p1, "launchingAffordance"    # Z

    .line 2750
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 2751
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 2752
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 2753
    return-void
.end method

.method private setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 1928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 1929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 1930
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    .line 1931
    return-void
.end method

.method private setOverScrolling(Z)V
    .locals 1
    .param p1, "overscrolling"    # Z

    .line 1167
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 1170
    return-void
.end method

.method private setQsExpanded(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .line 1188
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1189
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1190
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    .line 1192
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1193
    const-string v1, "lock_quicksetting"

    const-string v2, ""

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1198
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/FalsingManager;->setQsExpanded(Z)V

    .line 1199
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsExpanded(Z)V

    .line 1200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQsExpanded(Z)V

    .line 1202
    :cond_2
    return-void
.end method

.method private setQsExpansion(F)V
    .locals 7
    .param p1, "height"    # F

    .line 1415
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1416
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    .line 1417
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_1

    .line 1418
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    goto :goto_1

    .line 1419
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_2

    .line 1420
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    .line 1422
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 1423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    .line 1424
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 1425
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    .line 1426
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    .line 1428
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v2, :cond_5

    .line 1430
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    .line 1441
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1442
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 1445
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1446
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 1452
    :cond_7
    return-void
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "yDiff"    # F

    .line 1592
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 1595
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 1596
    .local v0, "header":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    cmpl-float v2, p1, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 1597
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 1598
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    .line 1599
    .local v2, "onHeader":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_5

    .line 1600
    if-nez v2, :cond_4

    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-gez v4, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v1, v3

    :goto_3
    return v1

    .line 1602
    :cond_5
    return v2

    .line 1593
    .end local v0    # "header":Landroid/view/View;
    .end local v2    # "onHeader":Z
    :cond_6
    :goto_4
    return v1
.end method

.method private startHighlightIconAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 7
    .param p1, "icon"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 2176
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 2185
    return-void
.end method

.method private startQsSizeChangeAnimation(II)V
    .locals 3
    .param p1, "oldHeight"    # I
    .param p2, "newHeight"    # I

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 506
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 525
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1512
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    .line 1513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    .line 1514
    return-void
.end method

.method private updateDozingVisibilities(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 2372
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    goto :goto_0

    .line 2376
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 2377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    .line 2378
    if-eqz p1, :cond_1

    .line 2379
    const-wide/16 v0, 0x2bc

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    .line 2382
    :cond_1
    :goto_0
    return-void
.end method

.method private updateEmptyShadeView()V
    .locals 2

    .line 2397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    .line 2398
    return-void
.end method

.method private updateFullyVisibleState(Z)V
    .locals 3
    .param p1, "forceNotFullyVisible"    # Z

    .line 2740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez p1, :cond_1

    .line 2741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 2742
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2740
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setParentNotFullyVisible(Z)V

    .line 2743
    return-void
.end method

.method private updateHeader()V
    .locals 2

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1794
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    .line 1796
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    .line 1797
    return-void
.end method

.method private updateHeaderKeyguardAlpha()V
    .locals 4

    .line 1834
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v1, v0

    .line 1835
    .local v1, "alphaQsExpansion":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardContentsAlpha()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1838
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1837
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v2, :cond_0

    .line 1838
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 1837
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1839
    return-void
.end method

.method private updateKeyguardBottomAreaAlpha()V
    .locals 4

    .line 1848
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1849
    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 1850
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v2

    .line 1848
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 1851
    .local v0, "expansionAlpha":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1852
    .local v2, "alpha":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    .line 1853
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    .line 1854
    const/4 v1, 0x4

    goto :goto_1

    .line 1855
    :cond_1
    const/4 v1, 0x0

    .line 1853
    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setImportantForAccessibility(I)V

    .line 1856
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object v1

    .line 1857
    .local v1, "ambientIndicationContainer":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1858
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1860
    :cond_2
    return-void
.end method

.method private updateMaxHeadsUpTranslation()V
    .locals 3

    .line 2064
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpBoundaries(II)V

    .line 2065
    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 2

    .line 1744
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1745
    .local v0, "alpha":F
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1746
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1747
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v0

    .line 1749
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 1750
    return-void
.end method

.method private updatePanelExpanded()V
    .locals 2

    .line 1686
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1687
    .local v0, "isExpanded":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    if-eq v1, v0, :cond_0

    .line 1688
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setIsPanelExpanded(Z)V

    .line 1689
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelExpanded(Z)V

    .line 1690
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    .line 1692
    :cond_0
    return-void
.end method

.method private updateQsState()V
    .locals 3

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setQsExpanded(Z)V

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 1398
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_2

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    .line 1410
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_3

    return-void

    .line 1411
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    .line 1412
    return-void
.end method

.method private updateStatusBarIcons()V
    .locals 3

    .line 2633
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullWidth()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOpeningHeight()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2634
    .local v0, "showIconsWhenExpanded":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2635
    const/4 v0, 0x0

    .line 2637
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    if-eq v0, v2, :cond_2

    .line 2638
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    .line 2639
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 2641
    :cond_2
    return-void
.end method

.method private updateUnlockIcon()V
    .locals 9

    .line 1771
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1772
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1773
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1774
    .local v0, "active":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v1

    .line 1775
    .local v1, "lockIcon":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v2, :cond_2

    .line 1776
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const-wide/16 v5, 0x96

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    const/4 v8, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 1777
    const v3, 0x3f99999a    # 1.2f

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 1779
    :cond_2
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v2, :cond_3

    .line 1780
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x96

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    const/4 v8, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 1782
    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 1785
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    .line 1787
    .end local v0    # "active":Z
    .end local v1    # "lockIcon":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_4
    return-void
.end method


# virtual methods
.method public addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 2957
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2958
    return-void
.end method

.method public addVerticalTranslationListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "verticalTranslationListener"    # Ljava/lang/Runnable;

    .line 2965
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2966
    return-void
.end method

.method public animateCloseQs()V
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 695
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-nez v0, :cond_0

    .line 696
    return-void

    .line 698
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 699
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 700
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 702
    .end local v0    # "height":F
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 703
    return-void
.end method

.method public animateToFullShade(J)V
    .locals 1
    .param p1, "delay"    # J

    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    .line 648
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    .line 650
    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 5
    .param p1, "params"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 2942
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTopChange()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandOffset:F

    .line 2943
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    .line 2944
    if-eqz p1, :cond_2

    .line 2945
    const-wide/16 v1, 0xe

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress(JJ)F

    move-result v1

    cmpl-float v0, v1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2947
    .local v0, "hideIcons":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    if-eq v0, v2, :cond_2

    .line 2948
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    .line 2949
    if-nez v0, :cond_2

    .line 2950
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 2954
    .end local v0    # "hideIcons":Z
    :cond_2
    return-void
.end method

.method public canCameraGestureBeLaunched(Z)Z
    .locals 7
    .param p1, "keyguardIsShowing"    # Z

    .line 2761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraAllowedByAdmin()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2762
    return v1

    .line 2765
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2766
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 2767
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 2769
    .local v2, "packageToLaunch":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v3

    .line 2772
    .local v3, "isDream":Z
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canCameraGestureBeLaunched: packageToLaunch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", keyguardIsShowing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isForegroundApp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2773
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSwipingInProgress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isDream:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2772
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    .line 2778
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 2780
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v1, 0x1

    nop

    .line 2775
    :cond_4
    return v1
.end method

.method public clearNotificationEffects()V
    .locals 1

    .line 2652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    .line 2653
    return-void
.end method

.method public closeQs()V
    .locals 1

    .line 689
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 690
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 691
    return-void
.end method

.method public closeQsDetail()V
    .locals 1

    .line 2336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    .line 2337
    return-void
.end method

.method public collapse(ZF)V
    .locals 2
    .param p1, "delayed"    # Z
    .param p2, "speedUpFactor"    # F

    .line 677
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    return-void

    .line 681
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 683
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 685
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    .line 686
    return-void
.end method

.method public computeMaxKeyguardNotifications(I)I
    .locals 14
    .param p1, "maximum"    # I

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMinStackScrollerPadding()F

    move-result v0

    .line 577
    .local v0, "minPadding":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070398

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 580
    .local v1, "notificationPadding":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v3

    .line 584
    .local v3, "shelf":Lcom/android/systemui/statusbar/NotificationShelf;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    .line 586
    move v4, v5

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 586
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    .line 589
    .local v4, "shelfSize":F
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    sub-float/2addr v6, v4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAmbientIndicationBottomPadding:I

    .line 590
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 591
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardStatusView;->getLogoutButtonHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 592
    .local v6, "availableSpace":F
    const/4 v7, 0x0

    .line 593
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 594
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableView;

    .line 595
    .local v9, "child":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v10, v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v10, :cond_1

    .line 596
    goto :goto_2

    .line 598
    :cond_1
    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 599
    .local v10, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 600
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    .line 599
    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    .line 601
    .local v11, "suppressedSummary":Z
    if-eqz v11, :cond_2

    .line 602
    goto :goto_2

    .line 604
    :cond_2
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationLockscreenUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v12

    .line 605
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    .line 604
    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 606
    goto :goto_2

    .line 608
    :cond_3
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 609
    goto :goto_2

    .line 611
    :cond_4
    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight(Z)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    sub-float/2addr v6, v12

    .line 613
    cmpl-float v12, v6, v5

    if-ltz v12, :cond_5

    if-ge v7, p1, :cond_5

    .line 614
    add-int/lit8 v7, v7, 0x1

    .line 593
    .end local v9    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v10    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v11    # "suppressedSummary":Z
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 615
    .restart local v9    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v10    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v11    # "suppressedSummary":Z
    :cond_5
    neg-float v5, v4

    cmpl-float v5, v6, v5

    if-lez v5, :cond_8

    .line 617
    add-int/lit8 v5, v8, 0x1

    .local v5, "j":I
    :goto_3
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v12

    if-ge v5, v12, :cond_7

    .line 618
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v12, :cond_6

    .line 620
    return v7

    .line 617
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 623
    .end local v5    # "j":I
    :cond_7
    add-int/2addr v7, v2

    .line 624
    return v7

    .line 626
    :cond_8
    return v7

    .line 629
    .end local v8    # "i":I
    .end local v9    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v10    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v11    # "suppressedSummary":Z
    :cond_9
    return v7
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2450
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2451
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 2452
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2454
    :cond_0
    return-void
.end method

.method public dozeTimeTick()V
    .locals 2

    .line 2911
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->dozeTimeTick()V

    .line 2912
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->dozeTimeTick()V

    .line 2913
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2914
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2916
    :cond_0
    return-void
.end method

.method public expand(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 1940
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(ZI)V

    .line 1941
    return-void
.end method

.method public expand(ZI)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "velocity"    # I

    .line 1945
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->expand(ZI)V

    .line 1946
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 1947
    return-void
.end method

.method public expandWithQs()V
    .locals 2

    .line 713
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 714
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 717
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 718
    return-void
.end method

.method public expandWithoutQs()V
    .locals 2

    .line 721
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    goto :goto_0

    .line 724
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 726
    :goto_0
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 731
    .local v0, "gr":Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_1

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    const-string v2, "open"

    goto :goto_0

    :cond_0
    const-string v2, "closed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 735
    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 2
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 1047
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result v0

    .line 1050
    .local v0, "expands":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1051
    const/4 v0, 0x1

    .line 1053
    :cond_0
    return v0
.end method

.method public flingSettings(FZ)V
    .locals 2
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .line 1538
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    .line 1539
    return-void
.end method

.method protected flingSettings(FZLjava/lang/Runnable;Z)V
    .locals 5
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "onFinishRunnable"    # Ljava/lang/Runnable;
    .param p4, "isClick"    # Z

    .line 1543
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    goto :goto_0

    .line 1544
    .local v0, "target":F
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 1545
    if-eqz p3, :cond_1

    .line 1546
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1548
    :cond_1
    return-void

    .line 1552
    :cond_2
    const/4 v1, 0x0

    .line 1553
    .local v1, "oppositeDirection":Z
    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    cmpg-float v2, p1, v2

    if-gez v2, :cond_5

    if-eqz p2, :cond_5

    .line 1554
    :cond_4
    const/4 p1, 0x0

    .line 1555
    const/4 v1, 0x1

    .line 1557
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1558
    .local v2, "animator":Landroid/animation/ValueAnimator;
    if-eqz p4, :cond_6

    .line 1559
    sget-object v3, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1560
    const-wide/16 v3, 0x170

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 1562
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v3, v2, v4, v0, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 1564
    :goto_2
    if-eqz v1, :cond_7

    .line 1565
    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1567
    :cond_7
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1573
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;

    invoke-direct {v3, p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1583
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1584
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 1585
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    .line 1586
    return-void
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 2
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "target"    # F
    .param p4, "collapseSpeedUpFactor"    # F
    .param p5, "expandBecauseOfFalsing"    # Z

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    .line 741
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    .line 742
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    .line 743
    return-void
.end method

.method public flingTopOverscroll(FZ)V
    .locals 4
    .param p1, "velocity"    # F
    .param p2, "open"    # Z

    .line 1152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1154
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1155
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz p2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    .line 1164
    return-void
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 1

    .line 2308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isFooterViewNotGone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 2309
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2308
    :goto_0
    return v0
.end method

.method public getAffordanceFalsingFactor()F
    .locals 1

    .line 2283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    .line 2257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getClearAllHeight()I
    .locals 1

    .line 2319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFooterViewHeight()I

    move-result v0

    return v0
.end method

.method public getCurrentPanelAlpha()F
    .locals 1

    .line 2457
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    int-to-float v0, v0

    return v0
.end method

.method protected getHeaderTranslation()F
    .locals 5

    .line 1800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1801
    return v1

    .line 1803
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    .line 1804
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearFraction(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1803
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandOffset:F

    add-float/2addr v0, v2

    .line 1806
    .local v0, "translation":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 1

    .line 2929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object v0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 2

    .line 2250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    goto :goto_0

    .line 2252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    .line 2250
    :goto_0
    return-object v0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 2

    .line 2269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object v0

    .line 2269
    :goto_0
    return-object v0
.end method

.method public getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 1

    .line 2938
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getMaxPanelHeight()I
    .locals 3

    .line 1618
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 1619
    .local v0, "min":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1620
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1621
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1622
    .local v1, "minHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1625
    .end local v1    # "minHeight":I
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1628
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v1

    goto :goto_1

    .line 1626
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v1

    .line 1628
    .local v1, "maxHeight":I
    :goto_1
    nop

    .line 1630
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1631
    return v1
.end method

.method public getMaxTranslationDistance()F
    .locals 4

    .line 2189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected getOpeningHeight()F
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOpeningHeight()F

    move-result v0

    return v0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method protected getOverExpansionPixels()F
    .locals 2

    .line 1767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    return v0
.end method

.method protected getPeekHeight()F
    .locals 1

    .line 2293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPeekHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 2296
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 2

    .line 2262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    goto :goto_0

    .line 2264
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    .line 2262
    :goto_0
    return-object v0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 2

    .line 2276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftPreview()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object v0

    .line 2276
    :goto_0
    return-object v0
.end method

.method protected hasConflictingGestures()Z
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 2662
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 2

    .line 2805
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingNotification:Z

    if-eqz v0, :cond_0

    .line 2806
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHideIconsDuringNotificationLaunch:Z

    return v0

    .line 2808
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 2809
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2810
    return v1

    .line 2812
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isCameraForeground()Z
    .locals 4

    .line 3055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3057
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 3058
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 3059
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 3061
    .local v2, "cameraPackage":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.oneplus.gallery"

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    :goto_3
    return v1
.end method

.method protected isClearAllVisible()Z
    .locals 1

    .line 2314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isFooterViewContentVisible()Z

    move-result v0

    return v0
.end method

.method public isClosingWithAlphaFadeOut()Z
    .locals 1

    .line 2988
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .line 2386
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method public isExpanding()Z
    .locals 1

    .line 1639
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    return v0
.end method

.method public isFullWidth()Z
    .locals 1

    .line 2629
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullWidth:Z

    return v0
.end method

.method protected isInContentBounds(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getX()F

    move-result v0

    .line 850
    .local v0, "stackScrollerX":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    sub-float v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v1

    if-nez v1, :cond_0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 851
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 850
    :goto_0
    return v1
.end method

.method public isInSettings()Z
    .locals 1

    .line 1635
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 1

    .line 2345
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return v0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 1

    .line 2349
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return v0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .locals 1

    .line 2657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_0

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

.method public isQsDetailShowing()Z
    .locals 1

    .line 2332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method public isQsExpanded()Z
    .locals 1

    .line 2328
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 2

    .line 1608
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1610
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 1609
    :cond_1
    :goto_0
    return v1

    .line 1612
    :cond_2
    return v1
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .line 2324
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public launchCamera(ZI)V
    .locals 6
    .param p1, "animate"    # Z
    .param p2, "source"    # I

    .line 2666
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchCamera, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    sput p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraGestureLaunchSource:I

    .line 2671
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2672
    const-string v1, "power_double_tap"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    .line 2673
    :cond_0
    if-nez p2, :cond_1

    .line 2674
    const-string/jumbo v1, "wiggle_gesture"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    .line 2675
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 2676
    const-string v1, "lift_to_launch_ml"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    .line 2680
    :cond_2
    const-string v1, "lockscreen_affordance"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 2686
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2687
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    .line 2688
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    goto :goto_1

    .line 2690
    :cond_3
    const/4 p1, 0x0

    .line 2693
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2694
    const/4 p1, 0x0

    .line 2699
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateCameraStateTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2700
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 2701
    .local v1, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateLaunchingCameraState(Z)V

    .line 2702
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateCameraStateTimeout:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2705
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->forceHideBouncer()V

    .line 2709
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyCameraLaunching(Ljava/lang/String;)Z

    .line 2711
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->launchAffordance(ZZ)V

    .line 2712
    return-void
.end method

.method protected loadDimens()V
    .locals 3

    .line 373
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 374
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070588

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    .line 378
    nop

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070693

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07056f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPositionMinSideMargin:I

    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070323

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaxFadeoutHeight:I

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07057f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    .line 392
    return-void
.end method

.method public needsAntiFalsing()Z
    .locals 2

    .line 2288
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notifyStartFading()V
    .locals 1

    .line 2730
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFullyVisibleState(Z)V

    .line 2731
    return-void
.end method

.method public onAffordanceLaunchEnded()V
    .locals 1

    .line 2715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    .line 2716
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    .line 2717
    return-void
.end method

.method public onAnimationToSideEnded()V
    .locals 1

    .line 2152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 2153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 2154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2158
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->readyForKeyguardDone()V

    .line 2159
    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 12
    .param p1, "rightPage"    # Z
    .param p2, "translation"    # F
    .param p3, "vel"    # F

    .line 2088
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2089
    .local v0, "start":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    .line 2090
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2091
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v3

    .line 2092
    .local v3, "displayDensity":F
    div-float v4, p2, v3

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 2093
    .local v4, "lengthDp":I
    div-float v5, p3, v3

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 2094
    .local v5, "velocityDp":I
    if-eqz v0, :cond_3

    .line 2095
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v6, 0xbe

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2097
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/FalsingManager;->onLeftAffordanceOn()V

    .line 2098
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2099
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    .line 2108
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    goto :goto_1

    .line 2111
    :cond_3
    const-string v6, "lockscreen_affordance"

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2115
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateCameraStateTimeout:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2116
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    .line 2117
    .local v6, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateLaunchingCameraState(Z)V

    .line 2118
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateCameraStateTimeout:Ljava/lang/Runnable;

    const-wide/16 v9, 0x7d0

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2121
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v8, 0xbd

    invoke-virtual {v7, v8, v4, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2124
    const-string v7, "lock_camera"

    const-string v8, ""

    const-string v9, "1"

    invoke-static {v7, v8, v9}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    .end local v6    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v6}, Lcom/android/systemui/classifier/FalsingManager;->onCameraOn()V

    .line 2130
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyCameraLaunching(Ljava/lang/String;)Z

    .line 2133
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2134
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    .line 2143
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    .line 2146
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startLaunchTransitionTimeout()V

    .line 2147
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 2148
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 2058
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    .line 2059
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    .line 2060
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 361
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onAttachedToWindow()V

    .line 362
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string v1, "QS"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 363
    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .locals 3

    .line 2982
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 2984
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 2077
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 2078
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 2079
    invoke-virtual {p0, v2, v4, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    goto :goto_0

    .line 2080
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_1

    .line 2081
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v5, 0xc3

    invoke-virtual {v0, v5, v4, v4}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2082
    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    .line 2084
    :cond_1
    :goto_0
    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    .line 2567
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    .line 2568
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 2569
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    .line 2570
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2048
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2049
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onConfigurationChanged()V

    .line 2050
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 2051
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 2053
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 2054
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 367
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onDetachedFromWindow()V

    .line 368
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string v1, "QS"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    .line 369
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2997
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2998
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2999
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isFingerprintAuthenticating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3000
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3001
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v2, "onDoubleTap to sleep"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3003
    .local v0, "pw":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 3004
    return v1

    .line 3006
    .end local v0    # "pw":Landroid/os/PowerManager;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3011
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2482
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2508
    return-void
.end method

.method public onEmptySpaceClicked(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2418
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onEmptySpaceClick(F)Z

    .line 2419
    return-void
.end method

.method protected onExpandingFinished()V
    .locals 2

    .line 1886
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 1887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    .line 1888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->onExpandingFinished()V

    .line 1889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 1890
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1891
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 1901
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1908
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    .line 1910
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1911
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 1912
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    .line 1913
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 1914
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1915
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    .line 1916
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelScrimMinFraction(F)V

    .line 1917
    return-void
.end method

.method protected onExpandingStarted()V
    .locals 2

    .line 1871
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 1872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    .line 1873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    .line 1874
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    .line 1875
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_0

    .line 1876
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    .line 1880
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v1, :cond_1

    return-void

    .line 1881
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    .line 1882
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 333
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 334
    const v0, 0x7f0a01d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 335
    const v0, 0x7f0a01e6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 337
    const v0, 0x7f0a0296

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 338
    const v0, 0x7f0a02a8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$xhbxghYggVvH-Fewrs8cwC_bnGY;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$xhbxghYggVvH-Fewrs8cwC_bnGY;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 343
    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initBottomArea()V

    .line 352
    const v0, 0x7f0a0338

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 355
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    .line 357
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 2531
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 2
    .param p1, "inPinnedMode"    # Z

    .line 2512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setInHeadsUpPinnedMode(Z)V

    .line 2513
    if-eqz p1, :cond_0

    .line 2514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2515
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    goto :goto_0

    .line 2517
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAnimatingAway(Z)V

    .line 2518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    .line 2521
    :goto_0
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .line 2547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 2548
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2539
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 2541
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpIsVisible()V

    .line 2543
    :cond_0
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "needsAnimation"    # Z

    .line 2011
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 2012
    return-void

    .line 2014
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    .line 2017
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 2018
    .local v0, "firstChildNotGone":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v1, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_2

    .line 2019
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0

    .line 2020
    :cond_2
    const/4 v1, 0x0

    .line 2021
    .local v1, "firstRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_0
    if-eqz v1, :cond_4

    if-eq p1, v1, :cond_3

    .line 2022
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    if-ne v2, v1, :cond_4

    .line 2023
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2025
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 2026
    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 4
    .param p1, "expandedHeight"    # F

    .line 1644
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_2

    .line 1649
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerMeasuringPass:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 1652
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 1655
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-nez v0, :cond_5

    .line 1658
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    .line 1661
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    .local v0, "t":F
    goto :goto_1

    .line 1665
    .end local v0    # "t":F
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1666
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1667
    .local v0, "panelHeightQsCollapsed":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v1

    int-to-float v1, v1

    .line 1668
    .local v1, "panelHeightQsExpanded":F
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float v0, v2, v3

    .line 1671
    .end local v1    # "panelHeightQsExpanded":F
    .local v0, "t":F
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1674
    .end local v0    # "t":F
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateExpandedHeight(F)V

    .line 1675
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 1676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateUnlockIcon()V

    .line 1677
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    .line 1678
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelExpanded()V

    .line 1679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShadeExpanded(Z)V

    .line 1683
    return-void
.end method

.method public onIconClicked(Z)V
    .locals 3
    .param p1, "rightIcon"    # Z

    .line 2213
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 2214
    return-void

    .line 2216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    .line 2217
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimation(ZLjava/lang/Runnable;)V

    .line 2224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    move p1, v0

    .line 2225
    if-eqz p1, :cond_3

    .line 2226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraHintStarted()V

    goto :goto_1

    .line 2228
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isLeftVoiceAssist()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onVoiceAssistHintStarted()V

    goto :goto_1

    .line 2231
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPhoneHintStarted()V

    .line 2234
    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 747
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v1, "panel_open"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v1, "panel_open_peek"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 759
    return v2

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 763
    return v2

    .line 765
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 748
    :cond_3
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 453
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setIsFullWidth(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->setPivotX(F)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const v1, 0x3eb0c000

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 459
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardStatusView;->getClockTextSize()F

    move-result v3

    mul-float/2addr v1, v3

    .line 458
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->setPivotY(F)V

    .line 462
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 463
    .local v0, "oldMaxHeight":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_2

    .line 464
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    .line 465
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    .line 469
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 470
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v1, :cond_3

    .line 471
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 472
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 476
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eq v1, v0, :cond_4

    .line 477
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startQsSizeChangeAnimation(II)V

    goto :goto_2

    .line 479
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_4

    .line 480
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 482
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateExpandedHeight(F)V

    .line 483
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    .line 490
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_5

    .line 491
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    .line 493
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    .line 494
    return-void
.end method

.method protected onMiddleClicked()Z
    .locals 4

    .line 2423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2444
    return v2

    .line 2433
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_0

    .line 2434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToKeyguard()V

    .line 2436
    :cond_0
    return v2

    .line 2425
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    if-nez v0, :cond_1

    .line 2426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v3, 0xbc

    invoke-virtual {v0, v3, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2429
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startUnlockHintAnimation()V

    .line 2431
    :cond_1
    return v2

    .line 2441
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    .line 2442
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 5
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .line 1138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 1139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v0, :cond_0

    .line 1140
    const/4 p1, 0x0

    .line 1142
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1143
    .local v0, "rounded":F
    :goto_0
    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOverScrolling(Z)V

    .line 1144
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    move v3, v4

    nop

    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    .line 1145
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    .line 1146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1147
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1148
    return-void
.end method

.method protected onQsExpansionStarted(I)V
    .locals 2
    .param p1, "overscrollAmount"    # I

    .line 1177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    .line 1178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelHeightAnimator()V

    .line 1181
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    int-to-float v1, p1

    sub-float/2addr v0, v1

    .line 1182
    .local v0, "height":F
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    .line 1183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 1184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 1185
    return-void
.end method

.method public onQsHeightChanged()V
    .locals 3

    .line 2033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    .line 2034
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_1

    .line 2035
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    .line 2036
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    .line 2037
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    .line 2039
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2040
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 2042
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    .line 2044
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 2030
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 2069
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 2070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onRtlPropertiesChanged()V

    .line 2071
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    .line 2073
    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    .line 2413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->dozeTimeTick()V

    .line 2414
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3016
    const/4 v0, 0x0

    return v0
.end method

.method public onSwipingAborted()V
    .locals 2

    .line 2207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onAffordanceSwipingAborted()V

    .line 2208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->unbindCameraPrewarmService(Z)V

    .line 2209
    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 4
    .param p1, "rightIcon"    # Z

    .line 2194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/FalsingManager;->onAffordanceSwipingStarted(Z)V

    .line 2195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_0

    .line 2196
    move v0, v2

    goto :goto_0

    .line 2195
    :cond_0
    nop

    .line 2196
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 2197
    .local v0, "camera":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2198
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->bindCameraPrewarmService()V

    .line 2200
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2201
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    .line 2202
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    .line 2203
    return-void
.end method

.method public onThemeChanged()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 418
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeView(Landroid/view/View;)V

    .line 419
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0094

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addView(Landroid/view/View;I)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeView(Landroid/view/View;)V

    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0080

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 432
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addView(Landroid/view/View;I)V

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initBottomArea()V

    .line 434
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDarkAmount(F)V

    .line 436
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-direct {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 437
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    .line 438
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 916
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    invoke-virtual {v0}, Lcom/oneplus/notification/OPNotificationController;->isPanelDisabledInBrickMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 922
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v2, "Skip onTouchEvent by BrickMode:"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_1
    return v1

    .line 927
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    .line 928
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 929
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 930
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 935
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v1, "panel_open_peek"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 937
    :cond_3
    const/4 v0, 0x0

    .line 938
    .local v0, "handled":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 940
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v1, :cond_5

    .line 942
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 944
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-eqz v1, :cond_6

    .line 945
    return v2

    .line 947
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 949
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 950
    return v2

    .line 952
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 953
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "panel_open"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 954
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateVerticalPanelPosition(F)V

    .line 955
    const/4 v0, 0x1

    .line 957
    :cond_8
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 958
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v1, :cond_9

    move v2, v0

    nop

    :cond_9
    return v2

    .line 917
    .end local v0    # "handled":Z
    :cond_a
    :goto_0
    return v1
.end method

.method protected onTrackingStarted()V
    .locals 2

    .line 1970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/FalsingManager;->onTrackingStarted(Z)V

    .line 1971
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 1972
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1973
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    .line 1974
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1977
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1978
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->animateHideLeftRightIcon()V

    .line 1980
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPanelTrackingStarted()V

    .line 1981
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 8
    .param p1, "expand"    # Z

    .line 1985
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onTrackingStopped()V

    .line 1986
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 1987
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1988
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 1991
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPanelTrackingStopped()V

    .line 1992
    const/4 v1, 0x2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v2

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1993
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1994
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-nez v2, :cond_2

    .line 1995
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 1998
    :cond_2
    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v2

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1999
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 2000
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    .line 2001
    .local v0, "lockIcon":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x64

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 2002
    const/high16 v2, 0x40000000    # 2.0f

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 2004
    .end local v0    # "lockIcon":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_4
    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 2

    .line 2238
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintFinished()V

    .line 2239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    .line 2240
    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 2

    .line 2244
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintStarted()V

    .line 2245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    .line 2246
    return-void
.end method

.method public removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 2961
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2962
    return-void
.end method

.method public removeVerticalTranslationListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "verticalTranslationListener"    # Ljava/lang/Runnable;

    .line 2969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2970
    return-void
.end method

.method protected requestScrollerTopPaddingUpdate(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 1505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FZZ)V

    .line 1508
    return-void
.end method

.method public resetViews()V
    .locals 9

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    .line 661
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    .line 662
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    .line 663
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    if-nez v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 665
    const-string v1, "lockscreen_affordance"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 668
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 670
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 673
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 2721
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAlpha(F)V

    .line 2722
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFullyVisibleState(Z)V

    .line 2723
    return-void
.end method

.method public setBarState(IZZ)V
    .locals 6
    .param p1, "statusBarState"    # I
    .param p2, "keyguardFadingAway"    # Z
    .param p3, "goingToFullShade"    # Z

    .line 1206
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 1207
    .local v0, "oldState":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1208
    .local v3, "keyguardShowing":Z
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    .line 1209
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    .line 1211
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    .line 1212
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    .line 1213
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v4, :cond_1

    .line 1214
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    invoke-interface {v4, v5}, Lcom/android/systemui/plugins/qs/QS;->setKeyguardShowing(Z)V

    .line 1217
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v2, :cond_4

    if-nez p3, :cond_2

    if-ne p1, v4, :cond_4

    .line 1219
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarOut()V

    .line 1220
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v2, v4, :cond_3

    .line 1221
    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v4

    .line 1222
    .local v4, "delay":J
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2, v4, v5}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingIn(J)V

    .line 1223
    .end local v4    # "delay":J
    goto :goto_3

    :cond_4
    if-ne v0, v4, :cond_5

    if-ne p1, v2, :cond_5

    .line 1225
    const-wide/16 v4, 0x168

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    .line 1226
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    goto :goto_3

    .line 1228
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    .line 1229
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v3, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    const/4 v4, 0x4

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1230
    if-eqz v3, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v0, v2, :cond_7

    .line 1231
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onKeyguardShowingChanged()V

    .line 1232
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v2, :cond_7

    .line 1233
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    .line 1237
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 1238
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    .line 1240
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 1241
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 1242
    return-void
.end method

.method public setBouncerTop(I)V
    .locals 0
    .param p1, "bouncerTop"    # I

    .line 633
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBouncerTop:I

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 635
    return-void
.end method

.method public setDozing(ZZ)V
    .locals 4
    .param p1, "dozing"    # Z
    .param p2, "animate"    # Z

    .line 2858
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2859
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    .line 2861
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2863
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    .line 2866
    :cond_2
    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 2867
    .local v0, "darkAmount":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2868
    if-eqz p2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmountTarget:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_4

    .line 2869
    return-void

    .line 2871
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2874
    :cond_5
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmountTarget:F

    .line 2875
    if-eqz p2, :cond_6

    .line 2876
    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    .line 2877
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2878
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2879
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 2881
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDarkAmount(F)V

    .line 2883
    :goto_1
    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .line 2357
    const v0, 0x3f4ccccd    # 0.8f

    .line 2358
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2359
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0

    .line 2360
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2361
    const v0, 0x3ecccccd    # 0.4f

    .line 2363
    :cond_1
    :goto_0
    mul-float v1, p1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    .line 2364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    .line 2365
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 2801
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 2802
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1
    .param p1, "headsUpAnimatingAway"    # Z

    .line 2524
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    .line 2525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpAnimatingAway(Z)V

    .line 2526
    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0
    .param p1, "headsUpAppearanceController"    # Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 2974
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 2975
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 2
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 2552
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 2553
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 2555
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 1
    .param p1, "indicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 449
    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 2409
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 2410
    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 2353
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2354
    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 3
    .param p1, "overExpansion"    # F
    .param p2, "isPixels"    # Z

    .line 1952
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1955
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 1957
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1958
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p1, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    goto :goto_0

    .line 1961
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p1, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1964
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 1966
    :cond_2
    return-void

    .line 1953
    :cond_3
    :goto_1
    return-void
.end method

.method public setPanelAlpha(IZ)Z
    .locals 3
    .param p1, "alpha"    # I
    .param p2, "animate"    # Z

    .line 2461
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlpha:I

    if-eq v0, p1, :cond_1

    .line 2462
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlpha:I

    .line 2463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float v1, p1

    .line 2464
    const/16 v2, 0xff

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_IN_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->PANEL_ALPHA_OUT_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 2463
    :goto_0
    invoke-static {p0, v0, v1, v2, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;Z)V

    .line 2465
    const/4 v0, 0x1

    return v0

    .line 2467
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setPanelAlphaEndAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 2477
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    .line 2478
    return-void
.end method

.method public setPanelAlphaInternal(F)V
    .locals 3
    .param p1, "alpha"    # F

    .line 2471
    float-to-int v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    .line 2472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2473
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->invalidate()V

    .line 2474
    return-void
.end method

.method public setPanelScrimMinFraction(F)V
    .locals 1
    .param p1, "minFraction"    # F

    .line 2648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelScrimMinFractionChanged(F)V

    .line 2649
    return-void
.end method

.method public setPulsing(Z)V
    .locals 2
    .param p1, "pulsing"    # Z

    .line 2893
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPulsing:Z

    .line 2894
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    .line 2895
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2896
    .local v0, "canAnimatePulse":Z
    if-eqz v0, :cond_0

    .line 2897
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextPositionUpdate:Z

    .line 2899
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPulsing(ZZ)V

    .line 2900
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v1, p1, v0}, Lcom/android/keyguard/KeyguardStatusView;->setPulsing(ZZ)V

    .line 2901
    return-void
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 1
    .param p1, "qsExpansionEnabled"    # Z

    .line 653
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 656
    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 1
    .param p1, "qsScrimEnabled"    # Z

    .line 2401
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2402
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    .line 2403
    if-eqz v0, :cond_1

    .line 2404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    .line 2406
    :cond_1
    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 2919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setImportantForAccessibility(I)V

    .line 2920
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 327
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 329
    return-void
.end method

.method public setTouchDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z

    .line 2851
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setTouchDisabled(Z)V

    .line 2852
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    if-nez v0, :cond_0

    .line 2853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 2855
    :cond_0
    return-void
.end method

.method public setTrackedHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "pickedChild"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2558
    if-eqz p1, :cond_0

    .line 2559
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 2560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    .line 2563
    :cond_0
    return-void
.end method

.method public setUnlockAlpha(F)V
    .locals 6
    .param p1, "alpha"    # F

    .line 3067
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3068
    .local v0, "visible":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v2

    .line 3069
    .local v2, "fingerprintUnlockController":Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->shouldApplySpeedUpPolicy()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3070
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardStatusView;->setVisibility(I)V

    .line 3071
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 3073
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_3

    .line 3074
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    .line 3077
    :cond_3
    if-eqz v0, :cond_5

    .line 3078
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->resetSpeedUpPolicy()V

    goto :goto_3

    .line 3081
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 3083
    :cond_5
    :goto_3
    return-void
.end method

.method protected setUpHighlightHintInfo()V
    .locals 5

    .line 3034
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 3035
    .local v0, "controller":Lcom/android/systemui/statusbar/phone/HighlightHintController;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->showOvalLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3036
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$MgXb25-zJ6JxfjwtWY58Sjq78wo;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$MgXb25-zJ6JxfjwtWY58Sjq78wo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3051
    :cond_0
    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 1
    .param p1, "userSetupComplete"    # Z

    .line 2933
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUserSetupComplete:Z

    .line 2934
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    .line 2935
    return-void
.end method

.method protected setVerticalPanelTranslation(F)V
    .locals 3
    .param p1, "translation"    # F

    .line 2607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationX(F)V

    .line 2608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2610
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2611
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 2610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2613
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 2735
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 2736
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFullyVisibleState(Z)V

    .line 2737
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 2341
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnAffordanceIcon(FF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldUseDismissingAnimation()Z
    .locals 1

    .line 2302
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2303
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2302
    :goto_0
    return v0
.end method

.method public showEmptyShadeView(Z)V
    .locals 0
    .param p1, "emptyShadeViewVisible"    # Z

    .line 2390
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    .line 2391
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    .line 2392
    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .line 2163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onUnlockHintStarted()V

    .line 2165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onUnlockHintFinished()V

    .line 2166
    return-void

    .line 2168
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    .line 2169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startHighlightIconAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    .line 2170
    return-void
.end method

.method public updateClock()V
    .locals 2

    .line 639
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    if-nez v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 641
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardStatusView;->setAlpha(F)V

    .line 643
    .end local v0    # "alpha":F
    :cond_1
    return-void
.end method

.method protected updateExpandedHeight(F)V
    .locals 2
    .param p1, "expandedHeight"    # F

    .line 2616
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v0, :cond_0

    .line 2617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentExpandVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandingVelocity(F)V

    .line 2619
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    .line 2620
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    .line 2621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStatusBarIcons()V

    .line 2622
    return-void
.end method

.method protected updateQsExpansion()V
    .locals 3

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 1456
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    .line 1457
    .local v0, "qsExpansionFraction":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FF)V

    .line 1458
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setQsExpansionFraction(F)V

    .line 1459
    return-void
.end method

.method public updateResources()V
    .locals 6

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 396
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070587

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 397
    .local v1, "qsWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 398
    .local v2, "panelGravity":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    .line 399
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 400
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v4, v1, :cond_0

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v4, v2, :cond_1

    .line 401
    :cond_0
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 402
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 403
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    :cond_1
    const v4, 0x7f0703b9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 407
    .local v4, "panelWidth":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 408
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v5, v4, :cond_2

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v5, v2, :cond_3

    .line 409
    :cond_2
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 410
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 411
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    :cond_3
    return-void
.end method

.method protected updateVerticalPanelPosition(F)V
    .locals 0
    .param p1, "x"    # F

    .line 2588
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    .line 2589
    return-void
.end method
