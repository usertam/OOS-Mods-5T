.class public Lcom/android/systemui/OverviewProxyService;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG_OVERVIEW_PROXY:Z


# instance fields
.field private mConnectionBackoffAttempts:I

.field private final mConnectionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mDeferredConnectionCallback:Ljava/lang/Runnable;

.field private final mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mHandler:Landroid/os/Handler;

.field private mInteractionFlags:I

.field private mIsEnabled:Z

.field private final mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

.field private final mOverviewServiceConnection:Landroid/content/ServiceConnection;

.field private final mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mQuickStepIntent:Landroid/content/Intent;

.field private final mRecentsComponentName:Landroid/content/ComponentName;

.field private mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

.field private mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private mTouchHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/OverviewProxyService;->DEBUG_OVERVIEW_PROXY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$iQ_AhE_jQV1-6xCMm0AowIu_bDY;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$iQ_AhE_jQV1-6xCMm0AowIu_bDY;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    .line 80
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 81
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 97
    new-instance v0, Lcom/android/systemui/OverviewProxyService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/OverviewProxyService$1;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 221
    new-instance v0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$SlBFfY-D9O-Us5sbpzzPXvtyKy4;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$SlBFfY-D9O-Us5sbpzzPXvtyKy4;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/android/systemui/OverviewProxyService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/OverviewProxyService$2;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    new-instance v0, Lcom/android/systemui/OverviewProxyService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/OverviewProxyService$3;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    .line 284
    new-instance v0, Lcom/android/systemui/OverviewProxyService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/OverviewProxyService$4;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 301
    new-instance v0, Lcom/android/systemui/-$$Lambda$nbKMIozhEEdh3mdvmysh3Zuqwmg;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$nbKMIozhEEdh3mdvmysh3Zuqwmg;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    .line 368
    new-instance v0, Lcom/android/systemui/OverviewProxyService$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/systemui/OverviewProxyService$5;-><init>(Lcom/android/systemui/OverviewProxyService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mTouchHandler:Landroid/os/Handler;

    .line 308
    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 309
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 311
    const v1, 0x1040176

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 313
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 314
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    const-string v3, "QuickStepInteractionFlags"

    invoke-static {v1, v3, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    .line 321
    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 322
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->updateEnabledState()V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 325
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 329
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/OverviewProxyService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/OverviewProxyService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->notifyConnectionChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/OverviewProxyService;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/OverviewProxyService;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/OverviewProxyService;->dispatchLauncherTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->dispatchCancelTouch()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mTouchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/OverviewProxyService;FZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/OverviewProxyService;->notifyBackButtonAlphaChanged(FZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/OverviewProxyService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->updateEnabledState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/OverviewProxyService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/OverviewProxyService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/OverviewProxyService;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/OverviewProxyService;Lcom/android/systemui/shared/recents/IOverviewProxy;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/OverviewProxyService;
    .param p1, "x1"    # Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p1
.end method

.method private disconnectFromLauncherService()V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-interface {v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, "nse":Ljava/util/NoSuchElementException;
    const-string v2, "OverviewProxyService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v1    # "nse":Ljava/util/NoSuchElementException;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 495
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/OverviewProxyService;->notifyBackButtonAlphaChanged(FZ)V

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->notifyConnectionChanged()V

    .line 498
    :cond_0
    return-void
.end method

.method private dispatchCancelTouch()V
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 405
    .local v0, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    const-string v1, "OverviewProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchCancelTouch, event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 407
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MERONG dispatchNotificationPanelTouchEvent"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 409
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchNotificationsPanelTouchEvent(Landroid/view/MotionEvent;)V

    .line 410
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    .line 413
    :cond_1
    return-void
.end method

.method private dispatchLauncherTouch(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 383
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 385
    .local v0, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 386
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchNotificationsPanelTouchEvent(Landroid/view/MotionEvent;)V

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 388
    .local v1, "action":I
    if-nez v1, :cond_0

    .line 389
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    .line 391
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 392
    :cond_1
    const-string v3, "OverviewProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchLauncherTouch, event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    .line 394
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 395
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    .line 398
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 400
    .end local v1    # "action":I
    :cond_4
    return-void
.end method

.method private internalConnectToCurrentUser()V
    .locals 7

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->disconnectFromLauncherService()V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 429
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 430
    .local v0, "launcherServiceIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 432
    .local v1, "bound":Z
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 434
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 432
    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 437
    goto :goto_0

    .line 435
    :catch_0
    move-exception v3

    .line 436
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "OverviewProxyService"

    const-string v5, "Unable to bind because of security error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_0
    const-string v3, "OverviewProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internalConnect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bound:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    if-eqz v1, :cond_1

    .line 445
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 448
    :cond_1
    const v3, 0x459c4000    # 5000.0f

    iget v4, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-static {v3, v4}, Ljava/lang/Math;->scalb(FI)F

    move-result v3

    float-to-long v3, v3

    .line 449
    .local v3, "timeoutMs":J
    iget-object v5, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 450
    iget v5, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 451
    const-string v2, "OverviewProxyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to connect on attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " will try again in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v3    # "timeoutMs":J
    :goto_1
    return-void

    .line 421
    .end local v0    # "launcherServiceIntent":Landroid/content/Intent;
    .end local v1    # "bound":Z
    :cond_2
    :goto_2
    const-string v0, "OverviewProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot attempt connection, is setup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 422
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method public static synthetic lambda$iQ_AhE_jQV1-6xCMm0AowIu_bDY(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/OverviewProxyService;)V
    .locals 2

    .line 222
    const-string v0, "OverviewProxyService"

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->internalConnectToCurrentUser()V

    .line 225
    return-void
.end method

.method private notifyBackButtonAlphaChanged(FZ)V
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 501
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onBackButtonAlphaChanged(FZ)V

    .line 501
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 504
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private notifyConnectionChanged()V
    .locals 4

    .line 507
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 508
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    .line 507
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 510
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateEnabledState()V
    .locals 4

    .line 525
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 527
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v2

    .line 525
    const/high16 v3, 0x40000

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mIsEnabled:Z

    .line 528
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    .line 458
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    .line 460
    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    invoke-interface {p1, v0}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onInteractionFlagsChanged(I)V

    .line 461
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/OverviewProxyService;->addCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public cleanupAfterDeath()V
    .locals 2

    .line 344
    const-string v0, "OverviewProxyService"

    const-string v1, "cleanupAfterDeath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mTouchHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/OverviewProxyService;->startConnectionToCurrentUser()V

    .line 364
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 532
    const-string v0, "OverviewProxyService state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    const-string v0, "  mConnectionBackoffAttempts="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 534
    const-string v0, "  isCurrentUserSetup="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 535
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    .line 534
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 536
    const-string v0, "  isConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 537
    const-string v0, "  mRecentsComponentName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 538
    const-string v0, "  mIsEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 539
    const-string v0, "  mInteractionFlags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 540
    const-string v0, "  mQuickStepIntent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 541
    return-void
.end method

.method public getInteractionFlags()I
    .locals 1

    .line 481
    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    return v0
.end method

.method public getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mIsEnabled:Z

    return v0
.end method

.method public notifyQuickScrubStarted()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onQuickScrubStarted()V

    .line 519
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 522
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyQuickStepStarted()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onQuickStepStarted()V

    .line 513
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 516
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    .line 465
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 466
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/OverviewProxyService;->removeCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public shouldShowSwipeUpUI()Z
    .locals 2

    .line 469
    invoke-virtual {p0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startConnectionToCurrentUser()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->internalConnectToCurrentUser()V

    .line 340
    :goto_0
    return-void
.end method
