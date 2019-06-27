.class public Lcom/android/systemui/qs/QSFooterImpl;
.super Landroid/widget/FrameLayout;
.source "QSFooterImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/qs/QSFooter;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActionsContainer:Landroid/view/View;

.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private final mColorForeground:I

.field private mDivider:Landroid/view/View;

.field private mDragHandle:Landroid/view/View;

.field protected mEdit:Landroid/view/View;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field protected mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

.field private mIsGuestUser:Z

.field private mIsLandscape:Z

.field private mListening:Z

.field private mMobileGroup:Landroid/view/View;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileSignal:Landroid/widget/ImageView;

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mQsDisabled:Z

.field private mQsFooterLeftPart:Landroid/widget/LinearLayout;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field private mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShowEditIcon:Z

.field private mShowEmergencyCallsOnly:Z

.field private mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-string v0, "QSFooterImpl"

    sput-object v0, Lcom/android/systemui/qs/QSFooterImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEditIcon:Z

    .line 112
    new-instance v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;-><init>(Lcom/android/systemui/qs/QSFooterImpl;Lcom/android/systemui/qs/QSFooterImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    .line 127
    const v0, 0x1010030

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mColorForeground:I

    .line 128
    return-void
.end method

.method private canShowEditIcon()Z
    .locals 1

    .line 601
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEditIcon:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mIsGuestUser:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 5

    .line 300
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 301
    .local v0, "animatorBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    const v1, 0x3f5c28f6    # 0.86f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->canShowEditIcon()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string v3, "alpha"

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 307
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const-string v3, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 309
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleUpdateState()V
    .locals 5

    .line 539
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->visible:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->visible:Z

    if-eqz v0, :cond_6

    .line 541
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->roaming:Z

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileRoaming:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mColorForeground:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 543
    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    .line 544
    .local v0, "d":Lcom/android/settingslib/graph/SignalDrawable;
    iget v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mColorForeground:I

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getColorIntensity(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->setDarkIntensity(F)V

    .line 545
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileSignal:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->mobileSignalIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v1, "contentDescription":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->contentDescription:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 550
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->roaming:Z

    if-eqz v2, :cond_3

    .line 553
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f110213

    .line 554
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->typeContentDescription:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f110212

    .line 559
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->typeContentDescription:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f1101d4

    .line 561
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 562
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->typeContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 566
    .end local v0    # "d":Lcom/android/settingslib/graph/SignalDrawable;
    .end local v1    # "contentDescription":Ljava/lang/StringBuilder;
    :cond_6
    return-void
.end method

.method static synthetic lambda$onClick$5()V
    .locals 0

    .line 470
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/qs/QSFooterImpl;Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    goto :goto_0

    .line 149
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSFooterImpl;->TAG:Ljava/lang/String;

    const-string v1, "Don\'t show Editor when mQsPanel hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/systemui/qs/QSFooterImpl;Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 143
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$BPGtDaa2eU-tTCTVDpjGrKOXYOs;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$BPGtDaa2eU-tTCTVDpjGrKOXYOs;-><init>(Lcom/android/systemui/qs/QSFooterImpl;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onFinishInflate$2(Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 185
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$3(Lcom/android/systemui/qs/QSFooterImpl;Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 197
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->updateAnimator(I)V

    return-void
.end method

.method public static synthetic lambda$updateEverything$4(Lcom/android/systemui/qs/QSFooterImpl;)V
    .locals 1

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateVisibilities()V

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setClickable(Z)V

    .line 388
    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 506
    return-void
.end method

.method private updateAnimator(I)V
    .locals 1
    .param p1, "width"    # I

    .line 240
    iget v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setExpansion(F)V

    .line 241
    return-void
.end method

.method private updateFooterAnimator()V
    .locals 1

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 284
    return-void
.end method

.method private updateListeners()V
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    .line 436
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 438
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    .line 442
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 443
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 445
    :cond_1
    :goto_0
    return-void
.end method

.method private updateResources()V
    .locals 3

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateFooterAnimator()V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActionsContainer:Landroid/view/View;

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 277
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 278
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 279
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActionsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    return-void
.end method

.method private updateThemeColor()V
    .locals 4

    .line 208
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 210
    .local v0, "buttonColor":I
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 211
    .local v1, "textColor":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    .line 213
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 216
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 217
    sget v2, Lcom/android/systemui/util/ThemeColorUtils;->QS_SEPARATOR:I

    invoke-static {v2}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    .line 218
    .local v2, "dividerColor":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 220
    return-void
.end method

.method private updateVisibilities()V
    .locals 6

    .line 392
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsDisabled:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    .line 398
    .local v0, "isDemo":Z
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->canShowEditIcon()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-nez v2, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 406
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-eqz v0, :cond_4

    move v3, v5

    nop

    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setVisibility(I)V

    .line 411
    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 2
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 378
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 379
    .local v0, "disabled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsDisabled:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 380
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsDisabled:Z

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 382
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 467
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v0, :cond_2

    .line 468
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$Dc94Y3oHROjNzZ1FJflKuLJ8vNg;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$Dc94Y3oHROjNzZ1FJflKuLJ8vNg;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 471
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    .line 474
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x196

    goto :goto_0

    .line 475
    :cond_1
    const/16 v1, 0x1ea

    .line 473
    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 477
    const-string v0, "click_settings"

    invoke-static {v0}, Lcom/android/systemui/util/MdmLogger;->logQsPanel(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->startSettingsActivity()V

    .line 501
    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 245
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mIsLandscape:Z

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 250
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEditIcon:Z

    goto :goto_1

    .line 252
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEditIcon:Z

    .line 255
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->canShowEditIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    .line 262
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setListening(Z)V

    .line 344
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 345
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 132
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 133
    const v0, 0x7f0a0344

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDivider:Landroid/view/View;

    .line 134
    const v0, 0x1020003

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->canShowEditIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$3QBg0cgvu2IRpUDq3RvpL257x8c;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$3QBg0cgvu2IRpUDq3RvpL257x8c;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_0
    const v0, 0x7f0a0163

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 160
    const v0, 0x7f0a03c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 161
    const v0, 0x7f0a03c2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f0a0254

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileGroup:Landroid/view/View;

    .line 165
    const v0, 0x7f0a025b

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileSignal:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f0a0259

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileRoaming:Landroid/widget/ImageView;

    .line 167
    const v0, 0x7f0a033c

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 174
    const v0, 0x7f0a0282

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v1, 0x7f0a0281

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 177
    const v0, 0x7f0a0341

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDragHandle:Landroid/view/View;

    .line 178
    const v0, 0x7f0a0343

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActionsContainer:Landroid/view/View;

    .line 180
    const v0, 0x7f0a0345

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsFooterLeftPart:Landroid/widget/LinearLayout;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsFooterLeftPart:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$MhBgcTOlDPQn4dCqhsrPhNwiuY8;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$MhBgcTOlDPQn4dCqhsrPhNwiuY8;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    .line 194
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 195
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 196
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$rlAr3vmvElDa-mbcXGE5wukQNAU;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$rlAr3vmvElDa-mbcXGE5wukQNAU;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->setImportantForAccessibility(I)V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateThemeColor()V

    .line 203
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 372
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 373
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 374
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 266
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    .line 268
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mIsGuestUser:Z

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    .line 533
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 535
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 361
    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 364
    const/4 v0, 0x1

    return v0

    .line 367
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEmergencyCallsOnly:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 511
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 512
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEmergencyCallsOnly:Z

    .line 513
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-eqz v1, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 517
    :cond_1
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 320
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 321
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 326
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 328
    return-void
.end method

.method public setExpansion(F)V
    .locals 1
    .param p1, "headerExpansionFraction"    # F

    .line 332
    iput p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    .line 333
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 338
    :cond_1
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "keyguardShowing"    # Z

    .line 315
    iget v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setExpansion(F)V

    .line 316
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 349
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 350
    return-void

    .line 352
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateListeners()V

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    .line 357
    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 2
    .param p1, "hasNoSims"    # Z
    .param p2, "simDetected"    # Z

    .line 585
    if-eqz p1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->visible:Z

    .line 588
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->handleUpdateState()V

    .line 589
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 2
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .line 449
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 450
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 454
    :cond_0
    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 385
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$yDu8XeauCXJ1eiaWNKqymhZgIjM;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$yDu8XeauCXJ1eiaWNKqymhZgIjM;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method
