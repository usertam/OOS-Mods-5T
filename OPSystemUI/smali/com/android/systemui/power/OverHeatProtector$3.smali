.class Lcom/android/systemui/power/OverHeatProtector$3;
.super Ljava/lang/Object;
.source "OverHeatProtector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/OverHeatProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/OverHeatProtector;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 546
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector$3;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$3;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$3;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1100(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$3;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1200(Lcom/android/systemui/power/OverHeatProtector;)V

    goto :goto_0

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$3;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1100(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 553
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$3;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1300(Lcom/android/systemui/power/OverHeatProtector;)V

    goto :goto_0

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$3;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1100(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 555
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$3;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$1400(Lcom/android/systemui/power/OverHeatProtector;)V

    .line 557
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$3;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$3;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v2}, Lcom/android/systemui/power/OverHeatProtector;->access$1100(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->access$1500(Lcom/android/systemui/power/OverHeatProtector;I)V

    .line 558
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
