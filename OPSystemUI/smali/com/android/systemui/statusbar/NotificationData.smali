.class public Lcom/android/systemui/statusbar/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationData$Environment;,
        Lcom/android/systemui/statusbar/NotificationData$Entry;
    }
.end annotation


# instance fields
.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

.field private final mFilteredForUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final mFsc:Lcom/android/systemui/ForegroundServiceController;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

.field private final mRankingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mShowHighlightNotification:Z

.field private final mSortedAndFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field final mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V
    .locals 1
    .param p1, "environment"    # Lcom/android/systemui/statusbar/NotificationData$Environment;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 83
    const-class v0, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    .line 420
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    .line 427
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 433
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationData$1;-><init>(Lcom/android/systemui/statusbar/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    .line 497
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    .line 498
    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 499
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationData;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationData;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/StatusBarNotification;

    .line 77
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationData;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object v0
.end method

.method private static checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 875
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "e"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 906
    iget-object v0, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 907
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    iget-object v0, p4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 910
    .local v0, "n":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " importance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 912
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method private isCategory(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "n"    # Landroid/app/Notification;

    .line 660
    iget-object v0, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 918
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "sbnPackage":Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "effect"    # I

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isExemptFromDndVisualSuppression(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 615
    return v1

    .line 617
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 618
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v2, :cond_2

    .line 619
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 620
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 622
    :cond_2
    return v1
.end method

.method static showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 867
    const-string v0, "android.permission.NOTIFICATION_DURING_SETUP"

    .line 868
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 867
    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 869
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.allowDuringSetup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 867
    :goto_0
    return v0
.end method

.method public static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 861
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 7
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 722
    if-eqz p1, :cond_3

    .line 723
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 724
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 726
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 727
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 728
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 729
    goto :goto_1

    .line 731
    :cond_0
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 732
    .local v4, "oldSbn":Landroid/service/notification/StatusBarNotification;
    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/NotificationData;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 733
    .local v5, "overrideGroupKey":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 734
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6, v5}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 735
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 737
    :cond_1
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationData;->getChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v6

    iput-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    .line 738
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationData;->getSnoozeCriteria(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->snoozeCriteria:Ljava/util/List;

    .line 739
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getUserSentiment()I

    move-result v6

    iput v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->userSentiment:I

    .line 726
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    .end local v5    # "overrideGroupKey":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 741
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 743
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 744
    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 542
    return-void

    .line 538
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .line 882
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 883
    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active notifications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    const/4 v1, 0x0

    move v2, v1

    .local v2, "active":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 887
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 888
    .local v3, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 886
    .end local v3    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 890
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 891
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 892
    .local v4, "M":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 893
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inactive notifications: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    const/4 v5, 0x0

    .line 895
    .local v5, "inactiveCount":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 896
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 897
    .local v6, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 898
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/android/systemui/statusbar/NotificationData;->dumpEntry(Ljava/io/PrintWriter;Ljava/lang/String;ILcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 899
    add-int/lit8 v5, v5, 0x1

    .line 895
    .end local v6    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 902
    .end local v1    # "i":I
    .end local v4    # "M":I
    .end local v5    # "inactiveCount":I
    :cond_2
    monitor-exit v3

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public filterAndSort()V
    .locals 9

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mShowHighlightNotification:Z

    .line 765
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    .line 768
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 769
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 771
    .local v2, "N":I
    const/4 v3, 0x0

    .line 773
    .local v3, "maxPriorityOnStatusBar":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 774
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 775
    .local v4, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v5, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 778
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 779
    .local v6, "n":Landroid/app/Notification;
    invoke-virtual {v6}, Landroid/app/Notification;->showOnStatusBar()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 781
    invoke-virtual {v6}, Landroid/app/Notification;->getPriorityOnStatusBar()I

    move-result v7

    .line 782
    .local v7, "priority":I
    if-le v7, v3, :cond_0

    .line 783
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/NotificationData;->mShowHighlightNotification:Z

    .line 784
    iput-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    .line 785
    move v3, v7

    .line 790
    .end local v7    # "priority":I
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 791
    goto :goto_1

    .line 794
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .end local v4    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v6    # "n":Landroid/app/Notification;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    .end local v0    # "i":I
    .end local v2    # "N":I
    .end local v3    # "maxPriorityOnStatusBar":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 799
    return-void

    .line 796
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getActiveNotifications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 692
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getImportance(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    return v0

    .line 668
    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public getKeyguardChronometer()Landroid/widget/Chronometer;
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    .line 958
    const/4 v0, 0x0

    return-object v0

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 961
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->keyguardChronometer:Landroid/widget/Chronometer;

    return-object v1
.end method

.method public getNotificationsForCurrentUser()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 519
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 520
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 521
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 522
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 523
    goto :goto_1

    .line 525
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mFilteredForUser:Ljava/util/ArrayList;

    return-object v0

    .line 527
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 676
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRank(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v0

    return v0

    .line 700
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "outRanking"    # Landroid/service/notification/NotificationListenerService$Ranking;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, p1, p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result v0

    return v0
.end method

.method public getSnoozeCriteria(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSnoozeCriteria()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 684
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusBarChronometer()Landroid/widget/Chronometer;
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    .line 950
    const/4 v0, 0x0

    return-object v0

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 953
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->statusBarChronometer:Landroid/widget/Chronometer;

    return-object v1
.end method

.method public getVisibilityOverride(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result v0

    return v0

    .line 590
    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public isAmbient(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    return v0

    .line 582
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isExemptFromDndVisualSuppression(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 626
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->isNotificationBlockedByPolicy(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 627
    return v1

    .line 630
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 632
    return v2

    .line 634
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    return v2

    .line 637
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    return v2

    .line 640
    :cond_3
    return v1
.end method

.method public isLock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isLock()Z

    move-result v0

    return v0

    .line 717
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isNotificationBlockedByPolicy(Landroid/app/Notification;)Z
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .line 649
    const-string v0, "call"

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "msg"

    .line 650
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "alarm"

    .line 651
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "event"

    .line 652
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "reminder"

    .line 653
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->isCategory(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 654
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "removed":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 547
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object v0, v2

    .line 548
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemoved(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 551
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 552
    return-object v0

    .line 548
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 430
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 431
    return-void
.end method

.method public shouldFilterOut(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 7
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 805
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 806
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isDeviceProvisioned()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 807
    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 808
    return v2

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 812
    return v2

    .line 815
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isSecurelyLocked(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 816
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    .line 817
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationData$Environment;->shouldHideNotifications(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    .line 818
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationData$Environment;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 819
    :cond_2
    return v2

    .line 822
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressAmbient(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 823
    return v2

    .line 826
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEnvironment:Lcom/android/systemui/statusbar/NotificationData$Environment;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationData$Environment;->isDozing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressNotificationList(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 827
    return v2

    .line 830
    :cond_5
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationData;->shouldHide(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 831
    return v2

    .line 834
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 835
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 836
    return v2

    .line 839
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    invoke-interface {v1, v0}, Lcom/android/systemui/ForegroundServiceController;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/ForegroundServiceController;->isDungeonNeededForUser(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 841
    return v2

    .line 843
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    invoke-interface {v1, v0}, Lcom/android/systemui/ForegroundServiceController;->isSystemAlertNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 844
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.foregroundApps"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "apps":[Ljava/lang/String;
    if-eqz v1, :cond_9

    array-length v4, v1

    if-lt v4, v2, :cond_9

    .line 847
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationData;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    aget-object v6, v1, v3

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/ForegroundServiceController;->isSystemAlertWarningNeeded(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 848
    return v2

    .line 853
    .end local v1    # "apps":[Ljava/lang/String;
    :cond_9
    return v3
.end method

.method public shouldHide(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result v0

    return v0

    .line 708
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 966
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 967
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "keyguard_visible"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public shouldSuppressAmbient(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 606
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 594
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public shouldSuppressNotificationList(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 610
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public shouldSuppressPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 598
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public shouldSuppressStatusBar(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 602
    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressVisualEffect(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    return v0
.end method

.method public showNotification()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mShowHighlightNotification:Z

    return v0
.end method

.method public updateAppOp(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "appOp"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "showIcon"    # Z

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 562
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 563
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 564
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    if-ne p2, v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 565
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 566
    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    if-eqz p5, :cond_0

    .line 568
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 570
    :cond_0
    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 562
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 574
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 556
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 557
    return-void
.end method
