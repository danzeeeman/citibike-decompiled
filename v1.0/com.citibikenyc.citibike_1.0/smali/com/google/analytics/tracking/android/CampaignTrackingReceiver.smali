.class public final Lcom/google/analytics/tracking/android/CampaignTrackingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CampaignTrackingReceiver.java"


# static fields
.field static final CAMPAIGN_KEY:Ljava/lang/String; = "referrer"

.field static final INSTALL_ACTION:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 40
    const-string v2, "referrer"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, campaign:Ljava/lang/String;
    const-string v2, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/analytics/tracking/android/CampaignTrackingService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "referrer"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
