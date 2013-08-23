.class public Lcom/citibikenyc/citibike/helpers/NotifyTimer;
.super Ljava/lang/Object;
.source "NotifyTimer.java"


# static fields
.field public static final ALARM_SUBTITLE:Ljava/lang/String; = "ALARM_SUBTITLE"

.field public static final ALARM_TICKER:Ljava/lang/String; = "ALARM_TICKER"

.field public static final ALARM_TITLE:Ljava/lang/String; = "ALARM_TITLE"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "NOTIFICATION_ID"

.field public static final TIMER_TIME:Ljava/lang/String; = "TIMER_TIME"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "_context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 53
    .local v0, am:Landroid/app/AlarmManager;
    return-object v0
.end method


# virtual methods
.method public addAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 6
    .parameter "alarmTitle"
    .parameter "alarmSubTitle"
    .parameter "alarmTicker"
    .parameter "notificationId"
    .parameter "notificationTime"
    .parameter "timerTime"

    .prologue
    const/4 v5, 0x0

    .line 22
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->mContext:Landroid/content/Context;

    const-class v4, Lcom/citibikenyc/citibike/helpers/NotificationReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v3, "ALARM_TITLE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v3, "ALARM_SUBTITLE"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v3, "ALARM_TICKER"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v3, "NOTIFICATION_ID"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v3, "TIMER_TIME"

    invoke-virtual {v1, v3, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 31
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->mContext:Landroid/content/Context;

    const/high16 v4, 0x1000

    invoke-static {v3, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 33
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 34
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v5, p5, p6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 36
    const/4 v3, 0x1

    return v3
.end method

.method public cancelAlarm(Ljava/lang/String;)Z
    .locals 6
    .parameter "notificationId"

    .prologue
    .line 40
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->mContext:Landroid/content/Context;

    const-class v4, Lcom/citibikenyc/citibike/helpers/NotificationReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 45
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/citibikenyc/citibike/helpers/NotifyTimer;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 46
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 48
    const/4 v3, 0x1

    return v3
.end method
