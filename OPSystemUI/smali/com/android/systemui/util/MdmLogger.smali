.class public Lcom/android/systemui/util/MdmLogger;
.super Ljava/lang/Object;
.source "MdmLogger.java"


# static fields
.field private static sAppTrackerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/oneplus/odm/insight/tracker/AppTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurOrien:Ljava/lang/String;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sIgnoreOnce:Z

.field private static sInstance:Lcom/android/systemui/util/MdmLogger;

.field private static sNpvExpanded:Z

.field private static sQsEvent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sQsExpanded:Z

.field private static sStatusBarPulled:Z

.field private static sTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sTouchGear:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sInstance:Lcom/android/systemui/util/MdmLogger;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sAppTrackerMap:Ljava/util/HashMap;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sTouchGear:Z

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    .line 34
    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sNpvExpanded:Z

    .line 35
    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sQsExpanded:Z

    .line 36
    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sStatusBarPulled:Z

    .line 37
    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sIgnoreOnce:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.AirplaneModeTile"

    const-string v2, "quick_airplane"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.BatterySaverTile"

    const-string v2, "quick_battery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.BluetoothTile"

    const-string v2, "quick_bt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.CastTile"

    const-string v2, "quick_cast"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.CellularTile"

    const-string v2, "quick_mobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.ColorInversionTile"

    const-string v2, "quick_invert"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.DataSaverTile"

    const-string v2, "quick_ds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.FlashlightTile"

    const-string v2, "quick_fl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.GameModeTile"

    const-string v2, "quick_game"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.HotspotTile"

    const-string v2, "quick_hot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.LocationTile"

    const-string v2, "quick_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.NfcTile"

    const-string v2, "quick_nfc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.NightDisplayTile"

    const-string v2, "quick_night"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.ReadModeTile"

    const-string v2, "quick_read"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.RotationLockTile"

    const-string v2, "quick_ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.VPNTile"

    const-string v2, "quick_vpn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.WifiTile"

    const-string v2, "quick_wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.WorkModeTile"

    const-string v2, "quick_work"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.OtgTile"

    const-string v2, "quick_otg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sAppTrackerMap:Ljava/util/HashMap;

    const-string v1, "1000000005"

    new-instance v2, Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-direct {v2, p1}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sAppTrackerMap:Ljava/util/HashMap;

    const-string v1, "YLTI9SVG4L"

    new-instance v2, Lnet/oneplus/odm/insight/tracker/AppTracker;

    const-string v3, "YLTI9SVG4L"

    invoke-direct {v2, p1, v3}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MdmLogger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    .line 71
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sHandler:Landroid/os/Handler;

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 16
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sAppTrackerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getOrientationEvent()Ljava/lang/String;
    .locals 1

    .line 178
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "landscape_pull"

    return-object v0

    .line 181
    :cond_0
    const-string v0, "portrait_pull"

    return-object v0
.end method

.method private static handleQsUpdate(Z)V
    .locals 3
    .param p0, "show"    # Z

    .line 185
    if-eqz p0, :cond_0

    .line 186
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->getOrientationEvent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pull_down"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->initQsEvent()V

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->reportQsEvents()V

    .line 191
    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sInstance:Lcom/android/systemui/util/MdmLogger;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/systemui/util/MdmLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/MdmLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sInstance:Lcom/android/systemui/util/MdmLogger;

    .line 83
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->initQsEvent()V

    .line 86
    const-string v0, "MdmLogger"

    const-string v1, "MdmLogger is initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method private static initQsEvent()V
    .locals 3

    .line 91
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 92
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_tile"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_bright"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_settings"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_notif"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string/jumbo v1, "swipe_notif"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->getOrientationEvent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sCurOrien:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private static isLandscape()Z
    .locals 2

    .line 173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 103
    const-string v0, "1000000005"

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .line 113
    const-string v0, "lock_unlock_success"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/MdmLogger$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/MdmLogger$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_0
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/MdmLogger$2;

    invoke-direct {v1, p3, p1, p2, p0}, Lcom/android/systemui/util/MdmLogger$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public static logQsPanel(Ljava/lang/String;)V
    .locals 2
    .param p0, "label"    # Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "click_settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "click_notif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sIgnoreOnce:Z

    .line 204
    :cond_1
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "1"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_2
    return-void
.end method

.method public static logQsTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tileTag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 138
    invoke-static {v0, p1, p2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    const-string v1, "MdmLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get tag from tileTag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void
.end method

.method public static notifyNpvExpanded(Z)V
    .locals 3
    .param p0, "expanded"    # Z

    .line 146
    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sNpvExpanded:Z

    if-ne v0, p0, :cond_0

    return-void

    .line 147
    :cond_0
    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sStatusBarPulled:Z

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sStatusBarPulled:Z

    .line 149
    const-string v0, "landscape_full_screen"

    const-string/jumbo v1, "status_bar"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/util/MdmLogger;->handleQsUpdate(Z)V

    .line 152
    sput-boolean p0, Lcom/android/systemui/util/MdmLogger;->sNpvExpanded:Z

    .line 153
    return-void
.end method

.method public static notifyQsExpanded(Z)V
    .locals 1
    .param p0, "expanded"    # Z

    .line 156
    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sQsExpanded:Z

    if-ne v0, p0, :cond_0

    return-void

    .line 157
    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sNpvExpanded:Z

    if-eqz v0, :cond_1

    return-void

    .line 158
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/util/MdmLogger;->handleQsUpdate(Z)V

    .line 159
    sput-boolean p0, Lcom/android/systemui/util/MdmLogger;->sQsExpanded:Z

    .line 160
    return-void
.end method

.method public static onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 163
    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sNpvExpanded:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sQsExpanded:Z

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sIgnoreOnce:Z

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sIgnoreOnce:Z

    .line 166
    return-void

    .line 168
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->reportQsEvents()V

    .line 169
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->initQsEvent()V

    .line 170
    return-void
.end method

.method private static reportQsEvents()V
    .locals 4

    .line 194
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/android/systemui/util/MdmLogger;->sCurOrien:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public static setStatusBarState(Z)V
    .locals 3
    .param p0, "showing"    # Z

    .line 210
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sStatusBarPulled:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    .line 212
    const-string v0, "landscape_full_screen"

    const-string/jumbo v1, "status_bar"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_1
    sput-boolean p0, Lcom/android/systemui/util/MdmLogger;->sStatusBarPulled:Z

    .line 215
    return-void
.end method
