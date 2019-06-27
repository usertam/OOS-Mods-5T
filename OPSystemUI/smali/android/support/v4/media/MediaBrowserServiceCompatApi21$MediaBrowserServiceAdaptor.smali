.class Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;
.super Landroid/service/media/MediaBrowserService;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptor"
.end annotation


# instance fields
.field final mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceWrapper"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    .line 113
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 114
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->attachBaseContext(Landroid/content/Context;)V

    .line 115
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    .line 116
    return-void
.end method


# virtual methods
.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 4
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .line 121
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    invoke-interface {v0, p1, p2, v2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;

    move-result-object v0

    .line 123
    .local v0, "browserRoot":Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    iget-object v2, v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;->mRootId:Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    return-object v1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 129
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V

    .line 130
    return-void
.end method
