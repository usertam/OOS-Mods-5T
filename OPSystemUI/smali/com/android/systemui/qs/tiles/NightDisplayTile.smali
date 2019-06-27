.class public Lcom/android/systemui/qs/tiles/NightDisplayTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "NightDisplayTile.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/internal/app/ColorDisplayController$Callback;"
    }
.end annotation


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mGrayModeSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mIsListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 10
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 68
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 71
    new-instance v0, Lcom/android/systemui/qs/tiles/NightDisplayTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/systemui/qs/tiles/NightDisplayTile$1;-><init>(Lcom/android/systemui/qs/tiles/NightDisplayTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 79
    new-instance v0, Lcom/android/systemui/qs/tiles/NightDisplayTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/systemui/qs/tiles/NightDisplayTile$2;-><init>(Lcom/android/systemui/qs/tiles/NightDisplayTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 89
    new-instance v0, Lcom/android/systemui/qs/tiles/NightDisplayTile$3;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const-string v8, "accessibility_display_grayscale_enabled"

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/tiles/NightDisplayTile$3;-><init>(Lcom/android/systemui/qs/tiles/NightDisplayTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mGrayModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 96
    return-void
.end method

.method private getSecondaryLabel(Z)Ljava/lang/String;
    .locals 8
    .param p1, "isNightLightActivated"    # Z

    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 208
    :pswitch_0
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110523

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110522

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 220
    :pswitch_1
    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 222
    .local v0, "toggleTime":Ljava/time/LocalTime;
    const v1, 0x7f110536

    .local v1, "toggleTimeStringRes":I
    goto :goto_1

    .line 224
    .end local v0    # "toggleTime":Ljava/time/LocalTime;
    .end local v1    # "toggleTimeStringRes":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 225
    .restart local v0    # "toggleTime":Ljava/time/LocalTime;
    const v1, 0x7f110521

    .line 235
    .restart local v1    # "toggleTimeStringRes":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 236
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    .line 239
    .local v3, "toggleTimeFormat":Ljava/time/format/DateTimeFormatter;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0, v3}, Ljava/time/LocalTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isColorCalibrationAvailable()Z
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 162
    .local v0, "inversion":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 163
    .local v3, "daltonize":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->isGrayEnabled()Z

    move-result v4

    .line 164
    .local v4, "isGray":Z
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private isGrayEnabled()Z
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mGrayModeSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->getValue(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NIGHT_DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 249
    const/16 v0, 0x1eb

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11045f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->isColorCalibrationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "night_display_forced_auto_mode_available"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoModeRaw()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    .line 119
    const-string v0, "NightDisplayTile"

    const-string v2, "Enrolled in forced night display auto mode"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v0, v1

    .line 124
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 125
    return-void
.end method

.method protected handleLongClick()V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->isColorCalibrationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    .line 158
    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 264
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mGrayModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 273
    if-eqz p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 279
    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 177
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 180
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11045f

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 184
    const v0, 0x7f08054f

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 186
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->isColorCalibrationAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_0

    .line 192
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    nop

    :cond_2
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 195
    :goto_0
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->getSecondaryLabel(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 196
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 135
    :cond_0
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 144
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    .line 145
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 105
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    .line 292
    return-void
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "logMaker"    # Landroid/metrics/LogMaker;

    .line 254
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getAutoModeRaw()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x51f

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method
