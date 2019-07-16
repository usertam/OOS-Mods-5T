.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
    }
.end annotation


# static fields
.field private static CHARGING_INFO_ANITMAION_DURATION:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryLevel:I

.field private mChargingInfo:Landroid/widget/TextView;

.field private mChargingInfofadeInAnimation:Landroid/animation/ValueAnimator;

.field private mChargingInfofadeOutAnimation:Landroid/animation/ValueAnimator;

.field private mChargingSound:Landroid/media/SoundPool;

.field private mChargingSoundId:I

.field private mChargingSpeed:I

.field private mChargingWattage:I

.field private final mContext:Landroid/content/Context;

.field private mDashAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mDashContainer:Landroid/widget/FrameLayout;

.field private mDashView:Landroid/widget/ImageView;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mDozing:Z

.field mErrorAnimator:Landroid/animation/Animator;

.field mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mFastThreshold:I

.field private final mHandler:Landroid/os/Handler;

.field private mIndicationArea:Landroid/view/ViewGroup;

.field private mInfoView:Landroid/view/ViewGroup;

.field private mInitialTextColor:I

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;

.field private mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

.field private mLastChargingSpeed:I

.field private mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field private mOwnerInfo:Landroid/view/View;

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field private mPowerPluggedInWired:Z

.field private mRestingIndication:Ljava/lang/String;

.field private mShowMsgWhenExiting:Z

.field private final mSlowThreshold:I

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mTickReceiver:Landroid/content/BroadcastReceiver;

.field private mTransientIndication:Ljava/lang/CharSequence;

