.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$iv3ZXz4UNYv0IroYYN1fLGff62s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$iv3ZXz4UNYv0IroYYN1fLGff62s;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    return-void
.end method


# virtual methods
.method public final onSafeToRemove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$iv3ZXz4UNYv0IroYYN1fLGff62s;->f$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->lambda$new$0(Lcom/android/systemui/statusbar/NotificationEntryManager;Ljava/lang/String;)V

    return-void
.end method
