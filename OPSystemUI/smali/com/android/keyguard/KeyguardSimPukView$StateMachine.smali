.class Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field private state:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 1

    .line 131
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 134
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 135
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    .line 136
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardSimPukView$1;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "msg":I
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$400(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 143
    const v0, 0x7f110356

    goto :goto_0

    .line 145
    :cond_0
    const v0, 0x7f110341

    goto :goto_0

    .line 147
    :cond_1
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    const/4 v3, 0x2

    if-ne v1, v2, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$500(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 150
    const v0, 0x7f110330

    goto :goto_0

    .line 152
    :cond_2
    const v0, 0x7f110340

    goto :goto_0

    .line 154
    :cond_3
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_5

    .line 155
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 157
    const v0, 0x7f11032b

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$600(Lcom/android/keyguard/KeyguardSimPukView;)V

    goto :goto_0

    .line 160
    :cond_4
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 161
    const v0, 0x7f11033e

    .line 164
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1, v2, v2}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(ZZ)V

    .line 165
    if-eqz v0, :cond_6

    .line 166
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 168
    :cond_6
    return-void
.end method

.method reset()V
    .locals 12

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$702(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$802(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 182
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const v3, 0x7f0a03c4

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 184
    .local v2, "slotName":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 185
    const-string v3, "KeyguardSimPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset, mSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSimPukView;->access$1000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11035f

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    .line 188
    invoke-static {v7}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    .line 187
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "slot":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/keyguard/KeyguardSimPukView;->access$202(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 193
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 194
    .local v4, "count":I
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 196
    .local v6, "rez":Landroid/content/res/Resources;
    const/4 v7, -0x1

    .line 197
    .local v7, "color":I
    const/4 v8, 0x2

    if-ge v4, v8, :cond_0

    .line 198
    const v8, 0x7f110357

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "msg":Ljava/lang/String;
    move-object v10, v8

    goto :goto_1

    .line 200
    .end local v8    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v8

    .line 201
    .local v8, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_0

    :cond_1
    const-string v9, ""

    .line 202
    .local v9, "displayName":Ljava/lang/CharSequence;
    :goto_0
    const v10, 0x7f110358

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v3, v11, v0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, "msg":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 204
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v7

    .line 207
    .end local v8    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "displayName":Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardSimPukView;->access$300(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 208
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v8, v8, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v8, v10}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 210
    :cond_3
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v8, v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$302(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 211
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPukView;->access$1100(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 212
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    .end local v3    # "slot":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v6    # "rez":Landroid/content/res/Resources;
    .end local v7    # "color":I
    .end local v10    # "msg":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSimPukView;->access$1200(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSimPukView;->access$100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v3

    .line 220
    .local v3, "isEsimLocked":Z
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const v5, 0x7f0a01d4

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardEsimArea;

    .line 221
    .local v4, "esimButton":Lcom/android/keyguard/KeyguardEsimArea;
    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardEsimArea;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 223
    return-void
.end method