.field private mTransientTextColor:I

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisible:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    const/16 v0, 0x64

    sput v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->CHARGING_INFO_ANITMAION_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indicationArea"    # Landroid/view/ViewGroup;
    .param p3, "lockIcon"    # Lcom/android/systemui/statusbar/phone/LockIcon;
    .param p4, "keyguardStatusView"    # Lcom/android/keyguard/KeyguardStatusView;
    .param p5, "bottomArea"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 262
    const-string v0, "Doze:KeyguardIndication"

    .line 264
    invoke-static {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v5

    .line 262
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 266
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 269
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->registerKeyguardStateCallbackCallbacks()V

    .line 275
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indicationArea"    # Landroid/view/ViewGroup;
    .param p3, "lockIcon"    # Lcom/android/systemui/statusbar/phone/LockIcon;
    .param p4, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p5, "keyguardStatusView"    # Lcom/android/keyguard/KeyguardStatusView;
    .param p6, "bottomArea"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShowMsgWhenExiting:Z

    .line 749
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    .line 761
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 287
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 288
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    .line 289
    const v1, 0x7f0a01e4

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getCurrentTextColor()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    .line 292
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v2, 0x7f040468

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 301
    :cond_1
    const v1, 0x7f0a01e3

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 302
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 303
    new-instance v1, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-direct {v1, p4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 306
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    .line 307
    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    .line 309
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    .line 310
    const-string v2, "batterystats"

    .line 311
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 310
    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 314
    iput-object p5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    .line 315
    const v2, 0x7f0a00be

    invoke-virtual {p5, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDashContainer:Landroid/widget/FrameLayout;

    .line 316
    const v2, 0x7f0a00bd

    invoke-virtual {p5, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDashView:Landroid/widget/ImageView;

    .line 317
    const v2, 0x7f0a00bf

    invoke-virtual {p5, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfo:Landroid/widget/TextView;

    .line 319
    const v2, 0x7f0a00bc

    invoke-virtual {p5, v2}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInfoView:Landroid/view/ViewGroup;

    .line 322
    iput-object p6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 325
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAudioManager:Landroid/media/AudioManager;

    .line 326
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSound:Landroid/media/SoundPool;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSound:Landroid/media/SoundPool;

    const/high16 v2, 0x7f100000

    invoke-virtual {v0, p1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSoundId:I

    .line 330
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->chargingInfoFadeInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeInAnimation:Landroid/animation/ValueAnimator;

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->chargingInfoFadeOutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getFadeOutAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v2, 0x7f010070

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mErrorAnimator:Landroid/animation/Animator;

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    .line 343
    const v0, 0x7f0a02fb

    invoke-virtual {p5, v0}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOwnerInfo:Landroid/view/View;

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateChargingInfoAndOwnerInfo()V

    .line 346
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardStatusView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStatusView:Lcom/android/keyguard/KeyguardStatusView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLastChargingSpeed:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLastChargingSpeed:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isFastCharge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeOutAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInfoView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSoundId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSound:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/KeyguardIndicationController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateBottomMargins(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updatePadding(ZZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeInAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDashView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDashAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDashContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private animateErrorText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 1
    .param p1, "textView"    # Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mErrorAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 667
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mErrorAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mErrorAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mErrorAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 672
    return-void
.end method

.method private animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V
    .locals 11
    .param p1, "textView"    # Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
    .param p2, "indication"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 358
    .local v0, "yTranslation":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 360
    .local v1, "animateUpDuration":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 362
    .local v8, "animateDownDuration":I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v0

    .line 363
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 364
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v1

    .line 365
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/statusbar/KeyguardIndicationController$11;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, v8

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController$11;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;II)V

    .line 366
    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 380
    return-void
.end method

.method private chargingInfoFadeInAnimation()Landroid/animation/ValueAnimator;
    .locals 5

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 179
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 181
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getChargingInfoHeight()I

    move-result v2

    .line 183
    .local v2, "height":I
    sget v3, Lcom/android/systemui/statusbar/KeyguardIndicationController;->CHARGING_INFO_ANITMAION_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 184
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 214
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private chargingInfoFadeOutAnimation()Landroid/animation/ValueAnimator;
    .locals 5

    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 219
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 221
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getChargingInfoHeight()I

    move-result v2

    .line 223
    .local v2, "height":I
    sget v3, Lcom/android/systemui/statusbar/KeyguardIndicationController;->CHARGING_INFO_ANITMAION_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 224
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computePowerIndication()Ljava/lang/String;
    .locals 10

    .line 678
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 684
    :cond_0
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 686
    .local v2, "chargingTimeRemaining":J
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    goto :goto_0

    .line 688
    :catch_0
    move-exception v4

    .line 689
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "KeyguardIndication"

    const-string v6, "Error calling IBatteryStats: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0

    .line 694
    cmp-long v0, v2, v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    .line 697
    .local v0, "hasChargingTime":Z
    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    if-eqz v5, :cond_4

    packed-switch v5, :pswitch_data_0

    .line 714
    if-eqz v0, :cond_2

    .line 715
    const v5, 0x7f11030f

    goto :goto_4

    .line 716
    :cond_2
    const v5, 0x7f110328

    goto :goto_4

    .line 700
    :pswitch_0
    const v5, 0x7f11032b

    .line 701
    .local v5, "chargingId":I
    goto :goto_4

    .line 704
    .end local v5    # "chargingId":I
    :pswitch_1
    if-eqz v0, :cond_3

    .line 705
    const v5, 0x7f110310

    goto :goto_2

    .line 706
    :cond_3
    const v5, 0x7f110329

    .line 707
    .restart local v5    # "chargingId":I
    :goto_2
    goto :goto_4

    .line 709
    .end local v5    # "chargingId":I
    :cond_4
    if-eqz v0, :cond_5

    .line 710
    const v5, 0x7f110312

    goto :goto_3

    .line 711
    :cond_5
    const v5, 0x7f11032a

    .line 712
    .restart local v5    # "chargingId":I
    :goto_3
    nop

    .line 716
    :goto_4
    nop

    .line 720
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    .line 721
    invoke-virtual {v6, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 722
    .local v6, "percentage":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 726
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 729
    .local v7, "chargingTimeFormatted":Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v1

    aput-object v6, v9, v4

    invoke-virtual {v8, v5, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v8

    .line 731
    :catch_1
    move-exception v8

    .line 732
    .local v8, "e":Ljava/util/IllegalFormatConversionException;
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v1

    invoke-virtual {v9, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 737
    .end local v7    # "chargingTimeFormatted":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/IllegalFormatConversionException;
    :cond_6
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v1

    invoke-virtual {v7, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 738
    :catch_2
    move-exception v1

    .line 739
    .local v1, "e":Ljava/util/IllegalFormatConversionException;
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getChargingInfoHeight()I
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 351
    .local v0, "dash_charge_height":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 353
    .local v1, "text_height":I
    sget-boolean v2, Lcom/android/systemui/util/OPUtils;->SUPPORT_WARP_CHARGING:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 354
    .local v2, "height":I
    :goto_0
    return v2
.end method

.method private getFadeOutAnimation()Landroid/animation/AnimatorSet;
    .locals 6

    .line 797
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 798
    .local v1, "fadeIn":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 799
    new-instance v4, Lcom/android/systemui/statusbar/KeyguardIndicationController$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$8;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 808
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 809
    .local v4, "fadeOut":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 810
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardIndicationController$9;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$9;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 817
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 818
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 819
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardIndicationController$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$10;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 847
    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v4, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 848
    return-object v5

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getKeyguardStateCallback()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/KeyguardIndicationController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;

    .line 426
    :cond_0
    return-void
.end method

.method private isFastCharge()Z
    .locals 2

    .line 1261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 395
    return-void
.end method

.method private registerKeyguardStateCallbackCallbacks()V
    .locals 2

    .line 399
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardStateCallback()V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 401
    return-void
.end method

.method private updateBottomMargins(ZZ)V
    .locals 4
    .param p1, "keyguardShowing"    # Z
    .param p2, "isUnlockWithFingerprintPossible"    # Z

    .line 1170
    if-eqz p1, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1173
    .local v0, "indicationBottomMargin":I
    if-eqz p2, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 1177
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070323

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v0, v1, v2

    .line 1180
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1181
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1182
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    .end local v0    # "indicationBottomMargin":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private updateChargingInfoAndOwnerInfo()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOwnerInfo:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    const-string v0, "KeyguardIndication"

    const-string/jumbo v1, "updateChargingInfoAndOwnerInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getChargingInfoHeight()I

    move-result v0

    .line 363
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 364
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 365
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOwnerInfo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 368
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 369
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOwnerInfo:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    return-void

    .line 359
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    return-void
.end method

.method private updateDisclosure()V
    .locals 6

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 431
    return-void

    .line 434
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 436
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 437
    .local v0, "organizationName":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11024c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v3, 0x7f11024b

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    .line 443
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 444
    .end local v0    # "organizationName":Ljava/lang/CharSequence;
    goto :goto_1

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 447
    :goto_1
    return-void
.end method

.method static synthetic updateIndicationStatic(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p1, "x0"    # Z

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method private updatePadding(ZZ)V
    .locals 3
    .param p1, "keyguardShowing"    # Z
    .param p2, "isUnlockWithFingerprintPossible"    # Z

    .line 1189
    if-eqz p1, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1191
    .local v0, "padding":I
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1192
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setPadding(IIII)V

    goto :goto_0

    .line 1194
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setPadding(IIII)V

    .line 1197
    .end local v0    # "padding":I
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 862
    const-string v0, "KeyguardIndicationController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTransientTextColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialTextColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerPluggedInWired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerPluggedIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerCharged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChargingSpeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChargingWattage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMessageToShowOnScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBatteryLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTextView.getText(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  computePowerIndication(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object v0
.end method

.method protected getTrustGrantedIndication()Ljava/lang/String;
    .locals 1

    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTrustManagedIndication()Ljava/lang/String;
    .locals 1

    .line 494
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideTransientIndication()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    .line 558
    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3
    .param p1, "delayMs"    # J

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 502
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 501
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 503
    return-void
.end method

.method public notifyPreventModeChange(Z)V
    .locals 11
    .param p1, "preventMode"    # Z

    .line 1217
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 1218
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v1

    .line 1219
    .local v1, "isLockout":Z
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    .line 1220
    .local v2, "isAllowed":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    .line 1221
    .local v3, "isBouncer":Z
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    .line 1223
    .local v4, "isInteractive":Z
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_0

    .line 1224
    const-string v5, "KeyguardIndication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyPreventModeChange, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShowMsgWhenExiting:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_0
    const/4 v5, 0x1

    if-eqz p1, :cond_1

    .line 1228
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShowMsgWhenExiting:Z

    goto :goto_0

    .line 1231
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShowMsgWhenExiting:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 1233
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v8, 0x104023e

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1234
    .local v6, "errString":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1235
    return-void

    .line 1238
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)I

    move-result v8

    .line 1239
    .local v8, "errorColor":I
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    .line 1244
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz v9, :cond_3

    .line 1245
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->setTransientFpError(Z)V

    .line 1248
    :cond_3
    invoke-virtual {p0, v6, v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;I)V

    .line 1250
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1251
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1252
    const-wide/16 v9, 0x1388

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 1255
    .end local v6    # "errString":Ljava/lang/String;
    .end local v8    # "errorColor":I
    :cond_4
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mShowMsgWhenExiting:Z

    .line 1257
    :goto_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->chargingInfoFadeInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeInAnimation:Landroid/animation/ValueAnimator;

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->chargingInfoFadeOutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfofadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateChargingInfoAndOwnerInfo()V

    .line 384
    return-void
.end method

.method public releaseDashViews()V
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDashView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1210
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDashAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1211
    return-void
.end method

.method public setDozing(Z)V
    .locals 1
    .param p1, "dozing"    # Z

    .line 853
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-ne v0, p1, :cond_0

    .line 854
    return-void

    .line 856
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    .line 857
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    .line 858
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    .line 859
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 746
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 747
    return-void
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 450
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 452
    if-eqz p1, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 458
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    goto :goto_1

    .line 459
    :cond_2
    if-nez p1, :cond_3

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 463
    :cond_3
    :goto_1
    return-void
.end method

.method public showTransientIndication(I)V
    .locals 1
    .param p1, "transientIndication"    # I

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    .line 510
    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "transientIndication"    # Ljava/lang/CharSequence;

    .line 516
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;I)V

    .line 517
    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "transientIndication"    # Ljava/lang/CharSequence;
    .param p2, "textColor"    # I

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "showingError":Z
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 527
    const/4 v0, 0x1

    .line 530
    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    .line 534
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    .line 535
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    .line 536
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 540
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 543
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    .line 545
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->animateErrorText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 547
    :cond_3
    return-void
.end method

.method public updateDashViews()V
    .locals 3

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDashView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0801b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDashView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDashAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1206
    return-void
.end method

.method protected final updateIndication(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 565
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_7

    .line 568
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 584
    :cond_1
    
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v0, :show_percent

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p1, :dont_animate

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V

    goto :goto_0

    :dont_animate
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    :show_percent
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 585
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "percentage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 588
    .end local v0    # "percentage":Ljava/lang/String;
    :goto_0
    return-void

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 592
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 593
    .local v1, "userId":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustGrantedIndication()Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "trustGrantedIndication":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustManagedIndication()Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "trustManagedIndication":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 596
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v5, 0x1040351

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    .line 597
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    goto :goto_1

    .line 598
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 599
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    goto :goto_1

    .line 601
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 602
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 603
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    goto :goto_1

    .line 618
    :cond_5
    
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v4, :resting_indication

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :dont_animate_2

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V

    goto :goto_1

    :dont_animate_2
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_1

    :resting_indication

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 619
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 620
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 621
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    goto :goto_1

    .line 624
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextColor(I)V

    .line 628
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v4, :cond_7

    .line 629
    # invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    # move-result-object v4

    .line 630
    .local v4, "indicationText":Ljava/lang/String;
    # iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingInfo:Landroid/widget/TextView;

    # invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    .end local v0    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .end local v1    # "userId":I
    .end local v2    # "trustGrantedIndication":Ljava/lang/String;
    .end local v3    # "trustManagedIndication":Ljava/lang/String;
    .end local v4    # "indicationText":Ljava/lang/String;
    :cond_7
    return-void
.end method
