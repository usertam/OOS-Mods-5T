.class Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;
.super Ljava/lang/Object;
.source "OPThreekeyDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OPThreekeyDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .line 501
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "showA11yStream"    # Ljava/lang/Boolean;

    .line 544
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$400(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Z)V

    .line 554
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$500(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    .line 555
    return-void
.end method

.method public onConnectedDeviceChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 549
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 510
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 525
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .line 560
    return-void
.end method

.method public onScreenOff()V
    .locals 0

    .line 515
    return-void
.end method

.method public onShowRequested(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 505
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 540
    return-void
.end method

.method public onShowSilentHint()V
    .locals 0

    .line 535
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 0

    .line 530
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 520
    return-void
.end method
