.class Lcom/android/systemui/statusbar/phone/LockIcon$2;
.super Ljava/lang/Object;
.source "LockIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$2;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 136
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 137
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$2;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScaleX(F)V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$2;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScaleY(F)V

    .line 139
    return-void
.end method
