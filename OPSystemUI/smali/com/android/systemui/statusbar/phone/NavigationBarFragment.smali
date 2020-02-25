.class public Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.super Landroid/app/Fragment;
.source "NavigationBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;,
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;,
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;,
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;
    }
.end annotation


# instance fields
.field private mAccessibilityFeedbackEnabled:Z

.field private final mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCancelPendingRotationProposal:Ljava/lang/Runnable;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisabledFlags1:I

.field private mDisabledFlags2:I

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mHideNavBar:Z

.field public mHomeBlockedThisTouch:Z

.field private mHoveringRotationSuggestion:Z

.field private mIsInBrickMode:Z

.field private mLastLockToAppLongPress:J

.field private mLastRotationSuggestion:I

.field private mLayoutDirection:I

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLocale:Ljava/util/Locale;

.field private mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavActionListener:Landroid/view/View$OnClickListener;

.field private mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

.field private mNavigationBarColor:I

.field private mNavigationBarMode:I

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field private final mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

.field private mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

.field private mPendingRotationSuggestion:Z

.field private mRecents:Lcom/android/systemui/recents/Recents;

.field private final mRemoveRotationProposal:Ljava/lang/Runnable;

.field private mRotateHideAnimator:Landroid/animation/Animator;

.field private final mRotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSystemUiVisibility:I

.field private mTaskStackListener:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;

