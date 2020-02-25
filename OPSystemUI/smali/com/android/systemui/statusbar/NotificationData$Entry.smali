.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private addTime:J

.field public autoRedacted:Z

.field public cachedAmbientContentView:Landroid/widget/RemoteViews;

.field public cachedBigContentView:Landroid/widget/RemoteViews;

.field public cachedContentView:Landroid/widget/RemoteViews;

.field public cachedHeadsUpContentView:Landroid/widget/RemoteViews;

.field public cachedPublicContentView:Landroid/widget/RemoteViews;

.field public channel:Landroid/app/NotificationChannel;

.field public expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private hasSentReply:Z

.field public headsUpStatusBarText:Ljava/lang/CharSequence;

.field public headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private interruption:Z

.field public key:Ljava/lang/String;

.field public keyguardChronometer:Landroid/widget/Chronometer;

.field private lastFullScreenIntentLaunchTime:J

.field public lastRemoteInputSent:J

.field public mActiveAppOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mDebugThrowable:Ljava/lang/Throwable;

.field public mIsGamingModeNotificaiton:Ljava/lang/Boolean;

.field public mIsSystemNotification:Ljava/lang/Boolean;

.field private mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

.field public notification:Landroid/service/notification/StatusBarNotification;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public remoteInputTextWhenReset:Ljava/lang/CharSequence;

.field public row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field public snoozeCriteria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field public statusBarChronometer:Landroid/widget/Chronometer;

.field public targetSdk:I

.field public userSentiment:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 112
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->userSentiment:I

    .line 114
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    .line 115
    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 119
    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastRemoteInputSent:J

    .line 120
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    .line 132
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    .line 133
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    .line 149
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->addTime:J

    .line 158
    :try_start_0
    const-string v0, "scene_modes_game"

    .line 159
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsGamingModeNotificaiton:Ljava/lang/Boolean;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsGamingModeNotificaiton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "android"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsGamingModeNotificaiton:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationData"

    const-string v2, "exception while getting channel ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initChronometers(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;

    .line 233
    new-instance v0, Landroid/widget/Chronometer;

    invoke-direct {v0, p1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p2}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 236
    new-instance v0, Landroid/widget/Chronometer;

    invoke-direct {v0, p1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p2}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 238
    return-void
.end method

.method public static synthetic lambda$createIcons$0(Lcom/android/systemui/statusbar/NotificationData$Entry;I)V
    .locals 2
    .param p1, "newVisibility"    # I

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconsVisible(Z)V

    .line 288
    :cond_1
    return-void
.end method


# virtual methods
.method public abortTask()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/InflationTask;->abort()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 346
    :cond_0
    return-void
.end method

