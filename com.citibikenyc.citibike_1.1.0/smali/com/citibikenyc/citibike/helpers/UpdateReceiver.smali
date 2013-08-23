.class public Lcom/citibikenyc/citibike/helpers/UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "UpdateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    invoke-static {}, Lcom/citibikenyc/citibike/PlaceDataManager;->getInstance()Lcom/citibikenyc/citibike/PlaceDataManager;

    move-result-object v0

    .line 16
    .local v0, manager:Lcom/citibikenyc/citibike/PlaceDataManager;
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->updateData()V

    .line 19
    :cond_0
    return-void
.end method
