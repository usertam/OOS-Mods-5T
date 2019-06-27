.class public Lcom/android/systemui/power/OverHeatProtector;
.super Ljava/lang/Object;
.source "OverHeatProtector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static ENABLE:Z

.field private static ENABLE_ANTI_FALSE:Z

.field private static ENABLE_SKIN:Z

.field private static mInstance:Lcom/android/systemui/power/OverHeatProtector;


# instance fields
.field private ANTI_FALSE_COUNT:I

.field private final DELAY_TIME:I

.field private final DELAY_TIME_TO_SHUTDOWN:I

.field private INTERVAL_ORANGE:J

.field private INTERVAL_RED:J

.field private TEMPERATURE_ORANGE:I

.field private TEMPERATURE_PURPLE:I

.field private TEMPERATURE_RED:I

.field private TEMPERATURE_SKIN:I

.field private TEMPERATURE_SKIN_PATH:Ljava/lang/String;

.field final mAlertRunnable:Ljava/lang/Runnable;

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCoolProcessingLocked:I

.field private mCurrentChangeTrendLocked:I

.field private mCurrentCount:I

.field private final mDefaultBacklight:I

.field private mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastBatteryTemperatureLocked:I

.field private mLastOrangeTime:J

.field private mLastRedTime:J

.field private mLastResumeUnderOrangeTime:J

.field private mLastResumeUnderRedTime:J

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mTimer:Landroid/os/CountDownTimer;

.field private final mUiHandler:Landroid/os/Handler;

