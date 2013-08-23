.class Lcom/citibikenyc/citibike/PlaceDataManager$3;
.super Ljava/lang/Object;
.source "PlaceDataManager.java"

# interfaces
.implements Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/PlaceDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/PlaceDataManager;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/PlaceDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/PlaceDataManager$3;->this$0:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaceDataRefreshParseTaskFailure()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onPlaceDataRefreshParseTaskSuccess(Ljava/lang/Long;I)V
    .locals 3
    .parameter "result"
    .parameter "placeUpdateType"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager$3;->this$0:Lcom/citibikenyc/citibike/PlaceDataManager;

    #getter for: Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J
    invoke-static {v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->access$2(Lcom/citibikenyc/citibike/PlaceDataManager;)[J

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, v0, p2

    .line 311
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager$3;->this$0:Lcom/citibikenyc/citibike/PlaceDataManager;

    const/4 v1, 0x1

    #calls: Lcom/citibikenyc/citibike/PlaceDataManager;->notifyObservers(Z)V
    invoke-static {v0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->access$3(Lcom/citibikenyc/citibike/PlaceDataManager;Z)V

    .line 313
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager$3;->this$0:Lcom/citibikenyc/citibike/PlaceDataManager;

    #getter for: Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z
    invoke-static {v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->access$4(Lcom/citibikenyc/citibike/PlaceDataManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager$3;->this$0:Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->scheduleUpdates()V

    .line 316
    :cond_0
    return-void
.end method
