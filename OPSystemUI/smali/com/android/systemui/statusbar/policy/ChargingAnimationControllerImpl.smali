.class public Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
.super Ljava/lang/Object;
.source "ChargingAnimationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ChargingAnimationController;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;
    }
.end annotation


# static fields
.field private static mPreventModeNoBackground:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private isKeyguardShowing:Z

.field private mAnimationStarted:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBouncerShow:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimationState:I

.field private mFastCharging:Z

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardOn:Z

.field private mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;

.field private mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

.field private mPluggedButNotUsb:Z

.field private mPreventViewShow:Z

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mSmallestWidth:I

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWarpFastCharging:Z

.field private mWrapChargingLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "ChargingAnimationControllerImpl"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 66
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCurrentAnimationState:I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mFastCharging:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBouncerShow:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventViewShow:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mKeyguardOn:Z

    .line 88
    new-instance v1, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    .line 101
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    .line 360
    new-instance v1, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 413
    new-instance v1, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    .line 145
    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 146
    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 147
    sget-boolean v1, Lcom/android/systemui/util/OPUtils;->SUPPORT_WARP_CHARGING:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->registerReceiver()V

    .line 151
    :cond_0
    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 162
    new-instance v1, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventViewShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mKeyguardOn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mKeyguardOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->prepareAnimationResource()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->releaseAnimationResource()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBouncerShow:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBouncerShow:Z

    return p1
.end method

.method private genOPWarpChargingView()Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "genOPWarpChargingView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v0, :cond_1

    .line 296
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOPWarpChargingView != null / mOPWarpChargingView.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d015e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    return-object v0
.end method

.method private initOPWarpCharging()V
    .locals 2

    .line 307
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a04b0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setChargingAnimationController(Lcom/android/systemui/statusbar/policy/ChargingAnimationController;)V

    .line 311
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 312
    .local v0, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLockscreenWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    .line 315
    :cond_0
    return-void
.end method

.method static synthetic lambda$animationEnd$1(ILcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0
    .param p0, "style"    # I
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    .line 267
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;->onWarpCharingAnimationEnd(I)V

    return-void
.end method

.method static synthetic lambda$animationStart$0(ILcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0
    .param p0, "style"    # I
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    .line 254
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;->onWarpCharingAnimationStart(I)V

    return-void
.end method

.method private prepareAnimationResource()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->prepareAsset()V

    .line 282
    :cond_0
    return-void
.end method

.method private releaseAnimationResource()V
    .locals 4

    .line 285
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 286
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 287
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 289
    return-void
.end method

.method private updateScrim()V
    .locals 5

    .line 239
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 240
    .local v0, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getScrimColor()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 246
    .local v1, "scrimColor":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateScrim, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->updaetScrimColor(I)V

    .line 249
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f040468

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->updateColors(I)V

    .line 250
    return-void

    .line 241
    .end local v1    # "scrimColor":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "can\'t updateScrim"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method

.method public animationEnd(I)V
    .locals 5
    .param p1, "style"    # I

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mAnimationStarted:Z

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$ubwqtOBHP7dTmXUVWRic8CF4Avk;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$ubwqtOBHP7dTmXUVWRic8CF4Avk;-><init>(I)V

    invoke-static {v1, v2}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 270
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    if-eqz v1, :cond_0

    .line 271
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    .line 272
    .local v1, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 273
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    .line 276
    .end local v1    # "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    :cond_0
    return-void
.end method

.method public animationStart(I)V
    .locals 4
    .param p1, "style"    # I

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mAnimationStarted:Z

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$RUKKNHHFbHtQKYG3xoU3USKAFA4;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$RUKKNHHFbHtQKYG3xoU3USKAFA4;-><init>(I)V

    invoke-static {v1, v2}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 258
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    .line 259
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    .line 260
    .local v1, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 263
    .end local v1    # "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    :cond_0
    return-void
.end method

.method public init(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 2
    .param p1, "keyguardViewMediator"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->genOPWarpChargingView()Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->initOPWarpCharging()V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 198
    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mAnimationStarted:Z

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->onBatteryLevelChanged(IZZ)V

    .line 219
    :cond_0
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigChanged / newConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mSmallestWidth:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, v1, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->genOPWarpChargingView()Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->initOPWarpCharging()V

    .line 450
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mSmallestWidth:I

    .line 452
    :cond_0
    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 6
    .param p1, "fastChargeType"    # I

    .line 223
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFastChargeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 225
    .local v2, "fastCharge":Z
    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v0

    .line 228
    .local v4, "warpFastCharge":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eq v4, v5, :cond_4

    .line 229
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    .line 230
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v0, v1

    nop

    .line 231
    .local v0, "isScreenTurnedOn":Z
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBouncerShow:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventViewShow:Z

    if-nez v1, :cond_4

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->updateScrim()V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->startAnimation()V

    .line 236
    .end local v0    # "isScreenTurnedOn":Z
    :cond_4
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWallpaperChange: bitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/util/ImageUtils;->computeCustomBackgroundBounds(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 431
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    .line 432
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v1, :cond_2

    .line 433
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setBackgroundWallpaper(Landroid/graphics/Bitmap;)V

    .line 435
    :cond_2
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method
