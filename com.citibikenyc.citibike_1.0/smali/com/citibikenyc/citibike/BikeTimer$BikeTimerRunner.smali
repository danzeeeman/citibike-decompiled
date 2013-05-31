.class Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;
.super Ljava/lang/Object;
.source "BikeTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/BikeTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BikeTimerRunner"
.end annotation


# instance fields
.field private mMaxNotified:Z

.field private mNotified:Z

.field private mStop:Z

.field private mTimerAlarm:I

.field private mTimerStartTime:J

.field private millis:J

.field final synthetic this$0:Lcom/citibikenyc/citibike/BikeTimer;


# direct methods
.method public constructor <init>(Lcom/citibikenyc/citibike/BikeTimer;JI)V
    .locals 2
    .parameter
    .parameter "timerStartTime"
    .parameter "timerAlarm"

    .prologue
    const-wide/16 v0, 0x0

    .line 60
    iput-object p1, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->this$0:Lcom/citibikenyc/citibike/BikeTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide v0, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->millis:J

    .line 57
    iput-wide v0, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mTimerStartTime:J

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mTimerAlarm:I

    .line 61
    iput-wide p2, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mTimerStartTime:J

    .line 62
    iput p4, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mTimerAlarm:I

    .line 63
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const-wide/32 v7, 0x2254d18

    const-wide/16 v11, 0x3e8

    .line 76
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mStop:Z

    if-eqz v3, :cond_0

    .line 114
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mTimerStartTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->millis:J

    .line 82
    iget-wide v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->millis:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_1

    .line 83
    iput-wide v7, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->millis:J

    .line 86
    :cond_1
    iget-wide v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->millis:J

    div-long/2addr v3, v11

    long-to-int v2, v3

    .line 87
    .local v2, seconds:I
    div-int/lit16 v0, v2, 0xe10

    .line 88
    .local v0, hours:I
    mul-int/lit16 v3, v0, 0xe10

    sub-int/2addr v2, v3

    .line 89
    div-int/lit8 v1, v2, 0x3c

    .line 90
    .local v1, minutes:I
    mul-int/lit8 v3, v1, 0x3c

    sub-int/2addr v2, v3

    .line 92
    iget-object v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->this$0:Lcom/citibikenyc/citibike/BikeTimer;

    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->this$0:Lcom/citibikenyc/citibike/BikeTimer;

    iget-object v4, v4, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    #calls: Lcom/citibikenyc/citibike/BikeTimer;->updateTimerView(Landroid/widget/TextView;III)V
    invoke-static {v3, v4, v2, v1, v0}, Lcom/citibikenyc/citibike/BikeTimer;->access$0(Lcom/citibikenyc/citibike/BikeTimer;Landroid/widget/TextView;III)V

    .line 94
    iget-object v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->this$0:Lcom/citibikenyc/citibike/BikeTimer;

    #getter for: Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/citibikenyc/citibike/BikeTimer;->access$1(Lcom/citibikenyc/citibike/BikeTimer;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->this$0:Lcom/citibikenyc/citibike/BikeTimer;

    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->this$0:Lcom/citibikenyc/citibike/BikeTimer;

    #getter for: Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/citibikenyc/citibike/BikeTimer;->access$1(Lcom/citibikenyc/citibike/BikeTimer;)Landroid/widget/TextView;

    move-result-object v4

    #calls: Lcom/citibikenyc/citibike/BikeTimer;->updateTimerSpannableView(Landroid/widget/TextView;III)V
    invoke-static {v3, v4, v2, v1, v0}, Lcom/citibikenyc/citibike/BikeTimer;->access$2(Lcom/citibikenyc/citibike/BikeTimer;Landroid/widget/TextView;III)V

    .line 98
    :cond_2
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mMaxNotified:Z

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->millis:J

    cmp-long v3, v3, v7

    if-ltz v3, :cond_3

    .line 99
    iput-boolean v9, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mMaxNotified:Z

    .line 100
    iget-object v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->this$0:Lcom/citibikenyc/citibike/BikeTimer;

    #calls: Lcom/citibikenyc/citibike/BikeTimer;->notifyMax()V
    invoke-static {v3}, Lcom/citibikenyc/citibike/BikeTimer;->access$3(Lcom/citibikenyc/citibike/BikeTimer;)V

    goto :goto_0

    .line 102
    :cond_3
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mNotified:Z

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->millis:J

    iget v5, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mTimerAlarm:I

    mul-int/lit16 v5, v5, 0x3e8

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    .line 103
    iput-boolean v9, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mNotified:Z

    .line 106
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Timer"

    const-string v5, "AlarmTriggered"

    const-string v6, "AlarmTimeSet"

    iget-wide v7, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mTimerStartTime:J

    div-long/2addr v7, v11

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    iget-object v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->this$0:Lcom/citibikenyc/citibike/BikeTimer;

    #calls: Lcom/citibikenyc/citibike/BikeTimer;->notifyDone()V
    invoke-static {v3}, Lcom/citibikenyc/citibike/BikeTimer;->access$4(Lcom/citibikenyc/citibike/BikeTimer;)V

    .line 112
    :cond_4
    iget-object v3, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->this$0:Lcom/citibikenyc/citibike/BikeTimer;

    #getter for: Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/citibikenyc/citibike/BikeTimer;->access$5(Lcom/citibikenyc/citibike/BikeTimer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public stopTimer()V
    .locals 8

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mStop:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->millis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "Timer"

    const-string v2, "Stop"

    const-string v3, "TimeElapsed"

    iget-wide v4, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->millis:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->mStop:Z

    .line 72
    return-void
.end method
