.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/statusbar/phone/NavGesture;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final COLOR_BACKGROUND_DARK:I

.field private final COLOR_BACKGROUND_LIGHT:I

.field private final COLOR_BACKGROUND_TRANSPARENT:I

.field private final COLOR_KEY_CTS:I

.field private final COLOR_KEY_DARK:I

.field private final COLOR_KEY_LIGHT:I

.field private final COLOR_KEY_TRANSPARENT:I

.field private isHideNavBarOn:Z

.field private mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackButtonBounds:Landroid/graphics/Rect;

.field private mBackCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackgroundColor:I

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private final mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCurrentRotation:I

.field mCurrentView:Landroid/view/View;

.field private final mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDeadZoneConsuming:Z

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mDockedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private mDownHitTarget:I

.field private mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHomeButtonBounds:Landroid/graphics/Rect;

.field private mHomeCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mImeShow:Z

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mInCarMode:Z

.field public mIsCustomNavBar:Z

.field private mIsImmersiveSticky:Z

.field private mIsInBrickMode:Z

.field private mIsLightBar:Z

.field public mIsSupportHideNavBar:Z

.field private mKeyguardShow:Z

.field private mLastButtonColor:I

.field private mLastRippleColor:I

.field private mLayoutTransitionsEnabled:Z

.field mLongClickableAccessibilityButton:Z

.field private mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field mNavigationIconHints:I

.field private mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field private final mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mRecentsButtonBounds:Landroid/graphics/Rect;

.field private mRecentsComponent:Lcom/android/systemui/RecentsComponent;

.field private mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

.field private mRotateBtnStyle:I

.field private mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

