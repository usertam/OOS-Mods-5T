.class public abstract Landroid/support/v7/media/MediaRouter$Callback;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 1891
    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 1909
    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 1900
    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1840
    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1858
    return-void
.end method

.method public onRoutePresentationDisplayChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1882
    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1849
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1800
    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1811
    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p3, "reason"    # I

    .line 1830
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 1831
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1867
    return-void
.end method