.field private obs:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 67
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    .line 68
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x79

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    .line 93
    new-array v1, v0, [I

    const/16 v3, 0x7a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    .line 126
    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mUiHandler:Landroid/os/Handler;

    .line 88
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 89
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 90
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    .line 94
    const-string v0, "/sys/class/thermal/thermal_zone68/temp"

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    .line 95
    const v0, 0xbb80

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    .line 112
    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    .line 113
    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    .line 115
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    .line 116
    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    .line 118
    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderOrangeTime:J

    .line 120
    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderRedTime:J

    .line 123
    const-wide/32 v1, 0x1d4c0

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    .line 124
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    .line 127
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    .line 128
    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    .line 130
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    .line 135
    const/16 v1, 0x2904

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->DELAY_TIME:I

    .line 136
    const/16 v1, 0x157c

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->DELAY_TIME_TO_SHUTDOWN:I

    .line 366
    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/OverHeatProtector$2;-><init>(Lcom/android/systemui/power/OverHeatProtector;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 546
    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/OverHeatProtector$3;-><init>(Lcom/android/systemui/power/OverHeatProtector;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mAlertRunnable:Ljava/lang/Runnable;

    .line 145
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    .line 146
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 148
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-class v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 149
    const-class v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 150
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 151
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    .line 152
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    .line 153
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 155
    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, v1}, Lcom/android/systemui/power/OverHeatProtector$1;-><init>(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    .line 192
    const-string v2, "op_temperature_orange"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 194
    const-string v2, "op_temperature_red"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 197
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 200
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x10e0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 201
    .local v3, "orange":I
    const v4, 0x10e0085

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 202
    .local v4, "red":I
    const v5, 0x10e0084

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 203
    .local v5, "purple":I
    if-lez v3, :cond_0

    if-lez v4, :cond_0

    if-lez v5, :cond_0

    .line 204
    iput v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 205
    iput v4, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 206
    iput v5, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    goto :goto_0

    .line 208
    :cond_0
    const-string v6, "OverHeatProtector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find resources...[o="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", p="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    const-string v6, "op_temperature_orange"

    iget v7, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 212
    const-string v6, "op_temperature_red"

    iget v7, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 213
    const-string v6, "op_temperature_purple"

    iget v7, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    .line 215
    sget-boolean v6, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    if-eqz v6, :cond_1

    .line 216
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->initSkinPolicy(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V

    .line 219
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 222
    invoke-static {p1}, Lcom/android/systemui/power/OverHeatProtectorUtils;->init(Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->updatePolicy(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->orangeAlertLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->redAlertLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->purpleAlertLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->dismissDialogOrNotification(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/OverHeatProtector;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/power/OverHeatProtector;)Lcom/android/systemui/power/OverHeatAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/power/OverHeatProtector;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/power/OverHeatProtector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/power/OverHeatProtector;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->antiFalsePositiveDetector(I)Z

    move-result v0

    return v0
.end method

.method private antiFalsePositiveDetector(I)Z
    .locals 4
    .param p1, "temperature"    # I

    .line 382
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 383
    :cond_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "antiFalsePositiveDetector  ANTI_FALSE_COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    .line 385
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    if-lt p1, v0, :cond_2

    .line 386
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    goto :goto_0

    .line 388
    :cond_2
    iput v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    .line 390
    :goto_0
    return v1

    .line 392
    :cond_3
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    if-lt p1, v0, :cond_4

    .line 393
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    goto :goto_1

    .line 395
    :cond_4
    iput v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    .line 398
    :goto_1
    return v3
.end method

.method private applyPolicy(I)V
    .locals 2
    .param p1, "type"    # I

    .line 563
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/power/OverHeatProtector$4;-><init>(Lcom/android/systemui/power/OverHeatProtector;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 580
    return-void
.end method

.method private checkIfSkinTemperatureAlert()Z
    .locals 6

    .line 797
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "tempStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 800
    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfSkinTemperatureAlert  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return v1

    .line 803
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 804
    .local v2, "temp":I
    sget-boolean v3, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 805
    const-string v3, "OverHeatProtector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfSkinTemperatureAlert   ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_2
    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    if-lt v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private clearAllRunningProcessesLocked()V
    .locals 2

    .line 779
    const-string v0, "OverHeatProtector"

    const-string v1, "clearAllRunningProcesses"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->killAllRunningProcesses()V

    .line 783
    return-void
.end method

.method private computeCurrentTrendLocked(I)V
    .locals 3
    .param p1, "currentTemperature"    # I

    .line 457
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    if-le p1, v0, :cond_0

    .line 458
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    goto :goto_0

    .line 459
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    if-ge p1, v0, :cond_1

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    goto :goto_0

    .line 462
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    .line 464
    :goto_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 465
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeCurrentTrendLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_2
    return-void
.end method

.method private disableFlashLightLocked()V
    .locals 2

    .line 774
    const-string v0, "OverHeatProtector"

    const-string v1, "disableFlashLight"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    .line 776
    return-void
.end method

.method private disableHotspotLocked()V
    .locals 2

    .line 747
    const-string v0, "OverHeatProtector"

    const-string v1, "disableHotspot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 749
    return-void
.end method

.method private dismissDialogOrNotification(I)V
    .locals 2
    .param p1, "type"    # I

    .line 694
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 696
    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->dismiss()V

    .line 700
    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    .line 701
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    .line 703
    :cond_1
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    sget-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/systemui/power/OverHeatProtector;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/OverHeatProtector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    .line 141
    :cond_0
    sget-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    return-object v0
.end method

.method private initSkinPolicy(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 230
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string v1, "initSkinPolicy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    const-string v0, "op_temperature_skin"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 233
    const-string v0, "op_temperature_skinpath"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 236
    const v0, 0x10e0086

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 237
    .local v0, "skin":I
    const v1, 0x1040172

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "skinPath":Ljava/lang/String;
    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    .line 239
    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    .line 240
    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    goto :goto_0

    .line 242
    :cond_1
    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find resources...[ s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    const-string v2, "op_temperature_skin"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    .line 246
    const-string v2, "op_temperature_skinpath"

    invoke-static {p1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_2

    .line 248
    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    .line 250
    :cond_2
    return-void
.end method

.method public static isEnable()Z
    .locals 1

    .line 226
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    return v0
.end method

.method private notifyCurrentOverHeatStateLocked(I)V
    .locals 3
    .param p1, "type"    # I

    .line 267
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    .line 268
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_overheat_temperature_type"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    return-void
.end method

.method private orangeAlertLocked()V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_orange_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 725
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->disableHotspotLocked()V

    .line 726
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->reduceBrightnessLocked()V

    .line 727
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->disableFlashLightLocked()V

    .line 728
    return-void
.end method

.method private purpleAlertLocked()V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_purple_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 742
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 743
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "OverHeatProtector trigger..."

    invoke-virtual {v1, v0, v2, v0}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 744
    return-void
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 811
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFile path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 813
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 814
    const-string v1, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFile path:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-object v2

    .line 817
    :cond_1
    const/4 v1, 0x0

    .line 818
    .local v1, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 819
    .local v3, "fr":Ljava/io/FileReader;
    nop

    .line 821
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 822
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    .line 823
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 828
    nop

    .line 829
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_0

    .line 832
    :catch_0
    move-exception v4

    goto :goto_1

    .line 830
    :goto_0
    nop

    .line 831
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 832
    :goto_1
    nop

    .line 833
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 835
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 834
    :cond_2
    :goto_2
    goto :goto_3

    .line 827
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 824
    :catch_1
    move-exception v4

    .line 825
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 828
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_3

    .line 829
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 830
    :cond_3
    if-eqz v2, :cond_2

    .line 831
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 836
    :goto_3
    return-object v1

    .line 827
    :goto_4
    nop

    .line 828
    if-eqz v3, :cond_4

    .line 829
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_5

    .line 832
    :catch_2
    move-exception v5

    goto :goto_6

    .line 830
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 831
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    .line 832
    :goto_6
    nop

    .line 833
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 834
    :cond_5
    :goto_7
    throw v4
.end method

.method private redAlertLocked()V
    .locals 3

    .line 731
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_red_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->orangeAlertLocked()V

    .line 735
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->clearAllRunningProcessesLocked()V

    .line 736
    return-void
.end method

.method private reduceBrightnessLocked()V
    .locals 5

    .line 752
    const-string v0, "OverHeatProtector"

    const-string v1, "reduceBrightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 757
    .local v0, "brightness":I
    iget v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    if-le v0, v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v4, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 762
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 771
    .end local v0    # "brightness":I
    :cond_0
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 10
    .param p1, "type"    # I

    .line 584
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    if-nez v0, :cond_4

    if-gtz p1, :cond_0

    goto/16 :goto_1

    .line 588
    :cond_0
    new-instance v0, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;-><init>(Lcom/android/systemui/power/OverHeatProtector;Lcom/android/systemui/power/OverHeatProtector$1;)V

    .line 590
    .local v0, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/systemui/power/OverHeatAlertDialog;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    .line 591
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v2, 0x7f08075b

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setIcon(I)V

    .line 592
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 593
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setCancelable(Z)V

    .line 594
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v2, 0x7f110472

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setTitle(I)V

    .line 597
    const/4 v1, 0x1

    const v2, 0x7f11046d

    if-ne p1, v1, :cond_1

    .line 598
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 599
    .local v1, "button_content":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 600
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f11046e

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(I)V

    .line 601
    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$5;

    const-wide/16 v5, 0x2904

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/power/OverHeatProtector$5;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    .line 615
    invoke-virtual {v2}, Lcom/android/systemui/power/OverHeatProtector$5;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 616
    .end local v1    # "button_content":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 617
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 618
    .restart local v1    # "button_content":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 619
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f110471

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(I)V

    .line 620
    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$6;

    const-wide/16 v5, 0x2904

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/power/OverHeatProtector$6;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    .line 634
    invoke-virtual {v2}, Lcom/android/systemui/power/OverHeatProtector$6;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 635
    .end local v1    # "button_content":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v2, 0x7f110470

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 637
    .local v1, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v2, v1}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f11046f

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 639
    new-instance v9, Lcom/android/systemui/power/OverHeatProtector$7;

    const-wide/16 v4, 0x157c

    const-wide/16 v6, 0x3e8

    move-object v2, v9

    move-object v3, p0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/power/OverHeatProtector$7;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    .line 656
    invoke-virtual {v9}, Lcom/android/systemui/power/OverHeatProtector$7;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    .line 657
    .end local v1    # "content":Ljava/lang/String;
    nop

    .line 660
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v1}, Lcom/android/systemui/power/OverHeatAlertDialog;->show()V

    .line 661
    return-void

    .line 658
    :cond_3
    return-void

    .line 586
    .end local v0    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_4
    :goto_1
    return-void
.end method

.method private showNotification(I)V
    .locals 11
    .param p1, "type"    # I

    .line 664
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 665
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 666
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 667
    .local v1, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 668
    .local v2, "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    const-string v3, "1"

    .line 669
    .local v3, "channelID":Ljava/lang/String;
    const-string v4, "channel_name"

    .line 672
    .local v4, "channelName":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 673
    iget-object v5, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v6, 0x7f110474

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "content":Ljava/lang/String;
    goto :goto_0

    .line 677
    .end local v5    # "content":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v6, 0x7f110473

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 679
    .restart local v5    # "content":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 680
    new-instance v6, Landroid/app/NotificationChannel;

    const/4 v7, 0x4

    invoke-direct {v6, v3, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 681
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 682
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f08075b

    .line 683
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 684
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 685
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 686
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 687
    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 688
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 689
    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 690
    const-string v7, "overheat"

    const/16 v8, 0xa

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 691
    return-void
.end method

.method private triggerOrangeDownLocked()V
    .locals 2

    .line 535
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerOrangeDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderOrangeTime:J

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    .line 541
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 543
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    .line 544
    return-void
.end method

.method private triggerOrangeUpLocked()Z
    .locals 8

    .line 499
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerOrangeUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->checkIfSkinTemperatureAlert()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 501
    return v1

    .line 503
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 504
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    iget-wide v6, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 505
    const-string v0, "OverHeatProtector"

    const-string v4, "Temperature fluctuation nearby ORANGE!"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return v1

    .line 508
    :cond_2
    iput-wide v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    .line 510
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 511
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    .line 512
    return v0
.end method

.method private triggerPurpleDownLocked()V
    .locals 2

    .line 517
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerPurpleDownLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 520
    return-void
.end method

.method private triggerPurpleUpLocked()Z
    .locals 2

    .line 471
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerPurpleUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 475
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method private triggerRedDownLocked()V
    .locals 2

    .line 524
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerRedDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderRedTime:J

    .line 529
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 531
    return-void
.end method

.method private triggerRedUpLocked()Z
    .locals 8

    .line 481
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerRedUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->checkIfSkinTemperatureAlert()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 483
    return v1

    .line 485
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 486
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    iget-wide v6, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 487
    const-string v0, "OverHeatProtector"

    const-string v4, "Temperature fluctuation nearby RED!"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v1

    .line 490
    :cond_2
    iput-wide v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    .line 492
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 493
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method private updatePolicy(I)V
    .locals 6
    .param p1, "temperature"    # I

    .line 403
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->computeCurrentTrendLocked(I)V

    .line 406
    const/4 v1, 0x1

    .line 407
    .local v1, "needRecordCurrentTemperature":Z
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge p1, v2, :cond_3

    .line 408
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    .line 409
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-nez v2, :cond_0

    .line 410
    sget-boolean v2, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 411
    const-string v2, "OverHeatProtector"

    const-string v3, "Thanks God. Everything is okay."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 412
    :cond_0
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v5, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    .line 414
    :cond_1
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v4, :cond_2

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    .line 417
    :cond_2
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    .line 424
    :cond_3
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    if-ge p1, v2, :cond_7

    .line 426
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-ne v2, v5, :cond_4

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ge v2, v5, :cond_4

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeUpLocked()Z

    move-result v2

    move v1, v2

    goto :goto_0

    .line 428
    :cond_4
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    .line 430
    sget-boolean v2, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 431
    const-string v2, "OverHeatProtector"

    const-string v5, "Yep, now the temperature has dropped into orange"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_5
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v4, :cond_6

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    goto :goto_0

    .line 434
    :cond_6
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    .line 435
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    goto :goto_0

    .line 438
    :cond_7
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    if-ge p1, v2, :cond_9

    .line 440
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-ne v2, v5, :cond_8

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ge v2, v4, :cond_8

    .line 441
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedUpLocked()Z

    move-result v2

    move v1, v2

    goto :goto_0

    .line 442
    :cond_8
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    .line 444
    const-string v2, "OverHeatProtector"

    const-string v3, "Yeh, this couldn\'t happend!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    goto :goto_0

    .line 448
    :cond_9
    const-string v2, "OverHeatProtector"

    const-string v3, "Okay, this could be real dangerous."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleUpLocked()Z

    move-result v2

    move v1, v2

    .line 452
    :cond_a
    :goto_0
    if-eqz v1, :cond_b

    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    .line 453
    .end local v1    # "needRecordCurrentTemperature":Z
    :cond_b
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public setAntiFalseCount(I)V
    .locals 3
    .param p1, "count"    # I

    .line 358
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAntiFalseCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    if-lez p1, :cond_1

    .line 362
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    .line 364
    :cond_1
    return-void
.end method

.method public setAntiFalseEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 349
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAntiFalseEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    sput-boolean p1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    .line 353
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    if-nez v0, :cond_1

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    .line 355
    :cond_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 253
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    if-eq v0, p1, :cond_1

    .line 257
    sput-boolean p1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    .line 258
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    if-nez v0, :cond_1

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->updatePolicy(I)V

    .line 263
    :cond_1
    return-void
.end method

.method public setOrangeInterval(I)V
    .locals 8
    .param p1, "second"    # I

    .line 300
    if-gtz p1, :cond_0

    return-void

    .line 301
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    .line 302
    .local v0, "millis":J
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_0
    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    .line 304
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v3, "overheat_protector_orange_interval"

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 306
    return-void

    .line 304
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setOrangeTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 273
    if-gtz p1, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 276
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_orange"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPurpleTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 291
    if-gtz p1, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    .line 294
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_purple"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRedInterval(I)V
    .locals 8
    .param p1, "second"    # I

    .line 310
    if-gtz p1, :cond_0

    return-void

    .line 311
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    .line 312
    .local v0, "millis":J
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    :try_start_0
    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    .line 314
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v3, "overheat_protector_red_interval"

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 316
    return-void

    .line 314
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setRedTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 282
    if-gtz p1, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 285
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_red"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSkinEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 319
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSkinEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    if-eq v0, p1, :cond_1

    .line 323
    sput-boolean p1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    .line 324
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/power/OverHeatProtector;->initSkinPolicy(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V

    .line 328
    :cond_1
    return-void
.end method

.method public setSkinPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 341
    if-nez p1, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    .line 344
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_skinpath"

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 345
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSkinTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 332
    if-gtz p1, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    .line 335
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_skin"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
