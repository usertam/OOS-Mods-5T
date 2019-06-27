.class Lcom/android/systemui/OverviewProxyService$1;
.super Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
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
.method constructor <init>(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/OverviewProxyService;

    .line 97
    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onOverviewShown$1(Lcom/android/systemui/OverviewProxyService$1;Z)V
    .locals 2
    .param p1, "fromHome"    # Z

    .line 138
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$500(Lcom/android/systemui/OverviewProxyService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/OverviewProxyService;->access$500(Lcom/android/systemui/OverviewProxyService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onOverviewShown(Z)V

    .line 138
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setBackButtonAlpha$3(Lcom/android/systemui/OverviewProxyService$1;FZ)V
    .locals 1
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 181
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/OverviewProxyService;->access$400(Lcom/android/systemui/OverviewProxyService;FZ)V

    .line 182
    return-void
.end method

.method public static synthetic lambda$setInteractionState$2(Lcom/android/systemui/OverviewProxyService$1;I)V
    .locals 2
    .param p1, "flags"    # I

    .line 153
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$500(Lcom/android/systemui/OverviewProxyService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/OverviewProxyService;->access$500(Lcom/android/systemui/OverviewProxyService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onInteractionFlagsChanged(I)V

    .line 153
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static synthetic lambda$startScreenPinning$0(Lcom/android/systemui/OverviewProxyService$1;I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 114
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 116
    .local v0, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 4

    .line 165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 167
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/SystemUIApplication;

    const-class v3, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v2, v3}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/Divider;

    .line 168
    .local v2, "divider":Lcom/android/systemui/stackdivider/Divider;
    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    return-object v3

    .line 171
    :cond_0
    const/4 v3, 0x0

    .line 173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    return-object v3

    .line 173
    .end local v2    # "divider":Lcom/android/systemui/stackdivider/Divider;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onOverviewShown(Z)V
    .locals 4
    .param p1, "fromHome"    # Z

    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 137
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$2pq3hQvAlKaOK9NXRBZWEO44FEQ;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$2pq3hQvAlKaOK9NXRBZWEO44FEQ;-><init>(Lcom/android/systemui/OverviewProxyService$1;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    nop

    .line 145
    return-void

    .line 143
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onSplitScreenInvoked()V
    .locals 4

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 128
    .local v0, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    nop

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 212
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$300(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    nop

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public screenshot(Landroid/graphics/Rect;IIIIZI)Lcom/android/systemui/shared/system/GraphicBufferCompat;
    .locals 4
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I
    .param p6, "useIdentityTransform"    # Z
    .param p7, "rotation"    # I

    .line 101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 103
    .local v0, "token":J
    :try_start_0
    new-instance v2, Lcom/android/systemui/shared/system/GraphicBufferCompat;

    invoke-static/range {p1 .. p7}, Landroid/view/SurfaceControl;->screenshotToBuffer(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/system/GraphicBufferCompat;-><init>(Landroid/graphics/GraphicBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    return-object v2

    .line 106
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackButtonAlpha(FZ)V
    .locals 4
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 180
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;-><init>(Lcom/android/systemui/OverviewProxyService$1;FZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    nop

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setInteractionState(I)V
    .locals 6
    .param p1, "flags"    # I

    .line 148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 150
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$100(Lcom/android/systemui/OverviewProxyService;)I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2, p1}, Lcom/android/systemui/OverviewProxyService;->access$102(Lcom/android/systemui/OverviewProxyService;I)I

    .line 152
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$OIMBB4z7B0rilnGoiEee2hjNc3M;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$OIMBB4z7B0rilnGoiEee2hjNc3M;-><init>(Lcom/android/systemui/OverviewProxyService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "QuickStepInteractionFlags"

    iget-object v4, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v4}, Lcom/android/systemui/OverviewProxyService;->access$100(Lcom/android/systemui/OverviewProxyService;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    nop

    .line 162
    return-void

    .line 159
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v3}, Lcom/android/systemui/OverviewProxyService;->access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v4}, Lcom/android/systemui/OverviewProxyService;->access$100(Lcom/android/systemui/OverviewProxyService;)I

    move-result v4

    const-string v5, "QuickStepInteractionFlags"

    invoke-static {v3, v5, v4}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startScreenPinning(I)V
    .locals 4
    .param p1, "taskId"    # I

    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 113
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$zYh14hGzctRPjhdkAv_VxvbnwC4;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$zYh14hGzctRPjhdkAv_VxvbnwC4;-><init>(Lcom/android/systemui/OverviewProxyService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    nop

    .line 123
    return-void

    .line 121
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
