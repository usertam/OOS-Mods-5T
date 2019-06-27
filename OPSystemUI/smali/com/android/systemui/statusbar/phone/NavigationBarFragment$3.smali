.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;
.super Ljava/lang/Object;
.source "NavigationBarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 867
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "systemui_navigation_bar_hided"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "systemui_navigation_bar_hided"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showNavigationBarGuide()V

    .line 879
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcon(Z)V

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$302(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V

    .line 882
    return-void
.end method
