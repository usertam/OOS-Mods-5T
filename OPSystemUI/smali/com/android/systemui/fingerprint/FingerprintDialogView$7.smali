.class Lcom/android/systemui/fingerprint/FingerprintDialogView$7;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 848
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticateChanged(ZIII)V
    .locals 4
    .param p1, "authenticating"    # Z
    .param p2, "type"    # I
    .param p3, "result"    # I
    .param p4, "reserved"    # I

    .line 971
    if-eqz p1, :cond_0

    .line 972
    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    if-ne p2, v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 974
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 975
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    goto :goto_0

    .line 979
    :cond_0
    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    if-ne p2, v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 986
    :cond_2
    :goto_0
    return-void
.end method

.method public onFacelockStateChanged(I)V
    .locals 4
    .param p1, "type"    # I

    .line 950
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFacelockStateChanged(I)V

    .line 951
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isScreenOffUnlock()Z

    move-result v0

    .line 953
    .local v0, "isOffUnlock":Z
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFacelockStateChanged: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isOffUnlock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 955
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 956
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 958
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 963
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->onFaceUnlocked()V

    .line 966
    :cond_2
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1003
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    .line 1004
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintAuthenticated, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2602(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 1011
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .line 870
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 873
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 874
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 875
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1602(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 876
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1700(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 878
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2
    .param p1, "isBouncer"    # Z

    .line 943
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 946
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .line 920
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 922
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 924
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 925
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live wallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShowingWallpaper()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShowingWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v1, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    goto :goto_0

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    .line 931
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 934
    :cond_1
    nop

    .line 938
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 939
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 851
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 852
    const-string v0, "FingerprintDialogView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$902(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 854
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 856
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetState()V

    .line 858
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    .line 859
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    .line 860
    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 900
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 901
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$902(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 903
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 904
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 905
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 906
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 3

    .line 910
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurningOn()V

    .line 911
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurningOn: interactive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 913
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    .line 916
    :cond_0
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1019
    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .line 864
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    .line 865
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 866
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    .line 882
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 883
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartedWakingUp, owner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1602(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 886
    const-string v0, "forceShow-keyguard"

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 887
    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 894
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    .line 895
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 896
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 991
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 993
    const/4 v0, 0x1

    .line 994
    .local v0, "allowed":Z
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 997
    :cond_0
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStrongAuthStateChanged, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 999
    :cond_1
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1025
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2700(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$2700(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->updateAnimationRes()V

    .line 1029
    :cond_0
    return-void
.end method
