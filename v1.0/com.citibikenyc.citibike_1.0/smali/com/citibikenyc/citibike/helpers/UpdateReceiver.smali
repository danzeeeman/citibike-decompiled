.class public Lcom/citibikenyc/citibike/helpers/UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "UpdateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    const-string v1, "UpdateReceiver"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/citibikenyc/citibike/PlaceDataManager;->getInstance()Lcom/citibikenyc/citibike/PlaceDataManager;

    move-result-object v0

    .line 18
    .local v0, manager:Lcom/citibikenyc/citibike/PlaceDataManager;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->updateData()V

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    const-string v1, "UpdateReceiver"

    const-string v2, "PlaceDataManager instance is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
