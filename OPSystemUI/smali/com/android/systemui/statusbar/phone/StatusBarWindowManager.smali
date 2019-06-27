.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.super Ljava/lang/Object;
.source "StatusBarWindowManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mHasTopUi:Z

.field private mHasTopUiChanged:Z

.field private final mKeyguardScreenRotation:Z

.field private mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mScreenBrightnessDoze:F

.field private mStatusBarView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    .line 75
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 76
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getScreenBrightnessDoze()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mScreenBrightnessDoze:F

    .line 80
    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 158
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->preventModeActive:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->dozing:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    .line 165
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    .line 160
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    const-string v0, "StatusBarWindowManager"

    const-string v1, "force adjust screenOrientation to portrait"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 173
    :goto_2
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 249
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyNotTouchable(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applySleepToken(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUi:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    if-eq v0, v1, :cond_1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarWindowManager"

    const-string v2, "Failed to call setHasTopUi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUi:Z

    .line 276
    :cond_1
    return-void
.end method

.method private applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 297
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceDozeBrightness:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mScreenBrightnessDoze:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 302
    :goto_0
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 219
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 220
    .local v0, "fitsSystemWindows":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 224
    :cond_0
    return-void
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 176
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, "panelFocusable":Z
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    const v2, -0x20001

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-nez v1, :cond_2

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->remoteInputActive:Z

    if-eqz v1, :cond_3

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x9

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 182
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 183
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 189
    :goto_2
    const-string v1, "StatusBarWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyFocusableFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 191
    return-void
.end method

.method private applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 279
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceStatusBarVisible:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 286
    :goto_0
    return-void
.end method

.method private applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 305
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHasTopUiChanged:Z

    .line 306
    return-void
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    .line 195
    .local v0, "expanded":Z
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forcePluginOpen:Z

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;->setWouldOtherwiseCollapse(Z)V

    .line 197
    const/4 v0, 0x1

    .line 199
    :cond_0
    if-eqz v0, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 205
    :goto_0
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 206
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBarHeightChange(I)V

    .line 209
    :cond_2
    return-void
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 237
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceUserActivity:Z

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 246
    :goto_0
    return-void
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 139
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 145
    :goto_0
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->scrimsVisibility:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 147
    .local v0, "scrimsOccludingWallpaper":Z
    :goto_1
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->dozing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 148
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v2, v3

    :goto_3
    move v1, v2

    .line 149
    .local v1, "keyguardOrAod":Z
    if-eqz v1, :cond_4

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->backdropShowing:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_4

    .line 152
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 154
    :goto_4
    return-void
.end method

.method private applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 289
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->headsUpShowing:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 294
    :goto_0
    return-void
.end method

.method private applyNotTouchable(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 310
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->notTouchable:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 315
    :goto_0
    return-void
.end method

.method private applySleepToken(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 319
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->dozing:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 324
    :goto_0
    return-void
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 227
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v1, 0x2710

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 234
    :goto_0
    return-void
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 212
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceCollapsed:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->headsUpShowing:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->scrimsVisibility:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "lockscreen.rot_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f050011

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 84
    :goto_1
    return v2
.end method


# virtual methods
.method public add(Landroid/view/View;I)V
    .locals 7
    .param p1, "statusBarView"    # Landroid/view/View;
    .param p2, "barHeight"    # I

    .line 99
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move-object v0, v6

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    .line 116
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 120
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 469
    const-string v0, "StatusBarWindowManager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyguardScreenRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 472
    return-void
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    return v0
.end method

.method public isShowingLiveWallpaper(Z)Z
    .locals 2
    .param p1, "isFingerprint"    # Z

    .line 563
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->hasWallpaper:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public isShowingWallpaper()Z
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->backdropShowing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onRemoteInputActive(Z)V
    .locals 1
    .param p1, "remoteInputActive"    # Z

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->remoteInputActive:Z

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 424
    return-void
.end method

.method public setBackdropShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->backdropShowing:Z

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 360
    return-void
.end method

.method public setBarHeight(I)V
    .locals 1
    .param p1, "barHeight"    # I

    .line 441
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 443
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 355
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 2
    .param p1, "value"    # I

    .line 123
    int-to-float v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mScreenBrightnessDoze:F

    .line 124
    return-void
.end method

.method public setDozing(Z)V
    .locals 1
    .param p1, "dozing"    # Z

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->dozing:Z

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 438
    return-void
.end method

.method public setForceDozeBrightness(Z)V
    .locals 1
    .param p1, "forceDozeBrightness"    # Z

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceDozeBrightness:Z

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 433
    return-void
.end method

.method public setForcePluginOpen(Z)V
    .locals 1
    .param p1, "forcePluginOpen"    # Z

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forcePluginOpen:Z

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 448
    return-void
.end method

.method public setForceStatusBarVisible(Z)V
    .locals 1
    .param p1, "forceStatusBarVisible"    # Z

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceStatusBarVisible:Z

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 403
    return-void
.end method

.method public setForceWindowCollapsed(Z)V
    .locals 1
    .param p1, "force"    # Z

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->forceCollapsed:Z

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 413
    return-void
.end method

.method public setHeadsUpShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->headsUpShowing:Z

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 385
    return-void
.end method

.method public setKeyguardDark(Z)V
    .locals 2
    .param p1, "dark"    # Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 128
    .local v0, "vis":I
    if-eqz p1, :cond_0

    .line 129
    or-int/lit8 v0, v0, 0x10

    .line 130
    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    .line 132
    :cond_0
    and-int/lit8 v0, v0, -0x11

    .line 133
    and-int/lit16 v0, v0, -0x2001

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 136
    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1
    .param p1, "keyguardFadingAway"    # Z

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 365
    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 339
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 334
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 329
    return-void
.end method

.method public setLockscreenWallpaper(Z)V
    .locals 3
    .param p1, "hasLockscreenWallpaper"    # Z

    .line 557
    const-string v0, "StatusBarWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LockscreenWP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->hasWallpaper:Z

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 560
    return-void
.end method

.method public setNotTouchable(Z)V
    .locals 1
    .param p1, "notTouchable"    # Z

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->notTouchable:Z

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 454
    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 1
    .param p1, "isExpanded"    # Z

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelExpanded:Z

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 418
    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->panelVisible:Z

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 345
    return-void
.end method

.method public setPreventModeActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->preventModeActive:Z

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 461
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 370
    return-void
.end method

.method public setScrimsVisibility(I)V
    .locals 1
    .param p1, "scrimsVisibility"    # I

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->scrimsVisibility:I

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 380
    return-void
.end method

.method public setStateListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

    .line 465
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;

    .line 466
    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 350
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 398
    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 1
    .param p1, "supportsAmbientMode"    # Z

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->wallpaperSupportsAmbientMode:Z

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 390
    return-void
.end method
