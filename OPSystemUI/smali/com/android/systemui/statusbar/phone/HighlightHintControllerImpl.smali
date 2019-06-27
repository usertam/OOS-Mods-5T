.class public Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;
.super Ljava/lang/Object;
.source "HighlightHintControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# instance fields
.field private mBarState:I

.field private mBgColor:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarModeBgColor:I

.field private mCarModeShow:Z

.field private mExpandedVisible:Z

.field private mHeadUpShow:Z

.field private mHighlightHintShow:Z

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private mKeyguardShow:Z

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 32
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    .line 34
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeBgColor:I

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeShow:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardShow:Z

    .line 37
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 42
    return-void
.end method

.method private dumpInfo()V
    .locals 4

    .line 207
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 208
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 209
    .local v0, "isExpanededAfterUnlock":Z
    :goto_0
    const-string v1, "HighlightHintCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHighlightHintShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " showNotification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 210
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->showNotification()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " HeadsUp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " expanededAfterUnlock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0    # "isExpanededAfterUnlock":Z
    :cond_1
    return-void
.end method

.method private onCarModeHighlightHintInfoUpdate()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 135
    .local v1, "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onCarModeHighlightHintInfoChange()V

    .line 136
    .end local v1    # "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method private onCarModeHighlightHintStateChange()V
    .locals 4

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->shouldShowCarModeHighlightHint()Z

    move-result v0

    .line 124
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeShow:Z

    if-eq v0, v1, :cond_0

    .line 125
    const-string v1, "HighlightHintCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCarModeHighlightHintStateChange show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeShow:Z

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 128
    .local v2, "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeShow:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onCarModeHighlightHintStateChange(Z)V

    .line 129
    .end local v2    # "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method private onHighlightHintInfoUpdate()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 116
    .local v1, "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintInfoChange()V

    .line 117
    .end local v1    # "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method private onHighlightHintStateChange()V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->shouldShowHighlightHint()Z

    move-result v0

    .line 104
    .local v0, "show":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    if-eq v0, v1, :cond_0

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->dumpInfo()V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 108
    .local v2, "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintStateChange()V

    .line 109
    .end local v2    # "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method private shouldShowCarModeHighlightHint()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 172
    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->showCarModeNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardShow:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintStateChange()V

    .line 197
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintInfoChange()V

    .line 199
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->addCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V

    return-void
.end method

.method public getHighlighColor()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    return v0
.end method

.method public getNotificationData()Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method public isCarModeHighlightHintSHow()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeShow:Z

    return v0
.end method

.method public isHighLightHintShow()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    return v0
.end method

.method public launchCarModeAp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    const-string v0, "HighlightHintCtrl"

    const-string v1, "launchCarModeAp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 181
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getIntentOnStatusBar()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    :cond_1
    return-void
.end method

.method public onBarStatechange(I)V
    .locals 3
    .param p1, "barstate"    # I

    .line 94
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-eq v0, p1, :cond_0

    .line 95
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    .line 96
    const-string v0, "HighlightHintCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBarStatechange barstate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    .line 100
    :cond_0
    return-void
.end method

.method public onExpandedVisibleChange(Z)V
    .locals 1
    .param p1, "visiable"    # Z

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    if-eq v0, p1, :cond_0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    .line 91
    :cond_0
    return-void
.end method

.method public onHeadUpPinnedModeChange(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    if-eq v0, p1, :cond_0

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    .line 83
    :cond_0
    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardShow:Z

    .line 47
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "HighlightHintCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardShowingChanged mKeyguardShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    .line 49
    return-void
.end method

.method public onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 3
    .param p1, "data"    # Lcom/android/systemui/statusbar/NotificationData;

    .line 53
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "HighlightHintCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintInfoUpdate()V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 68
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeBgColor:I

    .line 72
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintInfoUpdate()V

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    .line 75
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V

    return-void
.end method

.method public shouldShowHighlightHint()Z
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 160
    return v1

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 165
    .local v0, "isExpanededAfterUnlock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->showNotification()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public showOvalLayout()Z
    .locals 1

    .line 189
    const/4 v0, 0x1

    return v0
.end method
