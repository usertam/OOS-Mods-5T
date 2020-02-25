.class public Lcom/android/systemui/statusbar/phone/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/plugins/ActivityStarter;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
.implements Lcom/android/systemui/statusbar/NotificationPresenter;
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;,
        Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;,
        Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;,
        Lcom/android/systemui/statusbar/phone/StatusBar$H;
    }
.end annotation


# static fields
.field protected static final DEBUG_ONEPLUS:Z

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final ONLY_CORE_APPS:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mCameraNotchIgnoring:Z


# instance fields
.field private isLaunchDial:Z

.field private mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

.field private final mAbsPos:[I

.field private mAccentColor:I

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field private mAmbientIndicationContainer:Landroid/view/View;

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field protected mAppOpsListener:Lcom/android/systemui/statusbar/AppOpsListener;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private final mAutoDim:Ljava/lang/Runnable;

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field protected mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field protected mBackdropBack:Landroid/widget/ImageView;

.field protected mBackdropFront:Landroid/widget/ImageView;

.field private final mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field protected mBouncerShowing:Z

.field private mBouncerWasShowingWhenHidden:Z

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessMirrorVisible:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonLock:Z

.field private mCameraLaunchGestureVibePattern:[J

.field private mCameraNotchIgnoreSetting:Z

.field private final mCameraNotchIgnoreSettingsObserver:Landroid/database/ContentObserver;

.field private mCameraWakeAndUnlocking:Z

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field private final mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

.field protected mClearAllEnabled:Z

.field private mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mCurrentDisplaySize:Landroid/graphics/Point;

.field private mDemoHighlightHint:Landroid/app/Notification$Builder;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private final mDemoReceiver:Landroid/content/BroadcastReceiver;

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled1:I

.field private mDisabled2:I

.field private mDismissAllButton:Landroid/view/View;

.field private mDismissShow:Z

.field protected mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

.field protected mDozing:Z

.field private mDozingRequested:Z

.field private mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field protected mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mExpandedVisible:Z

.field protected mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field protected mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field protected mFooterView:Lcom/android/systemui/statusbar/FooterView;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field private mGestureView:Landroid/widget/FrameLayout;

.field private mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

.field protected mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field protected final mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field protected final mHideBackdropFront:Ljava/lang/Runnable;

.field private mHideIconsForBouncer:Z

.field private mHideNavBar:Z

.field private mHighHintDemoMode:Z

.field private mHighlightColor:I

.field protected mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private mInteractingWindows:I

.field private mIsInMultiWindow:Z

.field private mIsKeyguard:Z

.field private mIsOccluded:Z

.field private final mKeyLockObserver:Landroid/database/ContentObserver;

.field protected mKeyguardFadingAway:Z

.field protected mKeyguardFadingAwayDelay:J

.field protected mKeyguardFadingAwayDuration:J

.field mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field protected mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private mKeyguardRequested:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field protected mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mLSState:Lcom/android/systemui/plugin/LSState;

.field private mLastBarHeight:I

.field private mLastCameraLaunchSource:I

.field private mLastDispatchedSystemUiVisibility:I

.field private final mLastDockedStackBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenStackBounds:Landroid/graphics/Rect;

.field private mLastLoggedStateFingerprint:I

.field private mLastUpdateNavBarTime:J

.field private mLaunchCameraOnFinishedGoingToSleep:Z

.field private mLaunchCameraOnScreenTurningOn:Z

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field protected mLaunchTransitionFadingAway:Z

.field private mLeaveOpenOnKeyguardHide:Z

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field protected mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field protected mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field private mMaxAllowedKeyguardNotifications:I

.field private mMaxKeyguardNotifications:I

.field private mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNaturalBarHeight:I

.field private mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

.field private mNavigationBarColor:I

.field protected mNavigationBarGuide:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

.field private mNavigationBarView:Landroid/view/View;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

.field private mNoAnimationOnNextBarModeChange:Z

.field protected mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field protected mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field protected mNotificationLogger:Lcom/android/systemui/statusbar/NotificationLogger;

.field protected mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field protected mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

.field protected mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

.field private mOrientation:I

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mPackageName:Ljava/lang/String;

.field protected mPanelExpanded:Z

.field private mPendingRemoteInputView:Landroid/view/View;

.field private mPendingWorkRemoteInputView:Landroid/view/View;

.field private mPhoneState:I

.field private final mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPowerManager:Landroid/os/PowerManager;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQueueLock:Ljava/lang/Object;

.field protected mRecents:Lcom/android/systemui/RecentsComponent;

.field private mReinflateNotificationsOnUserSwitched:Z

.field protected mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mReportRejectedTouch:Landroid/view/View;

.field private mScreenDecorUp:Landroid/widget/ImageView;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

.field private mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

.field protected mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field protected mScrimSrcModeEnabled:Z

.field private mShowNavBar:Z

.field private final mShowOnScreenNavKeysObserver:Landroid/database/ContentObserver;

.field private mSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

.field private mSpecialTheme:Z

.field protected final mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

.field protected final mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field final mStartTracing:Ljava/lang/Runnable;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMode:I

.field private mStatusBarStateLog:Landroid/metrics/LogMaker;

.field protected mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field protected mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mStatusBarWindowHidden:Z

.field protected mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mStatusBarWindowState:I

.field final mStopTracing:Ljava/lang/Runnable;

.field private mSwapNavKeys:Z

.field private final mSwapNavKeysObserver:Landroid/database/ContentObserver;

.field private mSystemUiVisibility:I

.field private mThemeChangeReceiver:Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;

.field private mThemeColor:I

.field private final mTmpInt2:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTopHidesStatusBar:Z

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field protected mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUserSetup:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field protected mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private mVibrateOnOpening:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field protected mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field protected mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWakeUpComingFromTouch:Z

.field private mWakeUpTouchLocation:Landroid/graphics/PointF;

.field mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWereIconsJustHidden:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field private mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 289
    const-string v0, "debug.child_notifs"

    .line 290
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 293
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    .line 348
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 349
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 350
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 375
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "package"

    .line 376
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 377
    .local v1, "packageManager":Landroid/content/pm/IPackageManager;
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "packageManager":Landroid/content/pm/IPackageManager;
    move v1, v2

    .line 380
    .local v1, "onlyCoreApps":Z
    goto :goto_0

    .line 378
    .end local v1    # "onlyCoreApps":Z
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Landroid/os/RemoteException;
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    move v1, v0

    .line 381
    .local v1, "onlyCoreApps":Z
    :goto_0
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    .line 6967
    .end local v1    # "onlyCoreApps":Z
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoring:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 400
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 402
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 406
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 409
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 413
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    .line 438
    const-class v2, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 439
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 447
    const/4 v2, 0x2

    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAbsPos:[I

    .line 448
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 470
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 471
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 474
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 475
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    .line 476
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 477
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    .line 480
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDispatchedSystemUiVisibility:I

    .line 482
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 485
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 491
    const-class v4, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/logging/MetricsLogger;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 494
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    .line 496
    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBar$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 518
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    .line 528
    const-class v4, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/UiOffloadThread;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 530
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Xuhkv64bZHfI7FOWJTQgAefazRk;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Xuhkv64bZHfI7FOWJTQgAefazRk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 549
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 550
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 557
    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBar$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 587
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    .line 601
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 625
    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 627
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 634
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 643
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$nk2TlfrOg2jlsjvFTJOkIoJCn4k;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$nk2TlfrOg2jlsjvFTJOkIoJCn4k;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    .line 652
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 698
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissShow:Z

    .line 702
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNavBar:Z

    .line 703
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mButtonLock:Z

    .line 704
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastUpdateNavBarTime:J

    .line 707
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwapNavKeys:Z

    .line 710
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    .line 711
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideNavBar:Z

    .line 722
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarColor:I

    .line 747
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->isLaunchDial:Z

    .line 750
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsInMultiWindow:Z

    .line 1942
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 2730
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$hcoUGmHpwgtk12ln4V8HNBe6RFA;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$hcoUGmHpwgtk12ln4V8HNBe6RFA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    .line 3152
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSetting:Z

    .line 3153
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$10;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSettingsObserver:Landroid/database/ContentObserver;

    .line 3182
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$KBnY14rlKZ6x8gvk_goBuFrr5eE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KBnY14rlKZ6x8gvk_goBuFrr5eE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 3645
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3677
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    .line 4061
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 4072
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$zbl1TyDt019f1n5t9A8yzuWSVKU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$zbl1TyDt019f1n5t9A8yzuWSVKU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 4235
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHighHintDemoMode:Z

    .line 4236
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    .line 5354
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraWakeAndUnlocking:Z

    .line 5357
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 5410
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 5979
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 5980
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 6012
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 6023
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 6629
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$WZGkV5RiJEhkNPrZJRuUnAyQdRU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$WZGkV5RiJEhkNPrZJRuUnAyQdRU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoDim:Ljava/lang/Runnable;

    .line 6640
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$21;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowOnScreenNavKeysObserver:Landroid/database/ContentObserver;

    .line 6678
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$22;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyLockObserver:Landroid/database/ContentObserver;

    .line 6694
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$23;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwapNavKeysObserver:Landroid/database/ContentObserver;

    .line 6795
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ttNkMTrQ9zLSKgqcLEoQgbW5uL4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ttNkMTrQ9zLSKgqcLEoQgbW5uL4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    .line 6990
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastBarHeight:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .line 280
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraWakeAndUnlocking:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/StatusBar;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNavBar:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNavBar:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBar()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/StatusBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # I

    .line 280
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneState:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mButtonLock:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mButtonLock:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwapNavKeys:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwapNavKeys:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mThemeColor:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/phone/StatusBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # I

    .line 280
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mThemeColor:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccentColor:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/phone/StatusBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # I

    .line 280
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccentColor:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSpecialTheme:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSpecialTheme:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissAllButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSetting:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "x1"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSetting:Z

    return p1
.end method

.method private addStatusBarWindow()V
    .locals 3

    .line 3479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V

    .line 3480
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 3481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, p0, v1, p0, v2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;Lcom/android/systemui/statusbar/RemoteInputController$Delegate;)V

    .line 3497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 3498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->add(Landroid/view/View;I)V

    .line 3500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    .line 3502
    return-void
.end method

.method private areLightsOn()Z
    .locals 2

    .line 3272
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private barMode(IIII)I
    .locals 3
    .param p1, "vis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "translucentFlag"    # I
    .param p4, "transparentFlag"    # I

    .line 3090
    const/4 v0, 0x1

    or-int v1, v0, p4

    .line 3091
    .local v1, "lightsOutTransparent":I
    and-int v2, p1, p2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3092
    :cond_0
    and-int v0, p1, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 3093
    :cond_1
    and-int v0, p1, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    .line 3094
    :cond_2
    and-int v0, p1, p4

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 3095
    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 3096
    :cond_4
    const/4 v0, 0x0

    .line 3091
    :goto_0
    return v0
.end method

.method private cancelAutohide()V
    .locals 2

    .line 3234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohideSuspended:Z

    .line 3235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3236
    return-void
.end method

.method private collapseOnMainThread()V
    .locals 2

    .line 6223
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel()Z

    goto :goto_0

    .line 6226
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$gz0x-DF8XfLLI3DV9TaqObWTwvs;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$gz0x-DF8XfLLI3DV9TaqObWTwvs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->post(Ljava/lang/Runnable;)Z

    .line 6228
    :goto_0
    return-void
.end method

.method private collapsePanel()Z
    .locals 3

    .line 6246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6248
    const/4 v0, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    .line 6250
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 6252
    return v2

    .line 6254
    :cond_0
    return v1
.end method

.method private constructDemoHighLightNotification(Landroid/app/Notification$Builder;I)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "iconResId"    # I

    .line 4277
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4278
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setIconOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 4279
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 4280
    const/16 v1, 0x32

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setPriorityOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 4281
    const v1, 0x7f110422

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setTextOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 4282
    const v1, -0xfb520a

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setBackgroundColorOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 4283
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 4284
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 4285
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setShowOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 4286
    return-void
.end method

.method private dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;
    .param p3, "afterKeyguardGone"    # Z

    .line 3738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 3739
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-nez v0, :cond_0

    .line 3741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3744
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startWakeAndUnlock(I)V

    .line 3747
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 3751
    :cond_1
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 3753
    :goto_0
    return-void
.end method

.method private dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z
    .param p3, "bypassKeyguard"    # Z

    .line 3724
    if-eqz p3, :cond_0

    .line 3725
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    goto :goto_0

    .line 3727
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 3729
    :goto_0
    return-void
.end method

.method private dismissVolumeDialog()V
    .locals 1

    .line 3203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v0, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeComponent;->dismissNow()V

    .line 3206
    :cond_0
    return-void
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "id"    # I

    .line 4227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v0, :cond_0

    return-void

    .line 4228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4229
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/DemoMode;

    if-eqz v1, :cond_1

    .line 4230
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/DemoMode;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4232
    :cond_1
    return-void
.end method

.method static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "var"    # Ljava/lang/String;
    .param p2, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .line 3467
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3468
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarTransitions.mColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0x%08X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3472
    return-void
.end method

.method private executeWhenUnlocked(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 2
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 3715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 3718
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 3719
    return-void
.end method

.method private finishBarAnimations()V
    .locals 1

    .line 3174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 3175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_1

    .line 3178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->finishBarAnimations()V

    .line 3180
    :cond_1
    return-void
.end method

.method private getDemoNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    .line 4267
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4268
    .local v0, "builder":Landroid/app/Notification$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 4271
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 4272
    const v1, 0x7f08022e

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->constructDemoHighLightNotification(Landroid/app/Notification$Builder;I)V

    .line 4273
    return-object v0
.end method

.method private static getLoggingFingerprint(IZZZZZ)I
    .locals 2
    .param p0, "statusBarState"    # I
    .param p1, "keyguardShowing"    # Z
    .param p2, "keyguardOccluded"    # Z
    .param p3, "bouncerShowing"    # Z
    .param p4, "secure"    # Z
    .param p5, "currentlyInsecure"    # Z

    .line 4039
    and-int/lit16 v0, p0, 0xff

    .line 4040
    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    .line 4041
    shl-int/lit8 v1, p2, 0x9

    or-int/2addr v0, v1

    .line 4042
    shl-int/lit8 v1, p3, 0xa

    or-int/2addr v0, v1

    .line 4043
    shl-int/lit8 v1, p4, 0xb

    or-int/2addr v0, v1

    .line 4044
    shl-int/lit8 v1, p5, 0xc

    or-int/2addr v0, v1

    .line 4039
    return v0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 6565
    move-object v0, p0

    .line 6567
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 6571
    nop

    .line 6572
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 6577
    goto :goto_0

    .line 6575
    :catch_0
    move-exception v1

    .line 6579
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1
.end method

.method private handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .line 4099
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 4100
    return-void
.end method

.method private handleVisibleToUserChangedImpl(Z)V
    .locals 6
    .param p1, "visibleToUser"    # Z

    .line 3966
    if-eqz p1, :cond_3

    .line 3967
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    .line 3968
    .local v0, "pinnedHeadsUp":Z
    nop

    .line 3969
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPresenterFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 3973
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/notification/OPNotificationController;->keepLightBlink(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3975
    .local v1, "clearNotificationEffects":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    .line 3976
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3977
    .local v2, "notificationLoad":I
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPresenterFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3978
    const/4 v2, 0x1

    .line 3980
    :cond_2
    move v3, v2

    .line 3981
    .local v3, "finalNotificationLoad":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fcdHFtFbhXJzHNOiNLqe87N7loU;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$fcdHFtFbhXJzHNOiNLqe87N7loU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;ZI)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3989
    .end local v0    # "pinnedHeadsUp":Z
    .end local v1    # "clearNotificationEffects":Z
    .end local v2    # "notificationLoad":I
    .end local v3    # "finalNotificationLoad":I
    goto :goto_1

    .line 3990
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$gzhUIFvcZmfgCloN33qVlVZx_t4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$gzhUIFvcZmfgCloN33qVlVZx_t4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3999
    :goto_1
    return-void
.end method

.method private inflateEmptyShadeView()V
    .locals 4

    .line 1428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_0

    .line 1429
    return-void

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01d5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    const v1, 0x7f110253

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setText(I)V

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    .line 1435
    return-void
.end method

.method private inflateFooterView()V
    .locals 4

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_0

    .line 1439
    return-void

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01d7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/FooterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$HeNtWn6ER-i55fzNijMTFX8MRhM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$HeNtWn6ER-i55fzNijMTFX8MRhM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/FooterView;->setDismissButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$VvTfjQyycJ7XkvNtPALBHaxz3UA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$VvTfjQyycJ7XkvNtPALBHaxz3UA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/FooterView;->setManageButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFooterView(Lcom/android/systemui/statusbar/FooterView;)V

    .line 1454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissAllButton:Landroid/view/View;

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissAllButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$O-Wv011qCNwX6EduWeTTLl3vM68;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$O-Wv011qCNwX6EduWeTTLl3vM68;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    return-void
.end method

.method private inflateShelf()V
    .locals 4

    .line 1339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1340
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v2, 0x7f0d01d9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 1343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 1344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGoToLockedShadeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setStatusBarState(I)V

    .line 1346
    return-void
.end method

.method private initControlPanelWindow()V
    .locals 12

    .line 6750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 6751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 6752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    .line 6755
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideNavBar:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 6759
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    .line 6760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$24;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 6769
    .local v0, "screenHeight":I
    div-int/lit8 v9, v0, 0x64

    .line 6770
    .local v9, "viewHeight":I
    sub-int v10, v0, v9

    .line 6772
    .local v10, "viewPos":I
    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/16 v6, 0x7de

    const v7, 0x1000008

    const/4 v8, -0x3

    move-object v1, v11

    move v3, v9

    move v5, v10

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 6781
    .local v1, "gestureParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureView:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6782
    return-void

    .line 6756
    .end local v0    # "screenHeight":I
    .end local v1    # "gestureParams":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "viewHeight":I
    .end local v10    # "viewPos":I
    :cond_2
    :goto_0
    return-void
.end method

.method private instantCollapseNotificationPanel()V
    .locals 1

    .line 4864
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantCollapse()V

    .line 4865
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 4866
    return-void
.end method

.method private instantExpandNotificationsPanel()V
    .locals 2

    .line 4858
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    .line 4859
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 4860
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 4861
    return-void
.end method

.method public static isCameraNotchIgnoring()Z
    .locals 1

    .line 6969
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoring:Z

    return v0
.end method

.method private isGoingToSleep()Z
    .locals 2

    .line 5640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScreenTurningOnOrOn()Z
    .locals 3

    .line 5645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 5646
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 5645
    :cond_1
    :goto_0
    return v1
.end method

.method public static isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1892
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return v0
.end method

.method public static synthetic lambda$9MqmIExNr864CrvDQmmxl0ZneDg(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeWhenUnlocked(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    return-void
.end method

.method public static synthetic lambda$GDSEpzokV1v2-uNGuP8V5K9Jrjw(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    return-void
.end method

.method public static synthetic lambda$MVkYf3B-uVxXy7rxrXvHR4SUXEU(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$clearAllNotifications$15(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "viewsToRemove"    # Ljava/util/ArrayList;

    .line 1523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 1524
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1525
    .local v1, "rowToRemove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1526
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_1

    .line 1528
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    .line 1530
    .end local v1    # "rowToRemove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_1
    goto :goto_0

    .line 1532
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    goto :goto_2

    .line 1533
    :catch_0
    move-exception v0

    .line 1535
    :goto_2
    return-void
.end method

.method public static synthetic lambda$createNavigationBar$10(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 1308
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setCurrentSysuiVisibility(I)V

    .line 1314
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarColor:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavBarColorChanged(ILjava/lang/String;)V

    .line 1316
    :cond_1
    return-void
.end method

.method public static synthetic lambda$executeRunnableDismissingKeyguard$26(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)Z
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "dismissShade"    # Z
    .param p3, "deferred"    # Z

    .line 3610
    if-eqz p1, :cond_1

    .line 3611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 3612
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3613
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3615
    :cond_0
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 3619
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 3620
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_2

    .line 3621
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    .line 3624
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v0, :cond_4

    .line 3625
    const-string v0, "StatusBar"

    const-string v1, "not defer dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    const/4 v0, 0x0

    return v0

    .line 3632
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$h1YVkfulr3o8W-Bsc2YTikmPmYI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$h1YVkfulr3o8W-Bsc2YTikmPmYI;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3634
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$JQMd1r5WuAA5n3kv4yv5u3MFjI8;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$JQMd1r5WuAA5n3kv4yv5u3MFjI8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3641
    :cond_4
    :goto_1
    return p3
.end method

.method public static synthetic lambda$fadeKeyguardAfterLaunchTransition$36(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "beforeFading"    # Ljava/lang/Runnable;

    .line 4422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    .line 4423
    if-eqz p1, :cond_0

    .line 4424
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4426
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4427
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 4428
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4429
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setParentNotFullyVisible(Z)V

    .line 4430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 4431
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 4432
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 4433
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4434
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GDSEpzokV1v2-uNGuP8V5K9Jrjw;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$GDSEpzokV1v2-uNGuP8V5K9Jrjw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4435
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 4436
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x78

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(JJZ)V

    .line 4438
    return-void
.end method

.method public static synthetic lambda$fadeKeyguardWhilePulsing$37(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 4458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    .line 4459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway()V

    .line 4460
    return-void
.end method

.method public static synthetic lambda$getStatusBarWindowTouchListener$11(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1325
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkUserAutohide(Landroid/view/MotionEvent;)V

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->checkRemoteInputOutside(Landroid/view/MotionEvent;)V

    .line 1327
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$gz0x-DF8XfLLI3DV9TaqObWTwvs(Lcom/android/systemui/statusbar/phone/StatusBar;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$h1YVkfulr3o8W-Bsc2YTikmPmYI(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method public static synthetic lambda$handleRemoteViewClick$39(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z
    .locals 4
    .param p1, "defaultHandler"    # Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;

    .line 5170
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5172
    goto :goto_0

    .line 5171
    :catch_0
    move-exception v0

    .line 5174
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;->handleClick()Z

    move-result v0

    .line 5177
    .local v0, "handled":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5178
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    .line 5180
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 5181
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 5184
    return v3

    .line 5186
    :cond_0
    return v1
.end method

.method public static synthetic lambda$handleVisibleToUserChangedImpl$29(Lcom/android/systemui/statusbar/phone/StatusBar;ZI)V
    .locals 1
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "finalNotificationLoad"    # I

    .line 3983
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3987
    goto :goto_0

    .line 3985
    :catch_0
    move-exception v0

    .line 3988
    :goto_0
    return-void
.end method

.method public static synthetic lambda$handleVisibleToUserChangedImpl$30(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 3992
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3995
    goto :goto_0

    .line 3993
    :catch_0
    move-exception v0

    .line 3996
    :goto_0
    return-void
.end method

.method public static synthetic lambda$inflateFooterView$12(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x94

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1446
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearAllNotifications()V

    .line 1447
    return-void
.end method

.method public static synthetic lambda$inflateFooterView$13(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 1449
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->manageNotifications()V

    .line 1450
    return-void
.end method

.method public static synthetic lambda$inflateFooterView$14(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x94

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearAllNotifications()V

    .line 1458
    return-void
.end method

.method public static synthetic lambda$makeStatusBarView$2(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1015
    :goto_0
    return-void
.end method

.method public static synthetic lambda$makeStatusBarView$3(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 1037
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .line 1039
    .local v0, "statusBarFragment":Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 1040
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 1041
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1042
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 1043
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1044
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBouncerShowing(Z)V

    .line 1045
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->destroy()V

    .line 1049
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 1052
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 1054
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 1055
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 1058
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyBarPanelExpansionChanged()V

    .line 1060
    return-void
.end method

.method public static synthetic lambda$makeStatusBarView$4(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ScrimState;Ljava/lang/Float;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/ScrimState;
    .param p2, "alpha"    # Ljava/lang/Float;
    .param p3, "color"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->setScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;FLcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method public static synthetic lambda$makeStatusBarView$5(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "scrimsVisible"    # Ljava/lang/Integer;

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setScrimsVisibility(I)V

    .line 1171
    :cond_0
    return-void
.end method

.method public static synthetic lambda$makeStatusBarView$6(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1176
    .local v0, "asSrc":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDrawBehindAsSrc(Z)V

    .line 1177
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDrawBackgroundAsSrc(Z)V

    .line 1178
    return-void
.end method

.method public static synthetic lambda$makeStatusBarView$7(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "visible"    # Ljava/lang/Boolean;

    .line 1209
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorVisible:Z

    .line 1210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 1211
    return-void
.end method

.method public static synthetic lambda$makeStatusBarView$8(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .param p1, "qsh"    # Lcom/android/systemui/qs/QSTileHost;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "f"    # Landroid/app/Fragment;

    .line 1213
    move-object v0, p3

    check-cast v0, Lcom/android/systemui/plugins/qs/QS;

    .line 1215
    .local v0, "qs":Lcom/android/systemui/plugins/qs/QS;
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1217
    instance-of v1, v0, Lcom/android/systemui/qs/QSFragment;

    if-eqz v1, :cond_0

    .line 1218
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSFragment;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 1219
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 1220
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 1221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 1223
    :cond_0
    return-void
.end method

.method public static synthetic lambda$makeStatusBarView$9(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object v0

    .line 1231
    .local v0, "session":Landroid/net/Uri;
    if-nez v0, :cond_0

    return-void

    .line 1233
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1234
    .local v1, "message":Ljava/io/StringWriter;
    const-string v2, "Build info: "

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1235
    const-string v2, "ro.build.description"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1236
    const-string v2, "\nSerial number: "

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1237
    const-string v2, "ro.serialno"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1238
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1240
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1241
    .local v2, "falsingPw":Ljava/io/PrintWriter;
    invoke-static {v2}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 1242
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1244
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "*/*"

    .line 1245
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.SUBJECT"

    const-string v5, "Rejected touch report"

    .line 1246
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.STREAM"

    .line 1247
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.TEXT"

    .line 1248
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "Share rejected touch report"

    .line 1244
    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 1250
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 1244
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 1252
    return-void
.end method

.method public static synthetic lambda$maybeEscalateHeadsUp$21(Lcom/android/systemui/statusbar/phone/StatusBar;ZLcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "goingToSleep"    # Z
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2623
    iget-object v0, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2624
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 2625
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 2627
    if-eqz p1, :cond_0

    const-string v2, "com.android.dialer"

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneState:I

    if-nez v2, :cond_0

    .line 2629
    const-string v2, "StatusBar"

    const-string v3, "skip fullScreenIntent of dialer if phone state is idle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2636
    :cond_0
    const v2, 0x8ca3

    .line 2637
    :try_start_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 2636
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2638
    iget-object v2, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V

    .line 2639
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->notifyFullScreenIntentLaunched()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2641
    goto :goto_0

    .line 2640
    :catch_0
    move-exception v2

    .line 2644
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    return-void

    .line 537
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const v1, -0xc000001

    and-int/2addr v0, v1

    .line 538
    .local v0, "requested":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    if-eq v1, v0, :cond_1

    .line 539
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyUiVisibilityChanged(I)V

    .line 541
    :cond_1
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 644
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 645
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;)V

    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 648
    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$31(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 4073
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 4074
    const-string v0, "StatusBar"

    const-string v1, "stopTracing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4075
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrate()V

    .line 4076
    return-void
.end method

.method public static synthetic lambda$new$52(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 6630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_0

    .line 6631
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->setAutoDim(Z)V

    .line 6633
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$53(Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "saveImportance"    # Ljava/lang/Runnable;

    .line 6802
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6803
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$new$54(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "saveImportance"    # Ljava/lang/Runnable;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 6798
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6801
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$s257Dj2XSDiA1cvwD4Gi3XHeIRQ;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$s257Dj2XSDiA1cvwD4Gi3XHeIRQ;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLockedNotificationImportanceChange(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    goto :goto_0

    .line 6806
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6808
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onHeadsUpPinnedModeChanged$18(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 2420
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceWindowCollapsed(Z)V

    .line 2421
    return-void
.end method

.method public static synthetic lambda$onHeadsUpPinnedModeChanged$19(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 2433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setHeadsUpShowing(Z)V

    .line 2435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    .line 2437
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->removeRemoteInputEntriesKeptUntilCollapsed()V

    .line 2438
    return-void
.end method

.method public static synthetic lambda$onNotificationClicked$43(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;ZLandroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    .locals 20
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "notificationKey"    # Ljava/lang/String;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "controller"    # Lcom/android/systemui/statusbar/RemoteInputController;
    .param p5, "wasOccluded"    # Z
    .param p6, "parentToCancelFinal"    # Landroid/service/notification/StatusBarNotification;
    .param p7, "sbn"    # Landroid/service/notification/StatusBarNotification;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    .line 6105
    move-object/from16 v4, p7

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6107
    goto :goto_0

    .line 6106
    :catch_0
    move-exception v0

    .line 6108
    :goto_0
    const/16 v5, -0x60

    .line 6109
    .local v5, "launchResult":I
    if-eqz p1, :cond_5

    .line 6113
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6114
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6115
    .local v0, "userId":I
    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 6116
    invoke-virtual {v6, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6119
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    invoke-virtual {v1, v0, v6, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6123
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapseOnMainThread()V

    .line 6124
    return-void

    .line 6128
    .end local v0    # "userId":I
    :cond_0
    const/4 v0, 0x0

    .line 6129
    .local v0, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v14

    .line 6130
    .local v14, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v6, 0x0

    .line 6131
    .local v6, "remoteInputText":Ljava/lang/CharSequence;
    iget-object v7, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 6132
    iget-object v6, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    .line 6134
    .end local v6    # "remoteInputText":Ljava/lang/CharSequence;
    .local v13, "remoteInputText":Ljava/lang/CharSequence;
    :cond_1
    move-object v13, v6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 6135
    move-object/from16 v12, p4

    invoke-virtual {v12, v6}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 6136
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.remoteInputDraft"

    .line 6137
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6136
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 6139
    :cond_2
    move-object/from16 v12, p4

    .end local v0    # "fillInIntent":Landroid/content/Intent;
    .local v15, "fillInIntent":Landroid/content/Intent;
    :cond_3
    :goto_1
    move-object v15, v0

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    move-object/from16 v11, p3

    move/from16 v10, p5

    invoke-virtual {v0, v11, v10}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    move-object v9, v0

    .line 6142
    .local v9, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v9, :cond_4

    .line 6143
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 6145
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    .line 6144
    invoke-interface {v0, v6, v9}, Landroid/app/IActivityManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 6150
    :catch_1
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v16, v13

    goto :goto_3

    .line 6147
    :cond_4
    :goto_2
    :try_start_2
    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 6148
    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v18
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_3

    .line 6147
    move-object/from16 v6, p1

    move-object/from16 v19, v9

    move-object v9, v15

    .end local v9    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .local v19, "adapter":Landroid/view/RemoteAnimationAdapter;
    move-object v10, v0

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v13

    move-object/from16 v13, v18

    .end local v13    # "remoteInputText":Ljava/lang/CharSequence;
    .local v16, "remoteInputText":Ljava/lang/CharSequence;
    :try_start_3
    invoke-virtual/range {v6 .. v13}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    move v5, v0

    .line 6149
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_2

    .line 6156
    goto :goto_4

    .line 6150
    :catch_2
    move-exception v0

    goto :goto_3

    .end local v16    # "remoteInputText":Ljava/lang/CharSequence;
    .end local v19    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .restart local v9    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .restart local v13    # "remoteInputText":Ljava/lang/CharSequence;
    :catch_3
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v16, v13

    .line 6153
    .end local v9    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .end local v13    # "remoteInputText":Ljava/lang/CharSequence;
    .local v0, "e":Landroid/util/AndroidException;
    .restart local v16    # "remoteInputText":Ljava/lang/CharSequence;
    .restart local v19    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :goto_3
    const-string v6, "StatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending contentIntent failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6157
    .end local v0    # "e":Landroid/util/AndroidException;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6158
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 6161
    .end local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v15    # "fillInIntent":Landroid/content/Intent;
    .end local v16    # "remoteInputText":Ljava/lang/CharSequence;
    .end local v19    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldCollapse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6162
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapseOnMainThread()V

    .line 6165
    :cond_6
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 6166
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 6167
    .local v6, "count":I
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v7

    .line 6168
    .local v7, "rank":I
    const/4 v0, 0x1

    invoke-static {v2, v7, v6, v0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    move-object v8, v0

    .line 6171
    .local v8, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    :try_start_4
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, v2, v8}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 6174
    goto :goto_5

    .line 6172
    :catch_4
    move-exception v0

    .line 6175
    :goto_5
    if-eqz v3, :cond_7

    .line 6176
    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 6178
    :cond_7
    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 6179
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->isNotificationKeptForRemoteInput(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6181
    :cond_8
    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 6183
    :cond_9
    return-void
.end method

.method public static synthetic lambda$onNotificationClicked$44(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/RemoteInputController;ZZ)Z
    .locals 16
    .param p1, "notificationKey"    # Ljava/lang/String;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .param p5, "controller"    # Lcom/android/systemui/statusbar/RemoteInputController;
    .param p6, "wasOccluded"    # Z
    .param p7, "bypassKeyguard"    # Z

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 6079
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6082
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPresenterFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6083
    move-object/from16 v13, p2

    invoke-static {v13, v12}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->setIsClickedHeadsUpNotification(Landroid/view/View;Z)V

    goto :goto_0

    .line 6088
    :cond_0
    move-object/from16 v13, p2

    :goto_0
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->releaseImmediately(Ljava/lang/String;)V

    goto :goto_1

    .line 6090
    :cond_1
    move-object/from16 v13, p2

    :goto_1
    const/4 v0, 0x0

    .line 6091
    .local v0, "parentToCancel":Landroid/service/notification/StatusBarNotification;
    invoke-direct {v9, v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6092
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 6093
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 6094
    .local v1, "summarySbn":Landroid/service/notification/StatusBarNotification;
    invoke-direct {v9, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6095
    move-object v0, v1

    .line 6098
    .end local v0    # "parentToCancel":Landroid/service/notification/StatusBarNotification;
    .end local v1    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .local v14, "parentToCancel":Landroid/service/notification/StatusBarNotification;
    :cond_2
    move-object v14, v0

    move-object v7, v14

    .line 6099
    .local v7, "parentToCancelFinal":Landroid/service/notification/StatusBarNotification;
    new-instance v15, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;

    .local v15, "runnable":Ljava/lang/Runnable;
    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, p4

    move-object v3, v10

    move-object v4, v13

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$cUh2ETzNjrzuM53V0cfpnQ0XKrg;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;ZLandroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    .line 6189
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 6190
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p7, :cond_3

    .line 6193
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v15}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    .line 6194
    invoke-virtual {v9, v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel(Z)V

    goto :goto_2

    .line 6196
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 6199
    :goto_2
    iget-object v1, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    xor-int/2addr v1, v12

    return v1
.end method

.method public static synthetic lambda$onWorkChallengeChanged$40(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 1
    .param p1, "scrollLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 5273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 5274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    .line 5275
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFinishScrollingCallback(Ljava/lang/Runnable;)V

    .line 5276
    return-void
.end method

.method public static synthetic lambda$onWorkChallengeChanged$41(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "scrollLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5272
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$kuNpASvOxbzmpjWHsJiuvs-UVjI;

    .local v0, "finishScrollingCallback":Ljava/lang/Runnable;
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$kuNpASvOxbzmpjWHsJiuvs-UVjI;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 5277
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5279
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFinishScrollingCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5282
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5284
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onWorkChallengeChanged$42(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 6

    .line 5251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    .line 5252
    .local v0, "pendingWorkRemoteInputView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 5253
    return-void

    .line 5257
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 5258
    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v2, :cond_2

    .line 5259
    if-nez v1, :cond_1

    .line 5260
    return-void

    .line 5262
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 5265
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5266
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 5267
    .local v3, "viewParent":Landroid/view/ViewParent;
    instance-of v4, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v4, :cond_3

    .line 5268
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 5270
    .local v4, "scrollLayout":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->makeActionsVisibile()V

    .line 5271
    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$BWDn3Uq4m9m9zWWCd9Ws-560bx8;

    invoke-direct {v5, p0, v4, v2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$BWDn3Uq4m9m9zWWCd9Ws-560bx8;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->post(Ljava/lang/Runnable;)Z

    .line 5286
    .end local v4    # "scrollLayout":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    :cond_3
    return-void
.end method

.method public static synthetic lambda$performDismissAllAnimations$16(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 1543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    .line 1544
    return-void
.end method

.method public static synthetic lambda$postAnimateForceCollapsePanels$22(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 2738
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    .line 2739
    return-void
.end method

.method public static synthetic lambda$postQSRunnableDismissingKeyguard$32(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 4082
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$postQSRunnableDismissingKeyguard$33(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 4081
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4082
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DbHzbcPYKOzhU4VGsvwDaIv817Q;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DbHzbcPYKOzhU4VGsvwDaIv817Q;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 4084
    return-void
.end method

.method public static synthetic lambda$postStartActivityDismissingKeyguard$34(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 4089
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic lambda$postStartActivityDismissingKeyguard$35(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 4095
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleStartActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    return-void
.end method

.method public static synthetic lambda$removeNotification$45(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 6262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic lambda$removeNotification$46(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 6261
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$2XL5M8cYG3eNky2IEXNm9CS9MKc;

    .local v0, "removeRunnable":Ljava/lang/Runnable;
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$2XL5M8cYG3eNky2IEXNm9CS9MKc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;)V

    .line 6263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCollapsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6266
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6268
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6270
    :goto_0
    return-void
.end method

.method public static synthetic lambda$startActivityDismissingKeyguard$24(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "disallowEnterPictureInPictureWhileLaunching"    # Z
    .param p4, "callback"    # Lcom/android/systemui/plugins/ActivityStarter$Callback;

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    .line 3552
    move-object/from16 v15, p4

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 3553
    const/high16 v0, 0x14000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3555
    invoke-virtual/range {p1 .. p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3556
    const/16 v16, -0x60

    .line 3557
    .local v16, "result":I
    new-instance v0, Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    move-object v13, v0

    .line 3559
    .local v13, "options":Landroid/app/ActivityOptions;
    move/from16 v12, p3

    invoke-virtual {v13, v12}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 3561
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v14, v0, :cond_0

    .line 3570
    const/4 v0, 0x3

    invoke-virtual {v13, v0}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 3574
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 3575
    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 3577
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    .line 3579
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3574
    move-object v5, v14

    move-object v12, v0

    move-object/from16 v18, v13

    move/from16 v13, v17

    .end local v13    # "options":Landroid/app/ActivityOptions;
    .local v18, "options":Landroid/app/ActivityOptions;
    :try_start_1
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v16, v0

    .line 3585
    goto :goto_3

    .line 3583
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3580
    :catch_1
    move-exception v0

    goto :goto_1

    .line 3583
    .end local v18    # "options":Landroid/app/ActivityOptions;
    .restart local v13    # "options":Landroid/app/ActivityOptions;
    :catch_2
    move-exception v0

    move-object/from16 v18, v13

    .line 3584
    .end local v13    # "options":Landroid/app/ActivityOptions;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v18    # "options":Landroid/app/ActivityOptions;
    :goto_0
    const-string v2, "StatusBar"

    const-string v3, "Unable to start activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_2

    .line 3580
    .end local v18    # "options":Landroid/app/ActivityOptions;
    .restart local v13    # "options":Landroid/app/ActivityOptions;
    :catch_3
    move-exception v0

    move-object/from16 v18, v13

    .line 3581
    .end local v13    # "options":Landroid/app/ActivityOptions;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "options":Landroid/app/ActivityOptions;
    :goto_1
    const-string v2, "StatusBar"

    const-string v3, "Unable to start activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3585
    .end local v0    # "e":Landroid/os/RemoteException;
    nop

    .line 3587
    :goto_2
    move/from16 v0, v16

    .end local v16    # "result":I
    .local v0, "result":I
    :goto_3
    if-eqz v15, :cond_1

    .line 3588
    invoke-interface {v15, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    .line 3590
    :cond_1
    return-void
.end method

.method static synthetic lambda$startActivityDismissingKeyguard$25(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1
    .param p0, "callback"    # Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .line 3592
    if-eqz p0, :cond_0

    .line 3593
    const/16 v0, -0x60

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    .line 3595
    :cond_0
    return-void
.end method

.method public static synthetic lambda$startNotificationGutsIntent$47(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 6303
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return-void
.end method

.method public static synthetic lambda$startNotificationGutsIntent$48(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "appUid"    # I

    .line 6295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 6296
    invoke-virtual {v0, p1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    .line 6298
    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 6297
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    .line 6299
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 6297
    invoke-virtual {v0, v1, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)I

    move-result v0

    .line 6300
    .local v0, "launchResult":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(I)V

    .line 6301
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldCollapse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6303
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$HfCjXLViXn5xGrfpQAK71zfjh1c;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$HfCjXLViXn5xGrfpQAK71zfjh1c;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->post(Ljava/lang/Runnable;)Z

    .line 6306
    :cond_0
    return-void
.end method

.method public static synthetic lambda$startNotificationGutsIntent$49(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "appUid"    # I

    .line 6294
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ZpC8EsuFvXnYOZmShyZCYHtLgho;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ZpC8EsuFvXnYOZmShyZCYHtLgho;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 6307
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$startPendingIntentDismissingKeyguard$50(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 6428
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6430
    goto :goto_0

    .line 6429
    :catch_0
    move-exception v0

    .line 6432
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v8

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6440
    goto :goto_1

    .line 6434
    :catch_1
    move-exception v0

    .line 6437
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending intent failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6441
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 6444
    :cond_0
    return-void
.end method

.method public static synthetic lambda$startPendingIntentDismissingKeyguard$51(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 6422
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$YV5FOHWGodJmWdhJO6XUeDYVGBw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$YV5FOHWGodJmWdhJO6XUeDYVGBw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6444
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$updateHideIconsForBouncer$20(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 2573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 2574
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 2575
    return-void
.end method

.method public static synthetic lambda$updateMediaMetaData$17(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 2126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    .line 2128
    const-string v0, "StatusBar"

    const-string v1, "not set backdrop gone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    return-void

    .line 2132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    .line 2133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 2136
    return-void
.end method

.method public static synthetic lambda$updateResources$27(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 3897
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    return-void
.end method

.method public static synthetic lambda$updateResources$28(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 3913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources()V

    return-void
.end method

.method public static synthetic lambda$updateTheme$38(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V
    .locals 3
    .param p1, "useDarkTheme"    # Z

    .line 4695
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v1, "com.android.systemui.theme.dark"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4696
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v2

    .line 4695
    invoke-interface {v0, v1, p1, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4699
    goto :goto_0

    .line 4697
    :catch_0
    move-exception v0

    .line 4698
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar"

    const-string v2, "Can\'t change theme"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4700
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private logStateToEventlog()V
    .locals 12

    .line 4002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 4003
    .local v0, "isShowing":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v7

    .line 4004
    .local v7, "isOccluded":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v8

    .line 4005
    .local v8, "isBouncerShowing":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v9

    .line 4006
    .local v9, "isSecure":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v10

    .line 4007
    .local v10, "canSkipBouncer":Z
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLoggingFingerprint(IZZZZZ)I

    move-result v11

    .line 4013
    .local v11, "stateFingerprint":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    if-eq v11, v1, :cond_3

    .line 4014
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-nez v1, :cond_0

    .line 4015
    new-instance v1, Landroid/metrics/LogMaker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 4017
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    .line 4018
    if-eqz v8, :cond_1

    const/16 v3, 0xc5

    goto :goto_0

    :cond_1
    const/16 v3, 0xc4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 4019
    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 4020
    invoke-virtual {v2, v9}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 4017
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4021
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    .line 4022
    nop

    .line 4023
    nop

    .line 4024
    nop

    .line 4025
    nop

    .line 4026
    nop

    .line 4021
    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/EventLogTags;->writeSysuiStatusBarState(IIIIII)V

    .line 4027
    iput v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastLoggedStateFingerprint:I

    .line 4029
    :cond_3
    return-void
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 1
    .param p1, "vis"    # I

    .line 3289
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDispatchedSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 3290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V

    .line 3291
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDispatchedSystemUiVisibility:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3294
    :cond_0
    goto :goto_0

    .line 3293
    :catch_0
    move-exception v0

    .line 3295
    :goto_0
    return-void
.end method

.method private onLaunchTransitionFadingEnded()V
    .locals 2

    .line 4389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4391
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 4392
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runLaunchTransitionEndRunnable()V

    .line 4393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    .line 4394
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 4395
    return-void
.end method

.method private onLaunchTransitionTimeout()V
    .locals 3

    .line 4482
    const-string v0, "StatusBar"

    const-string v1, "Launch transition: Timeout!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4484
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 4485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 4487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 4490
    return-void
.end method

.method private onThemeChanged()V
    .locals 7

    .line 1381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->reevaluateStyles()V

    .line 1384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onThemeChanged()V

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged()V

    .line 1388
    :cond_0
    nop

    .line 1389
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a01d7

    .line 1390
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1393
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0a01e6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v6

    .line 1389
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/SystemUIFactory;->createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1397
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDozing(Z)V

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_2

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onThemeChanged()V

    .line 1403
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    instance-of v0, v0, Lcom/android/systemui/AutoReinflateContainer;

    if-eqz v0, :cond_3

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/AutoReinflateContainer;

    invoke-virtual {v0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 1407
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    if-eqz v0, :cond_4

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1411
    :cond_4
    return-void
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1542
    .local p1, "hideAnimatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$KQa4APbeUwa8y5-0vNa3y3HWdvw;

    .local v0, "animationFinishAction":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$KQa4APbeUwa8y5-0vNa3y3HWdvw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1546
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1547
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1548
    return-void

    .line 1552
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 1556
    const/16 v1, 0xa

    .line 1557
    .local v1, "rowDelayDecrement":I
    const/16 v2, 0x8c

    .line 1558
    .local v2, "currentDelay":I
    const/16 v3, 0xb4

    .line 1559
    .local v3, "totalDelay":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1560
    .local v4, "numItems":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 1561
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/view/View;

    .line 1562
    .local v12, "view":Landroid/view/View;
    const/4 v6, 0x0

    .line 1563
    .local v6, "endRunnable":Ljava/lang/Runnable;
    if-nez v5, :cond_1

    .line 1564
    move-object v6, v0

    .line 1566
    .end local v6    # "endRunnable":Ljava/lang/Runnable;
    .local v13, "endRunnable":Ljava/lang/Runnable;
    :cond_1
    move-object v13, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const-wide/16 v10, 0x104

    move-object v7, v12

    move-object v8, v13

    move v9, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    .line 1567
    const/16 v6, 0x32

    sub-int v7, v2, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1568
    add-int/2addr v3, v2

    .line 1560
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "endRunnable":Ljava/lang/Runnable;
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1570
    .end local v5    # "i":I
    :cond_2
    return-void
.end method

.method private releaseGestureWakeLock()V
    .locals 1

    .line 4558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4561
    :cond_0
    return-void
.end method

.method private removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 6260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$2xdM8wRJCiVKDkp_zrTL90OeMJU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$2xdM8wRJCiVKDkp_zrTL90OeMJU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 6271
    return-void
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .line 3211
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_0

    .line 3213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->scheduleAutohide()V

    .line 3214
    const-string v0, "StatusBar"

    const-string v1, "resumeSuspendedAutohide:call mCheckBarModes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3217
    :cond_0
    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .locals 2

    .line 4493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4498
    .local v0, "r":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4499
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4501
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private runPostCollapseRunnables()V
    .locals 4

    .line 2801
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2802
    .local v0, "clonedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2803
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2804
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2805
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 2804
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2807
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    .line 2808
    return-void
.end method

.method private scheduleAutohide()V
    .locals 4

    .line 3239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->cancelAutohide()V

    .line 3240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x8ca

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3241
    return-void
.end method

.method private setUpHighlightHintInfo()V
    .locals 2

    .line 7060
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->showOvalLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    .line 7063
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setUpHighlightHintInfo()V

    .line 7065
    :cond_0
    return-void
.end method

.method private shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 6451
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    .line 6452
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    .line 6453
    return v2

    .line 6455
    :cond_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 6456
    return v2

    .line 6458
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private shouldCollapse()Z
    .locals 1

    .line 6231
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationPending()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private showBouncerIfKeyguard()V
    .locals 3

    .line 4846
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 4847
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4848
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer(Z)V

    .line 4850
    :cond_1
    return-void
.end method

.method private showDemoHighLight(ZZ)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "start"    # Z

    .line 4238
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " showDemoHighLight show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 4240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 4241
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 4242
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/16 v1, 0x32

    if-eqz p1, :cond_2

    .line 4243
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    if-nez v2, :cond_0

    .line 4244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDemoNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    .line 4246
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 4247
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 4248
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setChronometerBase(J)Landroid/app/Notification$Builder;

    .line 4249
    if-eqz p2, :cond_1

    .line 4250
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setChronometerState(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 4252
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setChronometerState(I)Landroid/app/Notification$Builder;

    .line 4255
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 4256
    .local v2, "notification":Landroid/app/Notification;
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4257
    const-string v1, "StatusBar"

    const-string v3, " send demo HighlightHint"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    .end local v2    # "notification":Landroid/app/Notification;
    goto :goto_1

    .line 4259
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    .line 4260
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4261
    const-string v1, "StatusBar"

    const-string v2, " cancel demo HighlightHint"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_3
    :goto_1
    return-void
.end method

.method private startActivity(Landroid/content/Intent;ZZI)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z
    .param p4, "flags"    # I

    .line 2282
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    .line 2283
    return-void
.end method

.method private suspendAutohide()V
    .locals 3

    .line 3220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3224
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideNavBar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3226
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohideSuspended:Z

    goto :goto_0

    .line 3228
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/high16 v2, 0xc000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohideSuspended:Z

    .line 3231
    :goto_0
    return-void
.end method

.method private updateDozing()V
    .locals 6

    .line 5657
    const-string v0, "StatusBar#updateDozing"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5659
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 5660
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 5662
    .local v0, "dozing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v3

    .line 5665
    .local v3, "alwaysOn":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 5667
    const/4 v0, 0x0

    .line 5669
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eq v4, v0, :cond_6

    .line 5670
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    .line 5671
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {v4, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAodShowing(Z)V

    .line 5672
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setDozing(Z)V

    .line 5673
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setDozing(Z)V

    .line 5674
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    instance-of v1, v1, Lcom/android/systemui/doze/DozeReceiver;

    if-eqz v1, :cond_5

    .line 5675
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/doze/DozeReceiver;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/doze/DozeReceiver;->setDozing(Z)V

    .line 5677
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 5678
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 5679
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 5681
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 5682
    return-void
.end method

.method private updateDozingState()V
    .locals 5

    .line 4733
    const-string v0, "dozing"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 4734
    const-string v0, "StatusBar#updateDozingState"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4736
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4737
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isGoingToSleepVisibleNotOccluded()Z

    move-result v0

    .line 4738
    .local v0, "sleepingFromKeyguard":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->access$1300(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 4739
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->shouldAnimateScreenOff()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 4741
    .local v1, "animate":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZLandroid/graphics/PointF;)V

    .line 4742
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozing(Z)V

    .line 4743
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDozing(Z)V

    .line 4744
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(ZZ)V

    .line 4745
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 4746
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 4747
    return-void
.end method

.method private updateEmptyShadeView()V
    .locals 2

    .line 1865
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 1867
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1868
    .local v0, "showEmptyShadeView":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showEmptyShadeView(Z)V

    .line 1869
    return-void
.end method

.method private updateHideIconsForBouncer(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .line 2562
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTopHidesStatusBar:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2564
    .local v0, "hideBecauseApp":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 2565
    .local v3, "hideBecauseKeyguard":Z
    :goto_1
    if-nez v0, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    .line 2566
    .local v1, "shouldHideIconsForBouncer":Z
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-eq v4, v1, :cond_6

    .line 2567
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    .line 2568
    if-nez v1, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerWasShowingWhenHidden:Z

    if-eqz v4, :cond_5

    .line 2571
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 2572
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$8WtsoY0NddRG3dxsipZpoTUArXk;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$8WtsoY0NddRG3dxsipZpoTUArXk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 2577
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 2580
    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    .line 2581
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerWasShowingWhenHidden:Z

    .line 2583
    :cond_7
    return-void
.end method

.method private updateIsKeyguard()Z
    .locals 6

    .line 4326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4333
    .local v0, "wakeAndUnlocking":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozingRequested:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v3, :cond_1

    .line 4334
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenFullyOff()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    if-eqz v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 4335
    .local v3, "keyguardForDozing":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardRequested:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    .line 4336
    .local v2, "shouldBeKeyguard":Z
    :goto_2
    if-eqz v3, :cond_5

    .line 4337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    .line 4339
    :cond_5
    if-eqz v2, :cond_7

    .line 4340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 4341
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    goto :goto_3

    .line 4344
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguardImpl()V

    .line 4349
    :goto_3
    return v1

    .line 4347
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguardImpl()Z

    move-result v1

    return v1
.end method

.method private updateLockScreenDecorUp()V
    .locals 2

    .line 4931
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenDecorUp:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 4932
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_0

    .line 4933
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenDecorUp:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4935
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenDecorUp:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4938
    :cond_1
    :goto_0
    return-void
.end method

.method private updateNavigationBar()V
    .locals 4

    .line 6656
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNavigationBar, mShowNavBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNavBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mButtonLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mButtonLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastUpdateNavBarTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6658
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNavBar:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mButtonLock:Z

    if-nez v0, :cond_1

    .line 6659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 6660
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createNavigationBar()V

    goto :goto_0

    .line 6664
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 6668
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 6675
    :cond_2
    :goto_0
    return-void
.end method

.method private updatePanelExpansionForKeyguard()V
    .locals 2

    .line 4378
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 4380
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantExpandNotificationsPanel()V

    goto :goto_0

    .line 4383
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4384
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 4386
    :cond_1
    :goto_0
    return-void
.end method

.method private updatePublicMode()V
    .locals 7

    .line 4614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 4615
    .local v0, "showingKeyguard":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 4617
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    .line 4616
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4622
    .local v2, "devicePublic":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentProfiles()Landroid/util/SparseArray;

    move-result-object v3

    .line 4623
    .local v3, "currentProfiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_1
    move v1, v4

    .end local v4    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_2

    .line 4624
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 4625
    .local v4, "userId":I
    move v5, v2

    .line 4626
    .local v5, "isProfilePublic":Z
    if-nez v2, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v6

    if-eq v4, v6, :cond_1

    .line 4631
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4632
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4633
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6, v4}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v5

    .line 4636
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v6, v5, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->setLockscreenPublicMode(ZI)V

    .line 4623
    .end local v4    # "userId":I
    .end local v5    # "isProfilePublic":Z
    add-int/lit8 v4, v1, -0x1

    .end local v1    # "i":I
    .local v4, "i":I
    goto :goto_1

    .line 4638
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method private updateQsExpansionEnabled()V
    .locals 3

    .line 1737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 1739
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1737
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 1744
    return-void
.end method

.method private updateReportRejectedTouchVisibility()V
    .locals 3

    .line 2164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2165
    return-void

    .line 2167
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    .line 2168
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isReportingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 2167
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2169
    return-void
.end method

.method private updateSpeedBumpIndex()V
    .locals 9

    .line 1872
    const/4 v0, 0x0

    .line 1873
    .local v0, "speedBumpIndex":I
    const/4 v1, 0x0

    .line 1874
    .local v1, "currentIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    .line 1875
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v0

    move v0, v3

    .local v0, "i":I
    .local v1, "speedBumpIndex":I
    .local v4, "currentIndex":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1876
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1877
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    instance-of v6, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v6, :cond_0

    .line 1878
    goto :goto_1

    .line 1880
    :cond_0
    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1881
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    add-int/lit8 v4, v4, 0x1

    .line 1882
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v7

    .line 1883
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 1882
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1884
    move v1, v4

    .line 1875
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1887
    .end local v0    # "i":I
    :cond_2
    if-ne v1, v2, :cond_3

    const/4 v3, 0x1

    nop

    :cond_3
    move v0, v3

    .line 1888
    .local v0, "noAmbient":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex(IZ)V

    .line 1889
    return-void
.end method

.method private userAutohide()V
    .locals 4

    .line 3264
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->cancelAutohide()V

    .line 3266
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar"

    const-string v1, " userAutohide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3269
    return-void
.end method

.method private validToStartInCallActivity(Landroid/app/PendingIntent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 6208
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPhoneState:I

    if-eqz v0, :cond_0

    .line 6209
    const-string v0, ""

    .line 6211
    .local v0, "cmp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 6213
    goto :goto_0

    .line 6212
    :catch_0
    move-exception v1

    .line 6214
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "InCallActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6215
    const/4 v1, 0x1

    return v1

    .line 6218
    .end local v0    # "cmp":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private vibrateForCameraGesture()V
    .locals 3

    .line 5447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 5448
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .line 3308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3309
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3308
    return-object v0
.end method


# virtual methods
.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 4402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4403
    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 1747
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;)V

    .line 1750
    :cond_0
    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    .line 2727
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    .line 2728
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 2757
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    .line 2759
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .line 2762
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    .line 2763
    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "delayed"    # Z

    .line 2766
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZF)V

    .line 2767
    return-void
.end method

.method public animateCollapsePanels(IZZF)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "delayed"    # Z
    .param p4, "speedUpFactor"    # F

    .line 2771
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    .line 2772
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 2773
    return-void

    .line 2775
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 2776
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateCollapse(): mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    .line 2782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 2784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 2789
    :cond_2
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatusBarWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " canPanelBeCollapsed(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2790
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canPanelBeCollapsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2789
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 2795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 2796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    .line 2798
    :cond_3
    return-void
.end method

.method public animateCollapseQuickSettings()V
    .locals 4

    .line 2872
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_0

    .line 2873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    .line 2875
    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 1

    .line 2813
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2814
    return-void

    .line 2817
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithoutQs()V

    .line 2820
    return-void
.end method

.method public animateExpandNotificationsPanelWithVelocity(I)V
    .locals 2
    .param p1, "velocity"    # I

    .line 2826
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2827
    return-void

    .line 2830
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(ZI)V

    .line 2833
    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 4
    .param p1, "subPanel"    # Ljava/lang/String;

    .line 2839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2840
    return-void

    .line 2844
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    return-void

    .line 2846
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 2848
    .local v0, "isSimPin":Z
    const-string v1, "OP_Swipe_Notch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2849
    if-eqz v0, :cond_2

    .line 2850
    return-void

    .line 2853
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2854
    return-void

    .line 2857
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    const-string v1, "StatusBar"

    const-string v2, "expand qs for notch swipe"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 2859
    return-void

    .line 2863
    :cond_5
    if-eqz p1, :cond_6

    .line 2864
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSPanel;->openDetails(Ljava/lang/String;)V

    .line 2866
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithQs()V

    .line 2869
    return-void
.end method

.method public animateKeyguardUnoccluding()V
    .locals 2

    .line 4467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpandedFraction(F)V

    .line 4468
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    .line 4469
    return-void
.end method

.method public appTransitionCancelled()V
    .locals 2

    .line 5497
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 5498
    return-void
.end method

.method public appTransitionFinished()V
    .locals 2

    .line 5502
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 5503
    return-void
.end method

.method public areNotificationsHidden()Z
    .locals 1

    .line 1896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->areNotificationsHiddenInShade()Z

    move-result v0

    return v0
.end method

.method awakenDreams()V
    .locals 1

    .line 6327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->awakenDreamsAsync()V

    .line 6328
    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .locals 4

    .line 4564
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .line 6339
    const/16 v0, 0x3ff

    .line 6340
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 6341
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 6342
    return-void
.end method

.method checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "windowState"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .line 3115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3119
    .local v0, "anim":Z
    :goto_0
    const-class v3, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 3120
    .local v3, "hlhController":Lcom/android/systemui/statusbar/phone/HighlightHintController;
    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->showOvalLayout()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3121
    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 3122
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v4

    if-ne p3, v4, :cond_1

    .line 3123
    const/4 p1, 0x7

    .line 3126
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setCameraNotchIgnoring(Z)V

    .line 3128
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHighlightColor:I

    invoke-virtual {p3, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IIZ)V

    .line 3130
    return-void

    .line 3132
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSetting:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v4

    if-ne p3, v4, :cond_2

    .line 3133
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOrientation:I

    if-ne v4, v1, :cond_2

    .line 3134
    const/16 p1, 0xb

    .line 3140
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v4

    if-ne p3, v4, :cond_4

    .line 3141
    const/16 v4, 0xb

    if-ne p1, v4, :cond_3

    .line 3142
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setCameraNotchIgnoring(Z)V

    goto :goto_1

    .line 3144
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setCameraNotchIgnoring(Z)V

    .line 3148
    :cond_4
    :goto_1
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3149
    return-void
.end method

.method checkBarModes()V
    .locals 3

    .line 3101
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHighHintDemoMode:Z

    if-nez v0, :cond_0

    return-void

    .line 3103
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 3104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    .line 3103
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3105
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 3106
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    .line 3107
    return-void
.end method

.method checkUserAutohide(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3254
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 3257
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    .line 3258
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3259
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAutohide()V

    .line 3261
    :cond_0
    return-void
.end method

.method public clearAllNotifications()V
    .locals 13

    .line 1480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 1482
    .local v0, "numChildren":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1483
    .local v1, "viewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1484
    .local v2, "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 1485
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1486
    .local v5, "child":Landroid/view/View;
    instance-of v6, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_6

    .line 1487
    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1488
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v7, 0x0

    .line 1489
    .local v7, "parentVisible":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v8

    .line 1490
    .local v8, "hasClipBounds":Z
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v9, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1491
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    .line 1493
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_3

    .line 1494
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    const/4 v7, 0x1

    goto :goto_1

    .line 1497
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    if-eqz v8, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    .line 1498
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_3

    .line 1499
    :cond_2
    const/4 v7, 0x1

    .line 1501
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v9

    .line 1502
    .local v9, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-eqz v9, :cond_6

    .line 1503
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1504
    .local v11, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1506
    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1507
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v8

    .line 1508
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v12

    if-nez v12, :cond_5

    if-eqz v8, :cond_4

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpRect:Landroid/graphics/Rect;

    .line 1509
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-lez v12, :cond_5

    .line 1510
    :cond_4
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    .end local v11    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_5
    goto :goto_2

    .line 1484
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "parentVisible":Z
    .end local v8    # "hasClipBounds":Z
    .end local v9    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1517
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1518
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    .line 1519
    return-void

    .line 1522
    :cond_8
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$o1eN-gM-et87jKZi8ClIc3JPbBA;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$o1eN-gM-et87jKZi8ClIc3JPbBA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 1537
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->performDismissAllAnimations(Ljava/util/ArrayList;)V

    .line 1539
    return-void
.end method

.method public clearNotificationEffects()V
    .locals 2

    .line 6511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OPNotificationController;->keepLightBlink(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6512
    return-void

    .line 6516
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6519
    goto :goto_0

    .line 6517
    :catch_0
    move-exception v0

    .line 6520
    :goto_0
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 1759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->clickTile(Landroid/content/ComponentName;)V

    .line 1760
    return-void
.end method

.method public collapsePanel(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 6235
    if-eqz p1, :cond_0

    .line 6236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel()Z

    goto :goto_0

    .line 6237
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPresenterFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6238
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 6239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    goto :goto_0

    .line 6241
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 6243
    :goto_0
    return-void
.end method

.method protected computeBarMode(IIIII)I
    .locals 3
    .param p1, "oldVis"    # I
    .param p2, "newVis"    # I
    .param p3, "transientFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "transparentFlag"    # I

    .line 3081
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(IIII)I

    move-result v0

    .line 3082
    .local v0, "oldMode":I
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBar;->barMode(IIII)I

    move-result v1

    .line 3083
    .local v1, "newMode":I
    if-ne v0, v1, :cond_0

    .line 3084
    const/4 v2, -0x1

    return v2

    .line 3086
    :cond_0
    return v1
.end method

.method protected computeStatusBarMode(II)I
    .locals 6
    .param p1, "oldVal"    # I
    .param p2, "newVal"    # I

    .line 3071
    const/high16 v3, 0x4000000

    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0x8

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeBarMode(IIIII)I

    move-result v0

    return v0
.end method

.method public createAndAddWindows()V
    .locals 0

    .line 3475
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->addStatusBarWindow()V

    .line 3476
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/phone/StatusBar$H;
    .locals 1

    .line 2277
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method protected createNavigationBar()V
    .locals 2

    .line 1307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1lxmukd3g368Ipe-wYASjfRCObk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1lxmukd3g368Ipe-wYASjfRCObk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarView:Landroid/view/View;

    .line 1317
    return-void
.end method

.method protected createUserSwitcher()V
    .locals 5

    .line 1463
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 1464
    const v3, 0x7f0a01e7

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 1466
    return-void
.end method

.method public disable(IIZ)V
    .locals 21
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2176
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    move/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result v2

    .line 2178
    .end local p2    # "state2":I
    .local v2, "state2":I
    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int v3, p3, v3

    .line 2179
    .end local p3    # "animate":Z
    .local v3, "animate":Z
    iget v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 2180
    .local v5, "old1":I
    xor-int v7, v1, v5

    .line 2181
    .local v7, "diff1":I
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    .line 2183
    iget v8, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 2184
    .local v8, "old2":I
    xor-int v9, v2, v8

    .line 2185
    .local v9, "diff2":I
    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    .line 2194
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2195
    .local v10, "flagdbg":Ljava/lang/StringBuilder;
    const-string v11, "disable<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    const/high16 v11, 0x10000

    and-int v12, v1, v11

    if-eqz v12, :cond_1

    const/16 v12, 0x45

    goto :goto_1

    :cond_1
    const/16 v12, 0x65

    :goto_1
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2197
    and-int v12, v7, v11

    const/16 v13, 0x20

    const/16 v14, 0x21

    if-eqz v12, :cond_2

    move v12, v14

    goto :goto_2

    :cond_2
    move v12, v13

    :goto_2
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2198
    const/high16 v12, 0x20000

    and-int v15, v1, v12

    const/16 v16, 0x69

    const/16 v17, 0x49

    if-eqz v15, :cond_3

    move/from16 v15, v17

    goto :goto_3

    :cond_3
    move/from16 v15, v16

    :goto_3
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2199
    and-int/2addr v12, v7

    if-eqz v12, :cond_4

    move v12, v14

    goto :goto_4

    :cond_4
    move v12, v13

    :goto_4
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2200
    const/high16 v12, 0x40000

    and-int v15, v1, v12

    if-eqz v15, :cond_5

    const/16 v15, 0x41

    goto :goto_5

    :cond_5
    const/16 v15, 0x61

    :goto_5
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2201
    and-int v15, v7, v12

    if-eqz v15, :cond_6

    move v15, v14

    goto :goto_6

    :cond_6
    move v15, v13

    :goto_6
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2202
    const/high16 v15, 0x100000

    and-int v18, v1, v15

    const/16 v19, 0x53

    if-eqz v18, :cond_7

    move/from16 v4, v19

    goto :goto_7

    :cond_7
    const/16 v18, 0x73

    move/from16 v4, v18

    :goto_7
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2203
    and-int v4, v7, v15

    if-eqz v4, :cond_8

    move v4, v14

    goto :goto_8

    :cond_8
    move v4, v13

    :goto_8
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2204
    const/high16 v4, 0x400000

    and-int/2addr v4, v1

    if-eqz v4, :cond_9

    const/16 v4, 0x42

    goto :goto_9

    :cond_9
    const/16 v4, 0x62

    :goto_9
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2205
    const/high16 v4, 0x400000

    and-int/2addr v4, v7

    if-eqz v4, :cond_a

    move v4, v14

    goto :goto_a

    :cond_a
    move v4, v13

    :goto_a
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2206
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_b

    const/16 v4, 0x48

    goto :goto_b

    :cond_b
    const/16 v4, 0x68

    :goto_b
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2207
    const/high16 v4, 0x200000

    and-int/2addr v4, v7

    if-eqz v4, :cond_c

    move v4, v14

    goto :goto_c

    :cond_c
    move v4, v13

    :goto_c
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2208
    const/high16 v4, 0x1000000

    and-int v15, v1, v4

    if-eqz v15, :cond_d

    const/16 v15, 0x52

    goto :goto_d

    :cond_d
    const/16 v15, 0x72

    :goto_d
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2209
    and-int v15, v7, v4

    if-eqz v15, :cond_e

    move v15, v14

    goto :goto_e

    :cond_e
    move v15, v13

    :goto_e
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2210
    const/high16 v15, 0x800000

    and-int/2addr v15, v1

    if-eqz v15, :cond_f

    const/16 v15, 0x43

    goto :goto_f

    :cond_f
    const/16 v15, 0x63

    :goto_f
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2211
    const/high16 v15, 0x800000

    and-int/2addr v15, v7

    if-eqz v15, :cond_10

    move v15, v14

    goto :goto_10

    :cond_10
    move v15, v13

    :goto_10
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2212
    const/high16 v15, 0x2000000

    and-int/2addr v15, v1

    if-eqz v15, :cond_11

    :goto_11
    move/from16 v15, v19

    goto :goto_12

    :cond_11
    const/16 v19, 0x73

    goto :goto_11

    :goto_12
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2213
    const/high16 v15, 0x2000000

    and-int/2addr v15, v7

    if-eqz v15, :cond_12

    move v15, v14

    goto :goto_13

    :cond_12
    move v15, v13

    :goto_13
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2214
    const-string v15, "> disable2<"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    and-int/lit8 v15, v2, 0x1

    if-eqz v15, :cond_13

    const/16 v15, 0x51

    goto :goto_14

    :cond_13
    const/16 v15, 0x71

    :goto_14
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2216
    and-int/lit8 v15, v9, 0x1

    if-eqz v15, :cond_14

    move v15, v14

    goto :goto_15

    :cond_14
    move v15, v13

    :goto_15
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2217
    and-int/lit8 v15, v2, 0x2

    if-eqz v15, :cond_15

    move/from16 v15, v17

    goto :goto_16

    :cond_15
    move/from16 v15, v16

    :goto_16
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2218
    and-int/lit8 v15, v9, 0x2

    if-eqz v15, :cond_16

    move v15, v14

    goto :goto_17

    :cond_16
    move v15, v13

    :goto_17
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2219
    and-int/lit8 v15, v2, 0x4

    if-eqz v15, :cond_17

    const/16 v15, 0x4e

    goto :goto_18

    :cond_17
    const/16 v15, 0x6e

    :goto_18
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2220
    and-int/lit8 v15, v9, 0x4

    if-eqz v15, :cond_18

    move v15, v14

    goto :goto_19

    :cond_18
    move v15, v13

    :goto_19
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2222
    const/high16 v15, 0x40000000    # 2.0f

    and-int v16, v2, v15

    if-eqz v16, :cond_19

    const/16 v16, 0x56

    :goto_1a
    move/from16 v6, v16

    goto :goto_1b

    :cond_19
    const/16 v16, 0x76

    goto :goto_1a

    :goto_1b
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2223
    and-int v6, v9, v15

    if-eqz v6, :cond_1a

    move v13, v14

    nop

    :cond_1a
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2225
    const/16 v6, 0x3e

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2226
    const-string v6, "StatusBar"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    and-int v6, v7, v11

    if-eqz v6, :cond_1b

    .line 2229
    and-int v6, v1, v11

    if-eqz v6, :cond_1b

    .line 2230
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 2234
    :cond_1b
    and-int v6, v7, v4

    if-eqz v6, :cond_1c

    .line 2235
    and-int/2addr v4, v1

    if-eqz v4, :cond_1c

    .line 2237
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v6, 0x3fc

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 2238
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 2242
    :cond_1c
    and-int v4, v7, v12

    if-eqz v4, :cond_1e

    .line 2243
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    and-int v6, v1, v12

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_1c

    :cond_1d
    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/NotificationEntryManager;->setDisableNotificationAlerts(Z)V

    .line 2247
    :cond_1e
    and-int/lit8 v4, v9, 0x1

    if-eqz v4, :cond_1f

    .line 2248
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 2251
    :cond_1f
    and-int/lit8 v4, v9, 0x4

    if-eqz v4, :cond_20

    .line 2252
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 2253
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_20

    .line 2254
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 2258
    :cond_20
    and-int v4, v9, v15

    if-eqz v4, :cond_22

    .line 2259
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 2260
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 2261
    and-int v6, v2, v15

    if-eqz v6, :cond_21

    const/16 v6, 0x8

    goto :goto_1d

    .line 2260
    :cond_21
    const/4 v6, 0x0

    :goto_1d
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2265
    :cond_22
    return-void
.end method

.method protected dismissKeyboardShortcuts()V
    .locals 0

    .line 6375
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 6376
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 2

    .line 6346
    const/16 v0, 0x403

    .line 6347
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 6348
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 6349
    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 1
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .line 3733
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 3734
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 4146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "sysui_demo_allowed"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    .line 4150
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoModeAllowed:Z

    if-nez v0, :cond_2

    return-void

    .line 4151
    :cond_2
    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4152
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    goto :goto_1

    .line 4153
    :cond_3
    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4154
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    .line 4155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto :goto_1

    .line 4156
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-nez v0, :cond_5

    .line 4158
    const-string v0, "enter"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4160
    :cond_5
    :goto_1
    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v1

    .line 4161
    .local v0, "modeChange":Z
    :goto_3
    if-nez v0, :cond_8

    const-string/jumbo v3, "volume"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v3, :cond_9

    .line 4162
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/volume/VolumeComponent;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4164
    :cond_9
    if-nez v0, :cond_a

    const-string v3, "clock"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4165
    :cond_a
    const v3, 0x7f0a00c1

    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4167
    :cond_b
    if-nez v0, :cond_c

    const-string v3, "battery"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4168
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4170
    :cond_d
    if-nez v0, :cond_e

    const-string v3, "status"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "voice"

    .line 4172
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4175
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4177
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v3, :cond_11

    if-nez v0, :cond_10

    const-string v3, "network"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4178
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4180
    :cond_11
    const/4 v3, 0x4

    if-nez v0, :cond_12

    const-string v4, "notifications"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4181
    :cond_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v4, :cond_13

    const/4 v4, 0x0

    goto :goto_4

    .line 4182
    :cond_13
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v5, 0x7f0a029c

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4183
    .local v4, "notifications":Landroid/view/View;
    :goto_4
    if-eqz v4, :cond_15

    .line 4184
    const-string/jumbo v5, "visible"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4185
    .local v5, "visible":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoMode:Z

    if-eqz v6, :cond_14

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    move v6, v3

    goto :goto_5

    :cond_14
    move v6, v2

    .line 4186
    .local v6, "vis":I
    :goto_5
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4189
    .end local v4    # "notifications":Landroid/view/View;
    .end local v5    # "visible":Ljava/lang/String;
    .end local v6    # "vis":I
    :cond_15
    const-string v4, "bars"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4190
    const-string v4, "mode"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4191
    .local v4, "mode":Ljava/lang/String;
    const-string v5, "opaque"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_16

    .line 4196
    move v1, v2

    goto :goto_6

    .line 4192
    :cond_16
    const-string/jumbo v2, "translucent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x2

    goto :goto_6

    .line 4193
    :cond_17
    const-string v2, "semi-transparent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_6

    .line 4194
    :cond_18
    const-string/jumbo v1, "transparent"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4196
    move v1, v3

    goto :goto_6

    .line 4195
    :cond_19
    const-string/jumbo v1, "warning"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x5

    goto :goto_6

    .line 4196
    :cond_1a
    move v1, v6

    .line 4197
    .local v1, "barMode":I
    :goto_6
    if-eq v1, v6, :cond_1c

    .line 4198
    const/4 v2, 0x1

    .line 4199
    .local v2, "animate":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v3, :cond_1b

    .line 4200
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4202
    :cond_1b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v3, :cond_1c

    .line 4203
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4207
    .end local v1    # "barMode":I
    .end local v2    # "animate":Z
    .end local v4    # "mode":Ljava/lang/String;
    :cond_1c
    if-nez v0, :cond_1d

    const-string v1, "operator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4208
    :cond_1d
    const v1, 0x7f0a02e8

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4211
    :cond_1e
    const-string v1, "highlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4212
    const-string v1, "mode"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4213
    .local v1, "mode":Ljava/lang/String;
    const-string v2, "enable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHighHintDemoMode:Z

    .line 4215
    const-string/jumbo v2, "type"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4216
    .local v2, "type":Ljava/lang/String;
    const-string v3, "show"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 4218
    .local v3, "show":Z
    const-string v4, "chronometer"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4219
    .local v4, "chronometer":Ljava/lang/String;
    const-string v5, "start"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 4221
    .local v5, "start":Z
    invoke-direct {p0, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->showDemoHighLight(ZZ)V

    .line 4224
    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "show":Z
    .end local v4    # "chronometer":Ljava/lang/String;
    .end local v5    # "start":Z
    :cond_1f
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3315
    :try_start_0
    const-string v1, "Current Status Bar state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayMetrics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 3320
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 3321
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3319
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3322
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3324
    const-string v0, "  mInteractingWindows="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3325
    const-string v0, "  mStatusBarWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3326
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3328
    const-string v0, "  mSystemUiVisibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3329
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-eqz v0, :cond_0

    .line 3331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBackdrop: visibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BackDropView;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3335
    :cond_0
    const-string v0, "  mStatusBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3336
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3337
    const-string v0, "  mDozing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3338
    const-string v0, "  mZenMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 3340
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    .line 3339
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    .line 3344
    const-string v0, "mStatusBarView"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3346
    :cond_1
    const-string v0, "  StatusBarWindowView: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_2

    .line 3348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3351
    :cond_2
    const-string v0, "  mMediaManager: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v0, :cond_3

    .line 3353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3357
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    if-eqz v0, :cond_4

    .line 3358
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3360
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3364
    :cond_4
    const-string v0, "  Panels: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_5

    .line 3366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mNotificationPanel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 3367
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3366
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3368
    const-string v0, "      "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " PanelView alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " PanelView visibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3375
    :cond_5
    const-string v0, "  mStackScroller: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_6

    .line 3377
    const-string v0, "      "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3380
    :cond_6
    const-string v0, "  Theme:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_7

    .line 3382
    const-string v0, "    overlay manager not initialized!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3384
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    dark overlay on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isUsingDarkTheme()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3386
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const v1, 0x7f12042a

    if-ne v0, v1, :cond_8

    const/4 v2, 0x1

    nop

    :cond_8
    move v1, v2

    .line 3387
    .local v1, "lightWpTheme":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    light wallpaper theme: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3389
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    .line 3391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-eqz v0, :cond_9

    .line 3392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->dump(Ljava/io/PrintWriter;)V

    .line 3395
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_a

    .line 3396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3399
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_b

    .line 3400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3403
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_c

    .line 3404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dump(Ljava/io/PrintWriter;)V

    .line 3408
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    monitor-enter v2

    .line 3409
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, p2, v3}, Lcom/android/systemui/statusbar/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3410
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    if-eqz v0, :cond_d

    .line 3430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    .line 3432
    :cond_d
    const-string v0, "  mHeadsUpManager: null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3434
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v0, :cond_e

    .line 3435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 3437
    :cond_e
    const-string v0, "  mGroupManager: null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3440
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_f

    .line 3441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3444
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 3445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3448
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/classifier/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    .line 3449
    invoke-static {p2}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 3451
    const-string v0, "SharedPreferences:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3453
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3454
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_3

    .line 3457
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraNotchIgnoreSetting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSetting:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraNotchIgnoring="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoring:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    if-eqz v0, :cond_12

    .line 3462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    invoke-virtual {v0, p2}, Lcom/oneplus/notification/OPNotificationController;->dump(Ljava/io/PrintWriter;)V

    .line 3464
    :cond_12
    return-void

    .line 3410
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3322
    .end local v1    # "lightWpTheme":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public endAffordanceLaunch()V
    .locals 1

    .line 4795
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 4796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4797
    return-void
.end method

.method public executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;
    .param p3, "dismissShade"    # Z
    .param p4, "afterKeyguardGone"    # Z
    .param p5, "deferred"    # Z

    .line 3609
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$3kT9WhG4oT9COjMpNvgPAWbMLHA;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$3kT9WhG4oT9COjMpNvgPAWbMLHA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)V

    invoke-direct {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 3643
    return-void
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "beforeFading"    # Ljava/lang/Runnable;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .line 4419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 4420
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4421
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$eOhA9qFtP5-GpgbK7YVJu8mYx3I;

    .local v0, "hideRunnable":Ljava/lang/Runnable;
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$eOhA9qFtP5-GpgbK7YVJu8mYx3I;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    .line 4439
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4440
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4442
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4444
    :goto_0
    return-void
.end method

.method public fadeKeyguardWhilePulsing()V
    .locals 3

    .line 4451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyStartFading()V

    .line 4452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4454
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4455
    const-wide/16 v1, 0x60

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 4456
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$TKyBv2UrrBNQLwWLqCxuptz7v2M;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$TKyBv2UrrBNQLwWLqCxuptz7v2M;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4457
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4460
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4461
    return-void
.end method

.method public finishKeyguardFadingAway()V
    .locals 2

    .line 4607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    .line 4608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardDoneFading()V

    .line 4609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExpansionAffectsAlpha(Z)V

    .line 4610
    return-void
.end method

.method public forceHideBouncer()V
    .locals 1

    .line 6870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->forceHideBouncer()V

    .line 6871
    return-void
.end method

.method public geScrimtColor()I
    .locals 1

    .line 7102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getActivityLaunchAnimator()Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
    .locals 1

    .line 7108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    return-object v0
.end method

.method protected getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;
    .locals 1
    .param p1, "animationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 6463
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptionsInternal(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getActivityOptionsInternal(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .locals 2
    .param p1, "animationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 6471
    if-eqz p1, :cond_0

    .line 6472
    invoke-static {p1}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v0

    .local v0, "options":Landroid/app/ActivityOptions;
    goto :goto_0

    .line 6474
    .end local v0    # "options":Landroid/app/ActivityOptions;
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 6478
    .restart local v0    # "options":Landroid/app/ActivityOptions;
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 6479
    return-object v0
.end method

.method public getAmbientIndicationContainer()Landroid/view/View;
    .locals 1

    .line 2538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    return-object v0
.end method

.method public getBarState()I
    .locals 1

    .line 4293
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    return v0
.end method

.method protected getBouncerContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .line 2384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDisplayDensity()F
    .locals 1

    .line 3515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method getDisplayHeight()F
    .locals 1

    .line 3523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    return v0
.end method

.method getDisplayWidth()F
    .locals 1

    .line 3519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    return v0
.end method

.method public getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .locals 1

    .line 6909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    return-object v0
.end method

.method public getFingerprintUnlockController()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .locals 1

    .line 2961
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-object v0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    .line 2957
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method public getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    .line 6287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method public getGutsManager()Lcom/android/systemui/statusbar/NotificationGutsManager;
    .locals 1

    .line 6636
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 6727
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    return-object v0
.end method

.method public getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 1

    .line 5035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    return-object v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .line 5324
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .line 5328
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method public getMaxNotificationsWhileLocked(Z)I
    .locals 3
    .param p1, "recompute"    # Z

    .line 5008
    if-eqz p1, :cond_0

    .line 5009
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxAllowedKeyguardNotifications:I

    .line 5010
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->computeMaxKeyguardNotifications(I)I

    move-result v1

    .line 5009
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxKeyguardNotifications:I

    .line 5012
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxKeyguardNotifications:I

    return v0

    .line 5014
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxKeyguardNotifications:I

    return v0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    .line 5023
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNotificationLockscreenUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 1

    .line 3866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object v0
.end method

.method public getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1

    .line 2505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method public getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    .line 6618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method getRotation()I
    .locals 1

    .line 3527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .line 1622
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-gez v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1624
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105019d

    .line 1625
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 1627
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    return v0
.end method

.method protected getStatusBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .line 3076
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    return-object v0
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 1

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method protected getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 1324
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$sjd-NB4fQvJpW0ZlghyyFoEGyww;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$sjd-NB4fQvJpW0ZlghyyFoEGyww;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method public getWakefulnessState()I
    .locals 1

    .line 5442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    return v0
.end method

.method public goToKeyguard()V
    .locals 2

    .line 5316
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onGoToKeyguard()V

    .line 5318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    .line 5319
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    .line 5321
    :cond_0
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 7
    .param p1, "expandView"    # Landroid/view/View;

    .line 5100
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 5101
    return-void

    .line 5104
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    .line 5105
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 5106
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5107
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5108
    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 5111
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 5112
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5113
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 5116
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 5117
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 5118
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 5119
    invoke-virtual {v2}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v3

    .line 5120
    .local v2, "fullShadeNeedsBouncer":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 5121
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 5123
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5124
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    goto :goto_2

    .line 5126
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5127
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    .line 5128
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    .line 5130
    :goto_2
    return-void
.end method

.method handlePeekToExpandTransistion()V
    .locals 3

    .line 3953
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    .line 3954
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3955
    .local v0, "notificationLoad":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3958
    .end local v0    # "notificationLoad":I
    goto :goto_0

    .line 3956
    :catch_0
    move-exception v0

    .line 3959
    :goto_0
    return-void
.end method

.method public handleRemoteViewClick(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "defaultHandler"    # Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;

    .line 5164
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    .line 5165
    .local v0, "isActivity":Z
    if-eqz v0, :cond_0

    .line 5166
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 5167
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    .line 5166
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    .line 5168
    .local v1, "afterKeyguardGone":Z
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$zaWoWyf3AF0JUA3voCzb-yl_qWs;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$zaWoWyf3AF0JUA3voCzb-yl_qWs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 5190
    const/4 v2, 0x1

    return v2

    .line 5192
    .end local v1    # "afterKeyguardGone":Z
    :cond_0
    invoke-interface {p4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;->handleClick()Z

    move-result v1

    return v1
.end method

.method public handleSystemKey(I)V
    .locals 3
    .param p1, "key"    # I

    .line 2655
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 2656
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2661
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    return-void

    .line 2663
    :cond_1
    const/16 v0, 0x118

    if-ne v0, p1, :cond_2

    .line 2664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x1ed

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 2665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    goto :goto_0

    .line 2666
    :cond_2
    const/16 v0, 0x119

    if-ne v0, p1, :cond_5

    .line 2667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x1ee

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 2668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 2669
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrateOnOpening:Z

    if-eqz v0, :cond_3

    .line 2670
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 2672
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    .line 2673
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "panel_open"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    goto :goto_0

    .line 2674
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isExpanding()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2675
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    .line 2676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "panel_open_qs"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 2680
    :cond_5
    :goto_0
    return-void

    .line 2657
    :cond_6
    :goto_1
    return-void
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 1
    .param p1, "visibleToUser"    # Z

    .line 3940
    if-eqz p1, :cond_0

    .line 3941
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    .line 3942
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationLogger;->startNotificationLogging()V

    goto :goto_0

    .line 3944
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationLogger;->stopNotificationLogging()V

    .line 3945
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChangedImpl(Z)V

    .line 3947
    :goto_0
    return-void
.end method

.method protected hasActiveClearableNotifications()Z
    .locals 5

    .line 1851
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 1852
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1853
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1854
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v4, :cond_0

    .line 1855
    goto :goto_1

    .line 1857
    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1858
    const/4 v1, 0x1

    return v1

    .line 1852
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1861
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public hasActiveNotifications()Z
    .locals 1

    .line 5473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideDismissAnimate(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 1819
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1820
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissShow:Z

    .line 1821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissAllButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissAllButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1823
    return-void

    .line 1826
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissShow:Z

    if-nez v1, :cond_1

    .line 1827
    return-void

    .line 1830
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissShow:Z

    .line 1831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v1, 0x7f01001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1832
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1843
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissAllButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1844
    return-void
.end method

.method public hideKeyguard()Z
    .locals 1

    .line 4314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardRequested:Z

    .line 4315
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    move-result v0

    return v0
.end method

.method public hideKeyguardImpl()Z
    .locals 7

    .line 4507
    const-string v0, "StatusBar"

    const-string v1, "hideKeyguardImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    .line 4510
    const-string v1, "StatusBar#hideKeyguard"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4511
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4512
    .local v1, "staying":Z
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    .line 4513
    const/4 v2, 0x0

    .line 4514
    .local v2, "viewToClick":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v3, :cond_4

    .line 4515
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardRequested:Z

    if-nez v3, :cond_0

    .line 4516
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4518
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v3

    .line 4519
    .local v3, "delay":J
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 4520
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 4521
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 4522
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4524
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardRequested:Z

    if-nez v5, :cond_2

    .line 4525
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 4526
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 4531
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v5, :cond_3

    .line 4532
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->disableAnimationsDuringHide(J)V

    .line 4534
    .end local v3    # "delay":J
    :cond_3
    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4535
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 4537
    :cond_5
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    .line 4539
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4540
    invoke-virtual {v2}, Landroid/view/View;->callOnClick()Z

    .line 4545
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_7

    .line 4546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 4548
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 4549
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->releaseGestureWakeLock()V

    .line 4550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4553
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 4554
    return v1
.end method

.method public hideNavigationBarGuide()V
    .locals 1

    .line 6894
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarGuide:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    if-eqz v0, :cond_0

    .line 6895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarGuide:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->hide()V

    .line 6897
    :cond_0
    return-void
.end method

.method public hideStatusBarIconsForBouncer()Z
    .locals 1

    .line 2548
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideIconsForBouncer:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

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

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 1

    .line 2517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    return v0
.end method

.method protected inflateStatusBarWindow(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1469
    const v0, 0x7f0d01dc

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 1471
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4776
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4777
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4776
    :goto_0
    return v1
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2943
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2944
    nop

    .line 2945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 2947
    .local v0, "upOrCancel":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez v3, :cond_2

    .line 2948
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    goto :goto_2

    .line 2950
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 2953
    .end local v0    # "upOrCancel":Z
    :cond_3
    :goto_2
    return v1
.end method

.method public isBouncerShowing()Z
    .locals 1

    .line 6557
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    return v0
.end method

.method isCameraAllowedByAdmin()Z
    .locals 5

    .line 5625
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 5626
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    .line 5625
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5627
    return v1

    .line 5628
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 5629
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5636
    :cond_1
    return v3

    .line 5631
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 5632
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 5631
    move v1, v3

    goto :goto_1

    .line 5632
    :cond_3
    nop

    .line 5631
    :goto_1
    return v1
.end method

.method public isCameraForeground()Z
    .locals 2

    .line 7077
    const/4 v0, 0x0

    .line 7078
    .local v0, "foreground":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    .line 7079
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCameraForeground()Z

    move-result v1

    return v1

    .line 7082
    :cond_0
    return v0
.end method

.method public isCameraNotchIgnoreSetting()Z
    .locals 1

    .line 3169
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSetting:Z

    return v0
.end method

.method public isCollapsing()Z
    .locals 1

    .line 4398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationPending()Z

    move-result v0

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

.method public isDeviceInVrMode()Z
    .locals 1

    .line 6020
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVrMode:Z

    return v0
.end method

.method public isDeviceInteractive()Z
    .locals 1

    .line 6004
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    return v0
.end method

.method public isDeviceLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 5492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .line 6009
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .line 2330
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isFullyDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFalsingCheckNeeded()Z
    .locals 2

    .line 5089
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 2

    .line 2325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFullScreenUserSwitcherState()Z
    .locals 2

    .line 4322
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .line 2317
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    return v0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .line 4406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4407
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4406
    :goto_1
    return v0
.end method

.method public isInMultiWindow()Z
    .locals 1

    .line 7096
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsInMultiWindow:Z

    return v0
.end method

.method public isKeyguardCurrentlySecure()Z
    .locals 1

    .line 2471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .line 4600
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    .line 6583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    .line 6587
    const-string v0, "StatusBar"

    const-string v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6589
    const/4 v0, 0x0

    return v0

    .line 6591
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowing()Z
    .locals 2

    .line 5731
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    .line 5732
    const-string v0, "StatusBar"

    const-string v1, "isKeyguardShowing() called before startKeyguard(), returning true"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5733
    const/4 v0, 0x1

    return v0

    .line 5735
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isLaunchTransitionFadingAway()Z
    .locals 1

    .line 2513
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 6277
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 6282
    .local v0, "notificationUserId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v1

    return v1
.end method

.method public isPresenterFullyCollapsed()Z
    .locals 1

    .line 4298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method public isPresenterLocked()Z
    .locals 2

    .line 6722
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPulsing()Z
    .locals 1

    .line 2509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenFullyOff()Z
    .locals 1

    .line 5455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrimSrcModeEnabled()Z
    .locals 1

    .line 2388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    return v0
.end method

.method public isSecurelyLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 6393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    return v0
.end method

.method public isShowingWallpaper()Z
    .locals 1

    .line 6874
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v0, :cond_0

    .line 6876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingWallpaper()Z

    move-result v0

    return v0

    .line 6878
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUsingDarkTheme()Z
    .locals 4

    .line 2526
    const/4 v0, 0x0

    .line 2528
    .local v0, "themeInfo":Landroid/content/om/OverlayInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v2, "com.android.systemui.theme.dark"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 2529
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    .line 2528
    invoke-interface {v1, v2, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2532
    goto :goto_0

    .line 2530
    :catch_0
    move-exception v1

    .line 2531
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2533
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isWakeUpComingFromTouch()Z
    .locals 1

    .line 2321
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    return v0
.end method

.method public keyguardGoingAway()V
    .locals 2

    .line 4574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardGoingAway(Z)V

    .line 4575
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(Z)V

    .line 4576
    return-void
.end method

.method public launchHighlightHintAp()V
    .locals 5

    .line 7042
    const-string v0, "StatusBar"

    const-string v1, "launchHighlightHintAp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7043
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 7044
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getIntentOnStatusBar()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7045
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v1, :cond_1

    .line 7046
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7048
    :cond_1
    return-void
.end method

.method protected loadDimens()V
    .locals 4

    .line 3923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3925
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 3926
    .local v1, "oldBarHeight":I
    const v2, 0x105019d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    .line 3928
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    if-eq v2, v1, :cond_0

    .line 3929
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNaturalBarHeight:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBarHeight(I)V

    .line 3931
    :cond_0
    const v2, 0x7f0b0033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMaxAllowedKeyguardNotifications:I

    .line 3935
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 10

    .line 2878
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2885
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    .line 2888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 2890
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 2891
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 2894
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelVisible(Z)V

    .line 2895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceStatusBarVisible(Z)V

    .line 2898
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 2901
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 2902
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 2903
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncerIfKeyguard()V

    .line 2904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 2908
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2909
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 2913
    :cond_2
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->onExpandedVisibleChange(Z)V

    .line 2915
    return-void

    .line 2881
    :cond_3
    :goto_0
    return-void
.end method

.method makeExpandedVisible(Z)V
    .locals 3
    .param p1, "force"    # Z

    .line 2706
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Make expanded visible: expanded visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2708
    :cond_1
    return-void

    .line 2711
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    .line 2715
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelVisible(Z)V

    .line 2717
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 2718
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 2719
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 2722
    const-class v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->onExpandedVisibleChange(Z)V

    .line 2724
    return-void
.end method

.method protected makeStatusBarView()V
    .locals 18

    .line 985
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 986
    .local v8, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 990
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateStatusBarWindow(Landroid/content/Context;)V

    .line 991
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setService(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 992
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 995
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLSState:Lcom/android/systemui/plugin/LSState;

    .line 996
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLSState:Lcom/android/systemui/plugin/LSState;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/systemui/plugin/LSState;->init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1001
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a02a2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1002
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a02a8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1003
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, v7}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 1004
    new-instance v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/NotificationListContainer;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 1008
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v5, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$EGLDayN0ppRMZI1envjIVfb7R_0;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$EGLDayN0ppRMZI1envjIVfb7R_0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationGutsManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;)V

    .line 1016
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationLogger;->setUpWithEntryManager(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationListContainer;)V

    .line 1017
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1018
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 1019
    new-instance v0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    .line 1020
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0a0296

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->setListener(Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;)V

    .line 1022
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a01d5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1024
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    .line 1025
    invoke-virtual {v0, v8, v7}, Lcom/android/systemui/SystemUIFactory;->createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 1026
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateShelf()V

    .line 1027
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    .line 1028
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 1031
    const-class v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    .line 1032
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setNetworkSpeedController(Lcom/android/systemui/statusbar/phone/NetworkSpeedController;)V

    .line 1035
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string v1, "CollapsedStatusBarFragment"

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$TPJyILujZ88K3rKFmgzHGHpbtLo;

    invoke-direct {v2, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$TPJyILujZ88K3rKFmgzHGHpbtLo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1036
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    .line 1060
    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1061
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;-><init>()V

    const-string v2, "CollapsedStatusBarFragment"

    .line 1062
    const v3, 0x7f0a03db

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1065
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 1067
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v6, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-object v1, v0

    move-object v2, v8

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1069
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 1070
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1071
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1072
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1073
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 1074
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 1075
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1076
    const-class v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1078
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v7, v1, v7, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1079
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationListContainer;)V

    .line 1088
    :try_start_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNavBar:Z

    .line 1090
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowNavBar:Z

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createNavigationBar()V

    .line 1094
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideNavBar:Z

    if-eqz v0, :cond_0

    .line 1095
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initControlPanelWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :cond_0
    goto :goto_0

    .line 1099
    :catch_0
    move-exception v0

    .line 1102
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    .line 1103
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationLongClicker()Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;)V

    .line 1104
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1105
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 1106
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 1107
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V

    .line 1108
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V

    .line 1110
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateEmptyShadeView()V

    .line 1111
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateFooterView()V

    .line 1113
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BackDropView;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 1114
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    .line 1115
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    .line 1117
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a038c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenDecorUp:Landroid/widget/ImageView;

    .line 1118
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenDecorUp:Landroid/widget/ImageView;

    const v1, 0x5060079

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1122
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-direct {v0, v1, v7, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 1125
    nop

    .line 1126
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v9

    iget-object v10, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a01d7

    .line 1127
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup;

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1130
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v12

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a01e6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v14

    .line 1126
    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/SystemUIFactory;->createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1132
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1135
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 1142
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/phone/StatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 1157
    const-class v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1158
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 1162
    :cond_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a0390

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ScrimView;

    .line 1163
    .local v0, "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0a0391

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/ScrimView;

    .line 1164
    .local v17, "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v9

    iget-object v12, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    new-instance v13, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CPTthYwWNrh8z0d-UzTtbuHfZd4;

    invoke-direct {v13, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CPTthYwWNrh8z0d-UzTtbuHfZd4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    new-instance v14, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aLenH7zcwVaIHX6ie2fIXARtA4g;

    invoke-direct {v14, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aLenH7zcwVaIHX6ie2fIXARtA4g;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1171
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v15

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    .line 1172
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/app/AlarmManager;

    .line 1164
    move-object v10, v0

    move-object/from16 v11, v17

    invoke-virtual/range {v9 .. v16}, Lcom/android/systemui/SystemUIFactory;->createScrimController(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1173
    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v1, :cond_2

    .line 1174
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$EdGxnh5D2TWPQa657dfBiOwfR50;

    .line 1174
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-direct {v1, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$EdGxnh5D2TWPQa657dfBiOwfR50;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1179
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/BackDropView;->setOnVisibilityChangedRunnable(Ljava/lang/Runnable;)V

    .line 1180
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1182
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1183
    new-instance v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1184
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v3

    invoke-direct {v1, v2, v8, v3}, Lcom/android/systemui/statusbar/phone/DozeScrimController;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 1187
    const-class v1, Lcom/android/systemui/volume/VolumeComponent;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeComponent;

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    .line 1189
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setUserSetupComplete(Z)V

    .line 1190
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createUserSwitcher()V

    .line 1195
    :cond_3
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0a0338

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1196
    .local v9, "container":Landroid/view/View;
    if-eqz v9, :cond_4

    .line 1197
    invoke-static {v9}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v1

    .line 1198
    .local v1, "fragmentHostManager":Lcom/android/systemui/fragments/FragmentHostManager;
    const-string v3, "QS"

    const-class v4, Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 1199
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v5, Lcom/android/systemui/plugins/qs/QS;

    .line 1200
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v4

    const-class v5, Lcom/android/systemui/plugins/qs/QS;

    .line 1201
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v4

    const-string v5, "android.hardware.type.automotive"

    sget-object v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$8CIXyGMqrW3leEv17MCPM15_8RU;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$8CIXyGMqrW3leEv17MCPM15_8RU;

    .line 1202
    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withFeature(Ljava/lang/String;Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DhEg0l8l_X2iMYdu6k_V3Zid54;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$5DhEg0l8l_X2iMYdu6k_V3Zid54;

    .line 1203
    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v4

    .line 1204
    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v4

    .line 1198
    invoke-static {v9, v3, v2, v4}, Lcom/android/systemui/fragments/ExtensionFragmentListener;->attachExtensonToFragment(Landroid/view/View;Ljava/lang/String;ILcom/android/systemui/statusbar/policy/ExtensionController$Extension;)V

    .line 1205
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v2

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v2, v3, v7, v4}, Lcom/android/systemui/SystemUIFactory;->createQSTileHost(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v2

    .line 1207
    .local v2, "qsh":Lcom/android/systemui/qs/QSTileHost;
    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object v4, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0m7F6e2QtJDG3hy0Y3EVPv_U6WQ;

    invoke-direct {v5, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0m7F6e2QtJDG3hy0Y3EVPv_U6WQ;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Ljava/util/function/Consumer;)V

    iput-object v3, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1212
    const-string v3, "QS"

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bkd2NbKjjDMBWKcdJ2fG14LddEs;

    invoke-direct {v4, v7, v2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bkd2NbKjjDMBWKcdJ2fG14LddEs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 1226
    .end local v1    # "fragmentHostManager":Lcom/android/systemui/fragments/FragmentHostManager;
    .end local v2    # "qsh":Lcom/android/systemui/qs/QSTileHost;
    :cond_4
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0a034f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    .line 1227
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 1228
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 1229
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mReportRejectedTouch:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ggtzWYldpP6XbhwYmX0SNphBaak;

    invoke-direct {v2, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ggtzWYldpP6XbhwYmX0SNphBaak;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1255
    :cond_5
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/PowerManager;

    .line 1256
    .local v10, "pm":Landroid/os/PowerManager;
    invoke-virtual {v10}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1257
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1259
    :cond_6
    const/16 v1, 0xa

    const-string v2, "GestureWakeLock"

    invoke-virtual {v10, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1261
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 1264
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    move-object v11, v1

    .line 1267
    .local v11, "pattern":[I
    array-length v1, v11

    new-array v1, v1, [J

    iput-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    .line 1268
    const/4 v1, 0x0

    .line 1268
    .local v1, "i":I
    :goto_1
    array-length v2, v11

    if-ge v1, v2, :cond_7

    .line 1269
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraLaunchGestureVibePattern:[J

    aget v3, v11, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 1268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1273
    .end local v1    # "i":I
    :cond_7
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v12, v1

    .line 1274
    .local v12, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1275
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1276
    const-string v1, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1277
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1279
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v13, v1

    .line 1283
    .local v13, "demoFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.systemui.demo"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1284
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mDemoReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.DUMP"

    move-object v1, v8

    move-object v4, v13

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1288
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 1289
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetupObserver:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    .line 1292
    const-string v1, "disableProfileBars"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v1, "ambientRatio"

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugin/LSState;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    .line 1301
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v7, Lcom/android/systemui/statusbar/phone/StatusBar;->mOrientation:I

    .line 1302
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setUpHighlightHintInfo()V

    .line 1304
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xfa
    .end array-data
.end method

.method public manageNotifications()V
    .locals 3

    .line 1474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_APPS_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1475
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    const/high16 v2, 0x20000000

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZI)V

    .line 1476
    return-void
.end method

.method public maybeEscalateHeadsUp(Z)V
    .locals 2
    .param p1, "goingToSleep"    # Z

    .line 2622
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Vcv52n41LcvH5BA649ZQ4Q6w3VA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Vcv52n41LcvH5BA649ZQ4Q6w3VA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->releaseAllImmediately()V

    .line 2646
    return-void
.end method

.method public notifyBarHeightChange(I)V
    .locals 3
    .param p1, "barHeight"    # I

    .line 6993
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastBarHeight:I

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_2

    .line 6994
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BarHeight change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6995
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-gez v0, :cond_1

    if-eq p1, v1, :cond_1

    .line 6996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyBarHeightChange(I)V

    goto :goto_0

    .line 6998
    :cond_1
    if-eq p1, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_2

    .line 6999
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->resetForceHide()V

    .line 7003
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastBarHeight:I

    .line 7004
    return-void
.end method

.method public notifyCameraLaunching(Ljava/lang/String;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .line 6902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    if-eqz v0, :cond_0

    .line 6903
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->notifyCameraLaunching(ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 6905
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyFpAuthModeChanged()V
    .locals 0

    .line 5650
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    .line 5654
    return-void
.end method

.method protected notifyHeadsUpGoingToSleep()V
    .locals 1

    .line 6550
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp(Z)V

    .line 6551
    return-void
.end method

.method public notifyNavBarColorChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 6733
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6734
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarColor:I

    .line 6735
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPackageName:Ljava/lang/String;

    .line 6736
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_0

    .line 6737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavBarColorChanged(ILjava/lang/String;)V

    .line 6741
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    .line 6742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateTopPackage(Ljava/lang/String;)V

    .line 6746
    :cond_1
    return-void
.end method

.method public notifyPreventModeChange(Z)V
    .locals 3
    .param p1, "preventMode"    # Z

    .line 7009
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyPreventModeChange(Z)V

    .line 7012
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_1

    .line 7013
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPreventModeChange, prevent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", occluded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7015
    if-eqz p1, :cond_0

    .line 7016
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantExpandNotificationsPanel()V

    goto :goto_0

    .line 7018
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    .line 7023
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_2

    .line 7024
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyPreventModeChange(Z)V

    .line 7027
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-nez v0, :cond_3

    .line 7028
    return-void

    .line 7030
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->notifyPreventModeChange(Z)V

    .line 7033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v0, :cond_4

    .line 7034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPreventModeActive(Z)V

    .line 7037
    :cond_4
    return-void
.end method

.method public onActivated(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 4875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/4 v1, 0x0

    const/16 v2, 0xc0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 4878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f110422

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 4879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 4880
    .local v0, "previousView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    if-eqz v0, :cond_0

    .line 4881
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 4883
    :cond_0
    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 4870
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onActivated(Landroid/view/View;)V

    .line 4871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 4872
    return-void
.end method

.method public onActivationReset(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 4950
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 4951
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 4943
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4944
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 4945
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onActivationReset(Landroid/view/View;)V

    .line 4947
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .line 4801
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4802
    const-string v0, "StatusBar"

    const-string v2, "return back key"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4803
    return v1

    .line 4807
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 4808
    .local v0, "isScrimmedBouncer":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4809
    if-nez v0, :cond_2

    .line 4810
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithoutQs()V

    .line 4812
    :cond_2
    return v1

    .line 4814
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4815
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4816
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    goto :goto_1

    .line 4818
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast v2, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSFragment;->getCustomizer()Lcom/android/systemui/qs/customize/QSCustomizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4819
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->onCollapse()V

    goto :goto_1

    .line 4822
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs()V

    .line 4824
    :goto_1
    return v1

    .line 4826
    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v2, v1, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    .line 4827
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 4828
    return v1

    .line 4830
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4831
    return v1

    .line 4833
    :cond_8
    return v3
.end method

.method public onBindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "pmUser"    # Landroid/content/pm/PackageManager;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 3872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAboveShelfObserver:Lcom/android/systemui/statusbar/notification/AboveShelfObserver;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelfChangedListener(Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;)V

    .line 3873
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$Er5d2KQJ-uxw_IoSsj98m9LUD4U;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$Er5d2KQJ-uxw_IoSsj98m9LUD4U;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSecureStateProvider(Ljava/util/function/BooleanSupplier;)V

    .line 3874
    return-void
.end method

.method public onBrickModeChanged(Z)V
    .locals 1
    .param p1, "isOn"    # Z

    .line 7115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 7118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_0

    .line 7119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onBrickModeChanged(Z)V

    .line 7122
    :cond_0
    return-void
.end method

.method public onCameraHintStarted()V
    .locals 2

    .line 4977
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onCameraHintStarted()V

    .line 4978
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f1101c1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 4979
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 13
    .param p1, "source"    # I

    .line 5507
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastCameraLaunchSource:I

    .line 5511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 5515
    .local v0, "isSimPin":Z
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraLaunch , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isSecure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenTurningOnOrOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", expand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", occlude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", simpin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5518
    if-eqz v0, :cond_0

    .line 5519
    const-string v1, "StatusBar"

    const-string v2, "not launch camera for simpin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5520
    return-void

    .line 5524
    :cond_0
    const/4 v1, 0x0

    .line 5525
    .local v1, "launchByGesture":Z
    const/high16 v2, 0x10000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 5526
    const/4 v1, 0x1

    .line 5531
    :cond_1
    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    .line 5534
    .local v2, "noVibrate":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 5537
    .local v5, "pm":Landroid/os/PowerManager;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToSleep()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5539
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnFinishedGoingToSleep:Z

    .line 5540
    return-void

    .line 5542
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 5545
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 5546
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v7

    if-nez v7, :cond_5

    .line 5542
    :cond_4
    move v3, v4

    goto :goto_1

    .line 5546
    :cond_5
    nop

    .line 5542
    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->canCameraGestureBeLaunched(Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5551
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 5552
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v6, "com.android.systemui:CAMERA_GESTURE_CIRCLE"

    invoke-virtual {v5, v3, v4, v6}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 5558
    :cond_6
    return-void

    .line 5560
    :cond_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v3, :cond_a

    .line 5564
    if-eqz v1, :cond_8

    .line 5565
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string v3, "com.android.systemui:CAMERA_GESTURE_CIRCLE"

    invoke-virtual {v5, v6, v7, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 5567
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5568
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraWakeAndUnlocking:Z

    goto :goto_2

    .line 5572
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string v3, "com.android.systemui:CAMERA_GESTURE"

    invoke-virtual {v5, v6, v7, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 5576
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 5581
    :cond_a
    if-nez v1, :cond_b

    if-nez v2, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->vibrateForCameraGesture()V

    .line 5584
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    if-nez v3, :cond_c

    .line 5586
    sget-object v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 5587
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.android.systemui.camera_launch_source_gesture"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5588
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    move-object v7, v3

    invoke-virtual/range {v6 .. v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    .line 5593
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 5594
    :cond_c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-nez v3, :cond_d

    .line 5597
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x1770

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5600
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScreenTurningOnOrOn()Z

    move-result v3

    if-nez v3, :cond_f

    if-eqz v1, :cond_e

    goto :goto_3

    .line 5619
    :cond_e
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    goto :goto_4

    .line 5603
    :cond_f
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5604
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 5606
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    invoke-virtual {v3, v4, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->launchCamera(ZI)V

    .line 5608
    if-nez v1, :cond_11

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v3

    if-nez v3, :cond_11

    .line 5609
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->startPowerKeyLaunchCamera()V

    .line 5612
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 5622
    :goto_4
    return-void
.end method

.method public onClosingFinished()V
    .locals 2

    .line 4958
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 4959
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPresenterFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 4964
    :cond_0
    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0
    .param p1, "extractor"    # Lcom/android/internal/colorextraction/ColorExtractor;
    .param p2, "which"    # I

    .line 2522
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 2523
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3759
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 3761
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSetting:Z

    if-eqz v0, :cond_1

    .line 3764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 3765
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3768
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3772
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOrientation:I

    .line 3775
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateResources()V

    .line 3776
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 3782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    .line 3783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequest;->onConfigurationChanged()V

    .line 3786
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideNavBar:Z

    if-eqz v0, :cond_3

    .line 3787
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initControlPanelWindow()V

    .line 3794
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setUpHighlightHintInfo()V

    .line 3805
    return-void
.end method

.method public onCrossedThreshold(Z)V
    .locals 3
    .param p1, "above"    # Z

    .line 5073
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5074
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 1349
    invoke-static {}, Lcom/android/internal/widget/MessagingMessage;->dropCache()V

    .line 1350
    invoke-static {}, Lcom/android/internal/widget/MessagingGroup;->dropCache()V

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationsOnDensityOrFontScaleChanged()V

    goto :goto_0

    .line 1355
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReinflateNotificationsOnUserSwitched:Z

    .line 1359
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onDensityOrFontScaleChanged()V

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onDensityOrFontScaleChanged()V

    .line 1364
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 1365
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->onDensityOrFontScaleChanged()V

    .line 1366
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->onDensityOrFontScaleChanged()V

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_2

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->onDensityOrFontScaleChanged()V

    .line 1370
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->onDensityOrFontScaleChanged()V

    .line 1373
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->reevaluateStyles()V

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDashViews()V

    .line 1378
    return-void
.end method

.method public onDragDownReset()V
    .locals 2

    .line 5066
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5067
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 5068
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    .line 5069
    return-void
.end method

.method public onDraggedDown(Landroid/view/View;I)Z
    .locals 6
    .param p1, "startingChild"    # Landroid/view/View;
    .param p2, "dragLengthY"    # I

    .line 5044
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 5045
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5046
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v3, 0xbb

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 5052
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 5053
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 5054
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5055
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    .line 5057
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return v2

    .line 5060
    :cond_2
    return v1
.end method

.method public onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 2
    .param p1, "clickedEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "nowExpanded"    # Z

    .line 5306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setExpanded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 5307
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 5308
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 5310
    :cond_0
    return-void
.end method

.method public onFpPressedTimeOut()V
    .locals 3

    .line 5001
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040236

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;I)V

    .line 5002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 5003
    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    .line 2449
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 2
    .param p1, "inPinnedMode"    # Z

    .line 2405
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2406
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setHeadsUpShowing(Z)V

    .line 2408
    const-class v1, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-virtual {v1}, Lcom/oneplus/scene/OPSceneModeObserver;->isInBrickMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2409
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceStatusBarVisible(Z)V

    .line 2412
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2417
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    .line 2418
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceWindowCollapsed(Z)V

    .line 2419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bAFPzCYA0o8c0tOSJ9q0jO-POoQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bAFPzCYA0o8c0tOSJ9q0jO-POoQ;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2424
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2431
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    .line 2432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$OL2P4RHv1KVB2pnvGsyWpK0DLPY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$OL2P4RHv1KVB2pnvGsyWpK0DLPY;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2427
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setHeadsUpShowing(Z)V

    .line 2442
    :cond_4
    :goto_1
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->onHeadUpPinnedModeChange(Z)V

    .line 2444
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .line 2457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 2459
    if-eqz p2, :cond_0

    .line 2460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->fireNotificationHeadsUp()V

    .line 2462
    :cond_0
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2453
    return-void
.end method

.method public onHideNavBar(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .line 6785
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideNavBar:Z

    .line 6787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    .line 6788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onHideNavBar(Z)V

    .line 6791
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->initControlPanelWindow()V

    .line 6792
    return-void
.end method

.method public onHighlightHintInfoChange()V
    .locals 1

    .line 7069
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getHighlighColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHighlightColor:I

    .line 7070
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 7071
    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 1

    .line 7052
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getHighlighColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHighlightColor:I

    .line 7053
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 7055
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setUpHighlightHintInfo()V

    .line 7057
    return-void
.end method

.method public onHintFinished()V
    .locals 3

    .line 4973
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 4974
    return-void
.end method

.method public onKeyguardViewManagerStatesUpdated()V
    .locals 0

    .line 2395
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    .line 2396
    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .locals 1

    .line 2586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2587
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    .line 2589
    :cond_0
    return-void
.end method

.method public onLockedNotificationImportanceChange(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 1
    .param p1, "dismissAction"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 5133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5134
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 5135
    return-void
.end method

.method public onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "clicked"    # Landroid/view/View;

    .line 5139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5140
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer(Z)V

    .line 5141
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 5142
    return-void
.end method

.method public onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "clicked"    # Landroid/view/View;

    .line 5236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 5237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    .line 5240
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    .line 5241
    return-void
.end method

.method public onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "clickedView"    # Landroid/view/View;

    .line 5147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5148
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    goto :goto_0

    .line 5150
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 5151
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$MVkYf3B-uVxXy7rxrXvHR4SUXEU;

    invoke-direct {v1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$MVkYf3B-uVxXy7rxrXvHR4SUXEU;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setOnExpandedVisibleListener(Ljava/lang/Runnable;)V

    .line 5153
    :goto_0
    return-void
.end method

.method public onMenuPressed()Z
    .locals 2

    .line 4786
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldUnlockOnMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4787
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    .line 4789
    return v1

    .line 4791
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNotificationAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "shadeEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1706
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 1707
    return-void
.end method

.method public onNotificationClicked(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 18
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v9, p0

    .line 6049
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v10

    .line 6050
    .local v10, "controller":Lcom/android/systemui/statusbar/RemoteInputController;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6051
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActiveRemoteInputText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6054
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 6055
    return-void

    .line 6057
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    .line 6058
    .local v11, "notification":Landroid/app/Notification;
    iget-object v0, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 6059
    iget-object v0, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 6060
    :cond_1
    iget-object v0, v11, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :goto_0
    move-object v12, v0

    .line 6061
    .local v12, "intent":Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 6063
    .local v13, "notificationKey":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 6064
    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 6065
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v4

    .line 6064
    invoke-static {v0, v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    move v14, v0

    .line 6066
    .local v14, "afterKeyguardGone":Z
    iget-boolean v15, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    .line 6069
    .local v15, "wasOccluded":Z
    const-class v0, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-virtual {v0}, Lcom/oneplus/scene/OPSceneModeObserver;->isInBrickMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6070
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6071
    invoke-direct {v9, v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->validToStartInCallActivity(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    move v8, v1

    .line 6072
    .local v8, "bypassKeyguard":Z
    if-eqz v8, :cond_4

    .line 6073
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bypass keyguard when clicking on notification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6077
    :cond_4
    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$lxhvNG7-rL6G9MEjAqYdD6606lc;

    move-object v0, v7

    move-object v1, v9

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object v5, v12

    move-object v6, v10

    move-object/from16 v16, v10

    move-object v10, v7

    move v7, v15

    .end local v10    # "controller":Lcom/android/systemui/statusbar/RemoteInputController;
    .local v16, "controller":Lcom/android/systemui/statusbar/RemoteInputController;
    move/from16 v17, v8

    .end local v8    # "bypassKeyguard":Z
    .local v17, "bypassKeyguard":Z
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$lxhvNG7-rL6G9MEjAqYdD6606lc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/RemoteInputController;ZZ)V

    move/from16 v0, v17

    invoke-direct {v9, v10, v14, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    .line 6204
    .end local v17    # "bypassKeyguard":Z
    .local v0, "bypassKeyguard":Z
    return-void
.end method

.method public onNotificationRemoved(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "old"    # Landroid/service/notification/StatusBarNotification;

    .line 1718
    if-eqz p2, :cond_1

    .line 1719
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1720
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1721
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v0, :cond_0

    .line 1722
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 1723
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1724
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToKeyguard()V

    .line 1728
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 1729
    return-void
.end method

.method public onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 1711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 1712
    return-void
.end method

.method public onOverlayChanged()V
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onOverlayChanged()V

    .line 1425
    :cond_0
    return-void
.end method

.method public onPanelLaidOut()V
    .locals 0

    .line 6400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardMaxNotifications()V

    .line 6401
    return-void
.end method

.method public onPerformRemoveNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1663
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasHeadsUpNotifications()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseOutNow()V

    .line 1668
    :cond_0
    return-void
.end method

.method public onPhoneHintStarted()V
    .locals 2

    .line 4987
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onLeftAffordanceHintStarted()V

    .line 4988
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f11046f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 4989
    return-void
.end method

.method public onSpacePressed()Z
    .locals 2

    .line 4837
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    .line 4838
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    .line 4840
    return v1

    .line 4842
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchSlopExceeded()V
    .locals 1

    .line 5078
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 5079
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    .line 5080
    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    .line 4954
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->runPostCollapseRunnables()V

    .line 4955
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .line 4992
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4993
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4994
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showBouncer(Z)V

    .line 4997
    :cond_1
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 2

    .line 4967
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onUnlockHintStarted()V

    .line 4968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f11032c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 4969
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .line 2400
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->logStateToEventlog()V

    .line 2401
    return-void
.end method

.method public onUpdateRowStates()V
    .locals 5

    .line 6531
    const/4 v0, 0x1

    .line 6532
    .local v0, "offsetFromEnd":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    if-eqz v1, :cond_0

    .line 6533
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFooterView:Lcom/android/systemui/statusbar/FooterView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 6534
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    .local v4, "offsetFromEnd":I
    sub-int/2addr v3, v0

    .line 6533
    .end local v0    # "offsetFromEnd":I
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 6537
    move v0, v4

    .end local v4    # "offsetFromEnd":I
    .restart local v0    # "offsetFromEnd":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 6538
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    .restart local v4    # "offsetFromEnd":I
    sub-int/2addr v3, v0

    .line 6537
    .end local v0    # "offsetFromEnd":I
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 6542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 6543
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    .line 6542
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 6546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setNotificationCount(I)V

    .line 6547
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 4
    .param p1, "newUserId"    # I

    .line 3810
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setHeadsUpUser(I)V

    .line 3813
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 3814
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicMode()V

    .line 3815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 3820
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationViews()V

    .line 3822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationsOnDensityOrFontScaleChanged()V

    .line 3823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mReinflateNotificationsOnUserSwitched:Z

    .line 3826
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    .line 3827
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockscreenUser(I)V

    .line 3831
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowOnScreenNavKeysObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3833
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwapNavKeysObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3837
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3841
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    invoke-virtual {v0}, Lcom/oneplus/notification/OPNotificationController;->updateNotificationRule()V

    .line 3846
    :cond_0
    if-nez p1, :cond_1

    .line 3847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3862
    :cond_1
    return-void
.end method

.method public onVoiceAssistHintStarted()V
    .locals 2

    .line 4982
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onLeftAffordanceHintStarted()V

    .line 4983
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const v1, 0x7f110674

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 4984
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 6608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz v0, :cond_1

    .line 6609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setLockscreenWallpaper(Z)V

    goto :goto_1

    .line 6611
    :cond_1
    const-string v0, "StatusBar"

    const-string v1, "mStatusBarWindowManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6613
    :goto_1
    return-void
.end method

.method public onWorkChallengeChanged()V
    .locals 3

    .line 5245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicMode()V

    .line 5246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 5247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 5248
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isAnyProfilePublicMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5250
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$NuUvTnP6PY6WVG_pzcIo7p3SUGw;

    .local v0, "clickPendingViewRunnable":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$NuUvTnP6PY6WVG_pzcIo7p3SUGw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 5287
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$16;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantExpandNotificationsPanel()V

    .line 5302
    .end local v0    # "clickPendingViewRunnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onZenChanged(I)V
    .locals 0
    .param p1, "zen"    # I

    .line 6596
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateEmptyShadeView()V

    .line 6597
    return-void
.end method

.method public panelsEnabled()Z
    .locals 2

    .line 2700
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled1:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    .line 2733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 2734
    return-void
.end method

.method public postAnimateForceCollapsePanels()V
    .locals 2

    .line 2737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$u0G8hvroHoGVhxf0KafawrM8bVY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$u0G8hvroHoGVhxf0KafawrM8bVY;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 2740
    return-void
.end method

.method public postAnimateOpenPanels()V
    .locals 2

    .line 2743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 2744
    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 4080
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$jl-m_kL0APnp8Cqijh6kfrtOBIg;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$jl-m_kL0APnp8Cqijh6kfrtOBIg;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 4085
    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 4089
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$9Mzofl9A_0kRl4gRz7NtL6Z5tXI;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$9Mzofl9A_0kRl4gRz7NtL6Z5tXI;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 4090
    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .line 4094
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wd6i6fh0Zed5Hxh1I-QwOEzxFWA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wd6i6fh0Zed5Hxh1I-QwOEzxFWA;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4096
    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    .line 6332
    const/16 v0, 0x3fe

    .line 6333
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 6334
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessage(I)Z

    .line 6335
    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 1

    .line 3601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    .line 3602
    return-void
.end method

.method public recomputeDisableFlags(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 2273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(Z)V

    .line 2274
    return-void
.end method

.method protected reevaluateStyles()V
    .locals 0

    .line 1414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateFooterView()V

    .line 1415
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateFooter()V

    .line 1416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->inflateEmptyShadeView()V

    .line 1417
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateEmptyShadeView()V

    .line 1418
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "tile"    # Landroid/content/ComponentName;

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Landroid/content/ComponentName;)V

    .line 1756
    :cond_0
    return-void
.end method

.method public requestNotificationUpdate()V
    .locals 1

    .line 1900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 1901
    return-void
.end method

.method public resetUserExpandedStates()V
    .locals 5

    .line 3703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    .line 3704
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 3705
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3706
    .local v1, "notificationCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3707
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3708
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    .line 3709
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetUserExpansion()V

    .line 3706
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3712
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 6

    .line 1913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_6

    .line 1914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a029e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1915
    .local v0, "nlo":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->areLightsOn()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1916
    .local v1, "showDot":Z
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eq v1, v2, :cond_6

    .line 1917
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1918
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1919
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1922
    if-eqz v1, :cond_3

    move v2, v5

    nop

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1923
    if-eqz v1, :cond_4

    const-wide/16 v3, 0x2ee

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0xfa

    :goto_2
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 1924
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1925
    if-eqz v1, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar$7;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1931
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1935
    .end local v0    # "nlo":Landroid/view/View;
    .end local v1    # "showDot":Z
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->findAndUpdateMediaNotifications()V

    .line 1936
    return-void
.end method

.method public setBarState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 4889
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, p1, :cond_0

    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBarState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4895
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    .line 4896
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToNotificationShade()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4897
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    .line 4899
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 4900
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->removeRemoteInputEntriesKeptUntilCollapsed()V

    .line 4901
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp(Z)V

    .line 4903
    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    .line 4904
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setStatusBarState(I)V

    .line 4905
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setStatusBarState(I)V

    .line 4906
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/FalsingManager;->setStatusBarState(I)V

    .line 4907
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarState(I)V

    .line 4908
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStatusBarState(I)V

    .line 4909
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateReportRejectedTouchVisibility()V

    .line 4910
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozing()V

    .line 4911
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 4912
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoDim()V

    .line 4913
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setStatusBarState(I)V

    .line 4916
    const-class v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->onBarStatechange(I)V

    .line 4920
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateLockScreenDecorUp()V

    .line 4923
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v1, v0, :cond_4

    .line 4924
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideDismissAnimate(Z)V

    .line 4927
    :cond_4
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "bouncerShowing"    # Z

    .line 5332
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    .line 5333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBouncerShowing(Z)V

    .line 5334
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 5335
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 5336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 5338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 5339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClock()V

    .line 5342
    :cond_1
    return-void
.end method

.method public setCameraNotchIgnoring(Z)V
    .locals 3
    .param p1, "ignore"    # Z

    .line 6973
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoring:Z

    if-ne v0, p1, :cond_0

    .line 6974
    return-void

    .line 6976
    :cond_0
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraNotchIgnoring to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6977
    sput-boolean p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoring:Z

    .line 6978
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v0, :cond_1

    .line 6979
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->onCameraNotchIgnoreChanged(Z)V

    .line 6980
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_1

    .line 6981
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged()V

    .line 6984
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateLockScreenDecorUp()V

    .line 6985
    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 1
    .param p1, "amount"    # F

    .line 5084
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEmptyDragAmount(F)V

    .line 5085
    return-void
.end method

.method protected setHeadsUpUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 2465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    if-eqz v0, :cond_0

    .line 2466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setUser(I)V

    .line 2468
    :cond_0
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .line 7090
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7091
    .local v0, "imeShown":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onImeShow(Z)V

    .line 7092
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 3
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .line 3185
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, p2, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    .line 3186
    .local v0, "changing":Z
    if-eqz p2, :cond_2

    .line 3187
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    or-int/2addr v1, p1

    goto :goto_1

    .line 3188
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    not-int v2, p1

    and-int/2addr v1, v2

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    .line 3189
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mInteractingWindows:I

    if-eqz v1, :cond_3

    .line 3190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->suspendAutohide()V

    goto :goto_2

    .line 3192
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resumeSuspendedAutohide()V

    .line 3195
    :goto_2
    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 3196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoDim()V

    .line 3197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissVolumeDialog()V

    .line 3199
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 3200
    return-void
.end method

.method public setKeyguardFadingAway(JJJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "delay"    # J
    .param p5, "fadeoutDuration"    # J

    .line 4586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    .line 4587
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    .line 4588
    iput-wide p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDuration:J

    .line 4589
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    add-long v2, p1, p5

    const-wide/16 v7, 0x78

    sub-long/2addr v2, v7

    const-wide/16 v4, 0x78

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(JJZ)V

    .line 4592
    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 4593
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    sub-long v2, p1, v7

    const-wide/16 v4, 0x78

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(JJZ)V

    .line 4596
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardFadingAway(JJ)V

    .line 4597
    return-void
.end method

.method public setLightsOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .line 3276
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    if-eqz p1, :cond_0

    .line 3278
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3281
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastFullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLastDockedStackBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3285
    :goto_0
    return-void
.end method

.method protected setLockscreenUser(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .line 3877
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->setCurrentUser(I)V

    .line 3878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setCurrentUser(I)V

    .line 3879
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 3880
    return-void
.end method

.method public setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "snoozeOption"    # Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 6312
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 6314
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getId()Ljava/lang/String;

    move-result-object v2

    .line 6313
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationListener;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6316
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 6317
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 6316
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationListener;->snoozeNotification(Ljava/lang/String;J)V

    .line 6319
    :goto_0
    return-void
.end method

.method public setOccluded(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .line 2542
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    .line 2543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardOccluded(Z)V

    .line 2544
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 2545
    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .line 2475
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    .line 2476
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 2477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setPanelExpanded(Z)V

    .line 2478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPanelExpanded(Z)V

    .line 2479
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2483
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    .line 2486
    :cond_0
    if-nez p1, :cond_2

    .line 2487
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->removeRemoteInputEntriesKeptUntilCollapsed()V

    .line 2489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    .line 2490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirrorImmediately()V

    .line 2494
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userAutohide()V

    goto :goto_0

    .line 2499
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->hideSimpleHeadsUps()V

    .line 2502
    :goto_0
    return-void
.end method

.method public setPanelViewAlpha(FZI)V
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "overlayLayout"    # Z
    .param p3, "authType"    # I

    .line 6812
    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeNoBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6813
    const-string v0, "StatusBar"

    const-string v1, "not set alpha when prevent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6814
    return-void

    .line 6818
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    .line 6819
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    .line 6823
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-nez v0, :cond_2

    return-void

    .line 6824
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6825
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 6826
    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    if-eq p3, v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    .line 6829
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setUnlockAlpha(F)V

    goto :goto_1

    .line 6827
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    goto :goto_1

    .line 6832
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 6833
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setUnlockAlpha(F)V

    goto :goto_1

    .line 6836
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 6838
    :goto_1
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .line 2303
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2304
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideDismissAnimate(Z)V

    goto :goto_0

    .line 2305
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveClearableNotifications()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2306
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showDismissAnimate(Z)V

    .line 2310
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setQsExpanded(Z)V

    .line 2311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_2

    .line 2312
    const/4 v1, 0x4

    goto :goto_1

    .line 2313
    :cond_2
    const/4 v1, 0x0

    .line 2311
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusAccessibilityImportance(I)V

    .line 2314
    return-void
.end method

.method setQsScrimEnabled(Z)V
    .locals 1
    .param p1, "scrimEnabled"    # Z

    .line 3111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsScrimEnabled(Z)V

    .line 3112
    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    move-object v0, p0

    move/from16 v9, p4

    .line 2986
    iget v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 2987
    .local v10, "oldVal":I
    not-int v1, v9

    and-int/2addr v1, v10

    and-int v2, p1, v9

    or-int v11, v1, v2

    .line 2988
    .local v11, "newVal":I
    xor-int v12, v11, v10

    .line 2990
    .local v12, "diff":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v12, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    const-string v3, "StatusBar"

    const-string v4, "setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 2993
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x2

    .line 2994
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 2995
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2990
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :cond_0
    const/4 v3, 0x0

    .line 2997
    .local v3, "sbModeChanged":Z
    if-eqz v12, :cond_6

    .line 2998
    iput v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 3001
    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_1

    .line 3002
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAreThereNotifications()V

    .line 3006
    :cond_1
    const/high16 v4, 0x10000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 3007
    iget v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const v5, -0x10000001

    and-int/2addr v4, v5

    iput v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 3008
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNoAnimationOnNextBarModeChange:Z

    .line 3012
    :cond_2
    invoke-virtual {v0, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeStatusBarMode(II)I

    move-result v4

    .line 3014
    .local v4, "sbMode":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_0
    move v3, v5

    .line 3015
    if-eqz v3, :cond_4

    iget v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    if-eq v4, v5, :cond_4

    .line 3016
    iput v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    .line 3017
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 3018
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoHide()V

    .line 3021
    :cond_4
    const/high16 v5, 0x20000000

    and-int/2addr v5, p1

    if-eqz v5, :cond_5

    .line 3022
    iget v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    const v6, -0x20000001

    and-int/2addr v5, v6

    iput v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    .line 3026
    :cond_5
    iget v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSystemUiVisibility:I

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyUiVisibilityChanged(I)V

    .line 3030
    .end local v3    # "sbModeChanged":Z
    .end local v4    # "sbMode":I
    .local v13, "sbModeChanged":Z
    :cond_6
    move v13, v3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsInMultiWindow:Z

    .line 3033
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v8, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v9

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v13

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    .line 3035
    :cond_8
    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 2
    .param p1, "topAppHidesStatusBar"    # Z

    .line 6360
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTopHidesStatusBar:Z

    .line 6361
    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    if-eqz v1, :cond_0

    .line 6364
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWereIconsJustHidden:Z

    .line 6365
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    .line 6367
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 6368
    return-void
.end method

.method public setWallpaperAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .line 6846
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6847
    cmpl-float v0, p1, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 6848
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->forceHideScrims(ZZ)V

    goto :goto_0

    .line 6850
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->forceHideScrims(ZZ)V

    .line 6857
    :cond_1
    :goto_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    .line 6858
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 6863
    const p1, 0x3b03126f    # 0.002f

    .line 6865
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    .line 6866
    return-void
.end method

.method public setWindowState(II)V
    .locals 5
    .param p1, "window"    # I
    .param p2, "state"    # I

    .line 2966
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2967
    .local v2, "showing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v3, :cond_3

    if-ne p1, v0, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    if-eq v3, p2, :cond_3

    .line 2970
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowState:I

    .line 2972
    if-nez v2, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v3, :cond_1

    .line 2973
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapsePanel(ZZF)V

    .line 2976
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v3, :cond_3

    .line 2977
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowHidden:Z

    .line 2978
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideIconsForBouncer(Z)V

    .line 2981
    :cond_3
    return-void
.end method

.method public shouldHandleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 5158
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisabled2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldHideNotifications(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 6380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v0

    return v0
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 6385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldIgnoreTouch()Z
    .locals 1

    .line 5942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->access$2500(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 2337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2339
    return v1

    .line 2343
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 2345
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    .line 2346
    .local v0, "devicePublic":Z
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 2347
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    .line 2348
    .local v3, "userPublic":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v4

    .line 2349
    .local v4, "needsRedaction":Z
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 2350
    return v1

    .line 2357
    .end local v0    # "devicePublic":Z
    .end local v3    # "userPublic":Z
    .end local v4    # "needsRedaction":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    .line 2358
    invoke-virtual {v0}, Lcom/oneplus/notification/OPNotificationController;->isPanelDisabledInBrickMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2359
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    .line 2361
    const-string v0, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No peeking: disabled panel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_4
    return v1

    .line 2366
    :cond_5
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    .line 2367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2369
    return v1

    .line 2370
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2372
    return v1

    .line 2375
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2376
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    goto :goto_3

    .line 2375
    :cond_9
    :goto_2
    move v1, v2

    :goto_3
    return v1

    .line 2379
    :cond_a
    return v2
.end method

.method protected shouldUnlockOnMenuPressed()Z
    .locals 1

    .line 4781
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4782
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDismissOnMenuPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4781
    :goto_0
    return v0
.end method

.method public showAssistDisclosure()V
    .locals 1

    .line 6601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 6602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 6604
    :cond_0
    return-void
.end method

.method protected showBouncer(Z)V
    .locals 1
    .param p1, "scrimmed"    # Z

    .line 4853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 4854
    return-void
.end method

.method public showDismissAnimate(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 1792
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1793
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1794
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isClosingWithAlphaFadeOut()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1795
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldHideDismissButton()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1800
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1801
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissShow:Z

    .line 1802
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissAllButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1803
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissAllButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1804
    return-void

    .line 1807
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissShow:Z

    if-eqz v2, :cond_2

    .line 1808
    return-void

    .line 1811
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissShow:Z

    .line 1812
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v2, 0x7f010025

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1814
    .local v1, "a":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissAllButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDismissAllButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1816
    return-void

    .line 1796
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_3
    :goto_0
    return-void
.end method

.method public showKeyguard()V
    .locals 1

    .line 4303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideNavigationBarGuide()V

    .line 4306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardRequested:Z

    .line 4307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingRemoteInputView:Landroid/view/View;

    .line 4309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    .line 4310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->onLockscreenShown()V

    .line 4311
    return-void
.end method

.method public showKeyguardImpl()V
    .locals 3

    .line 4353
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showKeyguardImpl, mLaunchTransitionFadingAway:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4354
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    .line 4355
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v1, :cond_1

    .line 4356
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4357
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEnded()V

    .line 4359
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 4360
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4361
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    goto :goto_0

    .line 4363
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBarState(I)V

    .line 4365
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    .line 4366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePanelExpansionForKeyguard()V

    .line 4367
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_3

    .line 4368
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 4369
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 4370
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4373
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->isLaunchDial:Z

    .line 4375
    return-void
.end method

.method public showNavigationBarGuide()V
    .locals 1

    .line 6888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarGuide:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    if-eqz v0, :cond_0

    .line 6889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarGuide:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->show()V

    .line 6891
    :cond_0
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 1
    .param p1, "entering"    # Z

    .line 2684
    if-eqz p1, :cond_0

    .line 2685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showPinningStartToast()V

    goto :goto_0

    .line 2687
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showPinningExitToast()V

    .line 2689
    :goto_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 2

    .line 2693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningNotify:Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2694
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2693
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->showEscapeToast(Z)V

    .line 2695
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 5460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5462
    return-void

    .line 5465
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    .line 5466
    return-void
.end method

.method public showScreenPinningRequest(IZ)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "allowCancel"    # Z

    .line 5469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/ScreenPinningRequest;->showPrompt(IZ)V

    .line 5470
    return-void
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 4
    .param p1, "batteryLevel"    # I

    .line 3039
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3055
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Lcom/android/systemui/charging/WirelessChargingAnimation;->makeWirelessChargingAnimation(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-result-object v0

    .line 3056
    invoke-virtual {v0}, Lcom/android/systemui/charging/WirelessChargingAnimation;->show()V

    goto :goto_1

    .line 3041
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/systemui/charging/WirelessChargingAnimation;->makeWirelessChargingAnimation(Landroid/content/Context;Landroid/os/Looper;ILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-result-object v0

    .line 3052
    invoke-virtual {v0}, Lcom/android/systemui/charging/WirelessChargingAnimation;->show()V

    .line 3058
    :goto_1
    return-void
.end method

.method public start()V
    .locals 21

    .line 755
    move-object/from16 v8, p0

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 756
    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 757
    const-class v0, Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLogger;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationLogger:Lcom/android/systemui/statusbar/NotificationLogger;

    .line 758
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 759
    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 760
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 761
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 762
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 763
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 764
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 765
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 766
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 767
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 768
    const-class v0, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 769
    const-string v0, "overlay"

    .line 770
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 769
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 771
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 772
    const-class v0, Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    .line 773
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 774
    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 775
    const-class v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 776
    const-class v0, Lcom/android/systemui/statusbar/AppOpsListener;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AppOpsListener;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppOpsListener:Lcom/android/systemui/statusbar/AppOpsListener;

    .line 777
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mAppOpsListener:Lcom/android/systemui/statusbar/AppOpsListener;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/AppOpsListener;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    .line 778
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 779
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 781
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 782
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, v8}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 784
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 786
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDisplaySize()V

    .line 789
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 790
    .local v9, "res":Landroid/content/res/Resources;
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibrateOnOpening:Z

    .line 792
    const-class v0, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 793
    const v0, 0x7f05003e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    .line 794
    const v0, 0x7f050015

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mClearAllEnabled:Z

    .line 796
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/widget/DateTimeView;->enableReceiveTimetcik(Z)V

    .line 798
    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-static {v0}, Landroid/widget/DateTimeView;->setReceiverHandler(Landroid/os/Handler;)V

    .line 799
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8, v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 802
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 803
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 806
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 807
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 809
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 811
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 814
    const/4 v11, 0x1

    new-array v0, v11, [I

    const/16 v1, 0x3b

    aput v1, v0, v10

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_camera_notch_ignore"

    .line 816
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSettingsObserver:Landroid/database/ContentObserver;

    .line 815
    invoke-virtual {v0, v1, v10, v2, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 820
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mCameraNotchIgnoreSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v11}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 827
    :cond_0
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "buttons_show_on_screen_navkeys"

    .line 828
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mShowOnScreenNavKeysObserver:Landroid/database/ContentObserver;

    .line 827
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 834
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_key_lock_mode"

    .line 835
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyLockObserver:Landroid/database/ContentObserver;

    .line 834
    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 840
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwapNavKeysObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v11}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 841
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_key_define"

    .line 842
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mSwapNavKeysObserver:Landroid/database/ContentObserver;

    .line 841
    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 847
    const-string v0, "statusbar"

    .line 848
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 847
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 850
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/RecentsComponent;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    .line 852
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 853
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 855
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    .line 858
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 859
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 861
    const/16 v0, 0x9

    new-array v7, v0, [I

    .line 862
    .local v7, "switches":[I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 863
    .local v6, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 864
    .local v5, "iconSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 865
    .local v4, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v18, v0

    .line 866
    .local v18, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v19, v0

    .line 868
    .local v19, "dockedStackBounds":Landroid/graphics/Rect;
    :try_start_0
    iget-object v12, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v13, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v14, v5

    move-object v15, v4

    move-object/from16 v16, v7

    move-object/from16 v17, v6

    invoke-interface/range {v12 .. v19}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    goto :goto_0

    .line 870
    :catch_0
    move-exception v0

    .line 874
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createAndAddWindows()V

    .line 877
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 878
    .local v12, "wallpaperChangedFilter":Landroid/content/IntentFilter;
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 879
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual {v0, v1, v13}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 881
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    .line 882
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    aget v1, v7, v10

    const/4 v2, 0x6

    aget v2, v7, v2

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIZ)V

    .line 883
    aget v2, v7, v11

    const/4 v0, 0x7

    aget v3, v7, v0

    const/16 v0, 0x8

    aget v0, v7, v0

    const/4 v14, -0x1

    move-object v1, v8

    move-object v15, v4

    move v4, v0

    .line 883
    .end local v4    # "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    .local v15, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    move-object v11, v5

    move v5, v14

    .line 883
    .end local v5    # "iconSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "iconSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v14, v6

    move-object/from16 v6, v18

    .line 883
    .end local v6    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .local v14, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v16, v7

    move-object/from16 v7, v19

    .line 883
    .end local v7    # "switches":[I
    .local v16, "switches":[I
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 885
    const/4 v0, 0x2

    aget v0, v16, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->topAppWindowChanged(Z)V

    .line 887
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x3

    aget v1, v16, v1

    const/4 v2, 0x4

    aget v2, v16, v2

    const/4 v3, 0x5

    aget v3, v16, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v10

    :goto_2
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 890
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 891
    .local v1, "N":I
    move v0, v10

    .line 891
    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_3

    .line 892
    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 896
    .end local v0    # "i":I
    :cond_3
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v2, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0, v8, v2}, Lcom/android/systemui/statusbar/NotificationListener;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    .line 909
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setHeadsUpUser(I)V

    .line 911
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v0

    .line 912
    .local v2, "internalFilter":Landroid/content/IntentFilter;
    const-string v0, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 913
    const-string v0, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 914
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v3, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mBannerActionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.android.systemui.permission.SELF"

    invoke-virtual {v0, v3, v2, v4, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 917
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v3

    .line 920
    .local v3, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v3, :cond_4

    .line 922
    :try_start_1
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v3, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 925
    goto :goto_4

    .line 923
    :catch_1
    move-exception v0

    .line 924
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register VR mode state listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_4
    const-string/jumbo v0, "wallpaper"

    .line 930
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 929
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    move-object v4, v0

    .line 932
    .local v4, "wallpaperManager":Landroid/app/IWallpaperManager;
    :try_start_2
    invoke-interface {v4, v10, v10}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 935
    goto :goto_5

    .line 933
    :catch_2
    move-exception v0

    .line 940
    :goto_5
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v6, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v0, v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 941
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v6, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v0, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mSignalPolicy:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;

    .line 943
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 944
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startKeyguard()V

    .line 947
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 948
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v8, v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 950
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequest;

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/systemui/recents/ScreenPinningRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mScreenPinningRequest:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 951
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 953
    const-class v0, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-virtual {v0, v8}, Lcom/android/systemui/ActivityStarterDelegate;->setActivityStarterImpl(Lcom/android/systemui/plugins/ActivityStarter;)V

    .line 955
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, v8}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 958
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBarGuide:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 961
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    iput v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mThemeColor:I

    .line 962
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v5, 0x7f0603f7

    invoke-static {v0, v5}, Lcom/android/systemui/util/OPUtils;->getThemeAccentColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mAccentColor:I

    .line 964
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->init(Landroid/content/Context;)V

    .line 965
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;

    invoke-direct {v0, v8, v13}, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$1;)V

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mThemeChangeReceiver:Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;

    .line 966
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mThemeChangeReceiver:Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeChangeReceiver;->init()V

    .line 969
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mSpecialTheme:Z

    .line 972
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, v8}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->addCallback(Ljava/lang/Object;)V

    .line 976
    const-class v0, Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/notification/OPNotificationController;

    iput-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    .line 977
    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPNotificationController:Lcom/oneplus/notification/OPNotificationController;

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0, v5}, Lcom/oneplus/notification/OPNotificationController;->setNotificationEntry(Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    .line 979
    :cond_5
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .line 2287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 2288
    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z
    .param p3, "callback"    # Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .line 2297
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    .line 2299
    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .line 2292
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 2293
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .line 3539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V

    .line 3540
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZI)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z
    .param p4, "flags"    # I

    .line 3532
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V

    .line 3535
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;I)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z
    .param p4, "disallowEnterPictureInPictureWhileLaunching"    # Z
    .param p5, "callback"    # Lcom/android/systemui/plugins/ActivityStarter$Callback;
    .param p6, "flags"    # I

    .line 3545
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3547
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DIAL"

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->isLaunchDial:Z

    .line 3549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 3550
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    .line 3549
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    .line 3551
    .local v0, "afterKeyguardGone":Z
    new-instance v8, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$qR61e-miz2dnqUS6woZRf4R0-jU;

    .local v8, "runnable":Ljava/lang/Runnable;
    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p6

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$qR61e-miz2dnqUS6woZRf4R0-jU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 3591
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$qraaNAx8ala25JxGFJCDWIdkbjI;

    .local v1, "cancelRunnable":Ljava/lang/Runnable;
    invoke-direct {v1, p5}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$qraaNAx8ala25JxGFJCDWIdkbjI;-><init>(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 3596
    const/4 v7, 0x1

    move-object v3, v8

    move-object v4, v1

    move v5, p3

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 3598
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .line 6623
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 6624
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 6626
    :cond_0
    return-void
.end method

.method public startFacelockFailAnimation()V
    .locals 1

    .line 6913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    .line 6914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startFacelockFailAnimation()V

    .line 6916
    :cond_0
    return-void
.end method

.method protected startKeyguard()V
    .locals 9

    .line 1573
    const-string v0, "StatusBar#startKeyguard"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1574
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1575
    .local v0, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    new-instance v8, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 1577
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v7

    move-object v1, v8

    move-object v4, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 1578
    nop

    .line 1579
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBouncerContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 1578
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1580
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1581
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1582
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1583
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 1586
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugin/LSState;->setFingerprintUnlockControl(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    .line 1587
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugin/LSState;->setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 1590
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1591
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->setFingerprintUnlockController(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    .line 1592
    const-class v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$9MqmIExNr864CrvDQmmxl0ZneDg;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$9MqmIExNr864CrvDQmmxl0ZneDg;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->setDismissHandler(Lcom/android/systemui/statusbar/phone/KeyguardDismissHandler;)V

    .line 1595
    new-instance v8, Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-object v1, v8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/OPFacelockController;-><init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 1597
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    if-eqz v1, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mOPFacelockController:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1603
    :cond_0
    const-class v1, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;->init()V

    .line 1606
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1607
    return-void
.end method

.method public startLaunchTransitionTimeout()V
    .locals 4

    .line 4477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4479
    return-void
.end method

.method public startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 6293
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DeE52KNwPP3jHr_NhuYlwpd346w;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DeE52KNwPP3jHr_NhuYlwpd346w;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 6309
    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 6416
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6418
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 6419
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 6420
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v2

    .line 6419
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6421
    .local v0, "afterKeyguardGone":Z
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$6Nvno7ePQYSRhKjwAtJP9V6C7rI;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$6Nvno7ePQYSRhKjwAtJP9V6C7rI;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 6448
    return-void
.end method

.method protected startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "intendSender"    # Landroid/content/IntentSender;
    .param p3, "notificationKey"    # Ljava/lang/String;

    .line 5200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPendingWorkRemoteInputView:Landroid/view/View;

    .line 5202
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1, v0, v0, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 5204
    .local v1, "newIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5205
    return v2

    .line 5207
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5208
    .local v3, "callBackIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5209
    const-string v4, "android.intent.extra.INDEX"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5210
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5212
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const/high16 v5, 0x54000000

    invoke-static {v4, v2, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 5219
    .local v2, "callBackPendingIntent":Landroid/app/PendingIntent;
    const-string v4, "android.intent.extra.INTENT"

    .line 5221
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    .line 5219
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5223
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5227
    goto :goto_0

    .line 5225
    :catch_0
    move-exception v0

    .line 5228
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected toggleKeyboardShortcuts(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 6371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(Landroid/content/Context;I)V

    .line 6372
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .line 6353
    const/16 v0, 0x402

    .line 6354
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeMessages(I)V

    .line 6355
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 6356
    return-void
.end method

.method public togglePanel()V
    .locals 1

    .line 2748
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    .line 2749
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 2751
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    .line 2753
    :goto_0
    return-void
.end method

.method public toggleSplitScreen()V
    .locals 1

    .line 6323
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    .line 6324
    return-void
.end method

.method protected toggleSplitScreenMode(II)Z
    .locals 6
    .param p1, "metricsDockAction"    # I
    .param p2, "metricsUndockAction"    # I

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1632
    return v1

    .line 1634
    :cond_0
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    .line 1635
    .local v0, "dockSide":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 1636
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getNavBarPosition()I

    move-result v4

    .line 1637
    .local v4, "navbarPos":I
    if-ne v4, v3, :cond_1

    .line 1638
    return v1

    .line 1640
    :cond_1
    if-ne v4, v2, :cond_2

    .line 1641
    nop

    .line 1642
    move v1, v2

    nop

    .line 1643
    .local v1, "createMode":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v1, v5, p1}, Lcom/android/systemui/RecentsComponent;->splitPrimaryTask(IILandroid/graphics/Rect;I)Z

    move-result v2

    return v2

    .line 1646
    .end local v1    # "createMode":I
    .end local v4    # "navbarPos":I
    :cond_3
    const-class v4, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/stackdivider/Divider;

    .line 1647
    .local v4, "divider":Lcom/android/systemui/stackdivider/Divider;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/Divider;->isMinimized()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/Divider;->isHomeStackResizable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1649
    return v1

    .line 1651
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;-><init>()V

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1652
    if-eq p2, v3, :cond_5

    .line 1653
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1657
    .end local v4    # "divider":Lcom/android/systemui/stackdivider/Divider;
    :cond_5
    return v2
.end method

.method public topAppWindowChanged(Z)V
    .locals 1
    .param p1, "showMenu"    # Z

    .line 3304
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLightsOn(Z)V

    .line 3305
    :cond_0
    return-void
.end method

.method public touchAutoDim()V
    .locals 4

    .line 3244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_0

    .line 3245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->setAutoDim(Z)V

    .line 3247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoDim:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3248
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAutoDim:Ljava/lang/Runnable;

    const-wide/16 v2, 0x8ca

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3251
    :cond_1
    return-void
.end method

.method touchAutoHide()V
    .locals 2

    .line 3062
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 3063
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isSemiTransparent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3066
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->cancelAutohide()V

    goto :goto_1

    .line 3064
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->scheduleAutohide()V

    .line 3068
    :goto_1
    return-void
.end method

.method updateDisplaySize()V
    .locals 2

    .line 3506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3512
    return-void
.end method

.method protected updateFooter()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1764
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mClearAllEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveClearableNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1765
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1766
    .local v0, "showDismissView":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 1767
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 1769
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1771
    .local v3, "showFooterView":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateFooterView(ZZ)V

    .line 1774
    if-eqz v0, :cond_3

    .line 1775
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->showDismissAnimate(Z)V

    goto :goto_2

    .line 1778
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    .line 1779
    const-string v1, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateClearAll hideDismissAnimate mState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " hasActiveClearableNotifications="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveClearableNotifications()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isFullyExpanded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1781
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1779
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideDismissAnimate(Z)V

    .line 1786
    :goto_2
    return-void
.end method

.method public updateKeyguardMaxNotifications()V
    .locals 3

    .line 6404
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6407
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxNotificationsWhileLocked(Z)I

    move-result v0

    .line 6408
    .local v0, "maxBefore":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxNotificationsWhileLocked(Z)I

    move-result v1

    .line 6409
    .local v1, "maxNotifications":I
    if-eq v0, v1, :cond_0

    .line 6410
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    .line 6413
    .end local v0    # "maxBefore":I
    .end local v1    # "maxNotifications":I
    :cond_0
    return-void
.end method

.method protected updateKeyguardState(ZZ)V
    .locals 5
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .line 4641
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateKeyguardState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", occlude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    const-string v0, "StatusBar#updateKeyguardState"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4644
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 4645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 4646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 4647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_0

    .line 4648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v2, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 4650
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    .line 4651
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 4652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 4655
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 4656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_5

    .line 4657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-nez p1, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 4662
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 4663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientIndicationContainer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4666
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v0, v3, v4, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    .line 4667
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 4668
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDozingState()V

    .line 4669
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updatePublicMode()V

    .line 4670
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStackScrollerState(ZZ)V

    .line 4671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 4672
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 4673
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 4674
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v2, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    .line 4675
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 4676
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4677
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v3

    .line 4675
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->notifyKeyguardState(ZZZ)V

    .line 4678
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 4679
    return-void
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 17
    .param p1, "metaDataChanged"    # Z
    .param p2, "allowEnterAnimation"    # Z

    move-object/from16 v0, p0

    .line 1960
    move/from16 v1, p2

    const-string v2, "StatusBar#updateMediaMetaData"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1966
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-nez v2, :cond_0

    .line 1967
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1968
    return-void

    .line 1971
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 1972
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1973
    .local v2, "wakeAndUnlock":Z
    :goto_0
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    const/4 v6, 0x4

    if-nez v5, :cond_1c

    if-eqz v2, :cond_2

    goto/16 :goto_f

    .line 1980
    :cond_2
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object v5

    .line 1990
    .local v5, "mediaMetadata":Landroid/media/MediaMetadata;
    const/4 v7, 0x0

    .line 1991
    .local v7, "artworkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4

    .line 1992
    const-string v8, "android.media.metadata.ART"

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1993
    .local v8, "artworkBitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_3

    .line 1994
    const-string v9, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1997
    :cond_3
    if-eqz v8, :cond_4

    .line 1998
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v7, v9

    .line 2001
    .end local v8    # "artworkBitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v8, 0x0

    .line 2002
    .local v8, "allowWhenShade":Z
    if-nez v7, :cond_7

    .line 2003
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2004
    .local v9, "lockWallpaper":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_6

    .line 2005
    new-instance v10, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    .line 2006
    invoke-virtual {v11}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v7, v10

    .line 2009
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2010
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v3

    goto :goto_1

    :cond_5
    move v10, v4

    :goto_1
    move v8, v10

    goto :goto_2

    .line 2013
    :cond_6
    const-string v10, "StatusBar"

    const-string/jumbo v11, "updateMediaMetaData: lockWallpaper = null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    .end local v9    # "lockWallpaper":Landroid/graphics/Bitmap;
    :cond_7
    :goto_2
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2019
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v3

    goto :goto_3

    :cond_8
    move v9, v4

    .line 2021
    .local v9, "hideBecauseOccluded":Z
    :goto_3
    if-eqz v7, :cond_9

    move v10, v3

    goto :goto_4

    :cond_9
    move v10, v4

    .line 2023
    .local v10, "hasArtwork":Z
    :goto_4
    const-string v11, "StatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateMediaMetaData: hasArtwork = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", mState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", mDozing:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", delay:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", vis:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 2024
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", alpha:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/BackDropView;->getAlpha()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", meta:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", fading:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-eqz v14, :cond_a

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isFingerprintAuthenticating()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2023
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const v11, 0x3b03126f    # 0.002f

    const/4 v12, 0x2

    if-nez v10, :cond_c

    goto/16 :goto_a

    :cond_c
    iget v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v14, :cond_d

    if-eqz v8, :cond_14

    :cond_d
    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 2032
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v14

    if-eq v14, v12, :cond_14

    if-nez v9, :cond_14

    .line 2036
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v12

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v12, :cond_f

    .line 2037
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v12, v4}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    .line 2038
    if-eqz v1, :cond_e

    .line 2039
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    .line 2040
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_7

    .line 2042
    :cond_e
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2043
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v11, v14}, Lcom/android/systemui/statusbar/BackDropView;->setAlpha(F)V

    .line 2048
    :goto_7
    const/4 v11, 0x1

    .line 2049
    .end local p1    # "metaDataChanged":Z
    .local v11, "metaDataChanged":Z
    sget-boolean v12, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_10

    .line 2050
    const-string v12, "StatusBar"

    const-string v13, "DEBUG_MEDIA: Fading in album artwork"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2054
    .end local v11    # "metaDataChanged":Z
    .restart local p1    # "metaDataChanged":Z
    :cond_f
    move v11, v13

    .line 2054
    .end local p1    # "metaDataChanged":Z
    .restart local v11    # "metaDataChanged":Z
    :cond_10
    :goto_8
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v12, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowing(Z)V

    .line 2057
    if-eqz v11, :cond_1b

    .line 2058
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 2059
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    .line 2060
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    .line 2061
    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2062
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2063
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v6, :cond_11

    .line 2064
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 2066
    :cond_11
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2067
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2068
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_9

    .line 2069
    :cond_12
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2078
    :goto_9
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2080
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimSrcModeEnabled:Z

    if-eqz v3, :cond_13

    .line 2081
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 2084
    :cond_13
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1b

    .line 2091
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropFront:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v12, 0xfa

    .line 2092
    invoke-virtual {v3, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    .line 2093
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_e

    .line 2099
    .end local v11    # "metaDataChanged":Z
    .restart local p1    # "metaDataChanged":Z
    :cond_14
    :goto_a
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v6

    const/16 v14, 0x8

    if-eq v6, v14, :cond_1a

    .line 2100
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_15

    .line 2101
    const-string v6, "StatusBar"

    const-string v15, "DEBUG_MEDIA: Fading out album artwork"

    invoke-static {v6, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_15
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v6, v4}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->setMediaBackdropVisible(Z)V

    .line 2104
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v6, :cond_16

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimateChange()Z

    move-result v6

    if-nez v6, :cond_16

    move v6, v3

    goto :goto_b

    :cond_16
    move v6, v4

    .line 2105
    .local v6, "cannotAnimateDoze":Z
    :goto_b
    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v15

    if-eq v15, v12, :cond_19

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 2108
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v12

    if-eq v12, v3, :cond_19

    if-nez v9, :cond_19

    if-eqz v6, :cond_17

    goto :goto_c

    .line 2117
    :cond_17
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowing(Z)V

    .line 2118
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2119
    invoke-virtual {v3, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 2120
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v11, 0x12c

    .line 2121
    invoke-virtual {v3, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2122
    const-wide/16 v11, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$C-RWRb4inp8b8E1GqUxOSt2QF1w;

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$C-RWRb4inp8b8E1GqUxOSt2QF1w;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 2123
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2137
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAway:Z

    if-eqz v3, :cond_1a

    .line 2139
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v3

    if-nez v3, :cond_18

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v3, :cond_18

    .line 2140
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2141
    invoke-virtual {v3, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 2142
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2143
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_d

    .line 2145
    :cond_18
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BackDropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2149
    invoke-virtual {v3, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-wide v11, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardFadingAwayDelay:J

    .line 2151
    invoke-virtual {v3, v11, v12}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 2152
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2153
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2153
    .end local v6    # "cannotAnimateDoze":Z
    goto :goto_d

    .line 2113
    .restart local v6    # "cannotAnimateDoze":Z
    :cond_19
    :goto_c
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    .line 2114
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdropBack:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2115
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowing(Z)V

    .line 2160
    .end local v6    # "cannotAnimateDoze":Z
    :cond_1a
    :goto_d
    move v11, v13

    .line 2160
    .end local p1    # "metaDataChanged":Z
    .restart local v11    # "metaDataChanged":Z
    :cond_1b
    :goto_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2161
    return-void

    .line 1974
    .end local v5    # "mediaMetadata":Landroid/media/MediaMetadata;
    .end local v7    # "artworkDrawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "allowWhenShade":Z
    .end local v9    # "hideBecauseOccluded":Z
    .end local v10    # "hasArtwork":Z
    .end local v11    # "metaDataChanged":Z
    .restart local p1    # "metaDataChanged":Z
    :cond_1c
    :goto_f
    move/from16 v13, p1

    const-string v3, "StatusBar"

    const-string v4, "set backdrop invisible"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/BackDropView;->setVisibility(I)V

    .line 1976
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1977
    return-void
.end method

.method public updateNotificationViews()V
    .locals 3

    .line 1674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1677
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1678
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$GA5FozNehiplNux-Psv9796exeM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$GA5FozNehiplNux-Psv9796exeM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 1679
    return-void

    .line 1682
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    .line 1685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isAnyProfilePublicMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 1686
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->isIsAnyNotifLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 1687
    .local v0, "publicMode":Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz v2, :cond_4

    .line 1688
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setPublicMode(Z)V

    .line 1690
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHideSensitive(ZZ)V

    .line 1693
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateSpeedBumpIndex()V

    .line 1694
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateFooter()V

    .line 1695
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateEmptyShadeView()V

    .line 1697
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateQsExpansionEnabled()V

    .line 1700
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons()V

    .line 1701
    return-void

    .line 1674
    .end local v0    # "publicMode":Z
    :cond_5
    :goto_2
    return-void
.end method

.method updateResources()V
    .locals 4

    .line 3891
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_1

    .line 3894
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 3895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    goto :goto_0

    .line 3897
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$FKQ4i_kIsw_qgBmy2K3aCTEx92Q;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$FKQ4i_kIsw_qgBmy2K3aCTEx92Q;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3902
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->loadDimens()V

    .line 3904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_2

    .line 3905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    .line 3907
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_4

    .line 3910
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_3

    .line 3911
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources()V

    goto :goto_1

    .line 3913
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a24HBZml8yKUm7feoUJScIrIzEQ;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$a24HBZml8yKUm7feoUJScIrIzEQ;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3917
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_5

    .line 3918
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 3920
    :cond_5
    return-void
.end method

.method updateScrimController()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5686
    const-string v0, "StatusBar#updateScrimController"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5690
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v0

    .line 5693
    .local v0, "wakeAndUnlocking":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 5694
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isFingerprintUnlock()Z

    move-result v2

    .line 5693
    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExpansionAffectsAlpha(Z)V

    .line 5696
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateScrimController isInLaunchTransition:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mBouncerShowing:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isKeyguardDone:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    .line 5697
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mVisible:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isSecure:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 5698
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isLaunchDial:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->isLaunchDial:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5696
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5699
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->isLaunchDial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 5700
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 5701
    .local v1, "keepShowScrim":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBouncerShowing:Z

    if-nez v2, :cond_8

    if-eqz v1, :cond_1

    goto :goto_2

    .line 5714
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchCameraOnScreenTurningOn:Z

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 5716
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBrightnessMirrorVisible:Z

    if-eqz v2, :cond_3

    .line 5717
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_5

    .line 5718
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_5

    .line 5720
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v2, :cond_5

    .line 5721
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_5

    .line 5722
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    .line 5723
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_5

    .line 5725
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_5

    .line 5715
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_5

    .line 5710
    :cond_8
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsOccluded:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 5706
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 5707
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->willDismissWithAction()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 5708
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isFullscreenBouncer()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v1, :cond_9

    goto :goto_3

    .line 5712
    :cond_9
    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    goto :goto_4

    :cond_a
    :goto_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 5713
    .local v2, "state":Lcom/android/systemui/statusbar/phone/ScrimState;
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 5714
    .end local v2    # "state":Lcom/android/systemui/statusbar/phone/ScrimState;
    nop

    .line 5727
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 5728
    return-void
.end method

.method public updateStackScrollerState(ZZ)V
    .locals 6
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .line 4750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_0

    return-void

    .line 4751
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4752
    .local v0, "onKeyguard":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isAnyProfilePublicMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 4754
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->isIsAnyNotifLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    .line 4756
    .local v3, "publicMode":Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz v4, :cond_4

    .line 4757
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setPublicMode(Z)V

    .line 4759
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v3, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHideSensitive(ZZ)V

    .line 4760
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 4761
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandingEnabled(Z)V

    .line 4762
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v2

    .line 4763
    .local v2, "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 4764
    if-eqz v2, :cond_6

    .line 4765
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 4767
    :cond_6
    return-void
.end method

.method protected updateTheme()V
    .locals 10

    .line 4685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4688
    .local v0, "inflated":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 4689
    invoke-virtual {v3, v2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v3

    .line 4690
    .local v3, "systemColors":Landroid/app/WallpaperColors;
    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 4691
    invoke-virtual {v3}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    move v1, v2

    nop

    .line 4692
    .local v1, "useDarkTheme":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isUsingDarkTheme()Z

    move-result v5

    if-eq v5, v1, :cond_2

    .line 4693
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v6, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$OtcwMYiZpJs8wBnycDhqBv7BDDc;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$OtcwMYiZpJs8wBnycDhqBv7BDDc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 4705
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v5, v4, v2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v5

    .line 4706
    invoke-virtual {v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v5

    .line 4707
    .local v5, "lockDarkText":Z
    if-eqz v5, :cond_3

    const v6, 0x7f12042a

    goto :goto_1

    :cond_3
    const v6, 0x7f120424

    .line 4708
    .local v6, "themeResId":I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getThemeResId()I

    move-result v7

    if-eq v7, v6, :cond_4

    .line 4709
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->setTheme(I)V

    .line 4710
    if-eqz v0, :cond_4

    .line 4711
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onThemeChanged()V

    .line 4715
    :cond_4
    if-eqz v0, :cond_7

    .line 4717
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v7, v2, :cond_6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v7, v4, :cond_5

    goto :goto_2

    .line 4720
    :cond_5
    move v4, v2

    goto :goto_3

    .line 4718
    :cond_6
    :goto_2
    const/4 v4, 0x2

    .line 4720
    .local v4, "which":I
    :goto_3
    nop

    .line 4722
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v7, v4, v2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v2

    .line 4723
    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    .line 4724
    .local v2, "useDarkText":Z
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "useDarkText:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", lockDarkText:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", useDarkTheme:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateDecorViews(Z)V

    .line 4728
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setKeyguardDark(Z)V

    .line 4730
    .end local v2    # "useDarkText":Z
    .end local v4    # "which":I
    :cond_7
    return-void
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .line 6498
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    .line 6499
    .local v0, "oldVisibleToUser":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    .line 6501
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_1

    .line 6502
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleVisibleToUserChanged(Z)V

    .line 6504
    :cond_1
    return-void
.end method

.method public userActivity()V
    .locals 2

    .line 4770
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4771
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 4773
    :cond_0
    return-void
.end method

.method vibrate()V
    .locals 4

    .line 4056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 4058
    .local v0, "vib":Landroid/os/Vibrator;
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 4059
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .line 6484
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 6485
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisible:Z

    .line 6486
    if-nez p1, :cond_0

    .line 6487
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 6490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 6494
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 6495
    return-void
.end method

.method public wakeUpIfDozing(JLandroid/view/View;)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "where"    # Landroid/view/View;

    .line 5478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    if-eqz v0, :cond_0

    .line 5479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5480
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "com.android.systemui:NODOZE"

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 5481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpComingFromTouch:Z

    .line 5482
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    invoke-virtual {p3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5483
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTmpInt2:[I

    aget v1, v4, v1

    .line 5484
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpTouchLocation:Landroid/graphics/PointF;

    .line 5485
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 5486
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->onScreenOnFromTouch()V

    .line 5488
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
