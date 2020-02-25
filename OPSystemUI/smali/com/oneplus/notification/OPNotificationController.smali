.class public Lcom/oneplus/notification/OPNotificationController;
.super Ljava/lang/Object;
.source "OPNotificationController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/notification/OPNotificationController$OimcObserver;,
        Lcom/oneplus/notification/OPNotificationController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final PRIORITY_LIST_BREATH_MODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_LIST_GAME_MODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEBUG:Z

.field private mBlockedByBreath:Z

.field private mBlockedByGame:Z

.field private mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mContext:Landroid/content/Context;

.field private final mDockedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private mESportModeOn:Z

.field private mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mGameMode3rdCallUid:Ljava/lang/String;

.field private mGameModeNotifType:I

.field private mIsFreeForm:Z

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOimcObserver:Lcom/oneplus/notification/OPNotificationController$OimcObserver;

.field private mOrientation:I

.field private mQuickReplyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

.field private mTopActivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 94
    const-string v0, "com.android.dialer"

    const-string v1, "com.android.incallui"

    const-string v2, "com.oneplus.deskclock"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OPNotificationController;->PRIORITY_LIST_GAME_MODE:Ljava/util/List;

    .line 98
    const-string v0, "com.android.dialer"

    const-string v1, "com.android.incallui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OPNotificationController;->PRIORITY_LIST_BREATH_MODE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    .line 82
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    .line 86
    const-string v1, "-1"

    iput-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    .line 87
    iput-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByGame:Z

    .line 88
    iput-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByBreath:Z

    .line 90
    iput v0, p0, Lcom/oneplus/notification/OPNotificationController;->mOrientation:I

    .line 92
    iput-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mDockedStackExists:Z

    .line 102
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mQuickReplyList:Ljava/util/List;

    .line 103
    iput-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mIsFreeForm:Z

    .line 106
    iput-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mESportModeOn:Z

    .line 125
    new-instance v0, Lcom/oneplus/notification/OPNotificationController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/notification/OPNotificationController$1;-><init>(Lcom/oneplus/notification/OPNotificationController;)V

    iput-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 570
    new-instance v0, Lcom/oneplus/notification/OPNotificationController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/notification/OPNotificationController$2;-><init>(Lcom/oneplus/notification/OPNotificationController;)V

    iput-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mDockedListener:Ljava/util/function/Consumer;

    .line 109
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    .line 111
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 112
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mDockedListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/notification/OPNotificationController;)Lcom/oneplus/notification/OPNotificationController$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 62
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/notification/OPNotificationController;Lcom/oneplus/notification/OPNotificationController$SettingsObserver;)Lcom/oneplus/notification/OPNotificationController$SettingsObserver;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    .line 62
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/notification/OPNotificationController;)Lcom/oneplus/notification/OPNotificationController$OimcObserver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 62
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mOimcObserver:Lcom/oneplus/notification/OPNotificationController$OimcObserver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/notification/OPNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 62
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByBreath:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/oneplus/notification/OPNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByBreath:Z

    return p1
.end method

.method static synthetic access$102(Lcom/oneplus/notification/OPNotificationController;Lcom/oneplus/notification/OPNotificationController$OimcObserver;)Lcom/oneplus/notification/OPNotificationController$OimcObserver;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # Lcom/oneplus/notification/OPNotificationController$OimcObserver;

    .line 62
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mOimcObserver:Lcom/oneplus/notification/OPNotificationController$OimcObserver;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/oneplus/notification/OPNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/oneplus/notification/OPNotificationController;->mDockedStackExists:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/notification/OPNotificationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 62
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/notification/OPNotificationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 62
    iget v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/notification/OPNotificationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/notification/OPNotificationController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 62
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/notification/OPNotificationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/notification/OPNotificationController;)Lcom/android/systemui/statusbar/NotificationEntryManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 62
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/notification/OPNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 62
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oneplus/notification/OPNotificationController;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mQuickReplyList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oneplus/notification/OPNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 62
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mESportModeOn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/oneplus/notification/OPNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/oneplus/notification/OPNotificationController;->mESportModeOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/notification/OPNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 62
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByGame:Z

    return v0
.end method

