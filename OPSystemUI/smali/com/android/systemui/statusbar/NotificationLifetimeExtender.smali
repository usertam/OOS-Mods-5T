.class public interface abstract Lcom/android/systemui/statusbar/NotificationLifetimeExtender;
.super Ljava/lang/Object;
.source "NotificationLifetimeExtender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;
    }
.end annotation


# virtual methods
.method public abstract setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V
.end method

.method public abstract setShouldManageLifetime(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
.end method

.method public abstract shouldExtendLifetime(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
.end method

.method public shouldExtendLifetimeForPendingNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "pendingEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 38
    const/4 v0, 0x0

    return v0
.end method
