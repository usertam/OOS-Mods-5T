.class Lcom/android/systemui/statusbar/phone/StatusBar$12;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 3645
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3649
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3650
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3651
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 3652
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3653
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 3655
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$12;->getSendingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3656
    const/4 v1, 0x0

    .line 3657
    .local v1, "flags":I
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3658
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "recentapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3659
    or-int/lit8 v1, v1, 0x2

    .line 3661
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    .line 3662
    .end local v1    # "flags":I
    .end local v2    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 3664
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3665
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3666
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    .line 3668
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideNavigationBarGuide()V

    goto :goto_0

    .line 3671
    :cond_3
    const-string v1, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3672
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->showDeviceMonitoringDialog()V

    .line 3674
    :cond_4
    :goto_0
    return-void
.end method
