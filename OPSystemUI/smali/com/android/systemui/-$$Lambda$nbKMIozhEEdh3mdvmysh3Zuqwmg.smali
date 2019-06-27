.class public final synthetic Lcom/android/systemui/-$$Lambda$nbKMIozhEEdh3mdvmysh3Zuqwmg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/OverviewProxyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$nbKMIozhEEdh3mdvmysh3Zuqwmg;->f$0:Lcom/android/systemui/OverviewProxyService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$nbKMIozhEEdh3mdvmysh3Zuqwmg;->f$0:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->cleanupAfterDeath()V

    return-void
.end method
