.class public Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
.super Landroid/widget/FrameLayout;
.source "OPWarpChargingView.java"


# static fields
.field private static final ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

.field static final DEBUG:Z

.field private static mRes:Landroid/content/res/Resources;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isAnimationStart:Z

.field private mAssetLoaded:Z

.field private mAssetLoading:Z

.field private mAssetReleasing:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mChargeAnimation:Landroid/animation/AnimatorSet;

.field private mChargingAnimationController:Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInfoView:Landroid/view/View;

.field private mIsPaddingStartAnimation:Z

.field private mPlugin:Z

.field private mScrim:Landroid/view/View;

.field mStartAnimationAssets1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWallpaperView:Landroid/widget/ImageView;

.field private mWrapview:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->DEBUG:Z

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    const-string v0, "OPWarpChargingView"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mPlugin:Z

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoading:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetReleasing:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaper:Landroid/graphics/Bitmap;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mRes:Landroid/content/res/Resources;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mInfoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Lcom/android/systemui/statusbar/policy/ChargingAnimationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargingAnimationController:Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->preloadAnimationList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->relaseAnimationList()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoading:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mIsPaddingStartAnimation:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetReleasing:Z

    return p1
.end method

.method private getWarpFastChargeAnimation()Landroid/animation/AnimatorSet;
    .locals 11

    .line 201
    const/16 v0, 0x1b0

    .line 202
    .local v0, "animation1Duration":I
    const/16 v1, 0x90

    .line 203
    .local v1, "animation2Duration":I
    const/16 v2, 0x230

    .line 204
    .local v2, "animation3Duration":I
    const/16 v3, 0xff

    .line 205
    .local v3, "animation4Duration":I
    const/16 v4, 0x50b

    .line 207
    .local v4, "animatorSetDuration":I
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v7, v6, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput v7, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 208
    .local v6, "animation1":Landroid/animation/ValueAnimator;
    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 209
    sget-object v7, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    new-instance v7, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$1;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    new-instance v7, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$2;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 243
    .local v7, "animation2":Landroid/animation/ValueAnimator;
    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 244
    sget-object v8, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    new-instance v8, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$3;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    new-instance v8, Landroid/animation/ValueAnimator;

    invoke-direct {v8}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v8, v5, [F

    fill-array-data v8, :array_1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 255
    .local v8, "animation3":Landroid/animation/ValueAnimator;
    int-to-long v9, v2

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 256
    sget-object v9, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    new-instance v9, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$4;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$4;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 266
    new-instance v9, Landroid/animation/ValueAnimator;

    invoke-direct {v9}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 267
    .local v5, "animation4":Landroid/animation/ValueAnimator;
    const-wide/16 v9, 0x7d0

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 268
    int-to-long v9, v3

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 269
    sget-object v9, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->ANIMATION_INTERPILATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    new-instance v9, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$5;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$5;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 279
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 280
    .local v9, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v10, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$6;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 321
    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 322
    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 323
    return-object v9

    nop

    :array_0
    .array-data 4
        0x0
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private preloadAnimationList()V
    .locals 9

    .line 364
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPWarpChargingView"

    const-string v1, "preloadAnimationList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 366
    .local v0, "start":J
    sget-object v2, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f030032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 368
    .local v2, "animation":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 369
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 370
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 371
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 378
    move v4, v3

    .restart local v4    # "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 379
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 381
    .local v5, "resource_id":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 382
    .local v6, "is":Ljava/io/InputStream;
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 383
    .local v7, "bm":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    if-eqz v6, :cond_3

    .line 386
    :try_start_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    goto :goto_2

    .line 387
    :catch_0
    move-exception v8

    .line 378
    .end local v5    # "resource_id":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 395
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 397
    .local v3, "end":J
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "OPWarpChargingView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preloadAnimationList: cost Time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " mStartAnimationAssets1 size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$9;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method

.method private refresh()V
    .locals 0

    .line 158
    return-void
.end method

.method private relaseAnimationList()V
    .locals 2

    .line 411
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPWarpChargingView"

    const-string v1, "relaseAnimationList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 415
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$10;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 126
    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0a04b3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWrapview:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0a007a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundView:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f0a049c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaperView:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaperView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    const v0, 0x7f0a01bd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mInfoView:Landroid/view/View;

    .line 132
    const v0, 0x7f0a03a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mScrim:Landroid/view/View;

    .line 133
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 166
    .local v0, "levelText":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 121
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 137
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->stopAnimation()V

    .line 139
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 151
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 152
    if-nez p2, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->refresh()V

    .line 155
    :cond_0
    return-void
.end method

.method public prepareAsset()V
    .locals 3

    .line 327
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPWarpChargingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAsset() / mAssetLoading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / mAssetLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    if-nez v0, :cond_2

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoading:Z

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mInfoView:Landroid/view/View;

    const v1, 0x7f080209

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$7;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    :cond_2
    return-void
.end method

.method public releaseAsset()V
    .locals 3

    .line 346
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPWarpChargingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseAsset() / mAssetLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / isAnimationStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / mAssetReleasing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetReleasing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetReleasing:Z

    if-nez v0, :cond_2

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetReleasing:Z

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView$8;-><init>(Lcom/android/systemui/statusbar/phone/OPWarpChargingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    :cond_2
    return-void
.end method

.method public setBackgroundWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 431
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaper:Landroid/graphics/Bitmap;

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaperView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWallpaperView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 435
    :cond_0
    return-void
.end method

.method public setChargingAnimationController(Lcom/android/systemui/statusbar/policy/ChargingAnimationController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    .line 161
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargingAnimationController:Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    .line 162
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mAssetLoaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    if-nez v0, :cond_3

    .line 175
    const-string v0, "OPWarpChargingView"

    const-string/jumbo v2, "startAnimation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->getWarpFastChargeAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 185
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OPWarpChargingView"

    const-string/jumbo v2, "startAnimation / else / prepareAsset"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mIsPaddingStartAnimation:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->prepareAsset()V

    .line 189
    :cond_3
    :goto_1
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->isAnimationStart:Z

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "OPWarpChargingView"

    const-string/jumbo v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mChargeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 198
    :cond_0
    return-void
.end method

.method public updaetScrimColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mScrim:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 441
    :cond_0
    return-void
.end method

.method public updateColors(I)V
    .locals 1
    .param p1, "textColor"    # I

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWrapview:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->mWrapview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 450
    :cond_1
    return-void
.end method
