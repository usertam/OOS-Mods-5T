.class Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 1128
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/KeyguardIndicationController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    return-void
.end method


# virtual methods
.method public onFingerprintStateChange(ZIII)V
    .locals 0
    .param p1, "authenticating"    # Z
    .param p2, "authType"    # I
    .param p3, "result"    # I
    .param p4, "reserved"    # I

    .line 1158
    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0
    .param p1, "hasLockscreenWallpaper"    # Z

    .line 1154
    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 0
    .param p1, "inputRestricted"    # Z

    .line 1146
    return-void
.end method

.method public onPocketModeActiveChanged(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 1162
    return-void
.end method

.method public onShowingStateChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .line 1132
    const-string v0, "KeyguardIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowingStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    if-eqz p1, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDashViews()V

    goto :goto_0

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->releaseDashViews()V

    .line 1138
    :goto_0
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 0
    .param p1, "simSecure"    # Z

    .line 1142
    return-void
.end method

.method public onTrustedChanged(Z)V
    .locals 0
    .param p1, "trusted"    # Z

    .line 1150
    return-void
.end method
