.class Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;
.super Landroid/os/AsyncTask;
.source "NotificationInlineImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mResolver:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    .line 79
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;->mResolver:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    .line 81
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 89
    .local v1, "target":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;->mResolver:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->resolveImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PreloadImageTask: Resolve failed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
