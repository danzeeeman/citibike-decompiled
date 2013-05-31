.class Lcom/citibikenyc/citibike/MapPlaceManager$2;
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


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/MapPlaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$2;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager$2;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$3(Lcom/citibikenyc/citibike/MapPlaceManager;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 203
    return-void
.end method
