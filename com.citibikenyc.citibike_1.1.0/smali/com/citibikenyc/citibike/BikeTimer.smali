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
    .line 35
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#626060"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/citibikenyc/citibike/BikeTimer;->timerHighlight:Landroid/text/style/ForegroundColorSpan;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/helpers/NotifyTimer;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    .line 39
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;

    .line 42
    iput-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    .line 47
    iput-wide v6, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    .line 48
    const/16 v4, 0x1e

    iput v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    .line 118
    iput-object p1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    .line 119
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->mListeners:Ljava/util/Set;

    .line 122
    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    const-string v5, "SETTINGS_PREFS"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v4, "START_TIME"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 124
    .local v2, startTime:J
    const-string v4, "TIMER_TIME"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, alarmTime:I
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/BikeTimer;->setTimerTime(I)V

    .line 128
    invoke-virtual {p0, v2, v3}, Lcom/citibikenyc/citibike/BikeTimer;->restart(J)V

    .line 130
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
    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerView(Landroid/widget/TextView;III)V

    return-void
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/BikeTimer;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
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
    .line 213
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerSpannableView(Landroid/widget/TextView;III)V

    return-void
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/BikeTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/citibikenyc/citibike/BikeTimer;->notifyMax()V

    return-void
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/BikeTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/citibikenyc/citibike/BikeTimer;->notifyDone()V

    return-void
.end method

.method static synthetic access$5(Lcom/citibikenyc/citibike/BikeTimer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private notifyDone()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    return-void

    .line 184
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;

    .line 185
    .local v0, listener:Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;
    invoke-interface {v0}, Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;->onTimerDone()V

    goto :goto_0
.end method

.method private notifyMax()V
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->stop()V

    .line 192
    iget-object v1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    return-void

    .line 192
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;

    .line 193
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

    .line 385
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 386
    const/high16 v0, 0x42f0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 391
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    return-void

    .line 388
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

    .line 214
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v1, 0x5

    .line 219
    .local v1, spanLength:I
    const/4 v0, 0x0

    .line 222
    .local v0, highlightLength:I
    if-lez p4, :cond_1

    .line 223
    const/4 v1, 0x7

    .line 224
    const/4 v0, 0x7

    .line 225
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

    .line 231
    .local v3, timeString:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/citibikenyc/citibike/BikeTimer;->setTimerText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 234
    .local v2, spannable:Landroid/text/Spannable;
    sget-object v4, Lcom/citibikenyc/citibike/BikeTimer;->timerHighlight:Landroid/text/style/ForegroundColorSpan;

    sub-int v5, v1, v0

    const/16 v6, 0x12

    invoke-interface {v2, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 227
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

    .line 228
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

    .line 198
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 204
    :cond_0
    if-lez p4, :cond_1

    .line 205
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

    .line 210
    .local v0, timeString:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
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
    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 314
    .local v9, notificationTime:J
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, alarmMessage:Ljava/lang/String;
    const-string v1, "Citi Bike Reminder"

    .line 319
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

    .line 318
    invoke-super/range {v0 .. v8}, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->addAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    .line 322
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0133

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 324
    const-string v1, "Citi Bike Reminder"

    .line 325
    const-string v4, "MAX_TIMER_ID"

    const-wide/32 v5, 0x2254d18

    add-long/2addr v5, v9

    iget v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    int-to-long v7, v0

    move-object v0, p0

    move-object v3, v2

    .line 324
    invoke-super/range {v0 .. v8}, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->addAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    .line 326
    return-void
.end method

.method public addUpdateListener(Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public cancelAlarm()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 330
    const-string v0, "MAX_TIMER_ID"

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public getActionBarTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimerTime()J
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public removeUpdateListener(Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 382
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerView(Landroid/widget/TextView;III)V

    .line 272
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerSpannableView(Landroid/widget/TextView;III)V

    .line 276
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    .line 277
    return-void
.end method

.method public restart(J)V
    .locals 4
    .parameter "starttime"

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    .line 174
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->stop()V

    .line 179
    :cond_0
    new-instance v0, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    iget v1, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;-><init>(Lcom/citibikenyc/citibike/BikeTimer;JI)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    .line 180
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    return-void
.end method

.method public setActionBarTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    .line 337
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 9
    .parameter "tv"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    .line 343
    iget-wide v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    sub-long v1, v5, v7

    .line 346
    .local v1, millis:J
    const-wide/32 v5, 0x2254d18

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 347
    const-wide/32 v1, 0x2254d18

    .line 350
    :cond_0
    const-wide/16 v5, 0x3e8

    div-long v5, v1, v5

    long-to-int v4, v5

    .line 351
    .local v4, seconds:I
    div-int/lit16 v0, v4, 0xe10

    .line 352
    .local v0, hours:I
    mul-int/lit16 v5, v0, 0xe10

    sub-int/2addr v4, v5

    .line 353
    div-int/lit8 v3, v4, 0x3c

    .line 354
    .local v3, minutes:I
    mul-int/lit8 v5, v3, 0x3c

    sub-int/2addr v4, v5

    .line 356
    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mTimerView:Landroid/widget/TextView;

    invoke-direct {p0, v5, v4, v3, v0}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerView(Landroid/widget/TextView;III)V

    .line 358
    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 359
    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mLargeTimerView:Landroid/widget/TextView;

    invoke-direct {p0, v5, v4, v3, v0}, Lcom/citibikenyc/citibike/BikeTimer;->updateTimerSpannableView(Landroid/widget/TextView;III)V

    .line 362
    .end local v0           #hours:I
    .end local v1           #millis:J
    .end local v3           #minutes:I
    .end local v4           #seconds:I
    :cond_1
    return-void
.end method

.method public setTimerTime(I)V
    .locals 1
    .parameter "minutes"

    .prologue
    .line 295
    iput p1, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    .line 297
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 301
    const-string v0, "MAX_TIMER_ID"

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    .line 305
    :cond_0
    return-void
.end method

.method public start()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 140
    iget-wide v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 141
    .local v2, starttime:J
    :goto_0
    iput-wide v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    .line 143
    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->stop()V

    .line 148
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

    .line 151
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->addAlarm()V

    .line 154
    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    const-string v5, "SETTINGS_PREFS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 155
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "START_TIME"

    iget-wide v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->mStartTime:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 158
    const-string v4, "TIMER_TIME"

    iget v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    new-instance v4, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    iget v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->timerAlarmInMinutes:I

    invoke-direct {v4, p0, v2, v3, v5}, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;-><init>(Lcom/citibikenyc/citibike/BikeTimer;JI)V

    iput-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    .line 163
    iget-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void

    .line 140
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

    .line 245
    iget-object v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;->stopTimer()V

    .line 246
    iget-object v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    iput-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    .line 249
    iget-object v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 251
    const-string v2, "MAX_TIMER_ID"

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/BikeTimer;->cancelAlarm(Ljava/lang/String;)Z

    .line 252
    iput-object v4, p0, Lcom/citibikenyc/citibike/BikeTimer;->bikeTimerAlarmId:Ljava/lang/String;

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/BikeTimer;->mContext:Landroid/content/Context;

    const-string v3, "SETTINGS_PREFS"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 257
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "START_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 260
    const-string v2, "TIMER_TIME"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeTimer;->run:Lcom/citibikenyc/citibike/BikeTimer$BikeTimerRunner;

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->start()V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/BikeTimer;->stop()V

    goto :goto_0
.end method
