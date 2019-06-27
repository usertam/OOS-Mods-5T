.class public Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BaseKeyguardCallback"
.end annotation


# instance fields
.field private mLastSuccessiveErrorMessage:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 877
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastSuccessiveErrorMessage:I

    return-void
.end method


# virtual methods
.method public onFingerprintAuthFailed()V
    .locals 1

    .line 1114
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthFailed()V

    .line 1115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastSuccessiveErrorMessage:I

    .line 1116
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1108
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    .line 1109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastSuccessiveErrorMessage:I

    .line 1110
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 1049
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1052
    :cond_1
    return-void

    .line 1054
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)I

    move-result v1

    .line 1055
    .local v1, "errorColor":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1060
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastSuccessiveErrorMessage:I

    if-eq v2, p1, :cond_5

    .line 1061
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1063
    :cond_3
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1064
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v2, p2, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;I)V

    .line 1066
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    goto :goto_0

    .line 1068
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3202(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 1070
    :cond_5
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastSuccessiveErrorMessage:I

    .line 1071
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 7
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .line 1019
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 1020
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1021
    return-void

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)I

    move-result v1

    .line 1024
    .local v1, "errorColor":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1026
    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1031
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1032
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setTransientFpError(Z)V

    .line 1035
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v2, p2, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;I)V

    .line 1036
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v3, 0x514

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 1037
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1038
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1043
    :cond_3
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->mLastSuccessiveErrorMessage:I

    .line 1044
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 2
    .param p1, "running"    # Z

    .line 1092
    if-eqz p1, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3202(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 1095
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .line 1004
    if-eqz p1, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 1009
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    .line 1011
    .local v0, "isUnlockWithFingerprintPossible":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2900(Lcom/android/systemui/statusbar/KeyguardIndicationController;ZZ)V

    .line 1012
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;ZZ)V

    .line 1015
    .end local v0    # "isUnlockWithFingerprintPossible":Z
    :cond_1
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 14
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 882
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 884
    .local v0, "isChargingOrFull":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v4

    .line 885
    .local v4, "wasPluggedIn":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedInWired()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1202(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 886
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1102(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 887
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 888
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1402(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 891
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1502(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 892
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->getChargingSpeed(II)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1602(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 893
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1902(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 895
    const-string v5, "KeyguardIndication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRefreshBatteryInfo: plugged:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", wasPluggedIn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", charged:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 897
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", level:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 898
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", speed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 899
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", last speed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 900
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", visible:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 901
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 895
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v5

    .line 907
    .local v5, "isFastCharge":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v6

    .line 909
    .local v6, "indicationText":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 910
    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 911
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    :cond_5
    const/16 v7, 0x8

    if-nez v4, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 915
    if-nez v5, :cond_7

    .line 916
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->cancel()V

    .line 918
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_6

    .line 919
    const-string v8, "KeyguardIndication"

    const-string v9, "before mChargingInfofadeInAnimation.start"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    .line 922
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 926
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/keyguard/KeyguardStatusView;->setCharging(Z)V

    goto :goto_5

    .line 927
    :cond_8
    if-eqz v4, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 930
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardStatusView;->hasOwnerInfo()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 931
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardStatusView;->setCharging(Z)V

    .line 932
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 935
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 936
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 941
    :cond_a
    :goto_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 942
    if-nez v4, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 943
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    .line 944
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v8, 0x1388

    invoke-virtual {v2, v8, v9}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    goto :goto_6

    .line 945
    :cond_b
    if-eqz v4, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 946
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 951
    :cond_c
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    if-nez v2, :cond_d

    goto/16 :goto_8

    .line 956
    :cond_d
    const/4 v2, 0x3

    const/4 v8, 0x4

    if-eqz v5, :cond_11

    .line 957
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v9

    if-eq v7, v9, :cond_10

    .line 958
    sget-boolean v7, Lcom/android/systemui/util/OPUtils;->SUPPORT_WARP_CHARGING:Z

    if-eqz v7, :cond_e

    .line 959
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 962
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 963
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 964
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 965
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 966
    .local v3, "msg":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->what:I

    .line 967
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v2

    iget v7, v3, Landroid/os/Message;->what:I

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 969
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 970
    .local v1, "mute":Z
    const-string v2, "KeyguardIndication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play dash anim, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    if-nez v1, :cond_f

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 973
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/media/SoundPool;

    move-result-object v7

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {v7 .. v13}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 976
    .end local v1    # "mute":Z
    .end local v3    # "msg":Landroid/os/Message;
    :cond_f
    goto/16 :goto_7

    .line 977
    :cond_10
    if-nez v4, :cond_13

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 980
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 985
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 986
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 988
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_12

    if-nez v4, :cond_12

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 989
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 993
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 994
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 995
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 996
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1000
    :cond_13
    :goto_7
    return-void

    .line 952
    :cond_14
    :goto_8
    const-string v1, "KeyguardIndication"

    const-string v2, "no dash view"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)I

    move-result v0

    .line 1083
    .local v0, "errorColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;I)V

    .line 1085
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 1086
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$3202(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    .line 1088
    .end local v0    # "errorColor":I
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    .line 1103
    :cond_0
    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 1075
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)I

    move-result v0

    .line 1076
    .local v0, "errorColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;I)V

    .line 1077
    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    .line 1123
    :cond_0
    return-void
.end method
