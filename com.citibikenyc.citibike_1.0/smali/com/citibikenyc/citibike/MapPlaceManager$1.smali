.class Lcom/citibikenyc/citibike/MapPlaceManager$1;
.super Ljava/lang/Object;
.source "MapPlaceManager.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/MapPlaceManager;->onPlaceSelection(Lcom/citibikenyc/citibike/models/Place;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

.field private final synthetic val$place:Lcom/citibikenyc/citibike/models/Place;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/models/Place;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$1;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    iput-object p2, p0, Lcom/citibikenyc/citibike/MapPlaceManager$1;->val$place:Lcom/citibikenyc/citibike/models/Place;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onFinish()V
    .locals 5

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager$1;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    #calls: Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V
    invoke-static {v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$0(Lcom/citibikenyc/citibike/MapPlaceManager;)V

    .line 166
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager$1;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager$1;->val$place:Lcom/citibikenyc/citibike/models/Place;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 168
    .local v0, currentMarkerIndex:I
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager$1;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$1(Lcom/citibikenyc/citibike/MapPlaceManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager$1;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    new-instance v3, Lcom/citibikenyc/citibike/models/Place;

    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager$1;->val$place:Lcom/citibikenyc/citibike/models/Place;

    invoke-direct {v3, v4}, Lcom/citibikenyc/citibike/models/Place;-><init>(Lcom/citibikenyc/citibike/models/Place;)V

    #calls: Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v2, v3, v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$2(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager$1;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$1(Lcom/citibikenyc/citibike/MapPlaceManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 175
    .local v1, m:Lcom/google/android/gms/maps/model/Marker;
    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 162
    :cond_1
    monitor-exit p0

    .line 179
    return-void

    .line 162
    .end local v0           #currentMarkerIndex:I
    .end local v1           #m:Lcom/google/android/gms/maps/model/Marker;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
