.class public Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.super Landroid/app/Fragment;
.source "CollapsedStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private mClockView:Landroid/view/View;

.field private mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

.field private mDisabled1:I

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNotificationIconAreaInner:Landroid/view/View;

.field private mOperatorNameFrame:Landroid/view/View;

.field private mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSystemIconArea:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method private animateHiddenState(Landroid/view/View;IZ)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "state"    # I
    .param p3, "animate"    # Z

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 289
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 291
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$CollapsedStatusBarFragment$27RMKG7VU7GD3kVXbGdyl_3FVd4;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$CollapsedStatusBarFragment$27RMKG7VU7GD3kVXbGdyl_3FVd4;-><init>(Landroid/view/View;I)V

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 301
    return-void
.end method

.method private animateHide(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 307
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    .line 308
    return-void
.end method

.method private animateShow(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 316
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 318
    return-void

    .line 320
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 321
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x140

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 323
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    .line 324
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 329
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 334
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 336
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->getKeyguardFadingAwayDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 339
    :cond_1
    return-void
.end method

.method private clockHiddenMode()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x4

    return v0

    .line 261
    :cond_0
    const/16 v0, 0x8

    return v0
.end method

.method private initEmergencyCryptkeeperText()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "emergencyViewStub":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    if-eqz v0, :cond_0

    .line 345
    move-object v1, v0

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0

    .line 348
    :cond_1
    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 350
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 352
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    return-void
.end method

.method private initOperatorName()V
    .locals 2

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a02e8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 357
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    .line 359
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_0
    return-void
.end method

.method static synthetic lambda$animateHiddenState$0(Landroid/view/View;I)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "state"    # I

    .line 300
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private shouldHideNotificationIcons()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideStatusBarIconsWhenExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    return v1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideStatusBarIconsForBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    return v1

    .line 234
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected adjustDisableFlags(I)I
    .locals 3
    .param p1, "state"    # I

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLaunchTransitionFadingAway()Z

    move-result v0

    const/high16 v1, 0x100000

    const/high16 v2, 0x20000

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 207
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->shouldHideNotificationIcons()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-class v0, Lcom/oneplus/scene/OPSceneModeObserver;

    .line 210
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-virtual {v0}, Lcom/oneplus/scene/OPSceneModeObserver;->isInBrickMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    :cond_1
    or-int/2addr p1, v2

    .line 213
    or-int/2addr p1, v1

    .line 214
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    or-int/2addr p1, v2

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isRadioOn()Z

    move-result v0

    if-nez v0, :cond_4

    .line 221
    or-int/2addr p1, v1

    .line 224
    :cond_4
    return p1
.end method

.method public disable(IIZ)V
    .locals 6
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->adjustDisableFlags(I)I

    move-result p1

    .line 168
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    .line 169
    .local v0, "old1":I
    xor-int v1, p1, v0

    .line 170
    .local v1, "diff1":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDisabled1:I

    .line 171
    const/high16 v2, 0x100000

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    .line 172
    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideSystemIconArea(Z)V

    .line 174
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideOperatorName(Z)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 177
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showOperatorName(Z)V

    .line 180
    :cond_1
    :goto_0
    const/high16 v2, 0x20000

    and-int v3, v1, v2

    if-eqz v3, :cond_3

    .line 181
    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    .line 182
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideNotificationIconArea(Z)V

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    .line 189
    :cond_3
    :goto_1
    const/high16 v2, 0x800000

    and-int v3, v1, v2

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v4

    if-eq v3, v4, :cond_6

    :cond_4
    const/4 v3, 0x1

    .line 191
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    const v5, 0x7f0a00c4

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 193
    and-int/2addr v2, p1

    if-eqz v2, :cond_5

    .line 194
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->hideClock(Z)V

    goto :goto_2

    .line 197
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->isShown()Z

    move-result v2

    if-nez v2, :cond_6

    .line 199
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showClock(Z)V

    .line 203
    :cond_6
    :goto_2
    return-void
.end method

.method public hideClock(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    .line 247
    return-void
.end method

.method public hideNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    .line 266
    return-void
.end method

.method public hideOperatorName(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    .line 276
    :cond_0
    return-void
.end method

.method public hideSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateHide(Landroid/view/View;Z)V

    .line 239
    return-void
.end method

.method public initNotificationIconArea(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 3
    .param p1, "notificationIconAreaController"    # Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a029c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 154
    .local v0, "notificationIconArea":Landroid/view/ViewGroup;
    nop

    .line 155
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    .line 158
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showNotificationIconArea(Z)V

    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 86
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBarComponent:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    const v0, 0x7f0d01d0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 145
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasEmergencyCryptKeeperText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSignalCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 134
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "panel_state"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 98
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 100
    if-eqz p2, :cond_0

    const-string v0, "panel_state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const-string v1, "panel_state"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->go(I)V

    .line 103
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    const v1, 0x7f0a03d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "statusbar"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->setShouldLog(Z)V

    .line 108
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a03f4

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a00c1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showSystemIconArea(Z)V

    .line 113
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    const v3, 0x7f0a00c4

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->showClock(Z)V

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initEmergencyCryptkeeperText()V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->initOperatorName()V

    .line 120
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    const v1, 0x7f0a043d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setTraceView(Landroid/view/View;)V

    .line 122
    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0
    .param p1, "headsUpAppearanceController"    # Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 363
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 364
    return-void
.end method

.method public showClock(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    .line 251
    return-void
.end method

.method public showNotificationIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    .line 270
    return-void
.end method

.method public showOperatorName(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mOperatorNameFrame:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    .line 282
    :cond_0
    return-void
.end method

.method public showSystemIconArea(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    .line 243
    return-void
.end method
