.class public Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;
.super Ljava/lang/Object;
.source "NotificationInlineImageCache.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver$ImageCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Uri;",
            "Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$purge$0(Ljava/util/Set;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "wantedSet"    # Ljava/util/Set;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 73
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public get(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get: Failed get image from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public hasEntry(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public preload(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->mResolver:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;)V

    .line 55
    .local v0, "newTask":Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationInflater;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache$PreloadImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public purge()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->mResolver:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->getWantedUriSet()Ljava/util/Set;

    move-result-object v0

    .line 73
    .local v0, "wantedSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInlineImageCache$XAyIXys6CV9LgQiy-fuc_Vq0MKE;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInlineImageCache$XAyIXys6CV9LgQiy-fuc_Vq0MKE;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 74
    return-void
.end method

.method public setImageResolver(Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInlineImageCache;->mResolver:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    .line 45
    return-void
.end method
