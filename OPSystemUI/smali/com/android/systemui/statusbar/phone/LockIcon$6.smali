.class Lcom/android/systemui/statusbar/phone/LockIcon$6;
.super Ljava/lang/Object;
.source "LockIcon.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 427
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$6;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon$6;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$6;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$200(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$6;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 437
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "LockIcon"

    const-string/jumbo v1, "start recog anim again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$6;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$6;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$6;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    return-void

    .line 438
    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 433
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 430
    return-void
.end method
