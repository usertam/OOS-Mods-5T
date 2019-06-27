.class Lcom/android/systemui/volume/OutputChooserDialog$5;
.super Ljava/lang/Object;
.source "OutputChooserDialog.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OutputChooserDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 788
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog$5;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "showA11yStream"    # Ljava/lang/Boolean;

    .line 823
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$5;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->dismiss()V

    .line 811
    return-void
.end method

.method public onConnectedDeviceChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 826
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 795
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 806
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 2
    .param p1, "phoneState"    # I

    .line 832
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$5;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->access$600(Lcom/android/systemui/volume/OutputChooserDialog;)Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$5;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog$5;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$600(Lcom/android/systemui/volume/OutputChooserDialog;)Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$702(Lcom/android/systemui/volume/OutputChooserDialog;Z)Z

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$5;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->access$800(Lcom/android/systemui/volume/OutputChooserDialog;)V

    .line 836
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$5;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->dismiss()V

    .line 800
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 791
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$5;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->dismiss()V

    .line 792
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 820
    return-void
.end method

.method public onShowSilentHint()V
    .locals 0

    .line 817
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 0

    .line 814
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 803
    return-void
.end method