.field private mViewRippler:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 115
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 134
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    .line 136
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 145
    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 172
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$2a6PQeDykikHzH0rBVD4AZZp14o;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$2a6PQeDykikHzH0rBVD4AZZp14o;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRemoveRotationProposal:Ljava/lang/Runnable;

    .line 173
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Wf_FUQzkbSdMD9hXKJaXOD_rVSY;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Wf_FUQzkbSdMD9hXKJaXOD_rVSY;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    .line 176
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mViewRippler:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;

    .line 178
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    .line 209
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHideNavBar:Z

    .line 210
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarColor:I

    .line 212
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsInBrickMode:Z

    .line 867
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavActionListener:Landroid/view/View$OnClickListener;

    .line 1165
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dxES00kAyC8r2RmY9FwTYgUhoj8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dxES00kAyC8r2RmY9FwTYgUhoj8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1220
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 1253
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1378
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHideNavBar:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .param p1, "x1"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHideNavBar:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .param p1, "x1"    # Z

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHideNavBar(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityManager;

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/OverviewProxyService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    return-object v0
.end method

.method private computeRotationProposalTimeout()I
    .locals 1

    .line 663
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityFeedbackEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4e20

    return v0

    .line 664
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHoveringRotationSuggestion:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    .line 665
    :cond_1
    const/16 v0, 0x2710

    return v0
.end method

.method public static create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 1332
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e3

    const v4, 0x20840068

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1342
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1343
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1344
    const v1, 0x7f1103fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 1345
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1347
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d00e9

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1351
    .local v1, "navigationBarView":Landroid/view/View;
    if-nez v1, :cond_0

    return-object v2

    .line 1353
    :cond_0
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1354
    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    .line 1355
    .local v2, "fragmentHost":Lcom/android/systemui/fragments/FragmentHostManager;
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;-><init>()V

    .line 1356
    .local v3, "fragment":Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0a027e

    const-string v6, "NavigationBar"

    .line 1357
    invoke-virtual {v4, v5, v3, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 1358
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 1359
    const-string v4, "NavigationBar"

    invoke-virtual {v2, v4, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 1360
    return-object v1
.end method

.method private hasDisable2RotateSuggestionFlag(I)Z
    .locals 1
    .param p1, "disable2Flags"    # I

    .line 771
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private incrementNumAcceptedRotationSuggestionsIfNeeded()V
    .locals 4

    .line 676
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 677
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "num_rotation_suggestions_accepted"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 681
    .local v1, "numSuggestions":I
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 682
    const-string v2, "num_rotation_suggestions_accepted"

    add-int/lit8 v3, v1, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 685
    :cond_0
    return-void
.end method

.method private isRotateSuggestionIntroduced()Z
    .locals 4

    .line 669
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 670
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "num_rotation_suggestions_accepted"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isRotationAnimationCCW(II)Z
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 540
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    return v0

    .line 541
    :cond_0
    const/4 v2, 0x2

    if-nez p1, :cond_1

    if-ne p2, v2, :cond_1

    return v1

    .line 542
    :cond_1
    const/4 v3, 0x3

    if-nez p1, :cond_2

    if-ne p2, v3, :cond_2

    return v1

    .line 543
    :cond_2
    if-ne p1, v1, :cond_3

    if-nez p2, :cond_3

    return v1

    .line 544
    :cond_3
    if-ne p1, v1, :cond_4

    if-ne p2, v2, :cond_4

    return v0

    .line 545
    :cond_4
    if-ne p1, v1, :cond_5

    if-ne p2, v3, :cond_5

    return v1

    .line 546
    :cond_5
    if-ne p1, v2, :cond_6

    if-nez p2, :cond_6

    return v1

    .line 547
    :cond_6
    if-ne p1, v2, :cond_7

    if-ne p2, v1, :cond_7

    return v1

    .line 548
    :cond_7
    if-ne p1, v2, :cond_8

    if-ne p2, v3, :cond_8

    return v0

    .line 549
    :cond_8
    if-ne p1, v3, :cond_9

    if-nez p2, :cond_9

    return v0

    .line 550
    :cond_9
    if-ne p1, v3, :cond_a

    if-ne p2, v1, :cond_a

    return v1

    .line 551
    :cond_a
    if-ne p1, v3, :cond_b

    if-ne p2, v2, :cond_b

    return v1

    .line 552
    :cond_b
    return v0
.end method

.method public static synthetic lambda$-5zWkb0xwQ86wYhCk6W_5t9CDxE(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRotateSuggestionClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$0mmLLxBq7RxotphHQB_RtYb4SpQ(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$RtBTLxltRKo37YrTKiaCXCxwRDg(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$VEqqEZFjg0f3lWOW2BJ66Oo_2aE(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$X9JO9eLzlFoQkYf8XrZG-l2EMsk(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Ylizyb5K7ZQr77j1Ehc8SUjcI6E(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$disableAnimationsDuringHide$2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 2

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$dtGeJfWz2E4_XAoQgX8peIw4kU8(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackRecents(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$dxES00kAyC8r2RmY9FwTYgUhoj8(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method public static synthetic lambda$eFJm5m1txtISSi8Cx3m3pc8Nvjw(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onVerticalChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 1

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 1

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mPendingRotationSuggestion:Z

    return-void
.end method

.method public static synthetic lambda$oZtQ9jE1OTI8AtitIxsN6ETT4sc(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$rOeIdAxSsC2NXHBJKZPXVBzZPfI(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$y_1OHmWTpLl8uCcO3A0Am620g94(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private notifyNavigationBarScreenOn()V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 816
    return-void
.end method

.method private onAccessibilityClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked()V

    .line 1064
    return-void
.end method

.method private onAccessibilityLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1067
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1069
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1070
    const/4 v1, 0x1

    return v1
.end method

.method private onHideNavBar(Z)V
    .locals 4
    .param p1, "forceShow"    # Z

    .line 1389
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHideNavBar:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1391
    .local v0, "hide":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHideNavBar(Z)V

    .line 1393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setHideNavBarOn(Z)V

    .line 1394
    :cond_1
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "NavigationBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHideNavBar mHideNavBar="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHideNavBar:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " forceShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_2
    return-void
.end method

.method private onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 887
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    return v1

    .line 893
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 895
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    .line 896
    nop

    .line 897
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 898
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 899
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 900
    const-string v2, "NavigationBar"

    const-string v3, "Ignoring HOME; there\'s a ringing incoming call. No heads up"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    .line 903
    return v1

    .line 909
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 912
    :cond_2
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onLongPressBackHome(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onNavigationButtonLongPress(Landroid/view/View;)V

    .line 971
    const v0, 0x7f0a006f

    const v1, 0x7f0a0195

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method private onLongPressBackRecents(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 975
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onNavigationButtonLongPress(Landroid/view/View;)V

    .line 976
    const v0, 0x7f0a006f

    const v1, 0x7f0a0347

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method private onLongPressNavigationButtons(Landroid/view/View;II)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "btnId1"    # I
    .param p3, "btnId2"    # I

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 995
    move/from16 v3, p3

    const/4 v0, 0x0

    .line 996
    .local v0, "sendBackLongPress":Z
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 997
    .local v5, "activityManager":Landroid/app/IActivityManager;
    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    .line 998
    .local v6, "touchExplorationEnabled":Z
    invoke-interface {v5}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    .line 999
    .local v7, "inLockTaskMode":Z
    const v8, 0x7f0a0347

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    if-nez v6, :cond_3

    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1004
    .local v10, "time":J
    iget-wide v12, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J

    sub-long v12, v10, v12

    const-wide/16 v14, 0xc8

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    .line 1005
    invoke-interface {v5}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V

    .line 1007
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1008
    return v9

    .line 1009
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    if-ne v12, v2, :cond_2

    .line 1010
    if-ne v3, v8, :cond_1

    .line 1011
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    .line 1013
    .local v8, "button":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    :goto_0
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->isPressed()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1016
    const/4 v0, 0x1

    .line 1019
    .end local v8    # "button":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    :cond_2
    iput-wide v10, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J

    .line 1020
    .end local v10    # "time":J
    goto :goto_2

    .line 1022
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, v2, :cond_4

    .line 1023
    const/4 v0, 0x1

    goto :goto_2

    .line 1024
    :cond_4
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 1027
    invoke-interface {v5}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V

    .line 1029
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1030
    return v9

    .line 1031
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, v3, :cond_7

    .line 1032
    if-ne v3, v8, :cond_6

    .line 1033
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressRecents()Z

    move-result v8

    goto :goto_1

    .line 1034
    :cond_6
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeLongClick(Landroid/view/View;)Z

    move-result v8

    .line 1032
    :goto_1
    return v8

    .line 1037
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 1038
    move-object/from16 v10, p1

    check-cast v10, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 1039
    .local v10, "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    const/16 v11, 0x80

    invoke-virtual {v10, v4, v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 1040
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    return v9

    .line 1045
    .end local v0    # "sendBackLongPress":Z
    .end local v5    # "activityManager":Landroid/app/IActivityManager;
    .end local v6    # "touchExplorationEnabled":Z
    .end local v7    # "inLockTaskMode":Z
    .end local v10    # "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_8
    goto :goto_3

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "NavigationBar"

    const-string v6, "Unable to reach activity manager"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1046
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return v4
.end method

.method private onLongPressRecents()Z
    .locals 3

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 1051
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 1054
    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/16 v1, 0x10f

    const/16 v2, 0x11e

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    move-result v0

    return v0

    .line 1055
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 920
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkUserAutohide(Landroid/view/MotionEvent;)V

    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method private onRecentsClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 961
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 966
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->toggleRecentApps()V

    .line 967
    return-void
.end method

.method private onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 947
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 948
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 949
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->preloadRecentApps()V

    goto :goto_0

    .line 950
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    goto :goto_0

    .line 952
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 953
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 954
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    .line 957
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private onRotateSuggestionClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x507

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->incrementNumAcceptedRotationSuggestionsIfNeeded()V

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastRotationSuggestion:I

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    .line 1113
    return-void
.end method

.method private onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1117
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHoveringRotationSuggestion:Z

    .line 1119
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->rescheduleRotationTimeout(Z)V

    .line 1120
    return v2
.end method

.method private onRotationSuggestionsDisabled()V
    .locals 2

    .line 525
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(ZZ)V

    .line 528
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 529
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 530
    :cond_0
    return-void
.end method

.method private onVerticalChanged(Z)V
    .locals 2
    .param p1, "isVertical"    # Z

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsScrimEnabled(Z)V

    .line 917
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 4

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 822
    return-void

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 830
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportHideNavBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 832
    .local v0, "navButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    .end local v0    # "navButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomKeys()Z

    move-result v0

    if-nez v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 840
    .local v0, "recentsButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$0mmLLxBq7RxotphHQB_RtYb4SpQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$0mmLLxBq7RxotphHQB_RtYb4SpQ;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$VEqqEZFjg0f3lWOW2BJ66Oo_2aE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$VEqqEZFjg0f3lWOW2BJ66Oo_2aE;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 842
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 843
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 845
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    .line 846
    .local v2, "backButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 848
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    .line 849
    .local v1, "homeButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$y_1OHmWTpLl8uCcO3A0Am620g94;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$y_1OHmWTpLl8uCcO3A0Am620g94;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 850
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$8vcstZEv0YyG7EUTK_UrsNSFXRo;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$8vcstZEv0YyG7EUTK_UrsNSFXRo;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 852
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    .line 856
    .end local v0    # "recentsButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .end local v1    # "homeButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .end local v2    # "backButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 857
    .local v0, "accessibilityButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Ylizyb5K7ZQr77j1Ehc8SUjcI6E;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Ylizyb5K7ZQr77j1Ehc8SUjcI6E;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$RtBTLxltRKo37YrTKiaCXCxwRDg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$RtBTLxltRKo37YrTKiaCXCxwRDg;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 859
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    .line 861
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    .line 862
    .local v1, "rotateSuggestionButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$-5zWkb0xwQ86wYhCk6W_5t9CDxE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$-5zWkb0xwQ86wYhCk6W_5t9CDxE;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$rOeIdAxSsC2NXHBJKZPXVBzZPfI;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$rOeIdAxSsC2NXHBJKZPXVBzZPfI;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 864
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 793
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 796
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 795
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    return-void

    .line 791
    :cond_1
    :goto_0
    return-void
.end method

.method private rescheduleRotationTimeout(Z)V
    .locals 4
    .param p1, "reasonHover"    # Z

    .line 650
    if-eqz p1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRotateButtonVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 657
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 658
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRemoveRotationProposal:Ljava/lang/Runnable;

    .line 659
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->computeRotationProposalTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 658
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    return-void
.end method

.method private setDisabled2Flags(I)V
    .locals 1
    .param p1, "state2"    # I

    .line 766
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->hasDisable2RotateSuggestionFlag(I)Z

    move-result v0

    .line 767
    .local v0, "rotateSuggestionsDisabled":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRotationSuggestionsDisabled()V

    .line 768
    :cond_0
    return-void
.end method

.method private shouldDisableNavbarGestures()Z
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

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

.method private showAndLogRotationSuggestion()V
    .locals 2

    .line 533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(Z)V

    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->rescheduleRotationTimeout(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x508

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 536
    return-void
.end method

.method private updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 9
    .param p1, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .line 1074
    const/4 v0, 0x0

    move v1, v0

    .line 1076
    .local v1, "requestingServices":I
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "accessibility_display_magnification_navbar_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v2, :cond_0

    .line 1079
    add-int/lit8 v1, v1, 0x1

    .line 1082
    :cond_0
    goto :goto_0

    .line 1081
    :catch_0
    move-exception v3

    .line 1084
    :goto_0
    const/4 v3, 0x0

    .line 1087
    .local v3, "feedbackEnabled":Z
    nop

    .line 1088
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    .line 1090
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_3

    .line 1091
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1092
    .local v6, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v7, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_1

    .line 1093
    add-int/lit8 v1, v1, 0x1

    .line 1096
    :cond_1
    iget v7, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v7, :cond_2

    iget v7, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/16 v8, 0x10

    if-eq v7, v8, :cond_2

    .line 1098
    const/4 v3, 0x1

    .line 1090
    .end local v6    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1102
    .end local v5    # "i":I
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityFeedbackEnabled:Z

    .line 1104
    if-lt v1, v2, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v0

    .line 1105
    .local v5, "showAccessibilityButton":Z
    :goto_2
    const/4 v6, 0x2

    if-lt v1, v6, :cond_5

    move v0, v2

    nop

    .line 1106
    .local v0, "targetSelection":Z
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v5, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    .line 1107
    return-void
.end method

.method private updateScreenPinningGestures()V
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 801
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    .line 806
    .local v0, "recentsVisible":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    .line 807
    .local v1, "backButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    if-eqz v0, :cond_1

    .line 808
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 810
    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$oZtQ9jE1OTI8AtitIxsN6ETT4sc;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$oZtQ9jE1OTI8AtitIxsN6ETT4sc;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 812
    :goto_0
    return-void
.end method


# virtual methods
.method public checkNavBarModes()V
    .locals 4

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 1146
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    .line 1145
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 1149
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_2

    .line 1151
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    goto :goto_1

    .line 1152
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    .line 1159
    :cond_2
    :goto_1
    return-void
.end method

.method public disable(IIZ)V
    .locals 3
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 747
    const/high16 v0, 0x3600000

    and-int/2addr v0, p1

    .line 751
    .local v0, "masked":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    if-eq v0, v1, :cond_1

    .line 752
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    .line 753
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 754
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    .line 757
    :cond_1
    and-int/lit8 v1, p2, 0x10

    .line 758
    .local v1, "masked2":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    if-eq v1, v2, :cond_2

    .line 759
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 760
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setDisabled2Flags(I)V

    .line 762
    :cond_2
    return-void
.end method

.method public disableAnimationsDuringHide(J)V
    .locals 4
    .param p1, "delay"    # J

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$wHCoB9XA9DosUU7aBE6XFRCVIq8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$wHCoB9XA9DosUU7aBE6XFRCVIq8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    const-wide/16 v2, 0x1c0

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1138
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 391
    const-string v0, "  mNavigationBarWindowState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    const-string v0, "  mNavigationBarMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    const-string v0, "mNavigationBarView"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 398
    :cond_0
    const-string v0, "  mNavigationBarView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_1

    .line 400
    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void
.end method

.method public finishBarAnimations()V
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 1163
    return-void
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    return-object v0
.end method

.method public isSemiTransparent()Z
    .locals 2

    .line 1131
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notifyNavBarColorChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1365
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1367
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarColor:I

    .line 1369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/systemui/util/OPUtils;->updateTopPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    .line 1374
    :cond_1
    return-void
.end method

.method public onBrickModeChanged(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .line 1398
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsInBrickMode:Z

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsInBrickMode:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onBrickModeChanged(Z)V

    .line 1400
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHideNavBar(Z)V

    .line 1401
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 372
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 374
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 375
    .local v1, "ld":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    if-eq v1, v2, :cond_1

    .line 381
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    .line 382
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    .line 383
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->refreshLayout(I)V

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    .line 386
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 219
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/recents/Recents;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/Recents;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 227
    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 230
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 236
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->onChange(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "op_navigation_bar_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "op_gesture_button_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 250
    if-eqz p1, :cond_0

    .line 251
    const-string v0, "disabled_state"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    .line 252
    const-string v0, "disabled2_state"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 254
    :cond_0
    const-class v0, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 255
    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 258
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    nop

    .line 264
    const-class v0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addCallback(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 273
    .local v0, "winRotation":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v2, v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    .line 277
    .end local v0    # "winRotation":I
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;

    .line 278
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 281
    const-class v0, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-virtual {v0}, Lcom/oneplus/scene/OPSceneModeObserver;->isInBrickMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsInBrickMode:Z

    .line 283
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHideNavBar(Z)V

    .line 285
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 321
    const v0, 0x7f0d00e4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 289
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 291
    const-class v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 298
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 299
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    nop

    .line 305
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->removeCallback(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/OverviewProxyService;->removeCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->destroy()V

    .line 316
    :cond_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onDestroyView()V
    .locals 2

    .line 352
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->destroy(Landroid/content/Context;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    return-void
.end method

.method onHomeLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 926
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackHome(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 930
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->shouldDisableNavbarGestures()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    const/4 v0, 0x0

    return v0

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onNavigationButtonLongPress(Landroid/view/View;)V

    .line 934
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xef

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 935
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 936
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 938
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_2

    .line 939
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->abortCurrentGesture()V

    .line 941
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onRotationProposal(IZ)V
    .locals 6
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 467
    .local v0, "winRotation":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->hasDisable2RotateSuggestionFlag(I)Z

    move-result v1

    .line 469
    .local v1, "rotateSuggestionsDisabled":Z
    const-string v2, "NavigationBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRotationProposal proposedRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", winRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isValid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mNavBarWindowState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    .line 472
    invoke-static {v4}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", rotateSuggestionsDisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isRotateButtonVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v4, :cond_0

    const-string v4, "null"

    goto :goto_0

    .line 475
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRotateButtonVisible()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eqz v1, :cond_1

    return-void

    .line 484
    :cond_1
    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 485
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(Z)V

    .line 486
    return-void

    .line 489
    :cond_2
    if-ne p1, v0, :cond_3

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 491
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(Z)V

    .line 492
    return-void

    .line 496
    :cond_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastRotationSuggestion:I

    .line 497
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 498
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isRotationAnimationCCW(II)Z

    move-result v2

    .line 500
    .local v2, "rotationCCW":Z
    if-eqz v0, :cond_6

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    goto :goto_1

    .line 504
    :cond_4
    if-eqz v2, :cond_5

    const v4, 0x7f1202f9

    goto :goto_2

    .line 505
    :cond_5
    const v4, 0x7f1202fb

    goto :goto_2

    .line 501
    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    const v4, 0x7f1202fa

    goto :goto_2

    .line 502
    :cond_7
    const v4, 0x7f1202fc

    .line 505
    .local v4, "style":I
    :goto_2
    nop

    .line 507
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRotateSuggestionButtonStyle(IZ)V

    .line 510
    .end local v2    # "rotationCCW":Z
    .end local v4    # "style":I
    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-eqz v2, :cond_9

    .line 513
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mPendingRotationSuggestion:Z

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 519
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->showAndLogRotationSuggestion()V

    .line 521
    :goto_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 362
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 363
    const-string v0, "disabled_state"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    const-string v0, "disabled2_state"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->saveState(Landroid/os/Bundle;)V

    .line 368
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 326
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 327
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$eFJm5m1txtISSi8Cx3m3pc8Nvjw;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$eFJm5m1txtISSi8Cx3m3pc8Nvjw;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$X9JO9eLzlFoQkYf8XrZG-l2EMsk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$X9JO9eLzlFoQkYf8XrZG-l2EMsk;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 333
    if-eqz p2, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->restoreState(Landroid/os/Bundle;)V

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 340
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setDisabled2Flags(I)V

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn()V

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/OverviewProxyService;->addCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V

    .line 348
    return-void
.end method

.method public refreshLayout(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    .line 783
    :cond_0
    return-void
.end method

.method public setCurrentSysuiVisibility(I)V
    .locals 6
    .param p1, "systemUiVisibility"    # I

    .line 689
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    const/4 v1, 0x0

    const/high16 v3, 0x8000000

    const/high16 v4, -0x80000000

    const v5, 0x8000

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeBarMode(IIIII)I

    move-result v0

    .line 693
    .local v0, "nbMode":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 694
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 697
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoHide()V

    .line 698
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZI)V

    .line 700
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .line 411
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 412
    .local v0, "imeShown":Z
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 413
    .local v1, "hints":I
    packed-switch p3, :pswitch_data_0

    goto :goto_1

    .line 424
    :pswitch_0
    and-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 417
    :pswitch_1
    if-eqz v0, :cond_1

    .line 418
    or-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 420
    :cond_1
    and-int/lit8 v1, v1, -0x2

    .line 422
    nop

    .line 427
    :goto_1
    if-eqz p4, :cond_2

    .line 428
    or-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 430
    :cond_2
    and-int/lit8 v1, v1, -0x3

    .line 432
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    if-ne v1, v2, :cond_3

    return-void

    .line 434
    :cond_3
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 436
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_4

    .line 437
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 439
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 440
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 2
    .param p1, "lightBarController"    # Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1126
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    .line 1128
    return-void
.end method

.method public setRotateSuggestionButtonState(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setRotateSuggestionButtonState(ZZ)V

    .line 557
    return-void
.end method

.method public setRotateSuggestionButtonState(ZZ)V
    .locals 9
    .param p1, "visible"    # Z
    .param p2, "force"    # Z

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 567
    .local v0, "rotBtn":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRotateButtonVisible()Z

    move-result v1

    .line 570
    .local v1, "currentlyVisible":Z
    if-nez p1, :cond_1

    if-nez v1, :cond_1

    return-void

    .line 572
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 573
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_2

    return-void

    .line 575
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    .line 576
    .local v3, "kbd":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    if-nez v3, :cond_3

    return-void

    .line 579
    :cond_3
    const/4 v4, 0x0

    .line 580
    .local v4, "animIcon":Landroid/graphics/drawable/AnimatedVectorDrawable;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v6, :cond_4

    .line 581
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 585
    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mPendingRotationSuggestion:Z

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 589
    :cond_5
    const/4 v6, 0x1

    if-eqz p1, :cond_a

    .line 591
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 592
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 594
    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 597
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 600
    if-eqz v4, :cond_7

    .line 601
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 602
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 605
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isRotateSuggestionIntroduced()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mViewRippler:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;->start(Landroid/view/View;)V

    .line 609
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setRotateButtonVisibility(Z)I

    move-result v5

    .line 610
    .local v5, "appliedVisibility":I
    if-nez v5, :cond_9

    .line 613
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoHide()V

    .line 616
    .end local v5    # "appliedVisibility":I
    :cond_9
    goto :goto_0

    .line 618
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mViewRippler:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$ViewRippler;->stop()V

    .line 620
    if-eqz p2, :cond_c

    .line 622
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 623
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->pause()V

    .line 625
    :cond_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setRotateButtonVisibility(Z)I

    .line 626
    return-void

    .line 630
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_d

    return-void

    .line 632
    :cond_d
    const-string v7, "alpha"

    new-array v6, v6, [F

    const/4 v8, 0x0

    aput v8, v6, v5

    invoke-static {v2, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 634
    .local v5, "fadeOut":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 635
    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 636
    new-instance v6, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 643
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 644
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 646
    .end local v5    # "fadeOut":Landroid/animation/ObjectAnimator;
    :goto_0
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

    move v1, p1

    move/from16 v2, p4

    .line 705
    iget v9, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 706
    .local v9, "oldVal":I
    not-int v3, v2

    and-int/2addr v3, v9

    and-int v4, v1, v2

    or-int v10, v3, v4

    .line 707
    .local v10, "newVal":I
    xor-int v11, v10, v9

    .line 708
    .local v11, "diff":I
    const/4 v12, 0x0

    .line 709
    .local v12, "nbModeChanged":Z
    if-eqz v11, :cond_5

    .line 710
    iput v10, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 713
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v13, -0x1

    if-nez v3, :cond_0

    .line 714
    move v3, v13

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/high16 v6, 0x8000000

    const/high16 v7, -0x80000000

    const v8, 0x8000

    move v4, v9

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeBarMode(IIIII)I

    move-result v3

    .line 717
    .local v3, "nbMode":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v13, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    move v12, v6

    .line 718
    if-eqz v12, :cond_3

    .line 719
    iget v6, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    if-eq v6, v3, :cond_2

    .line 720
    iput v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 721
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 723
    :cond_2
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoHide()V

    .line 727
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportHideNavBar()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v6, :cond_5

    .line 728
    and-int/lit16 v6, v1, 0x1002

    if-eqz v6, :cond_4

    .line 730
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onImmersiveSticky(Z)V

    goto :goto_2

    .line 732
    :cond_4
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onImmersiveSticky(Z)V

    .line 738
    .end local v3    # "nbMode":I
    :cond_5
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    if-eqz v3, :cond_6

    .line 739
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-virtual {v3, v1, v2, v12, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZI)V

    .line 742
    :cond_6
    return-void
.end method

.method public setWindowState(II)V
    .locals 1
    .param p1, "window"    # I
    .param p2, "state"    # I

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-eq v0, p2, :cond_0

    .line 454
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    .line 458
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mPendingRotationSuggestion:Z

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->showAndLogRotationSuggestion()V

    .line 462
    :cond_0
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 1
    .param p1, "showMenu"    # Z

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 447
    :cond_0
    return-void
.end method
