.class Lcom/citibikenyc/citibike/MapPlaceManager$5;
.super Ljava/lang/Object;
.source "MapPlaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/MapPlaceManager;->onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

.field private final synthetic val$droppedPin:Lcom/citibikenyc/citibike/models/Place;

.field private final synthetic val$latLng:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/google/android/gms/maps/model/LatLng;Lcom/citibikenyc/citibike/models/Place;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    iput-object p2, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->val$latLng:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->val$droppedPin:Lcom/citibikenyc/citibike/models/Place;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/MapPlaceManager$5;)Lcom/citibikenyc/citibike/MapPlaceManager;
    .locals 1
    .parameter

    .prologue
    .line 956
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 960
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v1, v1, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 961
    .local v0, geocoder:Landroid/location/Geocoder;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->val$latLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->val$latLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 963
    .local v7, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 964
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 966
    .local v6, address:Landroid/location/Address;
    if-eqz v6, :cond_0

    .line 967
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v10

    .line 968
    .local v10, label:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v8

    .line 970
    .local v8, description:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 971
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->val$droppedPin:Lcom/citibikenyc/citibike/models/Place;

    iput-object v10, v1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .line 972
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->val$droppedPin:Lcom/citibikenyc/citibike/models/Place;

    iput-object v8, v1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 974
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->val$droppedPin:Lcom/citibikenyc/citibike/models/Place;

    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;
    invoke-static {v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$5(Lcom/citibikenyc/citibike/MapPlaceManager;)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;
    invoke-static {v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$4(Lcom/citibikenyc/citibike/MapPlaceManager;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager$5;->val$droppedPin:Lcom/citibikenyc/citibike/models/Place;

    invoke-direct {v2, p0, v3}, Lcom/citibikenyc/citibike/MapPlaceManager$5$1;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager$5;Lcom/citibikenyc/citibike/models/Place;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    .end local v0           #geocoder:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v8           #description:Ljava/lang/String;
    .end local v10           #label:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v9

    .line 995
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
