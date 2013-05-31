.class public Lcom/citibikenyc/citibike/BikeTimer;
.super Lcom/citibikenyc/citibike/helpers/NotifyTimer;
.source "BikeTimer.java"

# interfaces
.implements Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;
    }
.end annotation


# static fields
.field public static final MAX_TIME:J = 0x2254d18L

.field private static final MAX_TIMER_ID:Ljava/lang/String; = "MAX_TIMER_ID"

.field private static final SETTINGS_PREFS:Ljava/lang/String; = "SETTINGS_PREFS"

.field private static final START_TIME:Ljava/lang/String; = "START_TIME"

.field protected static final TAG:Ljava/lang/String; = "BikeTimer"

.field private static final TIMER_TIME:Ljava/lang/String; = "TIMER_TIME"

.field private static final timerHighlight:Landroid/text/style/ForegroundColorSpan;


# instance fields
.field private bikeTimerAlarmId:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mLargeTimerView:Landroid/widget/TextView;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field public mTimerView:Landroid/widget/TextView;

.field private run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

.field private timerAlarmInMinutes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#626060"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/citibikenyc/citibike/BikeTimer;->timerHighlight:Landroid/text/style/ForegroundColorSpan;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/helpers/NotifyTimer;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    .line 40
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;

    .line 43
    iput-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    .line 48
    iput-wide v6, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    .line 49
    const/16 v4, 0x1e

    iput v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    .line 119
    iput-object p1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    .line 120
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->mListeners:Ljava/util/Set;

    .line 123
    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    const-string v5, "SETTINGS_PREFS"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 124
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v4, "START_TIME"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 125
    .local v2, startTime:J
    const-string v4, "TIMER_TIME"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, alarmTime:I
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/BikeTimer;->setTimerTime(I)V

    .line 129
    invoke-virtual {p0, v2, v3}, Lcom/citibikenyc/citibike/BikeTimer;->restart(J)V

    .line 131
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/BikeTimer;Landroid/widget/TextView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerView(Landroid/widget/TextView;III)V

    return-void
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/BikeTimer;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/BikeTimer;Landroid/widget/TextView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerSpannableView(Landroid/widget/TextView;III)V

    return-void
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/BikeTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/citibikenyc/citibike/BikeTimer;->notifyMax()V

    return-void
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/BikeTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/citibikenyc/citibike/BikeTimer;->notifyDone()V

    return-void
.end method

