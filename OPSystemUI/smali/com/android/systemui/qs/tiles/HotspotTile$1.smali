.class Lcom/android/systemui/qs/tiles/HotspotTile$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "settingName"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$1;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 1
    .param p1, "value"    # I

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$1;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    .line 80
    return-void
.end method
