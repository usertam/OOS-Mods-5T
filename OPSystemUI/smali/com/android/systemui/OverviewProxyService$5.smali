.class Lcom/android/systemui/OverviewProxyService$5;
.super Landroid/os/Handler;
.source "OverviewProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/OverviewProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/OverviewProxyService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/OverviewProxyService;
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .line 368
    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService$5;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 376
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$5;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$1600(Lcom/android/systemui/OverviewProxyService;)V

    goto :goto_0

    .line 373
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$5;->this$0:Lcom/android/systemui/OverviewProxyService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/android/systemui/OverviewProxyService;->access$1500(Lcom/android/systemui/OverviewProxyService;Landroid/view/MotionEvent;)V

    .line 374
    nop

    .line 379
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
