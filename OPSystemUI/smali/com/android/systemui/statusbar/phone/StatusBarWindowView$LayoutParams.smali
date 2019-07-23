.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutParams"
.end annotation


# instance fields
.field public ignoreRightInset:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 469
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 470
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 471
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 473
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 474
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 476
    sget-object v0, Lcom/android/systemui/R$styleable;->StatusBarWindowView_Layout:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 477
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->ignoreRightInset:Z

    .line 479
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 480
    return-void
.end method
