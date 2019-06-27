.class Lcom/android/systemui/qs/tiles/ColorInversionTile$2;
.super Lcom/android/systemui/qs/SystemSetting;
.source "ColorInversionTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ColorInversionTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ColorInversionTile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "settingName"    # Ljava/lang/String;
    .param p5, "currentUserOnly"    # Z

    .line 62
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$2;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$2;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$2;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->access$100(Lcom/android/systemui/qs/tiles/ColorInversionTile;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->access$200(Lcom/android/systemui/qs/tiles/ColorInversionTile;Ljava/lang/Object;)V

    .line 66
    return-void
.end method
