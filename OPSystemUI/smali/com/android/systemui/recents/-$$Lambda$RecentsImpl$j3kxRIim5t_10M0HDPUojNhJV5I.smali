.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$j3kxRIim5t_10M0HDPUojNhJV5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$j3kxRIim5t_10M0HDPUojNhJV5I;->f$0:Lcom/android/systemui/recents/RecentsImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$j3kxRIim5t_10M0HDPUojNhJV5I;->f$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImpl;->lambda$preloadRecents$0(Lcom/android/systemui/recents/RecentsImpl;)V

    return-void
.end method
