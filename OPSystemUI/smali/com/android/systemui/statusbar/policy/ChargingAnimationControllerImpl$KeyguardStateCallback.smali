.class Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "ChargingAnimationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;

    .line 319
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onFingerprintStateChange(ZIII)V
    .locals 0
    .param p1, "authenticating"    # Z
    .param p2, "authType"    # I
    .param p3, "result"    # I
    .param p4, "reserved"    # I

    .line 352
    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0
    .param p1, "hasLockscreenWallpaper"    # Z

    .line 348
    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 0
    .param p1, "inputRestricted"    # Z

    .line 340
    return-void
.end method

.method public onPocketModeActiveChanged(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 356
    return-void
.end method

.method public onShowingStateChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowingStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->stopAnimation()V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V

    .line 332
    :cond_1
    :goto_0
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 0
    .param p1, "simSecure"    # Z

    .line 336
    return-void
.end method

.method public onTrustedChanged(Z)V
    .locals 0
    .param p1, "trusted"    # Z

    .line 344
    return-void
.end method
