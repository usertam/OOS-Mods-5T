.class Lcom/android/keyguard/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 403
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    .line 557
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 553
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    .line 554
    goto/16 :goto_2

    .line 548
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3000(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    .line 549
    goto/16 :goto_2

    .line 537
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 540
    :cond_2
    return-void

    .line 538
    :cond_3
    :goto_0
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout delay of slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 543
    goto/16 :goto_2

    .line 531
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSystemReady()V

    .line 532
    goto/16 :goto_2

    .line 522
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 523
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2802(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 525
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_2

    .line 498
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenturningOn()V

    .line 499
    goto/16 :goto_2

    .line 517
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 518
    goto/16 :goto_2

    .line 511
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 512
    goto/16 :goto_2

    .line 507
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2502(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 508
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 509
    goto/16 :goto_2

    .line 504
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 505
    goto/16 :goto_2

    .line 501
    :pswitch_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 502
    goto/16 :goto_2

    .line 493
    :pswitch_b
    const-string v0, "KeyguardUpdateMonitor#handler MSG_SCREEN_TURNED_ON"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 495
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 496
    goto/16 :goto_2

    .line 490
    :pswitch_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 491
    goto/16 :goto_2

    .line 486
    :pswitch_d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;IILandroid/telephony/ServiceState;)V

    .line 488
    goto/16 :goto_2

    .line 480
    :pswitch_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 481
    goto/16 :goto_2

    .line 470
    :pswitch_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 478
    goto/16 :goto_2

    .line 471
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1702(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 472
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "delay handle subinfo change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void

    .line 464
    :pswitch_10
    const-string v0, "KeyguardUpdateMonitor#handler MSG_FACE_UNLOCK_STATE_CHANGED"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_6

    move v1, v2

    nop

    :cond_6
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    .line 466
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 467
    goto/16 :goto_2

    .line 441
    :pswitch_11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 442
    goto/16 :goto_2

    .line 453
    :pswitch_12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedGoingToSleep(I)V

    .line 454
    goto/16 :goto_2

    .line 456
    :pswitch_13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFinishedGoingToSleep(I)V

    .line 457
    goto/16 :goto_2

    .line 459
    :pswitch_14
    const-string v0, "KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedWakingUp()V

    .line 461
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 462
    goto/16 :goto_2

    .line 450
    :pswitch_15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 451
    goto/16 :goto_2

    .line 447
    :pswitch_16
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 448
    goto/16 :goto_2

    .line 435
    :pswitch_17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 436
    goto :goto_2

    .line 444
    :pswitch_18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 445
    goto :goto_2

    .line 438
    :pswitch_19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 439
    goto :goto_2

    .line 432
    :pswitch_1a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/os/IRemoteCallback;)V

    .line 433
    goto :goto_2

    .line 429
    :pswitch_1b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 430
    goto :goto_2

    .line 426
    :pswitch_1c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 427
    goto :goto_2

    .line 423
    :pswitch_1d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$400(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    .line 424
    goto :goto_2

    .line 420
    :pswitch_1e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 421
    goto :goto_2

    .line 415
    :pswitch_1f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 417
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 418
    goto :goto_2

    .line 411
    :pswitch_20
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$100(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 412
    goto :goto_2

    .line 408
    :pswitch_21
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 409
    goto :goto_2

    .line 514
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 515
    nop

    .line 560
    :cond_8
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x130
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x134
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x138
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x13d
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x147
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x257
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2bc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
