.class Lcom/android/systemui/plugin/PreventModeCtrl$3;
.super Ljava/lang/Object;
.source "PreventModeCtrl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugin/PreventModeCtrl;->startRootAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/PreventModeCtrl;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .line 336
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeCtrl$3;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 350
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 345
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 355
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 339
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$3;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    iget-object v0, v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugin/PreventModeView;->setVisibility(I)V

    .line 340
    return-void
.end method
