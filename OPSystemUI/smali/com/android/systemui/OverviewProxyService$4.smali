.class Lcom/android/systemui/OverviewProxyService$4;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


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

    .line 285
    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService$4;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSetupChanged()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$4;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$1400(Lcom/android/systemui/OverviewProxyService;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$4;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$1300(Lcom/android/systemui/OverviewProxyService;)V

    .line 291
    :cond_0
    return-void
.end method

.method public onUserSwitched()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$4;->this$0:Lcom/android/systemui/OverviewProxyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/OverviewProxyService;->access$802(Lcom/android/systemui/OverviewProxyService;I)I

    .line 296
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$4;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$1300(Lcom/android/systemui/OverviewProxyService;)V

    .line 297
    return-void
.end method