.method static synthetic access$902(Lcom/oneplus/notification/OPNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/notification/OPNotificationController;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByGame:Z

    return p1
.end method

.method private blockByReadMode()Z
    .locals 6

    .line 201
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 203
    .local v0, "status":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "reading_mode_block_notification"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 206
    .local v2, "block":I
    if-ne v2, v1, :cond_0

    .line 207
    return v1

    .line 210
    .end local v2    # "block":I
    :cond_0
    return v3
.end method

.method private blockedByBreathMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 243
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByBreath:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/notification/OPNotificationController;->PRIORITY_LIST_BREATH_MODE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blockedByESport(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 214
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/util/OemSceneCallBlocker;->isNotificationMutedByESport(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private blockedByGameMode(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 218
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "pkg":Ljava/lang/String;
    sget-object v1, Lcom/oneplus/notification/OPNotificationController;->PRIORITY_LIST_GAME_MODE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 221
    return v2

    .line 224
    :cond_0
    const-string v1, "call"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    return v2

    .line 228
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "OPNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBlockedByGame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByGame:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByGame:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    if-eqz v1, :cond_4

    .line 231
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 232
    .local v1, "b":Landroid/os/Bundle;
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 233
    const-string v4, "oneplus.shouldPeekInGameMode"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v3

    return v2

    .line 235
    :cond_3
    return v3

    .line 238
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_4
    return v2
.end method

.method private getAppIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 534
    const/4 v0, 0x0

    .line 536
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 539
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 540
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "OPNotificationController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quick Reply: Get package fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 543
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v2, :cond_1

    .line 544
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 545
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 546
    .local v4, "h":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 547
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 548
    .local v5, "config":Landroid/graphics/Bitmap$Config;
    :goto_1
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 549
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 550
    .local v6, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 551
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 552
    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v5    # "config":Landroid/graphics/Bitmap$Config;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    goto :goto_2

    .line 553
    :cond_1
    const-string v3, "OPNotificationController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quick Reply: Cannot resolve application icon, pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_2
    return-object v0
.end method

.method public static synthetic lambda$getQuickReplyView$0(Lcom/oneplus/notification/OPNotificationController;Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "v"    # Landroid/view/View;

    .line 481
    const-string v0, "landscape_quick_reply"

    const-string v1, "hun_action"

    const-string v2, "2"

    const-string v3, "YLTI9SVG4L"

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/notification/OPNotificationController;->sentIntent(Landroid/service/notification/StatusBarNotification;Z)V

    .line 484
    return-void
.end method

.method public static synthetic lambda$getQuickReplyView$1(Lcom/oneplus/notification/OPNotificationController;Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "v"    # Landroid/view/View;

    .line 490
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPresenterFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "landscape_quick_reply"

    const-string v1, "hun_action"

    const-string v2, "1"

    const-string v3, "YLTI9SVG4L"

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_0
    const-string v0, "landscape_quick_reply"

    const-string v1, "nd_action"

    const-string v2, "1"

    const-string v3, "YLTI9SVG4L"

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/notification/OPNotificationController;->sentIntent(Landroid/service/notification/StatusBarNotification;Z)V

    .line 498
    return-void
.end method

.method private sentIntent(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "freeform"    # Z

    .line 504
    const-string v0, "OPNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in freeform mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 506
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 508
    :cond_0
    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 509
    .local v1, "intent":Landroid/app/PendingIntent;
    :goto_0
    if-eqz v1, :cond_4

    .line 511
    :try_start_0
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptionsInternal(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v2

    move-object v10, v2

    .line 512
    .local v10, "options":Landroid/app/ActivityOptions;
    if-eqz p2, :cond_1

    .line 513
    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 515
    :cond_1
    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 516
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 515
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 517
    .local v2, "launchResult":I
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityLaunchAnimator()Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    move-result-object v3

    .line 518
    .local v3, "activityLaunchAnimator":Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
    if-eqz v3, :cond_2

    .line 519
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(I)V

    .line 522
    :cond_2
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPresenterFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 523
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeHeadsUps()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v2    # "launchResult":I
    .end local v3    # "activityLaunchAnimator":Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
    .end local v10    # "options":Landroid/app/ActivityOptions;
    :cond_3
    goto :goto_1

    .line 525
    :catch_0
    move-exception v2

    .line 528
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "OPNotificationController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending PendingIntent failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_4
    :goto_1
    return-void
.end method

.method private setShowQuickReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 444
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 446
    .local v1, "isForegroundService":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mTopActivity:Ljava/lang/String;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mTopActivity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 447
    .local v4, "isTopActivity":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/notification/OPNotificationController;->supportQuickReply(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/oneplus/notification/OPNotificationController;->mIsFreeForm:Z

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    move v2, v3

    nop

    .line 458
    .local v2, "flag":Z
    :cond_2
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowQuickReply(Z)V

    .line 459
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 592
    const-string v0, "OPNotificationController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBlockedByGame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByGame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBlockedByBreath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByBreath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mESportModeOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->mESportModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGameModeNotifType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGameMode3rdCallUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsFreeForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->mIsFreeForm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTopActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mTopActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const-string v0, "  quick reply supported list:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mQuickReplyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/notification/OPNotificationController;->mQuickReplyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getQuickReplyView(Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 462
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d013d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 464
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 465
    .local v1, "n":Landroid/app/Notification;
    const v2, 0x7f0a0059

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 466
    .local v2, "icon":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 467
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OPNotificationController;->getAppIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 469
    :cond_0
    const v3, 0x7f0a0426

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 470
    .local v3, "title":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 471
    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_1
    const v4, 0x7f0a03fd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 474
    .local v4, "text":Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 475
    iget-object v5, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :cond_2
    const v5, 0x7f0a0297

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 478
    .local v5, "content":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 479
    new-instance v6, Lcom/oneplus/notification/-$$Lambda$OPNotificationController$0XpQjXU3fEcSdwVDWII_SBWc4Bg;

    invoke-direct {v6, p0, p1}, Lcom/oneplus/notification/-$$Lambda$OPNotificationController$0XpQjXU3fEcSdwVDWII_SBWc4Bg;-><init>(Lcom/oneplus/notification/OPNotificationController;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    :cond_3
    const v6, 0x7f0a009c

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 487
    .local v6, "btn":Landroid/view/View;
    if-eqz v6, :cond_4

    .line 488
    new-instance v7, Lcom/oneplus/notification/-$$Lambda$OPNotificationController$2w_w64CmL_t_Q-Ksyf8fOwiCIV4;

    invoke-direct {v7, p0, p1}, Lcom/oneplus/notification/-$$Lambda$OPNotificationController$2w_w64CmL_t_Q-Ksyf8fOwiCIV4;-><init>(Lcom/oneplus/notification/OPNotificationController;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    :cond_4
    return-object v0
.end method

.method public isFreeFormActive()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mIsFreeForm:Z

    return v0
.end method

.method public isOnQuickReplyList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mQuickReplyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPanelDisabledInBrickMode()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByBreath:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keepLightBlink(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;)Z"
        }
    .end annotation

    .line 186
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v0, 0x0

    .line 187
    .local v0, "blink":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 188
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 189
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 190
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "pkg":Ljava/lang/String;
    const-string v5, "com.android.dialer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.android.server.telecom"

    .line 192
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x1

    .line 188
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 561
    iget v0, p0, Lcom/oneplus/notification/OPNotificationController;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 562
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/oneplus/notification/OPNotificationController;->mOrientation:I

    .line 563
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->hideSimpleHeadsUps()V

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/notification/OPNotificationController;->setQuickReplyFlags()V

    .line 568
    :cond_1
    return-void
.end method

.method public setIsFreeForm(Z)V
    .locals 0
    .param p1, "freeform"    # Z

    .line 579
    iput-boolean p1, p0, Lcom/oneplus/notification/OPNotificationController;->mIsFreeForm:Z

    .line 580
    return-void
.end method

.method public setNotificationEntry(Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 0
    .param p1, "mgr"    # Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 121
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 122
    return-void
.end method

.method public setQuickReplyFlags()V
    .locals 5

    .line 434
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 436
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 437
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/notification/OPNotificationController;->isOnQuickReplyList(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reinflateQuickReply(Z)V

    .line 438
    invoke-direct {p0, v2}, Lcom/oneplus/notification/OPNotificationController;->setShowQuickReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 439
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    goto :goto_0

    .line 441
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_0
    return-void
.end method

.method public setTopActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 587
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController;->mTopActivity:Ljava/lang/String;

    .line 588
    return-void
.end method

.method public shouldPeek(Landroid/service/notification/StatusBarNotification;)I
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 139
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/notification/OPNotificationController;->blockedByBreathMode(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 143
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OPNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No peeking: blocked by brick mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return v2

    .line 147
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->mESportModeOn:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/oneplus/notification/OPNotificationController;->blockedByESport(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No peeking: blocked by ESport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    const/4 v1, 0x4

    return v1

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "-1"

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/oneplus/notification/OPNotificationController;->PRIORITY_LIST_GAME_MODE:Ljava/util/List;

    .line 154
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 155
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 156
    const-string v1, "OPNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No peeking: game mode 3rd party is calling, uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController;->mGameMode3rdCallUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_4
    return v2

    .line 159
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/notification/OPNotificationController;->blockByReadMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 160
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "OPNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No peeking: blocked by reading mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_6
    return v2

    .line 163
    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OPNotificationController;->blockedByGameMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 164
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No peeking: blocked by game mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_8
    const/4 v1, 0x1

    return v1

    .line 167
    :cond_9
    const/4 v1, -0x1

    return v1
.end method

.method public shouldPeekSnoozedNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 404
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByBreath:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/notification/OPNotificationController;->PRIORITY_LIST_BREATH_MODE:Ljava/util/List;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByGame:Z

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 404
    :goto_0
    return v0
.end method

.method public showSimpleHeadsUp()Z
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mBlockedByGame:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/notification/OPNotificationController;->mGameModeNotifType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public snoozeHeadsUp(Landroid/app/Notification;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;

    .line 172
    invoke-virtual {p1}, Landroid/app/Notification;->getSwipeUpHeadsUpIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 173
    .local v0, "intent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_1

    .line 175
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/notification/OPNotificationController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snooze "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " send pending intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 182
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_0
    return-void
.end method

.method public supportQuickReply(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 422
    iget-boolean v0, p0, Lcom/oneplus/notification/OPNotificationController;->mDockedStackExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/notification/OPNotificationController;->isOnQuickReplyList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/notification/OPNotificationController;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 424
    const/4 v0, 0x1

    return v0

    .line 426
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateNotificationRule()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OPNotificationController$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OPNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mOimcObserver:Lcom/oneplus/notification/OPNotificationController$OimcObserver;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController;->mOimcObserver:Lcom/oneplus/notification/OPNotificationController$OimcObserver;

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->update(Landroid/net/Uri;)V

    .line 401
    :cond_1
    return-void
.end method
