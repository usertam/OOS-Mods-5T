.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInlineImageResolver$CTw2FjQi45CHXQq7kg-n5N4AYsM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInlineImageResolver$CTw2FjQi45CHXQq7kg-n5N4AYsM;->f$0:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationInlineImageResolver$CTw2FjQi45CHXQq7kg-n5N4AYsM;->f$0:Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;->lambda$preloadImages$0(Lcom/android/systemui/statusbar/notification/NotificationInlineImageResolver;Landroid/net/Uri;)V

    return-void
.end method
