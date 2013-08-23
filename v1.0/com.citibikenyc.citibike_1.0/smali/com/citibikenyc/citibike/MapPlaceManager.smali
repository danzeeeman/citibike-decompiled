.class public Lcom/citibikenyc/citibike/MapPlaceManager;
.super Ljava/lang/Object;
.source "MapPlaceManager.java"

# interfaces
.implements Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;


# static fields
.field private static final BIKELANE_ZOOM_MINIMUM:F = 14.5f

.field private static final CLUSTER_REMOVE_ZOOM_MINIMUM:F = 13.75f

.field private static final CLUSTER_ZOOM_MINIMUM:F = 14.5f

.field protected static final TAG:Ljava/lang/String; = "MapPlaceManager"

.field private static final ZOOM_IN_VALUE:F = 15.5f


# instance fields
.field private bikeLaneManager:Lcom/citibikenyc/citibike/BikeLaneManager;

.field currentMarkerId:I

.field private currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

.field private endPoint:Lcom/google/android/gms/maps/model/Marker;

.field private endStation:Lcom/google/android/gms/maps/model/Marker;

.field private lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private lastZoom:F

.field public layers:[Z

.field private mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

.field private mButtonLayout:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field private mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

.field mInflater:Landroid/view/LayoutInflater;

.field mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mOverlay:Landroid/view/View;

.field public mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

.field private mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

.field private markerIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pinMarker:Lcom/google/android/gms/maps/model/Marker;

.field private routePolyLine:Lcom/google/android/gms/maps/model/Polyline;

.field private showingDetail:Z

.field private showingRoute:Z

.field private startPoint:Lcom/google/android/gms/maps/model/Marker;

.field private startStation:Lcom/google/android/gms/maps/model/Marker;

.field private visibleLanes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private visibleMarkers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/GoogleMap;Lcom/citibikenyc/citibike/PlaceDataManager;Lcom/citibikenyc/citibike/interfaces/FavoriteListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;)V
    .locals 4
    .parameter "context"
    .parameter "overlayView"
    .parameter "buttonLayout"
    .parameter "inflater"
    .parameter "gMap"
    .parameter "placeDataManager"
    .parameter "favoriteListener"
    .parameter "actionListener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    .line 78
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 79
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    .line 88
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    .line 89
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    .line 92
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    .line 93
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->routePolyLine:Lcom/google/android/gms/maps/model/Polyline;

    .line 94
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 95
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startStation:Lcom/google/android/gms/maps/model/Marker;

    .line 96
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endStation:Lcom/google/android/gms/maps/model/Marker;

    .line 97
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 99
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 102
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastZoom:F

    .line 105
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    .line 111
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    .line 112
    iput-object p4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mInflater:Landroid/view/LayoutInflater;

    .line 113
    iput-object p5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 114
    iput-object p7, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 115
    iput-object p6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 116
    iput-object p2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    .line 117
    iput-object p3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mButtonLayout:Landroid/view/View;

    .line 118
    iput-object p8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 120
    invoke-virtual {p6, p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->addPlaceDataObserver(Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;)V

    .line 122
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 123
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aput-boolean v3, v0, v3

    .line 124
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 126
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aput-boolean v3, v0, v2

    .line 127
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 129
    const-string v0, "MapPlaceManager"

    const-string v1, "DEBUG: Loading the bike manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Lcom/citibikenyc/citibike/BikeLaneManager;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/citibikenyc/citibike/BikeLaneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->bikeLaneManager:Lcom/citibikenyc/citibike/BikeLaneManager;

    .line 131
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/MapPlaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    return-void
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/MapPlaceManager;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-direct {p0, p1, p2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/MapPlaceManager;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/MapPlaceManager;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/citibikenyc/citibike/MapPlaceManager;)Lcom/citibikenyc/citibike/models/Place;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    return-object v0
.end method

.method static synthetic access$6(Lcom/citibikenyc/citibike/MapPlaceManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    return v0
.end method

.method static synthetic access$7(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/models/Place;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->updateDetailView(Lcom/citibikenyc/citibike/models/Place;)V

    return-void
.end method

.method private addBikelanesToMap()V
    .locals 12

    .prologue
    .line 328
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->bikeLaneManager:Lcom/citibikenyc/citibike/BikeLaneManager;

    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v9, v10}, Lcom/citibikenyc/citibike/BikeLaneManager;->getLanes(Lcom/google/android/gms/maps/model/LatLngBounds;)Ljava/util/Set;

    move-result-object v1

    .line 331
    .local v1, bikeLanes:Ljava/util/Set;,"Ljava/util/Set<Lcom/citibikenyc/citibike/models/BikeLane;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 333
    .local v2, existingLanes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 337
    monitor-enter p0

    .line 341
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 359
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 337
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    return-void

    .line 334
    :cond_0
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :cond_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/BikeLane;

    .line 342
    .local v0, bikeLane:Lcom/citibikenyc/citibike/models/BikeLane;
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/BikeLane;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 344
    .local v4, id:Ljava/lang/Integer;
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 346
    new-instance v10, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v10}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 347
    const/high16 v11, 0x40c0

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v10

    .line 348
    const v11, -0xff0100

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v10

    .line 349
    iget-object v11, v0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v10

    .line 350
    iget-object v11, v0, Lcom/citibikenyc/citibike/models/BikeLane;->end:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v8

    .line 352
    .local v8, rectOptions:Lcom/google/android/gms/maps/model/PolylineOptions;
    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10, v8}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v6

    .line 353
    .local v6, line:Lcom/google/android/gms/maps/model/Polyline;
    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 337
    .end local v0           #bikeLane:Lcom/citibikenyc/citibike/models/BikeLane;
    .end local v4           #id:Ljava/lang/Integer;
    .end local v6           #line:Lcom/google/android/gms/maps/model/Polyline;
    .end local v8           #rectOptions:Lcom/google/android/gms/maps/model/PolylineOptions;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 355
    .restart local v0       #bikeLane:Lcom/citibikenyc/citibike/models/BikeLane;
    .restart local v4       #id:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    .end local v0           #bikeLane:Lcom/citibikenyc/citibike/models/BikeLane;
    .end local v4           #id:Ljava/lang/Integer;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 360
    .local v5, key:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Polyline;

    .line 361
    .local v7, polyline:Lcom/google/android/gms/maps/model/Polyline;
    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 362
    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private addItemsToMap()V
    .locals 11

    .prologue
    const/high16 v10, 0x415c

    const/4 v9, 0x1

    .line 250
    const-string v6, "MapPlaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Marker size:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v8, v8, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v6

    iget-object v0, v6, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 252
    .local v0, bounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v5

    .line 253
    .local v5, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    const-string v6, "MapPlaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CurrentZoom:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    monitor-enter p0

    .line 256
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v6, v6, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 255
    monitor-exit p0

    .line 325
    return-void

    .line 257
    :cond_0
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v6, v6, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/models/Place;

    .line 260
    .local v4, place:Lcom/citibikenyc/citibike/models/Place;
    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-nez v6, :cond_3

    .line 261
    iget-object v6, v4, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 262
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 263
    invoke-direct {p0, v4, v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    .line 256
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_2
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 266
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 267
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 255
    .end local v4           #place:Lcom/citibikenyc/citibike/models/Place;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 274
    .restart local v4       #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v4, v6}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 275
    :cond_4
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 276
    invoke-direct {p0, v4, v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    goto :goto_1

    .line 278
    :cond_5
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    iget v7, v4, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_7

    iget-object v6, v4, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v5, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v7, 0x4168

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_7

    .line 279
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    .line 280
    invoke-direct {p0, v4, v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    .line 281
    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v6, v4, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 282
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    goto :goto_1

    .line 283
    :cond_6
    iget-boolean v6, v4, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    if-eqz v6, :cond_1

    .line 285
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 286
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 288
    invoke-direct {p0, v4, v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    .line 289
    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v6, v4, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 290
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    goto/16 :goto_1

    .line 292
    :cond_7
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    iget v7, v4, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_a

    iget-object v6, v4, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 293
    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v6, v9, :cond_a

    .line 294
    iget v6, v5, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpl-float v6, v6, v10

    if-gez v6, :cond_8

    iget v6, v5, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_a

    rem-int/lit8 v6, v1, 0x3

    if-nez v6, :cond_a

    .line 295
    :cond_8
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9

    .line 296
    invoke-virtual {v4}, Lcom/citibikenyc/citibike/models/Place;->getClusterIcon()I

    move-result v2

    .line 298
    .local v2, iconId:I
    invoke-direct {p0, v4, v1, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;II)Lcom/google/android/gms/maps/model/Marker;

    .line 299
    iput v2, v4, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 300
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    goto/16 :goto_1

    .line 301
    .end local v2           #iconId:I
    :cond_9
    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iget v7, v4, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    if-ne v6, v7, :cond_1

    .line 303
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 304
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 307
    invoke-virtual {v4}, Lcom/citibikenyc/citibike/models/Place;->getClusterIcon()I

    move-result v2

    .line 309
    .restart local v2       #iconId:I
    invoke-direct {p0, v4, v1, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;II)Lcom/google/android/gms/maps/model/Marker;

    .line 310
    iput v2, v4, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 311
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    goto/16 :goto_1

    .line 314
    .end local v2           #iconId:I
    :cond_a
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    .line 316
    .local v3, marker:Lcom/google/android/gms/maps/model/Marker;
    if-eqz v3, :cond_1

    .line 317
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v6

    if-nez v6, :cond_1

    .line 318
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 319
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;
    .locals 4
    .parameter "place"
    .parameter "markerIndex"

    .prologue
    .line 429
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->getMarkerForItem(Lcom/citibikenyc/citibike/models/Place;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 431
    .local v0, m:Lcom/google/android/gms/maps/model/Marker;
    monitor-enter p0

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    monitor-exit p0

    .line 436
    return-object v0

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addMarker(Lcom/citibikenyc/citibike/models/Place;II)Lcom/google/android/gms/maps/model/Marker;
    .locals 4
    .parameter "place"
    .parameter "markerIndex"
    .parameter "iconId"

    .prologue
    .line 440
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0, p1, p3}, Lcom/citibikenyc/citibike/MapPlaceManager;->getMarkerForItem(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 442
    .local v0, m:Lcom/google/android/gms/maps/model/Marker;
    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    monitor-exit p0

    .line 447
    return-object v0

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMarkerForItem(Lcom/citibikenyc/citibike/models/Place;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 2
    .parameter "p"

    .prologue
    .line 460
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 461
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 462
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 463
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 464
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 465
    iget v1, p1, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 460
    return-object v0
.end method

.method private getMarkerForItem(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 2
    .parameter "p"
    .parameter "iconId"

    .prologue
    .line 469
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 470
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 471
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 472
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 473
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 474
    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 469
    return-object v0
.end method

.method private getVerticalOffset(DD)D
    .locals 15
    .parameter "northLatitude"
    .parameter "southLatitude"

    .prologue
    .line 672
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 673
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 674
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 676
    const/4 v7, 0x1

    .line 677
    const/high16 v8, 0x4316

    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 676
    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v5, v7

    .line 678
    .local v5, viewableHeight:I
    const/4 v7, 0x1

    .line 679
    const/high16 v8, 0x4234

    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 678
    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v0, v7

    .line 680
    .local v0, actionBarHeight:I
    const/4 v7, 0x1

    .line 681
    const/high16 v8, 0x41e8

    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 680
    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v2, v7

    .line 683
    .local v2, iconHeightOffset:I
    sub-double v7, p1, p3

    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    .line 684
    const-wide/high16 v9, 0x3fe0

    iget v11, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v11, v11

    mul-double/2addr v9, v11

    int-to-double v11, v5

    const-wide/high16 v13, 0x3fe0

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    int-to-double v11, v0

    sub-double/2addr v9, v11

    int-to-double v11, v2

    sub-double/2addr v9, v11

    .line 683
    mul-double v3, v7, v9

    .line 685
    .local v3, ret:D
    return-wide v3
.end method

.method private removeItemsFromMap()V
    .locals 4

    .prologue
    .line 396
    monitor-enter p0

    .line 397
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 396
    monitor-exit p0

    .line 404
    return-void

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 399
    .local v1, marker:Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v1           #marker:Lcom/google/android/gms/maps/model/Marker;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeItemsFromMap(Lcom/google/android/gms/maps/model/Marker;I)V
    .locals 5
    .parameter "exception"
    .parameter "exceptionIndex"

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 409
    .local v0, exceptionFound:Z
    monitor-enter p0

    .line 410
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 419
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 421
    if-eqz v0, :cond_0

    .line 422
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    :cond_0
    monitor-exit p0

    .line 425
    return-void

    .line 411
    :cond_1
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    .line 412
    .local v2, marker:Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 413
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 410
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 409
    .end local v2           #marker:Lcom/google/android/gms/maps/model/Marker;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeMarker(I)V
    .locals 1
    .parameter "markerIndex"

    .prologue
    .line 451
    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 454
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 451
    :cond_0
    monitor-exit p0

    .line 457
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removePinMarker()V
    .locals 4

    .prologue
    .line 209
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_1

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    .local v0, oldMarkerIndex:I
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/Place;

    .line 214
    .local v1, oldPlace:Lcom/citibikenyc/citibike/models/Place;
    iget v2, v1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 220
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 222
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 210
    monitor-exit p0

    .line 225
    .end local v0           #oldMarkerIndex:I
    .end local v1           #oldPlace:Lcom/citibikenyc/citibike/models/Place;
    :cond_1
    return-void

    .line 210
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateDetailView(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 14
    .parameter "place"

    .prologue
    .line 624
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f050074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 625
    .local v12, stationLabel:Landroid/widget/TextView;
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f050076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 628
    .local v6, bikeInfo:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f050075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 630
    .local v11, placeDescription:Landroid/widget/TextView;
    iget v1, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 631
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 632
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    :goto_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f05007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/citibikenyc/citibike/helpers/PlaceListView;

    .line 651
    .local v10, nearbyList:Lcom/citibikenyc/citibike/helpers/PlaceListView;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;II)Ljava/util/ArrayList;

    move-result-object v3

    .line 652
    .local v3, nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    const v2, 0x7f030034

    .line 653
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 654
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v13, 0x7f0200c9

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 652
    invoke-direct/range {v0 .. v5}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 656
    .local v0, nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-virtual {v10, v1}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->setActionListener(Lcom/citibikenyc/citibike/interfaces/ActionListener;)V

    .line 657
    invoke-virtual {v10, v0}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 660
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f05007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 662
    .local v9, favoriteButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    invoke-interface {v1, p1}, Lcom/citibikenyc/citibike/interfaces/FavoriteListener;->isFavorite(Lcom/citibikenyc/citibike/models/Place;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 663
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 664
    const-string v1, "Favorited"

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 669
    :goto_1
    return-void

    .line 634
    .end local v0           #nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;
    .end local v3           #nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    .end local v9           #favoriteButton:Landroid/widget/Button;
    .end local v10           #nearbyList:Lcom/citibikenyc/citibike/helpers/PlaceListView;
    :cond_0
    iget v1, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p1, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v1, :cond_1

    .line 635
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 636
    const v1, 0x7f0a0025

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(I)V

    .line 637
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 639
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f050077

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 642
    .local v7, bikesLabel:Landroid/widget/TextView;
    iget v1, p1, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    const/16 v2, 0x9

    if-le v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f050078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 645
    .local v8, docksLabel:Landroid/widget/TextView;
    iget v1, p1, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    const/16 v2, 0x9

    if-le v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 642
    .end local v8           #docksLabel:Landroid/widget/TextView;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 645
    .restart local v8       #docksLabel:Landroid/widget/TextView;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 666
    .end local v7           #bikesLabel:Landroid/widget/TextView;
    .end local v8           #docksLabel:Landroid/widget/TextView;
    .restart local v0       #nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;
    .restart local v3       #nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    .restart local v9       #favoriteButton:Landroid/widget/Button;
    .restart local v10       #nearbyList:Lcom/citibikenyc/citibike/helpers/PlaceListView;
    :cond_4
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 667
    const-string v1, "Favorite"

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public clearBikeLanes()V
    .locals 5

    .prologue
    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    const-string v2, "MapPlaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: clearBikeLanes of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lanes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 383
    monitor-exit p0

    .line 393
    return-void

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polyline;

    .line 388
    .local v1, polyline:Lcom/google/android/gms/maps/model/Polyline;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0           #i:I
    .end local v1           #polyline:Lcom/google/android/gms/maps/model/Polyline;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clearDetail()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 781
    const-string v1, "MapPlaceManager"

    const-string v2, "clearDetails"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 784
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 785
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 786
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const v3, 0x3e99999a

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 787
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 789
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/16 v3, 0x12c

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 792
    .end local v0           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    iput-boolean v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    .line 793
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mButtonLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 794
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 795
    return-void
.end method

.method public clearRoute()V
    .locals 5

    .prologue
    .line 798
    iget-boolean v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-eqz v1, :cond_0

    .line 799
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    .line 801
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_1

    .line 802
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 803
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 804
    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastZoom:F

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 805
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 807
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/16 v3, 0x1f4

    new-instance v4, Lcom/citibikenyc/citibike/MapPlaceManager$4;

    invoke-direct {v4, p0}, Lcom/citibikenyc/citibike/MapPlaceManager$4;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 822
    .end local v0           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeRouteItems()V

    goto :goto_0
.end method

.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "marker"

    .prologue
    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 14
    .parameter "marker"

    .prologue
    const/4 v7, 0x0

    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 484
    iget-boolean v8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-eqz v8, :cond_0

    .line 536
    :goto_0
    return-object v7

    .line 488
    :cond_0
    monitor-enter p0

    .line 489
    :try_start_0
    iget-object v8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    .line 488
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    iget-object v8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v8, v8, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/citibikenyc/citibike/models/Place;

    .line 494
    .local v6, place:Lcom/citibikenyc/citibike/models/Place;
    iget-object v8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030028

    invoke-virtual {v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 495
    .local v7, window:Landroid/view/View;
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v9, 0x216

    const/16 v10, 0x96

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    const v8, 0x7f05006c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 498
    .local v5, labelView:Landroid/widget/TextView;
    iget-object v8, v6, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    const v8, 0x7f05006d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 501
    .local v3, descriptionView:Landroid/widget/TextView;
    const v8, 0x7f05006e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 503
    .local v2, bikeInfo:Landroid/view/View;
    iget v8, v6, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v8, v11, :cond_3

    iget-boolean v8, v6, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-eqz v8, :cond_3

    .line 504
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    const v8, 0x7f05006f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 507
    .local v1, bikeCountView:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v6, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    const v8, 0x7f050071

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 510
    .local v4, dockCountView:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v6, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget v8, v6, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    if-ne v8, v11, :cond_1

    .line 513
    const v8, 0x7f050070

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 514
    .local v0, bikeCountLabel:Landroid/widget/TextView;
    const-string v8, "Bike"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    .end local v0           #bikeCountLabel:Landroid/widget/TextView;
    :cond_1
    iget v8, v6, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    if-ne v8, v11, :cond_2

    .line 518
    const v8, 0x7f050072

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 519
    .restart local v0       #bikeCountLabel:Landroid/widget/TextView;
    const-string v8, "Dock"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .end local v0           #bikeCountLabel:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 488
    .end local v1           #bikeCountView:Landroid/widget/TextView;
    .end local v2           #bikeInfo:Landroid/view/View;
    .end local v3           #descriptionView:Landroid/widget/TextView;
    .end local v4           #dockCountView:Landroid/widget/TextView;
    .end local v5           #labelView:Landroid/widget/TextView;
    .end local v6           #place:Lcom/citibikenyc/citibike/models/Place;
    .end local v7           #window:Landroid/view/View;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 523
    .restart local v2       #bikeInfo:Landroid/view/View;
    .restart local v3       #descriptionView:Landroid/widget/TextView;
    .restart local v5       #labelView:Landroid/widget/TextView;
    .restart local v6       #place:Lcom/citibikenyc/citibike/models/Place;
    .restart local v7       #window:Landroid/view/View;
    :cond_3
    iget v8, v6, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v8, v11, :cond_4

    iget-boolean v8, v6, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v8, :cond_4

    .line 524
    const v8, 0x7f0a0025

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 525
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 528
    :cond_4
    iget-object v8, v6, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 529
    iget-object v8, v6, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    :cond_5
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;
    .locals 3

    .prologue
    .line 689
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v1, v1, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 690
    .local v0, place:Lcom/citibikenyc/citibike/models/Place;
    new-instance v1, Lcom/citibikenyc/citibike/models/Place;

    invoke-direct {v1, v0}, Lcom/citibikenyc/citibike/models/Place;-><init>(Lcom/citibikenyc/citibike/models/Place;)V

    return-object v1
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    return v0
.end method

.method public isShowingRoute()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    return v0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 3
    .parameter "position"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v1, v1, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    if-nez v1, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 238
    .local v0, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v1, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v2, 0x4168

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addBikelanesToMap()V

    .line 247
    .end local v0           #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :goto_1
    return-void

    .line 232
    :cond_0
    const-string v1, "MapPlaceManager"

    const-string v2, "onCameraChange: null locations"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .restart local v0       #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearBikeLanes()V

    goto :goto_1

    .line 245
    .end local v0           #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_2
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearBikeLanes()V

    goto :goto_1
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 13
    .parameter "marker"

    .prologue
    .line 569
    iget-boolean v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-eqz v9, :cond_0

    .line 570
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    .line 621
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 575
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iput v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastZoom:F

    .line 577
    const-string v9, "MapPlaceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onInfoWindowClick "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v9

    iget-object v0, v9, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 580
    .local v0, bounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 581
    .local v5, markerIndex:I
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v9, v9, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/citibikenyc/citibike/models/Place;

    .line 582
    .local v7, place:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {v7}, Lcom/citibikenyc/citibike/models/Place;->setLargeIcon()V

    .line 583
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v9, v9, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 584
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v9, v9, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v9, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 585
    iput v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    .line 587
    iget-object v9, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v9, v9, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v11, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v11, v11, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/citibikenyc/citibike/MapPlaceManager;->getVerticalOffset(DD)D

    move-result-wide v3

    .line 589
    .local v3, diff:D
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    iget-wide v9, v9, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v9, v3

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v11

    iget-wide v11, v11, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 590
    .local v6, offCenter:Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    .line 592
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 593
    invoke-direct {p0, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeMarker(I)V

    .line 594
    invoke-direct {p0, v7, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v9

    iput-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 595
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {p0, v9, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeItemsFromMap(Lcom/google/android/gms/maps/model/Marker;I)V

    .line 602
    :goto_1
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v10, 0x4040

    add-float/2addr v9, v10

    invoke-static {v9}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    .line 604
    new-instance v9, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v9}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 605
    invoke-virtual {v9, v6}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v9

    .line 606
    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const v11, 0x3e99999a

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v9

    .line 607
    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 609
    .local v1, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v10

    const/16 v11, 0x12c

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 611
    invoke-direct {p0, v7}, Lcom/citibikenyc/citibike/MapPlaceManager;->updateDetailView(Lcom/citibikenyc/citibike/models/Place;)V

    .line 613
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v9

    const-string v10, "map_details"

    invoke-virtual {v9, v10}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 615
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    const v10, 0x7f040006

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 616
    .local v8, slideUp:Landroid/view/animation/Animation;
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mButtonLayout:Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 620
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    goto/16 :goto_0

    .line 597
    .end local v1           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v8           #slideUp:Landroid/view/animation/Animation;
    :cond_1
    invoke-direct {p0, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeMarker(I)V

    .line 598
    invoke-direct {p0, v7, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    .line 599
    .local v2, detailMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-direct {p0, v2, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeItemsFromMap(Lcom/google/android/gms/maps/model/Marker;I)V

    goto :goto_1
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 8
    .parameter "latLng"

    .prologue
    const/4 v7, 0x0

    .line 929
    iput-object v7, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 931
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    .line 933
    .local v3, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v4, v3, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v5, 0x4168

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 934
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    .line 935
    .local v2, oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition;

    const/high16 v4, 0x4178

    iget v5, v2, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iget v6, v2, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-direct {v1, p1, v4, v5, v6}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    .line 938
    .local v1, newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 939
    .local v0, cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v5, 0x12c

    invoke-virtual {v4, v0, v5, v7}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 941
    .end local v0           #cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    .end local v1           #newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v2           #oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 5
    .parameter "latLng"

    .prologue
    .line 945
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 947
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 949
    .local v1, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v2, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v3, 0x4168

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-nez v2, :cond_0

    .line 950
    new-instance v0, Lcom/citibikenyc/citibike/models/Place;

    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, p1, v4}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 953
    .local v0, droppedPin:Lcom/citibikenyc/citibike/models/Place;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 954
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->onPlaceSelection(Lcom/citibikenyc/citibike/models/Place;)V

    .line 956
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/citibikenyc/citibike/MapPlaceManager$5;

    invoke-direct {v3, p0, p1, v0}, Lcom/citibikenyc/citibike/MapPlaceManager$5;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/google/android/gms/maps/model/LatLng;Lcom/citibikenyc/citibike/models/Place;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 998
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1000
    .end local v0           #droppedPin:Lcom/citibikenyc/citibike/models/Place;
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 10
    .parameter "marker"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 901
    iput-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 903
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 904
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removePinMarker()V

    .line 907
    :cond_0
    iget-boolean v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-eqz v5, :cond_1

    .line 923
    :goto_0
    return v4

    .line 911
    :cond_1
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    .line 913
    .local v3, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v5, v3, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v6, 0x4168

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 914
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    .line 915
    .local v2, oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    const/high16 v6, 0x4178

    iget v7, v2, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iget v8, v2, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    .line 918
    .local v1, newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 919
    .local v0, cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v6, 0x12c

    invoke-virtual {v5, v0, v6, v9}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    goto :goto_0

    .line 923
    .end local v0           #cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    .end local v1           #newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v2           #oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onPlaceDataLoad()V
    .locals 2

    .prologue
    .line 864
    const-string v0, "MapPlaceManager"

    const-string v1, "onPlaceDataLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 866
    return-void
.end method

.method public onPlaceDataUpdate()V
    .locals 5

    .prologue
    .line 871
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    if-eqz v3, :cond_0

    .line 872
    const-string v3, "MapPlaceManager"

    const-string v4, "onPlaceDataUpdate - Updating detail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v3, v3, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/models/Place;

    .line 874
    .local v2, updatedMarker:Lcom/citibikenyc/citibike/models/Place;
    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->updateDetailView(Lcom/citibikenyc/citibike/models/Place;)V

    .line 877
    .end local v2           #updatedMarker:Lcom/citibikenyc/citibike/models/Place;
    :cond_0
    const/4 v1, 0x0

    .line 879
    .local v1, showingInfoBubble:Z
    monitor-enter p0

    .line 881
    :try_start_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 882
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 883
    const/4 v1, 0x1

    .line 886
    :cond_1
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-nez v3, :cond_2

    .line 887
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 890
    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 891
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 892
    .local v0, infoBubbleMarker:Lcom/google/android/gms/maps/model/Marker;
    if-eqz v0, :cond_3

    .line 893
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 879
    .end local v0           #infoBubbleMarker:Lcom/google/android/gms/maps/model/Marker;
    :cond_3
    monitor-exit p0

    .line 897
    return-void

    .line 879
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onPlaceSelection(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 9
    .parameter "place"

    .prologue
    .line 135
    const-string v5, "MapPlaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onPlaceSelection "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p1, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/citibikenyc/citibike/models/Place;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removePinMarker()V

    .line 138
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v5, v5, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    const-string v5, "MapPlaceManager"

    const-string v6, "onPlaceSelection for existing marker"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 143
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    .line 146
    .local v4, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v5, v4, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v6, 0x4168

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 147
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    .line 148
    .local v3, oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v6, 0x4178

    iget v7, v3, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iget v8, v3, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    .line 150
    .local v2, newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 155
    .end local v2           #newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v3           #oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    .local v0, cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    :goto_0
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v6, Lcom/citibikenyc/citibike/MapPlaceManager$1;

    invoke-direct {v6, p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager$1;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/models/Place;)V

    invoke-virtual {v5, v0, v6}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 206
    .end local v0           #cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    .end local v4           #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :goto_1
    return-void

    .line 152
    .restart local v4       #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .restart local v0       #cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    goto :goto_0

    .line 182
    .end local v0           #cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    .end local v4           #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_1
    const-string v5, "MapPlaceManager"

    const-string v6, "onPlaceSelection for NEW marker"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removePinMarker()V

    .line 187
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-virtual {v5, p1}, Lcom/citibikenyc/citibike/PlaceDataManager;->addLocation(Lcom/citibikenyc/citibike/models/Place;)I

    move-result v1

    .line 188
    .local v1, markerIndex:I
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->getMarkerForItem(Lcom/citibikenyc/citibike/models/Place;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v5

    iput-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 189
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v6}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v6

    const/16 v7, 0x12c

    new-instance v8, Lcom/citibikenyc/citibike/MapPlaceManager$2;

    invoke-direct {v8, p0}, Lcom/citibikenyc/citibike/MapPlaceManager$2;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    goto :goto_1

    .line 184
    .end local v1           #markerIndex:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public removeRouteItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    .line 826
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->routePolyLine:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 829
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startPoint:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startPoint:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 831
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startStation:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startStation:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 835
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startStation:Lcom/google/android/gms/maps/model/Marker;

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endStation:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endStation:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 839
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endStation:Lcom/google/android/gms/maps/model/Marker;

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endPoint:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_3

    .line 842
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endPoint:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 843
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 846
    :cond_3
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    if-eqz v0, :cond_4

    .line 847
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v0, :cond_5

    .line 848
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 852
    :goto_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v0, :cond_6

    .line 853
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 859
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 860
    return-void

    .line 850
    :cond_5
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    goto :goto_0

    .line 855
    :cond_6
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    goto :goto_1
.end method

.method public renderRoute(Lcom/citibikenyc/citibike/models/RouteResult;)V
    .locals 11
    .parameter "route"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 694
    const-string v6, "MapPlaceManager"

    const-string v7, "renderRoute"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearRoute()V

    .line 696
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    .line 697
    iput-boolean v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    .line 698
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removePinMarker()V

    .line 699
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeItemsFromMap()V

    .line 701
    invoke-virtual {p1}, Lcom/citibikenyc/citibike/models/RouteResult;->getPolyLines()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v4

    .line 702
    .local v4, rectOptions:Lcom/google/android/gms/maps/model/PolylineOptions;
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 704
    .local v0, bikeLineColor:I
    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 705
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->routePolyLine:Lcom/google/android/gms/maps/model/Polyline;

    .line 708
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_0

    .line 709
    iget-object v5, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 710
    .local v5, start:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {v5}, Lcom/citibikenyc/citibike/models/Place;->setStartIcon()V

    .line 711
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 712
    iget-object v8, v5, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 713
    iget-object v8, v5, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 714
    invoke-virtual {v7, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 715
    iget v8, v5, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    invoke-static {v8}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 711
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 718
    .end local v5           #start:Lcom/citibikenyc/citibike/models/Place;
    :cond_0
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v7, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v6, v7}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 719
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 720
    iget-object v8, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v8, v8, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 721
    iget-object v8, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v8, v8, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 722
    invoke-virtual {v7, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 723
    iget-object v8, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    iget v8, v8, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    invoke-static {v8}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 719
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startStation:Lcom/google/android/gms/maps/model/Marker;

    .line 726
    :cond_1
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_2

    .line 727
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 728
    .local v1, end:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/models/Place;->setEndIcon()V

    .line 729
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 730
    iget-object v8, v1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 731
    iget-object v8, v1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 732
    invoke-virtual {v7, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 733
    iget v8, v1, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    invoke-static {v8}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 729
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 736
    .end local v1           #end:Lcom/citibikenyc/citibike/models/Place;
    :cond_2
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v7, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v6, v7}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 737
    iget-object v2, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    .line 738
    .local v2, endStation:Lcom/citibikenyc/citibike/models/Place;
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 739
    iget-object v8, v2, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 740
    iget-object v8, v2, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 741
    invoke-virtual {v7, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 742
    iget v8, v2, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    invoke-static {v8}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 738
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endStation:Lcom/google/android/gms/maps/model/Marker;

    .line 747
    .end local v2           #endStation:Lcom/citibikenyc/citibike/models/Place;
    :cond_3
    const/high16 v6, 0x4284

    iget-object v7, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 746
    invoke-static {v10, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v3, v6

    .line 748
    .local v3, padding:I
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v8, p1, Lcom/citibikenyc/citibike/models/RouteResult;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v8, v8, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v9, p1, Lcom/citibikenyc/citibike/models/RouteResult;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v9, v9, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-static {v7, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 751
    iget-boolean v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->mOnBike:Z

    if-nez v6, :cond_5

    .line 752
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v7, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v6, v7}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 753
    :cond_4
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    new-instance v7, Lcom/citibikenyc/citibike/MapPlaceManager$3;

    invoke-direct {v7, p0}, Lcom/citibikenyc/citibike/MapPlaceManager$3;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 778
    :cond_5
    return-void
.end method

.method public resetCurrentMarker()V
    .locals 5

    .prologue
    .line 540
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    if-ltz v2, :cond_2

    .line 541
    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resetCurrentMarker - currentMarkerId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/Place;

    .line 543
    .local v1, place:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 544
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 545
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 547
    monitor-enter p0

    .line 548
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 550
    .local v0, marker:Lcom/google/android/gms/maps/model/Marker;
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resetCurrentMarker - pinMarker:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeMarker(I)V

    .line 553
    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-direct {p0, v1, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 547
    :goto_0
    monitor-exit p0

    .line 565
    .end local v0           #marker:Lcom/google/android/gms/maps/model/Marker;
    .end local v1           #place:Lcom/citibikenyc/citibike/models/Place;
    :goto_1
    return-void

    .line 555
    .restart local v0       #marker:Lcom/google/android/gms/maps/model/Marker;
    .restart local v1       #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_0
    if-eqz v0, :cond_1

    .line 556
    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resetCurrentMarker - regular marker:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeMarker(I)V

    .line 559
    :cond_1
    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-direct {p0, v1, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    goto :goto_0

    .line 547
    .end local v0           #marker:Lcom/google/android/gms/maps/model/Marker;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 563
    .end local v1           #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_2
    const-string v2, "MapPlaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resetCurrentMarker called on invalid index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public showBikeLanes()V
    .locals 5

    .prologue
    const/high16 v4, 0x4168

    .line 369
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 370
    .local v1, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v2, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 371
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 372
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    .line 373
    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    .line 374
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 375
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 380
    .end local v0           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addBikelanesToMap()V

    goto :goto_0
.end method