.method static synthetic access$5(Lcom/citibikenyc/citibike/BikeTimer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private notifyDone()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    return-void

    .line 187
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;

    .line 188
    .local v0, listener:Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;
    invoke-interface {v0}, Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;->onTimerDone()V

    goto :goto_0
.end method

.method private notifyMax()V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->stop()V

    .line 195
    iget-object v1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    return-void

    .line 195
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;

    .line 196
    .local v0, listener:Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;
    invoke-interface {v0}, Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;->onTimerMaxed()V

    goto :goto_0
.end method

.method private setTimerText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .parameter "textView"
    .parameter "timeString"

    .prologue
    const/4 v2, 0x2

    .line 394
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 395
    const/high16 v0, 0x42f0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 400
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void

    .line 397
    :cond_0
    const/high16 v0, 0x4298

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private updateTimerSpannableView(Landroid/widget/TextView;III)V
    .locals 11
    .parameter "textView"
    .parameter "seconds"
    .parameter "minutes"
    .parameter "hours"

    .prologue
    const/16 v10, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 217
    if-nez p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v1, 0x5

    .line 222
    .local v1, spanLength:I
    const/4 v0, 0x0

    .line 225
    .local v0, highlightLength:I
    if-lez p4, :cond_1

    .line 226
    const/4 v1, 0x7

    .line 227
    const/4 v0, 0x7

    .line 228
    const-string v7, "%d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, timeString:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/citibikenyc/citibike/BikeTimer;->setTimerText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 237
    .local v2, spannable:Landroid/text/Spannable;
    sget-object v4, Lcom/citibikenyc/citibike/BikeTimer;->timerHighlight:Landroid/text/style/ForegroundColorSpan;

    sub-int v5, v1, v0

    const/16 v6, 0x12

    invoke-interface {v2, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 230
    .end local v2           #spannable:Landroid/text/Spannable;
    .end local v3           #timeString:Ljava/lang/String;
    :cond_1
    const-string v7, "%02d:%02d"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .restart local v3       #timeString:Ljava/lang/String;
    if-lt p3, v10, :cond_2

    const/4 v0, 0x5

    :goto_2
    goto :goto_1

    :cond_2
    if-lez p3, :cond_3

    const/4 v0, 0x4

    goto :goto_2

    :cond_3
    if-lt p2, v10, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    if-lez p2, :cond_5

    move v0, v5

    goto :goto_2

    :cond_5
    move v0, v6

    goto :goto_2
.end method

.method private updateTimerView(Landroid/widget/TextView;III)V
    .locals 7
    .parameter "textView"
    .parameter "seconds"
    .parameter "minutes"
    .parameter "hours"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 201
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 207
    :cond_0
    if-lez p4, :cond_1

    .line 208
    const-string v1, "%d:%02d:%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, timeString:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    .end local v0           #timeString:Ljava/lang/String;
    :cond_1
    const-string v1, "%d:%02d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #timeString:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public addAlarm()V
    .locals 11

    .prologue
    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 322
    .local v9, notificationTime:J
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, alarmMessage:Ljava/lang/String;
    const-string v1, "Citi Bike Reminder"

    .line 327
    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    iget v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    int-to-long v5, v0

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    mul-long/2addr v5, v7

    add-long/2addr v5, v9

    iget v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    int-to-long v7, v0

    move-object v0, p0

    move-object v3, v2

    .line 326
    invoke-super/range {v0 .. v8}, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->addAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    .line 330
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0129

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    const-string v1, "Citi Bike Reminder"

    .line 333
    const-string v4, "MAX_TIMER_ID"

    const-wide/32 v5, 0x2254d18

    add-long/2addr v5, v9

    iget v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    int-to-long v7, v0

    move-object v0, p0

    move-object v3, v2

    .line 332
    invoke-super/range {v0 .. v8}, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->addAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    .line 334
    return-void
.end method

.method public addUpdateListener(Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public cancelAlarm()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 338
    const-string v0, "MAX_TIMER_ID"

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public getActionBarTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimerTime()J
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public removeUpdateListener(Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 275
    const-string v0, "BikeTimer"

    const-string v1, "Resetting timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerView(Landroid/widget/TextView;III)V

    .line 278
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerSpannableView(Landroid/widget/TextView;III)V

    .line 282
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    .line 283
    return-void
.end method

.method public restart(J)V
    .locals 4
    .parameter "starttime"

    .prologue
    .line 174
    const-string v0, "BikeTimer"

    const-string v1, "Restarting timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-wide p1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    .line 177
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->stop()V

    .line 182
    :cond_0
    new-instance v0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    iget v1, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;-><init>(Lcom/citibikenyc/citibike/BikeTimer;JI)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    .line 183
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method

.method public setActionBarTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    .line 345
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 9
    .parameter "tv"

    .prologue
    .line 349
    const-string v5, "BikeTimer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEBUG: addTextView:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iput-object p1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    .line 352
    iget-wide v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    sub-long v1, v5, v7

    .line 355
    .local v1, millis:J
    const-wide/32 v5, 0x2254d18

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 356
    const-wide/32 v1, 0x2254d18

    .line 359
    :cond_0
    const-wide/16 v5, 0x3e8

    div-long v5, v1, v5

    long-to-int v4, v5

    .line 360
    .local v4, seconds:I
    div-int/lit16 v0, v4, 0xe10

    .line 361
    .local v0, hours:I
    mul-int/lit16 v5, v0, 0xe10

    sub-int/2addr v4, v5

    .line 362
    div-int/lit8 v3, v4, 0x3c

    .line 363
    .local v3, minutes:I
    mul-int/lit8 v5, v3, 0x3c

    sub-int/2addr v4, v5

    .line 365
    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    invoke-direct {p0, v5, v4, v3, v0}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerView(Landroid/widget/TextView;III)V

    .line 367
    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 368
    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    invoke-direct {p0, v5, v4, v3, v0}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerSpannableView(Landroid/widget/TextView;III)V

    .line 371
    .end local v0           #hours:I
    .end local v1           #millis:J
    .end local v3           #minutes:I
    .end local v4           #seconds:I
    :cond_1
    return-void
.end method

.method public setTimerTime(I)V
    .locals 2
    .parameter "minutes"

    .prologue
    .line 301
    iput p1, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    .line 303
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "BikeTimer"

    const-string v1, "Updating alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "BikeTimer"

    const-string v1, "Cancelling alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 309
    const-string v0, "MAX_TIMER_ID"

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    .line 313
    :cond_0
    return-void
.end method

.method public start()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 141
    const-string v4, "BikeTimer"

    const-string v5, "Starting timer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-wide v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 143
    .local v2, starttime:J
    :goto_0
    iput-wide v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    .line 145
    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    if-eqz v4, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->stop()V

    .line 150
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "Timer"

    const-string v6, "TimerStart"

    const-string v7, ""

    iget v8, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->addAlarm()V

    .line 156
    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    const-string v5, "SETTINGS_PREFS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 157
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "START_TIME"

    iget-wide v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string v4, "TIMER_TIME"

    iget v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    new-instance v4, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    iget v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    invoke-direct {v4, p0, v2, v3, v5}, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;-><init>(Lcom/citibikenyc/citibike/BikeTimer;JI)V

    iput-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    .line 165
    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    return-void

    .line 142
    .end local v0           #prefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharedPrefs:Landroid/content/SharedPreferences;
    .end local v2           #starttime:J
    :cond_1
    iget-wide v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 246
    const-string v2, "BikeTimer"

    const-string v3, "Stopping timer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->stopTimer()V

    .line 250
    iget-object v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iput-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    .line 253
    iget-object v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 254
    const-string v2, "BikeTimer"

    const-string v3, "Cancelling alarm"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 256
    const-string v2, "MAX_TIMER_ID"

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 257
    iput-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    const-string v3, "SETTINGS_PREFS"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "START_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string v2, "TIMER_TIME"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->start()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->stop()V

    goto :goto_0
.end method