.method public createChronometer(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 211
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->getChronometerState()I

    move-result v1

    if-nez v1, :cond_0

    .line 212
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->initChronometers(Landroid/content/Context;Landroid/app/Notification;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    if-nez v1, :cond_1

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->initChronometers(Landroid/content/Context;Landroid/app/Notification;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/app/Notification;->getChronometerBase()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 223
    :goto_0
    invoke-virtual {v0}, Landroid/app/Notification;->getChronometerState()I

    move-result v1

    if-nez v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    goto :goto_1

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 230
    :goto_1
    return-void
.end method

.method public createIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 254
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 255
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 256
    .local v8, "smallIcon":Landroid/graphics/drawable/Icon;
    if-eqz v8, :cond_1

    .line 262
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 267
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 270
    new-instance v9, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 271
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 272
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    iget v6, v0, Landroid/app/Notification;->number:I

    .line 276
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 277
    .local v1, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$NotificationData$Entry$htRh1w4D2IBYeXc1CwB54DGLhpM;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationData$Entry$htRh1w4D2IBYeXc1CwB54DGLhpM;-><init>(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V

    .line 289
    return-void

    .line 278
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 279
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 280
    new-instance v2, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    .end local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No small icon in notification from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContrastedColor(Landroid/content/Context;ZI)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLowPriority"    # Z
    .param p3, "backgroundColor"    # I

    .line 326
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->color:I

    .line 328
    .local v0, "rawColor":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 329
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    return v1

    .line 331
    :cond_1
    invoke-static {p1, v0, p3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v1

    .line 333
    .local v1, "contrasted":I
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    .line 334
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    .line 335
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    return v2
.end method

.method public getDebugThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mDebugThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getExpandedContentView()Landroid/view/View;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTask()Lcom/android/systemui/statusbar/InflationTask;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-object v0
.end method

.method public hasInterrupted()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .locals 6

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJustSentRemoteInput()Z
    .locals 6

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastRemoteInputSent:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastMessageFromReply()Z
    .locals 8

    .line 390
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasSentReply:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 391
    return v1

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 394
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "android.remoteInputHistory"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 396
    .local v2, "replyTexts":[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 397
    return v4

    .line 399
    :cond_1
    const-string v3, "android.messages"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 400
    .local v3, "messages":[Landroid/os/Parcelable;
    if-eqz v3, :cond_3

    array-length v5, v3

    if-lez v5, :cond_3

    .line 401
    array-length v5, v3

    sub-int/2addr v5, v4

    aget-object v5, v3, v5

    .line 402
    .local v5, "message":Landroid/os/Parcelable;
    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 403
    move-object v6, v5

    check-cast v6, Landroid/os/Bundle;

    .line 404
    invoke-static {v6}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v6

    .line 406
    .local v6, "lastMessage":Landroid/app/Notification$MessagingStyle$Message;
    if-eqz v6, :cond_3

    .line 407
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v1

    .line 408
    .local v1, "senderPerson":Landroid/app/Person;
    if-nez v1, :cond_2

    .line 409
    return v4

    .line 411
    :cond_2
    const-string v4, "android.messagingUser"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    .line 412
    .local v4, "user":Landroid/app/Person;
    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    return v7

    .line 416
    .end local v1    # "senderPerson":Landroid/app/Person;
    .end local v4    # "user":Landroid/app/Person;
    .end local v5    # "message":Landroid/os/Parcelable;
    .end local v6    # "lastMessage":Landroid/app/Notification$MessagingStyle$Message;
    :cond_3
    return v1
.end method

.method public notifyFullScreenIntentLaunched()V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 196
    return-void
.end method

.method public onInflationTaskFinished()V
    .locals 1

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 360
    return-void
.end method

.method public onRemoteInputInserted()V
    .locals 2

    .line 381
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastRemoteInputSent:J

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    .line 383
    return-void
.end method

.method public reCheckToLaunchFullScreenIntent()Z
    .locals 6

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->addTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reset()V

    .line 183
    :cond_0
    return-void
.end method

.method public setDebugThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "debugThrowable"    # Ljava/lang/Throwable;

    .line 373
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mDebugThrowable:Ljava/lang/Throwable;

    .line 374
    return-void
.end method

.method public setHasSentReply()V
    .locals 1

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasSentReply:Z

    .line 387
    return-void
.end method

.method public setIconTag(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 296
    :cond_0
    return-void
.end method

.method public setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .locals 2
    .param p1, "abortableTask"    # Lcom/android/systemui/statusbar/InflationTask;

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 351
    .local v0, "existing":Lcom/android/systemui/statusbar/InflationTask;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    .line 352
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 353
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/InflationTask;->supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V

    .line 356
    :cond_0
    return-void
.end method

.method public setInterruption()V
    .locals 1

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    .line 170
    return-void
.end method

.method public updateIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 309
    .local v0, "n":Landroid/app/Notification;
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 310
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 311
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget v5, v0, Landroid/app/Notification;->iconLevel:I

    iget v6, v0, Landroid/app/Notification;->number:I

    .line 315
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 316
    .local v1, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 317
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 318
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    .line 319
    .restart local v0    # "n":Landroid/app/Notification;
    .restart local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t update icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    :goto_0
    return-void
.end method