.field mRotatedViews:[Landroid/view/View;

.field private mRotationButtonBounds:Landroid/graphics/Rect;

.field mShowAccessibilityButton:Z

.field mShowMenu:Z

.field private mShowNavKey:Z

.field mShowRotateButton:Z

.field private mStatusBarExpanded:Z

.field private mTmpPosition:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field private mUseCarModeUi:Z

.field mVertical:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 319
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 116
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 126
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 128
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    .line 129
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    .line 131
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    .line 132
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    .line 133
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    .line 134
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpRect:Landroid/graphics/Rect;

    .line 152
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 161
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    .line 164
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 170
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 179
    const v2, 0x7f1202fa

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateBtnStyle:I

    .line 189
    const/high16 v2, -0x67000000

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_CTS:I

    .line 192
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    .line 193
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    .line 195
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isHideNavBarOn:Z

    .line 196
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    .line 197
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBarExpanded:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsSupportHideNavBar:Z

    .line 208
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsInBrickMode:Z

    .line 259
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 290
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 460
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 1697
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$rZTKiGVTHMScp1MOeQG9jGW8tDA;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$rZTKiGVTHMScp1MOeQG9jGW8tDA;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    .line 321
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 322
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 324
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 327
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    .line 328
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 330
    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 331
    new-instance v0, Lcom/android/systemui/recents/RecentsOnboarding;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/recents/RecentsOnboarding;-><init>(Landroid/content/Context;Lcom/android/systemui/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 333
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 337
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a006f

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0195

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0347

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a023f

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a01a7

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a000c

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0361

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0240

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    .line 353
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportHideNavBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsSupportHideNavBar:Z

    .line 355
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsSupportHideNavBar:Z

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0279

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    :cond_0
    const v0, 0x7f060365

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_LIGHT:I

    .line 360
    const v0, 0x7f060364

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_DARK:I

    .line 361
    const v0, 0x7f060366

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_TRANSPARENT:I

    .line 362
    const v0, 0x7f060368

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    .line 363
    const v0, 0x7f060367

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    .line 364
    const v0, 0x7f060369

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    .line 366
    new-instance v0, Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DeadZone;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 368
    const-class v0, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-virtual {v0}, Lcom/oneplus/scene/OPSceneModeObserver;->isInBrickMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsInBrickMode:Z

    .line 370
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applyAppCustomColor()V
    .locals 2

    .line 678
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLightColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    const/high16 v1, -0x1000000

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_0

    .line 680
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isDarkColor(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 681
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_0

    .line 683
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 685
    :goto_0
    return-void
.end method

.method private chooseNavigationIconDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;
    .param p3, "icon"    # I
    .param p4, "quickStepIcon"    # I

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 912
    .local v0, "quickStepEnabled":Z
    if-eqz v0, :cond_0

    .line 913
    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_0

    .line 914
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 912
    :goto_0
    return-object v1
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "button"    # Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1683
    if-nez p2, :cond_0

    .line 1684
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1686
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1686
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1690
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1691
    return-void
.end method

.method private getBackIcon(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1
    .param p1, "carMode"    # Z
    .param p2, "landscape"    # Z

    .line 956
    if-eqz p2, :cond_1

    .line 957
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    .line 958
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 956
    :goto_0
    return-object v0
.end method

.method private getBackIconWithAlt(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1
    .param p1, "carMode"    # Z
    .param p2, "landscape"    # Z

    .line 950
    if-eqz p2, :cond_1

    .line 951
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    .line 952
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 950
    :goto_0
    return-object v0
.end method

.method private getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "lightIcon"    # I
    .param p3, "darkIcon"    # I

    .line 931
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 932
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 931
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;
    .param p3, "icon"    # I

    .line 919
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;
    .param p3, "icon"    # I
    .param p4, "hasShadow"    # Z

    .line 924
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 925
    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 924
    invoke-static {p1, v0, v1, p4}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "lightColor"    # I
    .param p4, "darkColor"    # I

    .line 937
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;II)Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .line 1563
    if-eqz p1, :cond_0

    .line 1564
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1566
    .local v0, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1567
    :catch_0
    move-exception v1

    .line 1568
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    return-object v2

    .line 1571
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const-string v0, "(null)"

    return-object v0
.end method

.method private hasPinnedHeadsUp()Z
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDarkColor(I)Z
    .locals 1
    .param p1, "color"    # I

    .line 572
    const/high16 v0, -0x1000000

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLegible(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLegible(II)Z
    .locals 4
    .param p1, "foreground"    # I
    .param p2, "background"    # I

    .line 577
    const/16 v0, 0xff

    invoke-static {p2, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    .line 578
    invoke-static {p1, p2}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLightColor(I)Z
    .locals 1
    .param p1, "color"    # I

    .line 568
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLegible(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "exists"    # Ljava/lang/Boolean;

    .line 1698
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    .line 1699
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 1700
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "exists"    # Ljava/lang/Boolean;

    .line 1697
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$4XDnqGNkJ613pDIbZ7uGeE4B1z4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarView$4XDnqGNkJ613pDIbZ7uGeE4B1z4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyNavBarColorChange(IZ)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "expanded"    # Z

    .line 588
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCTS()Z

    move-result v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    .line 589
    const/high16 v0, -0x67000000

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 590
    return-void

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    .line 599
    .local v0, "barMode":I
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 600
    const-string v2, "StatusBar/NavBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyNavBarColorChange barMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mImeShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mKeyguardShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", expanded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasPinnedHeadsUp(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hasPinnedHeadsUp()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mDockedStackExists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsLightBar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", color: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 600
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz v2, :cond_5

    .line 611
    if-ne v0, v3, :cond_4

    .line 612
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_1

    .line 614
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 616
    :goto_1
    return-void

    .line 619
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    if-nez v2, :cond_6

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hasPinnedHeadsUp()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-nez v2, :cond_7

    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    if-nez v2, :cond_7

    .line 623
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    .line 627
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 628
    return-void

    .line 631
    :cond_7
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    .line 633
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v2, :cond_8

    .line 634
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 635
    return-void

    .line 638
    :cond_8
    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    if-ne v0, v3, :cond_9

    goto/16 :goto_5

    .line 641
    :cond_9
    if-nez v0, :cond_b

    .line 642
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isScreenCompat()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 643
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_2

    .line 645
    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 647
    :goto_2
    return-void

    .line 648
    :cond_b
    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 649
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 650
    return-void

    .line 653
    :cond_c
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isHideNavBarOn:Z

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isHomeApp()Z

    move-result v2

    if-nez v2, :cond_d

    .line 654
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 655
    return-void

    .line 658
    :cond_d
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isScreenCompat()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 659
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 661
    :cond_e
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    if-eqz v2, :cond_f

    .line 662
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 664
    :cond_f
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    if-nez v2, :cond_10

    .line 665
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 667
    :cond_10
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_LIGHT:I

    if-ne v2, v3, :cond_11

    .line 668
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_4

    .line 669
    :cond_11
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_BACKGROUND_DARK:I

    if-eq v2, v3, :cond_13

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    if-ne v2, v1, :cond_12

    goto :goto_3

    .line 673
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->applyAppCustomColor()V

    goto :goto_4

    .line 671
    :cond_13
    :goto_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_DARK:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 675
    :goto_4
    return-void

    .line 639
    :cond_14
    :goto_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    .line 640
    return-void
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 1
    .param p1, "newVertical"    # Z

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    .line 1499
    :cond_0
    return-void
.end method

.method private orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 3
    .param p1, "drawable"    # Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 899
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 901
    .local v0, "useAltBack":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 902
    const/high16 v1, -0x3d4c0000    # -90.0f

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 901
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    .line 903
    return-void
.end method

.method private orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 906
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    .line 907
    return-void
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "how"    # Ljava/lang/String;

    .line 1576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/4 v1, 0x0

    const/16 v2, 0x21ee

    invoke-virtual {v0, v2, v1, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1577
    return-void
.end method

.method private reloadNavIcons()V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 544
    return-void
.end method

.method private setSlippery(Z)V
    .locals 5
    .param p1, "slippery"    # Z

    .line 1179
    const/4 v0, 0x0

    .line 1180
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1181
    .local v1, "navbarView":Landroid/view/ViewGroup;
    nop

    .line 1182
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1183
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez v2, :cond_0

    .line 1184
    return-void

    .line 1186
    :cond_0
    const/high16 v3, 0x20000000

    if-eqz p1, :cond_1

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v3

    if-nez v4, :cond_1

    .line 1187
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1188
    const/4 v0, 0x1

    goto :goto_0

    .line 1189
    :cond_1
    if-nez p1, :cond_2

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 1190
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1191
    const/4 v0, 0x1

    .line 1195
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1196
    const-string v3, "StatusBar/NavBarView"

    const-string v4, "isn\'t attached"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return-void

    .line 1201
    :cond_3
    if-eqz v0, :cond_4

    .line 1202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1203
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_4
    return-void
.end method

.method private setUpSwipeUpOnboarding(Z)V
    .locals 1
    .param p1, "connectedToOverviewProxy"    # Z

    .line 1612
    if-eqz p1, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->onConnectedToLauncher()V

    goto :goto_0

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    .line 1617
    :goto_0
    return-void
.end method

.method private setUseFadingAnimations(Z)V
    .locals 4
    .param p1, "useFadingAnimations"    # Z

    .line 1120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1121
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1122
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_4

    .line 1123
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1124
    .local v1, "old":Z
    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 1125
    const v2, 0x7f12000d

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    .line 1126
    :cond_1
    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 1127
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1132
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1133
    const-string v2, "StatusBar/NavBarView"

    const-string/jumbo v3, "view isn\'t attached"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void

    .line 1138
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1139
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1139
    .end local v1    # "old":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    goto :goto_2

    .line 1129
    .restart local v1    # "old":Z
    :cond_3
    return-void

    .line 1141
    .end local v1    # "old":Z
    :cond_4
    :goto_2
    return-void
.end method

.method private shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    return v1

    .line 434
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 437
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 438
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 439
    goto :goto_1

    .line 443
    :cond_2
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 444
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZoneConsuming:Z

    .line 447
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showNavKey()Z
    .locals 3

    .line 718
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 719
    const-string v0, "StatusBar/NavBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNavKey mShowNavKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isHomeApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isHomeApp()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isScreenCompat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isScreenCompat()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mImeShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mKeyguardShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isMultiWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isScreenSaveron: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isImmersiveSticky: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSystemUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSystemUI()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isInBrickMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsInBrickMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    if-eqz v0, :cond_1

    .line 734
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isHomeApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isScreenCompat()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mStatusBarExpanded:Z

    if-nez v0, :cond_1

    .line 739
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-nez v0, :cond_1

    .line 742
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSystemUI()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsInBrickMode:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 733
    :goto_0
    return v0
.end method

.method private updateButtonColor(II)V
    .locals 1
    .param p1, "buttonColor"    # I
    .param p2, "rippleColor"    # I

    .line 688
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(IIZ)V

    .line 689
    return-void
.end method

.method private updateButtonColor(IIZ)V
    .locals 6
    .param p1, "buttonColor"    # I
    .param p2, "rippleColor"    # I
    .param p3, "force"    # Z

    .line 692
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 693
    const-string v0, "StatusBar/NavBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateButtonColor buttonColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_2

    .line 697
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "StatusBar/NavBarView"

    const-string/jumbo v1, "updateButtonColor: update the same color, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_1
    return-void

    .line 700
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    .line 701
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    .line 703
    const/4 v0, 0x0

    move v1, v0

    .line 703
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 704
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getViews()Ljava/util/ArrayList;

    move-result-object v2

    .line 705
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 706
    .local v3, "N":I
    move v4, v0

    .line 706
    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 707
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v5, :cond_3

    .line 708
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 709
    .local v5, "v":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateThemeColor(I)V

    .line 710
    invoke-virtual {v5, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setRippleColor(I)V

    .line 706
    .end local v5    # "v":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 703
    .end local v2    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "N":I
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postInvalidate()V

    .line 715
    return-void
.end method

.method private updateButtonLocationOnScreen(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "button"    # Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .param p2, "buttonBounds"    # Landroid/graphics/Rect;

    .line 1377
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 1378
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1379
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1380
    return-void

    .line 1383
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 1384
    .local v1, "posX":F
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 1385
    .local v2, "posY":F
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1386
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1387
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1388
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v4, v7, v4

    .line 1389
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpPosition:[I

    aget v6, v7, v6

    .line 1390
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1388
    invoke-virtual {p2, v3, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1391
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1392
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1393
    return-void
.end method

.method private updateCarMode(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1521
    const/4 v0, 0x0

    .line 1522
    .local v0, "uiCarModeChanged":Z
    if-eqz p1, :cond_1

    .line 1523
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 1524
    .local v1, "uiMode":I
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1526
    .local v2, "isCarMode":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    if-eq v2, v4, :cond_1

    .line 1527
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 1533
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    .line 1537
    .end local v1    # "uiMode":I
    .end local v2    # "isCarMode":Z
    :cond_1
    return v0
.end method

.method private updateCurrentView()V
    .locals 5

    .line 1409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1410
    .local v0, "rot":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 1411
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v3, v3, v2

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1413
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 1414
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1415
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v1, v3

    nop

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 1416
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 1417
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 1418
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 1419
    return-void
.end method

.method private updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .line 808
    const v0, 0x7f04010a

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 809
    .local v0, "dualToneDarkTheme":I
    const v1, 0x7f040242

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 810
    .local v1, "dualToneLightTheme":I
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 811
    .local v2, "lightContext":Landroid/content/Context;
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 813
    .local v3, "darkContext":Landroid/content/Context;
    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iget v5, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    iget v4, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v5, :cond_2

    .line 816
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v4, :cond_1

    .line 817
    const v4, 0x7f0803e9

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    goto :goto_0

    .line 818
    :cond_1
    const v4, 0x7f0803e8

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 820
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 822
    :cond_2
    iget v4, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v4, v5, :cond_3

    .line 823
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 824
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 826
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackAltDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 830
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v4, :cond_4

    .line 831
    const v4, 0x7f0803f6

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    goto :goto_1

    .line 832
    :cond_4
    const v4, 0x7f0803f5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 834
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v4, :cond_5

    .line 835
    const v4, 0x7f0803f2

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    goto :goto_2

    .line 836
    :cond_5
    const v4, 0x7f0803f1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 839
    const v4, 0x7f0803de

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 842
    const v4, 0x7f080298

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 845
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateBtnStyle:I

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRotateSuggestionButtonStyle(IZ)V

    .line 851
    :cond_6
    return-void
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 7

    .line 1101
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1102
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a027d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1103
    .local v3, "navButtons":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 1104
    .local v4, "lt":Landroid/animation/LayoutTransition;
    if-eqz v4, :cond_2

    .line 1105
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_1

    .line 1106
    invoke-virtual {v4, v6}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1107
    invoke-virtual {v4, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1108
    invoke-virtual {v4, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1109
    invoke-virtual {v4, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_1

    .line 1111
    :cond_1
    invoke-virtual {v4, v6}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1112
    invoke-virtual {v4, v5}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1113
    invoke-virtual {v4, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1114
    invoke-virtual {v4, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 1117
    :cond_2
    :goto_1
    return-void
.end method

.method private updateRecentsIcon()V
    .locals 2

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    .line 1423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 1425
    return-void
.end method

.method private updateRotatedViews()V
    .locals 4

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 1397
    const v2, 0x7f0a035f

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 1399
    const v2, 0x7f0a0360

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    .line 1401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 1402
    return-void
.end method

.method private updateSlippery()V
    .locals 1

    .line 1174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 1176
    return-void
.end method

.method private updateTaskSwitchHelper()V
    .locals 3

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-nez v0, :cond_0

    return-void

    .line 1474
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1475
    .local v0, "isRtl":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->setBarState(ZZ)V

    .line 1476
    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "vis"    # I

    .line 1580
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 1586
    const-string v0, "VISIBLE"

    return-object v0

    .line 1584
    :cond_0
    const-string v0, "GONE"

    return-object v0

    .line 1582
    :cond_1
    const-string v0, "INVISIBLE"

    return-object v0
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    .line 458
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1637
    const-string v0, "NavigationBarView {"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1639
    .local v0, "r":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1640
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 1642
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1645
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1646
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    const/4 v5, 0x1

    if-gt v2, v4, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    .line 1647
    .local v2, "offscreen":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      window: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    if-eqz v2, :cond_2

    const-string v6, " OFFSCREEN!"

    goto :goto_2

    :cond_2
    const-string v6, ""

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1647
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    const-string v4, "      mCurrentView: id=%s (%dx%d) %s %f"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 1653
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1654
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 1655
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v6, v9

    const/4 v7, 0x4

    .line 1656
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v6, v7

    .line 1652
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    const-string v4, "      disabled=0x%08x vertical=%s menu=%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 1659
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1660
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "true"

    goto :goto_3

    :cond_3
    const-string v3, "false"

    :goto_3
    aput-object v3, v6, v5

    .line 1661
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "true"

    goto :goto_4

    :cond_4
    const-string v3, "false"

    :goto_4
    aput-object v3, v6, v8

    .line 1658
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    const-string v3, "back"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1664
    const-string v3, "home"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1665
    const-string v3, "rcnt"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1666
    const-string v3, "menu"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1667
    const-string v3, "a11y"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 1669
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v3, p2}, Lcom/android/systemui/recents/RecentsOnboarding;->dump(Ljava/io/PrintWriter;)V

    .line 1671
    const-string v3, "    }"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1672
    return-void
.end method

.method public getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getBackAltDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;

    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 871
    .local v0, "quickStepEnabled":Z
    if-eqz v0, :cond_0

    .line 872
    const v1, 0x7f0803e4

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_0

    .line 873
    :cond_0
    const v1, 0x7f0803e2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 871
    :goto_0
    return-object v1
.end method

.method public getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getBackDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;

    .line 855
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const v0, 0x7f0803e0

    const v1, 0x7f0803e7

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->chooseNavigationIconDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 858
    .local v0, "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 859
    return-object v0

    .line 862
    .end local v0    # "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :cond_0
    const v0, 0x7f0803df

    const v1, 0x7f0803e6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->chooseNavigationIconDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 864
    .restart local v0    # "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 865
    return-object v0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method getButtonAtPosition(II)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1311
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 1312
    .local v1, "button":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 1313
    .local v2, "buttonView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1314
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1315
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1316
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1317
    return-object v1

    .line 1310
    .end local v1    # "button":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .end local v2    # "buttonView":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1321
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getButtonDispatchers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getDownHitTarget()I
    .locals 1

    .line 453
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    return v0
.end method

.method public getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getHomeDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3
    .param p1, "lightContext"    # Landroid/content/Context;
    .param p2, "darkContext"    # Landroid/content/Context;

    .line 879
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 881
    .local v0, "quickStepEnabled":Z
    if-eqz v0, :cond_0

    .line 882
    const v1, 0x7f0803ee

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_0

    .line 883
    :cond_0
    const v2, 0x7f0803eb

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 885
    .local v1, "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 886
    return-object v1

    .line 889
    .end local v0    # "quickStepEnabled":Z
    .end local v1    # "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 890
    .restart local v0    # "quickStepEnabled":Z
    if-eqz v0, :cond_2

    .line 891
    const v1, 0x7f0803ed

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_1

    .line 892
    :cond_2
    const v2, 0x7f0803ea

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 894
    .restart local v1    # "drawable":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 895
    return-object v1
.end method

.method public getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a01a7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a023f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0279

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0347

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0361

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public inScreenPinning()Z
    .locals 1

    .line 1086
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    return v0
.end method

.method public isOverviewEnabled()Z
    .locals 2

    .line 517
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQuickScrubEnabled()Z
    .locals 2

    .line 525
    const-string v0, "persist.quickstep.scrub.enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 526
    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 527
    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getInteractionFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 525
    :goto_0
    return v1
.end method

.method public isQuickStepSwipeUpEnabled()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecentsButtonVisible()Z
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRotateButtonVisible()Z
    .locals 1

    .line 1304
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowRotateButton:Z

    return v0
.end method

.method public isScreenSaverOn()Z
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needsReorient(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .line 1405
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyNavBarColorChange(I)V
    .locals 1
    .param p1, "color"    # I

    .line 582
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(IZ)V

    .line 583
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1676
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1677
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1676
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setPadding(IIII)V

    .line 1678
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1592
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1593
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->requestApplyInsets()V

    .line 1594
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1595
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V

    .line 1596
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 1598
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1599
    return-void
.end method

.method public onBrickModeChanged(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .line 1704
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsInBrickMode:Z

    .line 1705
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1503
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1504
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 1505
    .local v0, "uiCarModeChanged":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 1506
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 1508
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1509
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 1510
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1512
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1514
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1515
    return-void
.end method

.method public onDarkIntensityChange(F)V
    .locals 1
    .param p1, "intensity"    # F

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onDarkIntensityChange(F)V

    .line 1356
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1603
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1604
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 1605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->destroy()V

    .line 1608
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1609
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    .line 1362
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1363
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1326
    const v0, 0x7f0a0280

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    .line 1327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 1329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    .line 1332
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRotatedViews()V

    .line 1337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    .line 1338
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_navigation_bar_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    .line 1343
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_gesture_button_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    .line 1346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1350
    :cond_2
    return-void
.end method

.method public onImmersiveSticky(Z)V
    .locals 3
    .param p1, "isImmersiveSticky"    # Z

    .line 776
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar/NavBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImmersiveSticky "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsImmersiveSticky:Z

    .line 778
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 779
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 781
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 399
    return v1

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 404
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 405
    .local v2, "y":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    goto :goto_0

    .line 410
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 411
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    goto :goto_0

    .line 412
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    .line 413
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 414
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDownHitTarget:I

    .line 418
    .end local v0    # "x":I
    .end local v2    # "y":I
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1367
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocationOnScreen(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;)V

    .line 1369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocationOnScreen(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;)V

    .line 1370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocationOnScreen(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;)V

    .line 1371
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotationButtonBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonLocationOnScreen(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/graphics/Rect;)V

    .line 1372
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onLayout(ZIIII)V

    .line 1373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsOnboarding:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->setNavBarHeight(I)V

    .line 1374
    return-void
.end method

.method public onNavigationButtonLongPress(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onNavigationButtonLongPress(Landroid/view/View;)V

    .line 1145
    return-void
.end method

.method public onPanelExpandedChange(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .line 1148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 1149
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;Landroid/content/Context;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/phone/NavGesture;
    .param p2, "context"    # Landroid/content/Context;

    .line 1621
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;->getGestureHelper()Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    .line 1622
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 1623
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    .line 1627
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;-><init>(Landroid/content/Context;)V

    .line 1628
    .local v0, "defaultHelper":Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 1629
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v1, :cond_0

    .line 1630
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->destroy()V

    .line 1632
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    .line 1633
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 1634
    return-void
.end method

.method public onShowKeyguard(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 750
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    if-ne v0, p1, :cond_0

    .line 751
    return-void

    .line 754
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    .line 756
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mKeyguardShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isScreenSaverOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 758
    .local v0, "shoudldBlockChangeColor":Z
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    .line 760
    .local v1, "naviBarColor":I
    :goto_1
    if-nez v0, :cond_3

    .line 761
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    .line 764
    .end local v0    # "shoudldBlockChangeColor":Z
    .end local v1    # "naviBarColor":I
    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1480
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "StatusBar/NavBarView"

    const-string v3, "onSizeChanged: (%dx%d) old: (%dx%d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 1481
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1480
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_0
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 1484
    .local v0, "newVertical":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_2

    .line 1485
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 1487
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1488
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 1491
    :cond_2
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 1492
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1493
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 423
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 424
    return v1

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    return v1

    .line 429
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refreshButtonColor()V
    .locals 3

    .line 795
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastButtonColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastRippleColor:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(IIZ)V

    .line 796
    return-void
.end method

.method public reorient()V
    .locals 3

    .line 1442
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 1444
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onConfigurationChanged(I)V

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init()V

    .line 1449
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 1452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1457
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1458
    const-string v0, "StatusBar/NavBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reorient(): rot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1464
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->resolveLayoutDirection()Z

    .line 1466
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 1467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1469
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVertical(Z)V

    .line 1470
    return-void
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "longClickable"    # Z

    .line 1226
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    .line 1227
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 1228
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1230
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 1231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1232
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setRotateButtonVisibility(Z)I

    .line 1235
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz p1, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 1237
    return-void
.end method

.method public setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 1
    .param p1, "recentsComponent"    # Lcom/android/systemui/RecentsComponent;
    .param p2, "divider"    # Lcom/android/systemui/stackdivider/Divider;
    .param p3, "panel"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 382
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    .line 383
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 384
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 389
    :cond_0
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 2
    .param p1, "disabledFlags"    # I

    .line 988
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v0, p1, :cond_0

    return-void

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    .line 991
    .local v0, "overviewEnabledBefore":Z
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 994
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 995
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 998
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 999
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 1000
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1001
    return-void
.end method

.method public setHideNavBarOn(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 549
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isHideNavBarOn:Z

    .line 550
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isHideNavBarOn:Z

    if-eqz v0, :cond_0

    .line 551
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_TRANSPARENT:I

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateButtonColor(II)V

    goto :goto_0

    .line 553
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    .line 555
    :goto_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 942
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 945
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    .line 947
    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1090
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 1091
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 1092
    return-void
.end method

.method public setLightBar(Z)V
    .locals 1
    .param p1, "isLightBar"    # Z

    .line 784
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsLightBar:Z

    .line 786
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    .line 788
    :cond_0
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 1209
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .line 1212
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1214
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 1217
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowRotateButton:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1222
    .local v0, "shouldShow":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1223
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 3
    .param p1, "hints"    # I

    .line 962
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    return-void

    .line 963
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 964
    .local v0, "backAlt":Z
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 965
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 972
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 973
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 976
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 977
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeShow:Z

    .line 978
    if-eqz v0, :cond_3

    .line 979
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->COLOR_KEY_LIGHT:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    goto :goto_1

    .line 981
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackgroundColor:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    .line 985
    :cond_4
    :goto_1
    return-void
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V
    .locals 1
    .param p1, "onVerticalChangedListener"    # Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .line 392
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .line 393
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 394
    return-void
.end method

.method public setRotateButtonVisibility(Z)I
    .locals 4
    .param p1, "visible"    # Z

    .line 1278
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1279
    .local v1, "adjVisible":Z
    :goto_0
    if-eqz v1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    .line 1282
    .local v2, "vis":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v3

    if-ne v2, v3, :cond_2

    return v2

    .line 1284
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1285
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowRotateButton:Z

    .line 1288
    if-nez p1, :cond_3

    .line 1289
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1290
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v3, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_3

    .line 1291
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1292
    .local v3, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 1293
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 1298
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1301
    return v2
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0
    .param p1, "wakeAndUnlocking"    # Z

    .line 1095
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUseFadingAnimations(Z)V

    .line 1096
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    .line 1097
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 1098
    return-void
.end method

.method public updateNavButtonIcon(Z)V
    .locals 3
    .param p1, "mHide"    # Z

    .line 1429
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803f4

    invoke-direct {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_0

    .line 1432
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803f3

    invoke-direct {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 1430
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1434
    :cond_1
    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 14

    .line 1007
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1011
    .local v0, "useAltBack":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v3, :cond_2

    .line 1012
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIcon(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 1014
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIconWithAlt(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    goto :goto_1

    .line 1015
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIcon(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    .line 1016
    .local v3, "backIcon":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 1017
    .local v4, "homeIcon":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v5, :cond_5

    .line 1018
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientBackButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1019
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->orientHomeButton(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1021
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1022
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1024
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 1027
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowRotateButton:Z

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    move v5, v1

    goto :goto_3

    :cond_6
    move v5, v2

    .line 1031
    .local v5, "showImeButton":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    const/4 v7, 0x4

    if-eqz v5, :cond_7

    move v8, v2

    goto :goto_4

    :cond_7
    move v8, v7

    :goto_4
    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1032
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1035
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 1036
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1039
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1042
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    invoke-virtual {p0, v6, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    .line 1043
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1045
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 1047
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v8, 0x200000

    and-int/2addr v6, v8

    if-eqz v6, :cond_8

    move v6, v1

    goto :goto_5

    :cond_8
    move v6, v2

    .line 1050
    .local v6, "disableHome":Z
    :goto_5
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v8, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isOverviewEnabled()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    move v8, v2

    goto :goto_7

    :cond_a
    :goto_6
    move v8, v1

    .line 1052
    .local v8, "disableRecent":Z
    :goto_7
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v10, 0x400000

    and-int/2addr v9, v10

    if-eqz v9, :cond_b

    if-nez v0, :cond_b

    move v9, v1

    goto :goto_8

    :cond_b
    move v9, v2

    .line 1057
    .local v9, "disableBack":Z
    :goto_8
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v10

    .line 1058
    .local v10, "pinningActive":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v11}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1061
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v11}, Lcom/android/systemui/OverviewProxyService;->getInteractionFlags()I

    move-result v11

    .line 1062
    .local v11, "flags":I
    and-int/lit8 v12, v11, 0x4

    if-nez v12, :cond_c

    goto :goto_9

    :cond_c
    move v1, v2

    :goto_9
    or-int/2addr v8, v1

    .line 1063
    if-eqz v10, :cond_d

    .line 1064
    move v1, v2

    .end local v6    # "disableHome":Z
    .local v1, "disableHome":Z
    move v6, v2

    .line 1066
    .end local v9    # "disableBack":Z
    .end local v11    # "flags":I
    .local v6, "disableBack":Z
    move v9, v6

    move v6, v1

    .end local v1    # "disableHome":Z
    .local v6, "disableHome":Z
    .restart local v9    # "disableBack":Z
    :cond_d
    goto :goto_a

    :cond_e
    if-eqz v10, :cond_f

    .line 1067
    move v8, v2

    move v9, v2

    .line 1070
    :cond_f
    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v11, 0x7f0a027d

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1071
    .local v1, "navButtons":Landroid/view/ViewGroup;
    if-eqz v1, :cond_10

    .line 1072
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v11

    .line 1073
    .local v11, "lt":Landroid/animation/LayoutTransition;
    if-eqz v11, :cond_10

    .line 1074
    invoke-virtual {v11}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 1075
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v11, v12}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 1080
    .end local v11    # "lt":Landroid/animation/LayoutTransition;
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v11

    if-eqz v9, :cond_11

    move v12, v7

    goto :goto_b

    :cond_11
    move v12, v2

    :goto_b
    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v11

    if-eqz v6, :cond_12

    move v12, v7

    goto :goto_c

    :cond_12
    move v12, v2

    :goto_c
    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1082
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v11

    if-eqz v8, :cond_13

    move v2, v7

    nop

    :cond_13
    invoke-virtual {v11, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 1083
    return-void
.end method

.method public updateNavButtonState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 559
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowNavKey:Z

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->showNavKey()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 563
    :cond_1
    return-void
.end method

.method public updateRotateSuggestionButtonStyle(IZ)V
    .locals 12
    .param p1, "style"    # I
    .param p2, "setIcon"    # Z

    .line 1240
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateBtnStyle:I

    .line 1241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1244
    .local v0, "ctx":Landroid/content/Context;
    const v1, 0x7f04010a

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 1245
    .local v1, "dualToneDarkTheme":I
    const v2, 0x7f040242

    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v2

    .line 1246
    .local v2, "dualToneLightTheme":I
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1247
    .local v3, "darkContext":Landroid/content/Context;
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-direct {v4, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1248
    .local v4, "lightContext":Landroid/content/Context;
    const v5, 0x7f0403c5

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v6

    .line 1249
    .local v6, "lightColor":I
    invoke-static {v3, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v5

    .line 1252
    .local v5, "darkColor":I
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-direct {v7, v0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1255
    .local v7, "rotateContext":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    .line 1261
    .local v8, "priorIcon":Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsCustomNavBar:Z

    if-eqz v9, :cond_0

    .line 1262
    const v9, 0x7f0803f8

    goto :goto_0

    .line 1263
    :cond_0
    const v9, 0x7f0803f7

    .line 1264
    .local v9, "rotateButtonResId":I
    :goto_0
    invoke-direct {p0, v7, v9, v6, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    .line 1269
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->isDarkIntensitySet()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1270
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->getDarkIntensity()F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->setDarkIntensity(F)V

    .line 1273
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotateSuggestionIcon:Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 1274
    :cond_2
    return-void
.end method

.method public updateStates()V
    .locals 3

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    .line 1154
    .local v0, "showSwipeUpUI":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonState(Z)V

    .line 1157
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-eqz v1, :cond_1

    .line 1159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onLikelyDefaultLayoutChange()V

    .line 1162
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 1163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reloadNavIcons()V

    .line 1164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    .line 1165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUpSwipeUpOnboarding(Z)V

    .line 1166
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    .line 1168
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mQuickStepAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1167
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1169
    return-void
.end method
