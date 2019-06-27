.class Lcom/android/systemui/power/OverHeatProtector$1;
.super Landroid/database/ContentObserver;
.source "OverHeatProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/OverHeatProtector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/OverHeatProtector;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 155
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iput-object p3, p0, Lcom/android/systemui/power/OverHeatProtector$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 158
    const-string v0, "op_temperature_orange"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v3, "op_temperature_orange"

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    .line 161
    invoke-static {v4}, Lcom/android/systemui/power/OverHeatProtector;->access$100(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v4

    .line 160
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->access$102(Lcom/android/systemui/power/OverHeatProtector;I)I

    .line 162
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "overheat_protector_orange"

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v3}, Lcom/android/systemui/power/OverHeatProtector;->access$100(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 163
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 164
    :cond_0
    const-string v0, "op_temperature_red"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v3, "op_temperature_red"

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    .line 167
    invoke-static {v4}, Lcom/android/systemui/power/OverHeatProtector;->access$300(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v4

    .line 166
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->access$302(Lcom/android/systemui/power/OverHeatProtector;I)I

    .line 168
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "overheat_protector_red"

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v3}, Lcom/android/systemui/power/OverHeatProtector;->access$300(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 169
    monitor-exit v0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 170
    :cond_1
    const-string v0, "op_temperature_purple"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 172
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v3, "op_temperature_purple"

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    .line 173
    invoke-static {v4}, Lcom/android/systemui/power/OverHeatProtector;->access$400(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v4

    .line 172
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->access$402(Lcom/android/systemui/power/OverHeatProtector;I)I

    .line 174
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "overheat_protector_purple"

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v3}, Lcom/android/systemui/power/OverHeatProtector;->access$400(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 175
    monitor-exit v0

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 176
    :cond_2
    invoke-static {}, Lcom/android/systemui/power/OverHeatProtector;->access$500()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "op_temperature_skin"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v3, "op_temperature_skin"

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    .line 179
    invoke-static {v4}, Lcom/android/systemui/power/OverHeatProtector;->access$600(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v4

    .line 178
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->access$602(Lcom/android/systemui/power/OverHeatProtector;I)I

    .line 180
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v1}, Lcom/android/systemui/power/OverHeatProtector;->access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "overheat_protector_skin"

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v3}, Lcom/android/systemui/power/OverHeatProtector;->access$600(Lcom/android/systemui/power/OverHeatProtector;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 181
    monitor-exit v0

    goto :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 182
    :cond_3
    invoke-static {}, Lcom/android/systemui/power/OverHeatProtector;->access$500()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "op_temperature_skinpath"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 183
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v0}, Lcom/android/systemui/power/OverHeatProtector;->access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 184
    :try_start_4
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v2, "op_temperature_skinpath"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "skinPath":Ljava/lang/String;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v2, v1}, Lcom/android/systemui/power/OverHeatProtector;->access$702(Lcom/android/systemui/power/OverHeatProtector;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    :cond_4
    sget-boolean v2, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overheat_protector_skinpath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector$1;->this$0:Lcom/android/systemui/power/OverHeatProtector;

    invoke-static {v4}, Lcom/android/systemui/power/OverHeatProtector;->access$700(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v1    # "skinPath":Ljava/lang/String;
    :cond_5
    monitor-exit v0

    goto :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    .line 189
    :cond_6
    :goto_0
    return-void
.end method
