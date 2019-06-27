.class Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p2, "x1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$1;

    .line 876
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 902
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .line 879
    const/4 v0, 0x0

    .line 881
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 882
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    .line 884
    .local v2, "action":Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 885
    goto :goto_1

    .line 887
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->showBeforeProvisioning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 888
    goto :goto_1

    .line 890
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 881
    .end local v2    # "action":Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 4
    .param p1, "position"    # I

    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, "filteredPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 909
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    .line 910
    .local v2, "action":Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 911
    goto :goto_1

    .line 913
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->showBeforeProvisioning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 914
    goto :goto_1

    .line 916
    :cond_1
    if-ne v0, p1, :cond_2

    .line 917
    return-object v2

    .line 919
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 908
    .end local v2    # "action":Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of range of showable actions, filtered count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keyguardshowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 925
    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", provisioned="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 926
    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 876
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 931
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 935
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    .line 936
    .local v0, "action":Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    .line 938
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 939
    invoke-static {p3}, Lcom/android/systemui/HardwareUiLayout;->get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/HardwareUiLayout;->setDivisionView(Landroid/view/View;)V

    .line 941
    :cond_0
    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 897
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
