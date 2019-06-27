.class Lcom/android/systemui/util/MdmLogger$1;
.super Ljava/lang/Object;
.source "MdmLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$label:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/util/MdmLogger$1;->val$label:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/systemui/util/MdmLogger$1;->val$label:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sarah/SarahManager;->notifyUnlock(Ljava/lang/String;)V

    .line 117
    return-void
.end method
