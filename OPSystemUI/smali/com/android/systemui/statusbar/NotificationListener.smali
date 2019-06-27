.class public Lcom/android/systemui/statusbar/NotificationListener;
.super Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;
.source "NotificationListener.java"


# static fields
.field private static final OP_DEBUG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationListener;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;-><init>()V

    .line 44
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 45
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static synthetic lambda$onListenerConnected$0(Lcom/android/systemui/statusbar/NotificationListener;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "notifications"    # [Landroid/service/notification/StatusBarNotification;
    .param p2, "currentRanking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 69
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 70
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v3, v2, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 69
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onNotificationPosted$1(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 81
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->processForRemoteInput(Landroid/app/Notification;Landroid/content/Context;)V

    .line 82
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeKeyKeptForRemoteInput(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 85
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 90
    .local v1, "isUpdate":Z
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 91
    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationPresenter;->getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    if-eqz v1, :cond_1

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v2, v0, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_1

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    .line 101
    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 103
    :goto_1
    return-void

    .line 105
    :cond_2
    if-eqz v1, :cond_3

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_2

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 110
    :goto_2
    return-void
.end method

.method public static synthetic lambda$onNotificationRankingUpdate$3(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "r"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 135
    return-void
.end method

.method public static synthetic lambda$onNotificationRemoved$2(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 4

    .line 59
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationListener;->OP_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationListener"

    const-string v1, "onListenerConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationListener;->onPluginConnected()V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationListener;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 63
    .local v0, "notifications":[Landroid/service/notification/StatusBarNotification;
    if-nez v0, :cond_1

    .line 64
    const-string v1, "NotificationListener"

    const-string v2, "onListenerConnected unable to get active notifications."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationListener;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    .line 68
    .local v1, "currentRanking":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationPresenter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$IqvG8K3BFQSXJ_G1S_U_QONW3G4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$IqvG8K3BFQSXJ_G1S_U_QONW3G4;-><init>(Lcom/android/systemui/statusbar/NotificationListener;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationListener;->onPluginNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$NvFmU0XrVPuc5pizHcri9I0apkw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$NvFmU0XrVPuc5pizHcri9I0apkw;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationListener;->onPluginRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    .line 133
    .local v0, "r":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$MPB4hTnfgfJz099PViVIkkbEBIE;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$MPB4hTnfgfJz099PViVIkkbEBIE;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    .end local v0    # "r":Landroid/service/notification/NotificationListenerService$RankingMap;
    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 118
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationListener;->OP_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationListener;->onPluginNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$15M-1M8BYwmsVSJz5K4jyc_ZHWo;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$15M-1M8BYwmsVSJz5K4jyc_ZHWo;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 4
    .param p1, "presenter"    # Lcom/android/systemui/statusbar/NotificationPresenter;
    .param p2, "entryManager"    # Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 142
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 145
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationListener;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NotificationListener"

    const-string v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
