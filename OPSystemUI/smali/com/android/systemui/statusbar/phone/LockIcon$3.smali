.class Lcom/android/systemui/statusbar/phone/LockIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;->getFacelockRetryAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 157
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "LockIcon"

    const-string/jumbo v1, "zoomInAnimtor end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$000(Lcom/android/systemui/statusbar/phone/LockIcon;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 150
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "LockIcon"

    const-string/jumbo v1, "zoomInAnimtor start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    .line 153
    :cond_1
    return-void
.end method
