.class Lcom/android/systemui/assist/AssistOrbView$3;
.super Ljava/lang/Object;
.source "AssistOrbView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/assist/AssistOrbView;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$3;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$3;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/assist/AssistOrbView;->access$302(Lcom/android/systemui/assist/AssistOrbView;F)F

    .line 78
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbView$3;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistOrbView;->access$400(Lcom/android/systemui/assist/AssistOrbView;)V

    .line 79
    return-void
.end method