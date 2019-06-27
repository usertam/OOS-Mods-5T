.class public interface abstract Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OverviewProxyListener"
.end annotation


# virtual methods
.method public onBackButtonAlphaChanged(FZ)V
    .locals 0
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .line 549
    return-void
.end method

.method public onConnectionChanged(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .line 544
    return-void
.end method

.method public onInteractionFlagsChanged(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 546
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 0
    .param p1, "fromHome"    # Z

    .line 547
    return-void
.end method

.method public onQuickScrubStarted()V
    .locals 0

    .line 548
    return-void
.end method

.method public onQuickStepStarted()V
    .locals 0

    .line 545
    return-void
.end method
