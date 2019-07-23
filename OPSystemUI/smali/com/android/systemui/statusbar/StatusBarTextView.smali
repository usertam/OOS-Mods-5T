.class public Lcom/android/systemui/statusbar/StatusBarTextView;
.super Landroid/widget/FrameLayout;
.source "StatusBarTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mDirty:Z

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mRect:Landroid/graphics/Rect;

.field private mSlot:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mTint:I

.field private mVisible:Z

.field private mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDirty:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDirty:Z

    .line 66
    return-void
.end method

.method private applyColors()V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mRect:Landroid/graphics/Rect;

    .line 143
    .local v0, "area":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTint:I

    .line 144
    .local v1, "tint":I
    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    .line 145
    .local v2, "color":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 147
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 148
    return-void
.end method

.method public static fromResId(Landroid/content/Context;I)Lcom/android/systemui/statusbar/StatusBarTextView;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarTextView;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarTextView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "container":Lcom/android/systemui/statusbar/StatusBarTextView;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 47
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 49
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/StatusBarTextView;->setTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 53
    :cond_0
    const-string v3, "StatusBarTextView"

    const-string v4, "Load StatusBarTextView error, the resource is not TextView."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/StatusBarTextView;->setTextView(Landroid/widget/TextView;)V

    .line 56
    :goto_0
    invoke-direct {v0}, Lcom/android/systemui/statusbar/StatusBarTextView;->initDotView()V

    .line 57
    return-object v0
.end method

.method private initDotView()V
    .locals 4

    .line 156
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07062d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 160
    .local v0, "width":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/StatusBarTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    return-void
.end method

.method private setTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;

    .line 152
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    .line 153
    return-void
.end method

.method private updateState()V
    .locals 3

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 167
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 175
    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 171
    nop

    .line 183
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    if-eq v0, p1, :cond_1

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    .line 84
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarTextView;->setVisibility(I)V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->updateState()V

    .line 87
    :cond_1
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public isIconVisible()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisible:Z

    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mRect:Landroid/graphics/Rect;

    .line 134
    iput p3, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTint:I

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->applyColors()V

    .line 136
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 188
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 189
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->applyColors()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDirty:Z

    .line 195
    :cond_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 103
    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0
    .param p1, "slot"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mSlot:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 98
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 200
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    if-nez p1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->applyColors()V

    .line 205
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mDirty:Z

    .line 208
    :cond_1
    return-void
.end method

.method public setVisibleState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 107
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    if-eq v0, p1, :cond_0

    .line 108
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarTextView;->mVisibleState:I

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarTextView;->updateState()V

    .line 111
    :cond_0
    return-void
.end method
