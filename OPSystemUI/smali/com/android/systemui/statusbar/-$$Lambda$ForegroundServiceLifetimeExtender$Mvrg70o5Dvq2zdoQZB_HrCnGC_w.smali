.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$ForegroundServiceLifetimeExtender$Mvrg70o5Dvq2zdoQZB_HrCnGC_w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/NotificationData$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$ForegroundServiceLifetimeExtender$Mvrg70o5Dvq2zdoQZB_HrCnGC_w;->f$0:Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$ForegroundServiceLifetimeExtender$Mvrg70o5Dvq2zdoQZB_HrCnGC_w;->f$1:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$ForegroundServiceLifetimeExtender$Mvrg70o5Dvq2zdoQZB_HrCnGC_w;->f$0:Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$ForegroundServiceLifetimeExtender$Mvrg70o5Dvq2zdoQZB_HrCnGC_w;->f$1:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;->lambda$setShouldManageLifetime$0(Lcom/android/systemui/statusbar/ForegroundServiceLifetimeExtender;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method
