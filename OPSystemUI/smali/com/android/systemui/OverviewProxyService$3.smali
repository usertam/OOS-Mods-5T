.class Lcom/android/systemui/OverviewProxyService$3;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 243
    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 274
    const-string v0, "OverviewProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding died of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\', try reconnecting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$1300(Lcom/android/systemui/OverviewProxyService;)V

    .line 276
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 268
    const-string v0, "OverviewProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null binding of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\', try reconnecting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$1300(Lcom/android/systemui/OverviewProxyService;)V

    .line 270
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 246
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/OverviewProxyService;->access$700(Lcom/android/systemui/OverviewProxyService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/OverviewProxyService;->access$802(Lcom/android/systemui/OverviewProxyService;I)I

    .line 248
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/OverviewProxyService;->access$902(Lcom/android/systemui/OverviewProxyService;Lcom/android/systemui/shared/recents/IOverviewProxy;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 250
    const-string v0, "OverviewProxyService"

    const-string v2, "onServiceConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$1000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OverviewProxyService"

    const-string v2, "Lost connection to launcher service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$900(Lcom/android/systemui/OverviewProxyService;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/OverviewProxyService;->access$1100(Lcom/android/systemui/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onBind(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    goto :goto_1

    .line 260
    :catch_1
    move-exception v0

    .line 261
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "OverviewProxyService"

    const-string v2, "Failed to call onBind()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$3;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$1200(Lcom/android/systemui/OverviewProxyService;)V

    .line 264
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 281
    return-void
.end method
