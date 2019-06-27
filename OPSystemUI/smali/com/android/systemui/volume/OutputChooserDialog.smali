.class public Lcom/android/systemui/volume/OutputChooserDialog;
.super Landroid/app/Dialog;
.source "OutputChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/systemui/volume/OutputChooserLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;,
        Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;,
        Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# instance fields
.field protected isAttached:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBgDrawable:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothCallbackHandler:Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;

.field private final mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

.field private mCheckActiveDeviceRunnable:Ljava/lang/Runnable;

.field protected final mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mCurrentActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mEmytyIconColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mHeadSetString:Ljava/lang/String;

.field private mIconColor:I

.field private mIsInCall:Z

.field private mLastDetailItemClickTime:J

.field private mLastUpdateTime:J

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mPrimaryTextColor:I

.field protected mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

.field private final mRouter:Lcom/android/systemui/volume/MediaRouterWrapper;

.field private final mRouterCallback:Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;

.field private mSecondaryTextColor:I

.field private mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerString:Ljava/lang/String;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mThemeColorMode:I

.field private mTvIcon:Landroid/graphics/drawable/Drawable;

.field private mView:Lcom/android/systemui/volume/OutputChooserLayout;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    const-class v0, Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    .line 887
    new-instance v0, Lcom/android/systemui/volume/OutputChooserDialog$6;

    invoke-direct {v0}, Lcom/android/systemui/volume/OutputChooserDialog$6;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .line 895
    new-instance v0, Lcom/android/systemui/volume/OutputChooserDialog$7;

    invoke-direct {v0}, Lcom/android/systemui/volume/OutputChooserDialog$7;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "router"    # Lcom/android/systemui/volume/MediaRouterWrapper;

    .line 195
    const v0, 0x7f12054a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHeadSetString:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSpeakerString:Ljava/lang/String;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    .line 141
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 143
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 149
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCurrentActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 150
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLastDetailItemClickTime:J

    .line 158
    new-instance v1, Lcom/android/systemui/volume/OutputChooserDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OutputChooserDialog$1;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 714
    new-instance v1, Lcom/android/systemui/volume/OutputChooserDialog$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OutputChooserDialog$2;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 731
    new-instance v1, Lcom/android/systemui/volume/OutputChooserDialog$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OutputChooserDialog$3;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 761
    new-instance v1, Lcom/android/systemui/volume/OutputChooserDialog$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OutputChooserDialog$4;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    .line 787
    new-instance v1, Lcom/android/systemui/volume/OutputChooserDialog$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/OutputChooserDialog$5;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 949
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mThemeColorMode:I

    .line 950
    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPrimaryTextColor:I

    .line 951
    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    .line 952
    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIconColor:I

    .line 953
    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mEmytyIconColor:I

    .line 954
    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBgDrawable:I

    .line 1049
    new-instance v2, Lcom/android/systemui/volume/OutputChooserDialog$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/OutputChooserDialog$8;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCheckActiveDeviceRunnable:Ljava/lang/Runnable;

    .line 196
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    .line 197
    const-class v2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 198
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 200
    const-string/jumbo v2, "telecom"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 201
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIsInCall:Z

    .line 203
    iput-object p2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mRouter:Lcom/android/systemui/volume/MediaRouterWrapper;

    .line 204
    new-instance v2, Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/systemui/volume/OutputChooserDialog$1;)V

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mRouterCallback:Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;

    .line 205
    new-instance v0, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    const-string v2, "android.media.intent.category.REMOTE_PLAYBACK"

    .line 206
    invoke-virtual {v0, v2}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    const-class v2, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 220
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 221
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    const v1, 0x10002

    invoke-virtual {v2, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 224
    const v1, 0x10c0128

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 233
    const/16 v1, 0x7e4

    invoke-virtual {v2, v1}, Landroid/view/Window;->setType(I)V

    .line 236
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 237
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto :goto_0

    :cond_0
    const/16 v3, 0x13

    :goto_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 238
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 239
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 105
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/OutputChooserDialog;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/OutputChooserDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCheckActiveDeviceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/volume/OutputChooserDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/OutputChooserDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/OutputChooserDialog;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;
    .param p1, "x1"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/OutputChooserDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;
    .param p1, "x1"    # Z

    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OutputChooserDialog;->updateItems(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;
    .param p1, "x1"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/OutputChooserDialog;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/volume/OutputChooserDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;
    .param p1, "x1"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIsInCall:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/OutputChooserDialog;

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->updateTile()V

    return-void
.end method

.method static synthetic access$900()Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    .locals 1

    .line 105
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-object v0
.end method

.method private addBluetoothDevices(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/OutputChooserLayout$Item;",
            ">;)V"
        }
    .end annotation

    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/volume/OutputChooserLayout$Item;>;"
    move-object/from16 v0, p0

    .line 511
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getDevices()Ljava/util/Collection;

    move-result-object v2

    .line 513
    .local v2, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    if-eqz v2, :cond_7

    .line 514
    const/4 v3, 0x0

    .line 515
    .local v3, "connectedDevices":I
    const/4 v4, 0x0

    .line 516
    .local v4, "count":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 517
    .local v6, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget-object v7, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v7, v6}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBondState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .end local v6    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    goto :goto_0

    .line 518
    .restart local v6    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_0
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    .line 519
    .local v7, "majorClass":I
    const/16 v9, 0x400

    if-eq v7, v9, :cond_1

    const/16 v9, 0x1f00

    if-eq v7, v9, :cond_1

    .line 521
    goto :goto_0

    .line 523
    :cond_1
    new-instance v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-direct {v9}, Lcom/android/systemui/volume/OutputChooserLayout$Item;-><init>()V

    .line 524
    .local v9, "item":Lcom/android/systemui/volume/OutputChooserLayout$Item;
    const v10, 0x7f080565

    iput v10, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    .line 525
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    .line 526
    iput-object v6, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    .line 527
    sget v10, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_BT:I

    iput v10, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    .line 528
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v10

    .line 529
    .local v10, "state":I
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v10, v11, :cond_4

    .line 530
    const v13, 0x7f080562

    iput v13, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    .line 531
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v13

    .line 532
    .local v13, "batteryLevel":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    .line 533
    nop

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v6}, Lcom/android/settingslib/bluetooth/Utils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v14

    .line 535
    .local v14, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/drawable/Drawable;Ljava/lang/String;>;"
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/drawable/Drawable;

    iput-object v15, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 536
    iget-object v15, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f1104e9

    new-array v11, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 538
    invoke-static {v13}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v11, v16

    .line 536
    invoke-virtual {v15, v8, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    .line 539
    .end local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/drawable/Drawable;Ljava/lang/String;>;"
    goto :goto_1

    .line 540
    :cond_2
    iget-object v8, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f1104e8

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    .line 542
    :goto_1
    iput-boolean v12, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->canDisconnect:Z

    .line 543
    invoke-interface {v1, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 544
    iget-object v8, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v8, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-ne v8, v6, :cond_3

    .line 547
    sget-object v8, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The active device:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 549
    .local v8, "msg":Landroid/os/Message;
    const/4 v11, 0x2

    iput v11, v8, Landroid/os/Message;->what:I

    .line 550
    iget-object v11, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object v11, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 551
    iget-object v11, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    .end local v8    # "msg":Landroid/os/Message;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 554
    .end local v13    # "batteryLevel":I
    goto :goto_2

    :cond_4
    if-ne v10, v12, :cond_5

    .line 555
    const v8, 0x7f080563

    iput v8, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    .line 556
    iget-object v8, v0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f1104ea

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line2:Ljava/lang/CharSequence;

    .line 557
    invoke-interface {v1, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 559
    :cond_5
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0xa

    if-ne v4, v8, :cond_6

    .line 563
    goto :goto_3

    .line 565
    .end local v6    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v7    # "majorClass":I
    .end local v9    # "item":Lcom/android/systemui/volume/OutputChooserLayout$Item;
    .end local v10    # "state":I
    :cond_6
    goto/16 :goto_0

    .line 567
    .end local v3    # "connectedDevices":I
    .end local v4    # "count":I
    :cond_7
    :goto_3
    return-void
.end method

.method private addPhoneDevices(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/OutputChooserLayout$Item;",
            ">;)V"
        }
    .end annotation

    .line 575
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/volume/OutputChooserLayout$Item;>;"
    new-instance v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-direct {v0}, Lcom/android/systemui/volume/OutputChooserLayout$Item;-><init>()V

    .line 577
    .local v0, "item":Lcom/android/systemui/volume/OutputChooserLayout$Item;
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHeadSetString:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    .line 579
    const v1, 0x7f080554

    iput v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    .line 580
    sget v1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_HEADSET:I

    iput v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    goto :goto_0

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSpeakerString:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    .line 583
    const v1, 0x7f080555

    iput v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->iconResId:I

    .line 584
    sget v1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_PHONE:I

    iput v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    .line 586
    :goto_0
    iget v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    .line 587
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->canDisconnect:Z

    .line 588
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method

.method private getAnimTranslation()F
    .locals 2

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 390
    .local v0, "translation":F
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    neg-float v1, v0

    :goto_0
    return v1
.end method

.method private getDefaultIndext()I
    .locals 1

    .line 999
    const/4 v0, 0x0

    return v0
.end method

.method private getDisabledServicesMessage(ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "wifiOff"    # Z
    .param p2, "btOff"    # Z

    .line 503
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 504
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f11046a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 505
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f11046b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 506
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f110469

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 503
    const v2, 0x7f110468

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 884
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method private isLandscape()Z
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

.method public static synthetic lambda$dismiss$3(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0

    .line 382
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/systemui/volume/OutputChooserDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$onCreate$1(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 1

    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->updateItems(Z)V

    return-void
.end method

.method public static synthetic lambda$show$2(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method

.method private setSelecter(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/OutputChooserLayout$Item;",
            ">;)V"
        }
    .end annotation

    .line 593
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/volume/OutputChooserLayout$Item;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 594
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getDefaultIndext()I

    move-result v0

    .line 595
    .local v0, "selectedDeviceIndex":I
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->findActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 596
    .local v1, "activeDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, -0x1

    .line 597
    .local v2, "activeDeviceIndex":I
    const/4 v3, -0x1

    .line 598
    .local v3, "lastSelectedDeviceIndex":I
    const/4 v4, 0x1

    .local v4, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 599
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    iget-object v6, v6, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v6, :cond_1

    .line 600
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    iget-object v6, v6, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 601
    .local v6, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 603
    move v2, v4

    .line 605
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 606
    move v3, v4

    .line 598
    .end local v6    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 611
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 612
    move v0, v2

    goto :goto_1

    .line 614
    :cond_3
    if-eq v3, v4, :cond_4

    .line 616
    move v0, v3

    .line 620
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 621
    sget-object v4, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activeDevice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mPreSelectDevice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " selectedDeviceIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " cehck:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    iget-object v6, v6, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 621
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/volume/OutputChooserLayout$Item;->selected:Z

    .line 625
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    iget-object v4, v4, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v4, :cond_5

    .line 626
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    iget-object v4, v4, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCurrentActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 631
    .end local v0    # "selectedDeviceIndex":I
    .end local v1    # "activeDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "activeDeviceIndex":I
    .end local v3    # "lastSelectedDeviceIndex":I
    :cond_5
    return-void
.end method

.method private updateItems(Z)V
    .locals 6
    .param p1, "timeout"    # Z

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLastUpdateTime:J

    add-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 463
    return-void

    .line 465
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLastUpdateTime:J

    .line 466
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    if-nez v0, :cond_1

    return-void

    .line 467
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/volume/OutputChooserLayout$Item;>;"
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 470
    .local v2, "wifiOff":Z
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    xor-int/2addr v1, v3

    .line 472
    .local v1, "btOff":Z
    if-nez v1, :cond_2

    .line 474
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->addBluetoothDevices(Ljava/util/List;)V

    .line 483
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->addPhoneDevices(Ljava/util/List;)V

    .line 485
    sget-object v3, Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;->sInstance:Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 487
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->setSelecter(Ljava/util/List;)V

    .line 489
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    .line 490
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f110467

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "emptyMessage":Ljava/lang/String;
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    .line 494
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->getDisabledServicesMessage(ZZ)Ljava/lang/String;

    move-result-object v3

    .line 496
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-virtual {v4, v3}, Lcom/android/systemui/volume/OutputChooserLayout;->setEmptyState(Ljava/lang/String;)V

    .line 499
    .end local v3    # "emptyMessage":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/OutputChooserLayout;->setItems([Lcom/android/systemui/volume/OutputChooserLayout$Item;)V

    .line 500
    return-void
.end method

.method private updateTile()V
    .locals 2

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIsInCall:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    const v1, 0x7f110465

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->setTitle(I)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    const v1, 0x7f11046c

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->setTitle(I)V

    .line 355
    :goto_0
    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 0

    .line 309
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 375
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x50f

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->setTranslationX(F)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/OutputChooserLayout;->setAlpha(F)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OutputChooserLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 380
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getAnimTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 381
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$dfWCftBgKfRBdEiky5EXbnZ4_2E;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$dfWCftBgKfRBdEiky5EXbnZ4_2E;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 383
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 385
    return-void
.end method

.method protected findActiveDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .param p1, "streamType"    # I

    .line 912
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 913
    return-object v0

    .line 915
    :cond_0
    const/16 v2, 0x380

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/volume/OutputChooserDialog;->isStreamFromOutputDevice(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 916
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StreamFrom output DEVICE_OUT_ALL_A2DP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 919
    :cond_1
    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 920
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StreamFrom output DEVICE_OUT_ALL_SCO:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 923
    :cond_2
    const/high16 v1, 0x8000000

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 927
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 928
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v1

    .line 929
    .local v1, "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 930
    .local v3, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 933
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StreamFrom output DEVICE_OUT_HEARING_AID:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return-object v3

    .line 937
    .end local v3    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    goto :goto_0

    .line 939
    .end local v1    # "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_4
    sget-object v1, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    const-string v2, "no active device"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return-object v0
.end method

.method public getDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 1067
    :cond_0
    const/4 v0, 0x0

    .line 1065
    :goto_0
    return-object v0
.end method

.method public getIconColor()I
    .locals 1

    .line 995
    iget v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIconColor:I

    return v0
.end method

.method public getPrimaryTextColor()I
    .locals 1

    .line 989
    iget v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPrimaryTextColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .line 992
    iget v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    return v0
.end method

.method protected isStreamFromOutputDevice(II)Z
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 944
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 319
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 321
    iget-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIsInCall:Z

    .line 325
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addCallback(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothCallbackHandler:Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->isAttached:Z

    .line 329
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 247
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 248
    const v0, 0x7f0d0162

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->setContentView(I)V

    .line 249
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->setCanceledOnTouchOutside(Z)V

    .line 250
    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$UeKcIzGrlInzVatqLUgMgAZVPbU;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$UeKcIzGrlInzVatqLUgMgAZVPbU;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 252
    const v1, 0x7f0a02f9

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/OutputChooserLayout;

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    .line 253
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-virtual {v1, p0}, Lcom/android/systemui/volume/OutputChooserLayout;->setCallback(Lcom/android/systemui/volume/OutputChooserLayout$Callback;)V

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->updateTile()V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080449

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080600

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mTvIcon:Landroid/graphics/drawable/Drawable;

    .line 261
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0805bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    .line 262
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0805c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110504

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHeadSetString:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110506

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSpeakerString:Ljava/lang/String;

    .line 266
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 268
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 269
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$-t91qf-3-1A4JOdSt-OmJvxR1U8;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$-t91qf-3-1A4JOdSt-OmJvxR1U8;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 273
    .local v2, "localBtManagerFutureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/android/settingslib/bluetooth/LocalBluetoothManager;>;"
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 274
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_0

    .line 275
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    const-string v5, "Error getting LocalBluetoothManager."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_0

    .line 279
    sget-object v3, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    const-string v4, "Bluetooth is not supported on this device"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 283
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_1

    .line 284
    return-void

    .line 286
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 290
    iget-object v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    xor-int/2addr v3, v0

    .line 291
    .local v3, "wifiOff":Z
    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v4

    xor-int/2addr v4, v0

    .line 292
    .local v4, "btOff":Z
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 293
    iget-object v5, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/volume/OutputChooserDialog;->getDisabledServicesMessage(ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/volume/OutputChooserLayout;->setEmptyState(Ljava/lang/String;)V

    .line 296
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    new-instance v6, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$oZBPIb0B7f7Rep6hYPmtCE6QG_w;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$oZBPIb0B7f7Rep6hYPmtCE6QG_w;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/volume/OutputChooserLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    new-instance v5, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/systemui/volume/OutputChooserDialog$1;)V

    iput-object v5, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothCallbackHandler:Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;

    .line 301
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 302
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 303
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v5, 0xc

    if-ne v1, v5, :cond_3

    .line 304
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v5, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, v5, v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 307
    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->isAttached:Z

    .line 334
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mRouter:Lcom/android/systemui/volume/MediaRouterWrapper;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mRouterCallback:Lcom/android/systemui/volume/OutputChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/MediaRouterWrapper;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeCallback(Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothCallbackHandler:Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 339
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 340
    return-void
.end method

.method public onDetailItemClick(Lcom/android/systemui/volume/OutputChooserLayout$Item;)V
    .locals 6
    .param p1, "item"    # Lcom/android/systemui/volume/OutputChooserLayout$Item;

    .line 396
    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 402
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLastDetailItemClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLastDetailItemClickTime:J

    add-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 406
    return-void

    .line 409
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mLastDetailItemClickTime:J

    .line 412
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetailItemClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 415
    iget v1, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    sget v2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_BT:I

    const/16 v3, 0x510

    if-ne v1, v2, :cond_3

    .line 416
    iget-object v0, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 417
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v1

    if-nez v1, :cond_2

    .line 418
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 420
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 421
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 424
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 425
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->setActiveBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 427
    .end local v0    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :goto_0
    goto :goto_1

    :cond_3
    iget v1, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    sget v2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_MEDIA_ROUTER:I

    if-ne v1, v2, :cond_5

    .line 428
    iget-object v0, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->tag:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 429
    .local v0, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 430
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 432
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    .line 434
    .end local v0    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_4
    goto :goto_1

    .line 435
    :cond_5
    iget v1, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    sget v2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_PHONE:I

    if-eq v1, v2, :cond_6

    iget v1, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    sget v2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_HEADSET:I

    if-ne v1, v2, :cond_7

    .line 436
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/OutputChooserDialog;->setActiveBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 438
    iput-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 440
    :cond_7
    :goto_1
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetailItemClick mPreSelectDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPreSelectDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPaddingActiveDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPaddingActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 397
    :cond_8
    :goto_2
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    const-string v1, "onDetailItemClick / item == null || item.tag == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .line 344
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->cleanUp()V

    .line 346
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 314
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 315
    return-void
.end method

.method public setActiveBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 842
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v0, :cond_0

    .line 843
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCurrentActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-ne v0, p1, :cond_1

    .line 847
    return-void

    .line 849
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mCurrentActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 850
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveBluetoothDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    if-eqz p1, :cond_2

    .line 852
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()Z

    goto :goto_0

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    .line 857
    .local v0, "a2dpProfile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v1

    .line 859
    .local v1, "headsetProfile":Lcom/android/settingslib/bluetooth/HeadsetProfile;
    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v2

    .line 860
    .local v2, "hearingAidProfile":Lcom/android/settingslib/bluetooth/HearingAidProfile;
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 861
    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 863
    :cond_3
    if-eqz v1, :cond_4

    .line 864
    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 866
    :cond_4
    if-eqz v2, :cond_5

    .line 867
    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 872
    .end local v0    # "a2dpProfile":Lcom/android/settingslib/bluetooth/A2dpProfile;
    .end local v1    # "headsetProfile":Lcom/android/settingslib/bluetooth/HeadsetProfile;
    .end local v2    # "hearingAidProfile":Lcom/android/settingslib/bluetooth/HearingAidProfile;
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_6

    .line 873
    sget-object v0, Lcom/android/systemui/volume/OutputChooserDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetoothHeadset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / mBluetoothHeadset.isAudioOn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_6

    .line 875
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    .line 880
    :cond_6
    return-void
.end method

.method public setTheme(I)V
    .locals 4
    .param p1, "theme"    # I

    .line 956
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 957
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 973
    const v1, 0x7f06031a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIconColor:I

    .line 974
    const v1, 0x7f060320

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mEmytyIconColor:I

    .line 976
    const v1, 0x7f06032f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPrimaryTextColor:I

    .line 977
    const v1, 0x7f060332

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    .line 978
    const v1, 0x7f080a89

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBgDrawable:I

    goto :goto_0

    .line 961
    :cond_0
    const v1, 0x7f060318

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mIconColor:I

    .line 962
    const v1, 0x7f06031e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mEmytyIconColor:I

    .line 964
    const v1, 0x7f06032d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mPrimaryTextColor:I

    .line 965
    const v1, 0x7f060330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    .line 966
    const v1, 0x7f080a88

    iput v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBgDrawable:I

    .line 967
    nop

    .line 981
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mBgDrawable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/OutputChooserLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 982
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    iget v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/OutputChooserLayout;->setTitleColor(I)V

    .line 983
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    iget v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mEmytyIconColor:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/OutputChooserLayout;->setEmptyIconColor(I)V

    .line 984
    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    iget v2, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mSecondaryTextColor:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/OutputChooserLayout;->setEmptyTextColor(I)V

    .line 985
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->updateItems(Z)V

    .line 986
    return-void
.end method

.method public show()V
    .locals 3

    .line 360
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 361
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x50f

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-direct {p0}, Lcom/android/systemui/volume/OutputChooserDialog;->getAnimTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->setTranslationX(F)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OutputChooserLayout;->setAlpha(F)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog;->mView:Lcom/android/systemui/volume/OutputChooserLayout;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OutputChooserLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 365
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 367
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 368
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$E4JCaBF8rIUbI1y2uDB4bB6Bj_0;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$E4JCaBF8rIUbI1y2uDB4bB6Bj_0;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    .line 369
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 371
    return-void
.end method
