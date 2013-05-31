.class Lcom/citibikenyc/citibike/MapPlaceManager$5$1;
.super Ljava/lang/Object;
.source "MapPlaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/MapPlaceManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/citibikenyc/citibike/MapPlaceManager$5;

.field private final synthetic val$droppedPin:Lcom/citibikenyc/citibike/models/Place;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/MapPlaceManager$5;Lcom/citibikenyc/citibike/models/Place;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;->this$1:Lcom/citibikenyc/citibike/MapPlaceManager$5;

    iput-object p2, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;->val$droppedPin:Lcom/citibikenyc/citibike/models/Place;

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;->this$1:Lcom/citibikenyc/citibike/MapPlaceManager$5;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager$5;->access$0(Lcom/citibikenyc/citibike/MapPlaceManager$5;)Lcom/citibikenyc/citibike/MapPlaceManager;

    move-result-object v0

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$3(Lcom/citibikenyc/citibike/MapPlaceManager;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;->this$1:Lcom/citibikenyc/citibike/MapPlaceManager$5;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager$5;->access$0(Lcom/citibikenyc/citibike/MapPlaceManager$5;)Lcom/citibikenyc/citibike/MapPlaceManager;

    move-result-object v0

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$3(Lcom/citibikenyc/citibike/MapPlaceManager;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;->this$1:Lcom/citibikenyc/citibike/MapPlaceManager$5;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager$5;->access$0(Lcom/citibikenyc/citibike/MapPlaceManager$5;)Lcom/citibikenyc/citibike/MapPlaceManager;

    move-result-object v0

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$3(Lcom/citibikenyc/citibike/MapPlaceManager;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    .line 981
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;->this$1:Lcom/citibikenyc/citibike/MapPlaceManager$5;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager$5;->access$0(Lcom/citibikenyc/citibike/MapPlaceManager$5;)Lcom/citibikenyc/citibike/MapPlaceManager;

    move-result-object v0

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$3(Lcom/citibikenyc/citibike/MapPlaceManager;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;->this$1:Lcom/citibikenyc/citibike/MapPlaceManager$5;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager$5;->access$0(Lcom/citibikenyc/citibike/MapPlaceManager$5;)Lcom/citibikenyc/citibike/MapPlaceManager;

    move-result-object v0

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$6(Lcom/citibikenyc/citibike/MapPlaceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;->this$1:Lcom/citibikenyc/citibike/MapPlaceManager$5;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager$5;->access$0(Lcom/citibikenyc/citibike/MapPlaceManager$5;)Lcom/citibikenyc/citibike/MapPlaceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;->val$droppedPin:Lcom/citibikenyc/citibike/models/Place;

    #calls: Lcom/citibikenyc/citibike/MapPlaceManager;->updateDetailView(Lcom/citibikenyc/citibike/models/Place;)V
    invoke-static {v0, v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$7(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/models/Place;)V

    .line 988
    :cond_1
    return-void
.end method
