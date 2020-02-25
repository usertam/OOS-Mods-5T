.class public Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;
.super Ljava/lang/Object;
.source "ForegroundServiceLifetimeExtender.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLifetimeExtender;


# static fields
.field static final MIN_FGS_TIME_MS:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mManagedEntries:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationSafeToRemoveCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method public static synthetic lambda$setShouldManageLifetime$0(Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->mNotificationSafeToRemoveCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->mNotificationSafeToRemoveCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->mNotificationSafeToRemoveCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    .line 48
    return-void
.end method

.method public setShouldManageLifetime(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 7
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "shouldManage"    # Z

    .line 70
    if-nez p2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->mManagedEntries:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$ForegroundServiceLifetimeExtender$Mvrg70o5Dvq2zdoQZB_HrCnGC_w;

    .local v0, "r":Ljava/lang/Runnable;
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$ForegroundServiceLifetimeExtender$Mvrg70o5Dvq2zdoQZB_HrCnGC_w;-><init>(Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 85
    const-wide/16 v1, 0x1388

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 87
    .local v1, "delayAmt":J
    iget-object v3, p0, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 8
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 52
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    return v1

    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 58
    .local v2, "currentTime":J
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public shouldExtendLifetimeForPendingNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->shouldExtendLifetime(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    return v0
.end method
