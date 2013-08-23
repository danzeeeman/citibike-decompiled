.class Lcom/citibikenyc/citibike/helpers/MapHelper$1;
.super Ljava/lang/Object;
.source "MapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/helpers/MapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/helpers/MapHelper;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/helpers/MapHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper$1;->this$0:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper$1;->this$0:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->moveToCurrentLocation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper$1;->this$0:Lcom/citibikenyc/citibike/helpers/MapHelper;

    #getter for: Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsFailures:I
    invoke-static {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->access$0(Lcom/citibikenyc/citibike/helpers/MapHelper;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsFailures:I
    invoke-static {v0, v1}, Lcom/citibikenyc/citibike/helpers/MapHelper;->access$1(Lcom/citibikenyc/citibike/helpers/MapHelper;I)V

    .line 201
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper$1;->this$0:Lcom/citibikenyc/citibike/helpers/MapHelper;

    #getter for: Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsFailures:I
    invoke-static {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->access$0(Lcom/citibikenyc/citibike/helpers/MapHelper;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper$1;->this$0:Lcom/citibikenyc/citibike/helpers/MapHelper;

    #getter for: Lcom/citibikenyc/citibike/helpers/MapHelper;->nogpsHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->access$2(Lcom/citibikenyc/citibike/helpers/MapHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper$1;->this$0:Lcom/citibikenyc/citibike/helpers/MapHelper;

    iget-object v1, v1, Lcom/citibikenyc/citibike/helpers/MapHelper;->m_gpsChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper$1;->this$0:Lcom/citibikenyc/citibike/helpers/MapHelper;

    #getter for: Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->access$3(Lcom/citibikenyc/citibike/helpers/MapHelper;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00aa

    const v2, 0x7f0a00ab

    invoke-static {v0, v1, v2}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->showAlert(Landroid/app/Activity;II)V

    .line 206
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper$1;->this$0:Lcom/citibikenyc/citibike/helpers/MapHelper;

    #calls: Lcom/citibikenyc/citibike/helpers/MapHelper;->clearGpsChecker()V
    invoke-static {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->access$4(Lcom/citibikenyc/citibike/helpers/MapHelper;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper$1;->this$0:Lcom/citibikenyc/citibike/helpers/MapHelper;

    #calls: Lcom/citibikenyc/citibike/helpers/MapHelper;->clearGpsChecker()V
    invoke-static {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->access$4(Lcom/citibikenyc/citibike/helpers/MapHelper;)V

    goto :goto_0
.end method
