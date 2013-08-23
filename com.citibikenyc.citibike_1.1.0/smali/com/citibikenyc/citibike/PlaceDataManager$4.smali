.class Lcom/citibikenyc/citibike/PlaceDataManager$4;
.super Ljava/lang/Object;
.source "PlaceDataManager.java"

# interfaces
.implements Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;


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
    iput-object p1, p0, Lcom/citibikenyc/citibike/PlaceDataManager$4;->this$0:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScoopDataParseFailure()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onScoopDataParseSuccess()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager$4;->this$0:Lcom/citibikenyc/citibike/PlaceDataManager;

    const/4 v1, 0x1

    #calls: Lcom/citibikenyc/citibike/PlaceDataManager;->notifyObservers(Z)V
    invoke-static {v0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->access$3(Lcom/citibikenyc/citibike/PlaceDataManager;Z)V

    .line 337
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager$4;->this$0:Lcom/citibikenyc/citibike/PlaceDataManager;

    #getter for: Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z
    invoke-static {v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->access$4(Lcom/citibikenyc/citibike/PlaceDataManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager$4;->this$0:Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->scheduleUpdates()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager$4;->this$0:Lcom/citibikenyc/citibike/PlaceDataManager;

    #calls: Lcom/citibikenyc/citibike/PlaceDataManager;->saveScoopLoadTimeStamp()V
    invoke-static {v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->access$5(Lcom/citibikenyc/citibike/PlaceDataManager;)V

    .line 341
    return-void
.end method
