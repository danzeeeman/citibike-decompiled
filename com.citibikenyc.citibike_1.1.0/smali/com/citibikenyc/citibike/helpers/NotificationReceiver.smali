.class public Lcom/citibikenyc/citibike/helpers/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "NotifyReceiver"


# instance fields
.field nm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 24
    const-string v7, "NotifyReceiver"

    const-string v8, "Push Alert NotificationReceiver received intent."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/citibikenyc/citibike/CitibikeApplication;->getInstance()Lcom/citibikenyc/citibike/CitibikeApplication;

    move-result-object v0

    .line 29
    .local v0, app:Lcom/citibikenyc/citibike/CitibikeApplication;
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/CitibikeApplication;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/citibikenyc/citibike/helpers/NotificationReceiver;->nm:Landroid/app/NotificationManager;

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 37
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 40
    .local v6, notificationId:I
    :try_start_0
    const-string v7, "NOTIFICATION_ID"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 45
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/citibikenyc/citibike/MainActivity;

    invoke-direct {v4, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v4, i:Landroid/content/Intent;
    const/high16 v7, 0x2400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    const-string v7, "SHOW_TIMER"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-static {p1, v10, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 50
    .local v2, contentIntent:Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification;

    const v7, 0x7f020082

    const-string v8, "ALARM_TICKER"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 52
    .local v5, notification:Landroid/app/Notification;
    iget v7, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/app/Notification;->defaults:I

    .line 53
    iget v7, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/app/Notification;->defaults:I

    .line 54
    iget v7, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v5, Landroid/app/Notification;->defaults:I

    .line 55
    iget v7, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v5, Landroid/app/Notification;->flags:I

    .line 58
    const-string v7, "ALARM_TITLE"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ALARM_SUBTITLE"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 57
    invoke-virtual {v5, p1, v7, v8, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 59
    iget-object v7, p0, Lcom/citibikenyc/citibike/helpers/NotificationReceiver;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v7, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 61
    const-string v7, "NotifyReceiver"

    const-string v8, "Notification intent handling completed."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v4           #i:Landroid/content/Intent;
    .end local v5           #notification:Landroid/app/Notification;
    :catch_0
    move-exception v3

    .line 42
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "NotifyReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to process alarm with id: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "NOTIFICATION_ID"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
