.class public Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;
.super Ljava/lang/Object;
.source "NotificationInlineImageResolver.java"

# interfaces
.implements Lcom/android/internal/widget/ImageResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImageCache:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;

.field private mWantedUriSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageCache"    # Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mImageCache:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mImageCache:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mImageCache:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;->setImageResolver(Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static synthetic lambda$preloadImages$0(Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mImageCache:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;->hasEntry(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mImageCache:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;->preload(Landroid/net/Uri;)V

    .line 107
    :cond_0
    return-void
.end method

.method private retrieveWantedUriSet(Landroid/app/Notification;)V
    .locals 9
    .param p1, "notification"    # Landroid/app/Notification;

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 127
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 128
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    const-string v2, "android.messages"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 133
    .local v2, "messages":[Landroid/os/Parcelable;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 134
    move-object v4, v3

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v4

    .line 135
    .local v4, "messageList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    :goto_0
    if-eqz v4, :cond_3

    .line 136
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 137
    .local v6, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v6}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 138
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v6    # "message":Landroid/app/Notification$MessagingStyle$Message;
    :cond_2
    goto :goto_1

    .line 143
    :cond_3
    const-string v5, "android.messages.historic"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 144
    .local v5, "historicMessages":[Landroid/os/Parcelable;
    if-nez v5, :cond_4

    goto :goto_2

    .line 145
    :cond_4
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v3

    .line 146
    .local v3, "historicList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    :goto_2
    if-eqz v3, :cond_6

    .line 147
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$MessagingStyle$Message;

    .line 148
    .local v7, "historic":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v7}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 149
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v7    # "historic":Landroid/app/Notification$MessagingStyle$Message;
    :cond_5
    goto :goto_3

    .line 154
    :cond_6
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mWantedUriSet:Ljava/util/Set;

    .line 155
    return-void
.end method


# virtual methods
.method getWantedUriSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mWantedUriSet:Ljava/util/Set;

    return-object v0
.end method

.method public hasCache()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mImageCache:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mImageCache:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;->get(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->resolveImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, v1

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadImage: Can\'t load image from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public preloadImages(Landroid/app/Notification;)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->retrieveWantedUriSet(Landroid/app/Notification;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->getWantedUriSet()Ljava/util/Set;

    move-result-object v0

    .line 102
    .local v0, "wantedSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInlineImageResolver$CTw2FjQi45CHXQq7kg-n5N4AYsM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInlineImageResolver$CTw2FjQi45CHXQq7kg-n5N4AYsM;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 108
    return-void
.end method

.method public purgeCache()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mImageCache:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;->purge()V

    .line 118
    return-void
.end method

.method resolveImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
