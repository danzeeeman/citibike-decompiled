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

.field public static final ZOOM_MIN:F = 11.3f


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

.field private mScoopHeader:Landroid/view/View;

.field private mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

.field private mTabHost:Landroid/widget/TabHost;

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

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    .line 91
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 92
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    .line 101
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    .line 102
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    .line 105
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    .line 106
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->routePolyLine:Lcom/google/android/gms/maps/model/Polyline;

    .line 107
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 108
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startStation:Lcom/google/android/gms/maps/model/Marker;

    .line 109
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endStation:Lcom/google/android/gms/maps/model/Marker;

    .line 110
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 112
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 115
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastZoom:F

    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    .line 127
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    .line 128
    iput-object p4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mInflater:Landroid/view/LayoutInflater;

    .line 129
    iput-object p5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 130
    iput-object p7, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 131
    iput-object p6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 132
    iput-object p2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    .line 133
    iput-object p3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mButtonLayout:Landroid/view/View;

    .line 134
    iput-object p8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 135
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->initHeader()V

    .line 139
    invoke-virtual {p6, p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->addPlaceDataObserver(Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;)V

    .line 141
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 142
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aput-boolean v3, v0, v3

    .line 143
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 144
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 145
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aput-boolean v3, v0, v2

    .line 146
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 148
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 149
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 150
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 152
    new-instance v0, Lcom/citibikenyc/citibike/BikeLaneManager;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/citibikenyc/citibike/BikeLaneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->bikeLaneManager:Lcom/citibikenyc/citibike/BikeLaneManager;

    .line 153
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/MapPlaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    return-void
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/MapPlaceManager;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/MapPlaceManager;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/MapPlaceManager;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/citibikenyc/citibike/MapPlaceManager;)Lcom/citibikenyc/citibike/models/Place;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    return-object v0
.end method

.method static synthetic access$6(Lcom/citibikenyc/citibike/MapPlaceManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    return v0
.end method

.method static synthetic access$7(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/models/Place;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->updateDetailView(Lcom/citibikenyc/citibike/models/Place;)V

    return-void
.end method

.method private addBikelanesToMap()V
    .locals 12

    .prologue
    .line 368
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->bikeLaneManager:Lcom/citibikenyc/citibike/BikeLaneManager;

    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v9, v10}, Lcom/citibikenyc/citibike/BikeLaneManager;->getLanes(Lcom/google/android/gms/maps/model/LatLngBounds;)Ljava/util/Set;

    move-result-object v1

    .line 371
    .local v1, bikeLanes:Ljava/util/Set;,"Ljava/util/Set<Lcom/citibikenyc/citibike/models/BikeLane;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 373
    .local v2, existingLanes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 377
    monitor-enter p0

    .line 381
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 399
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 377
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    return-void

    .line 374
    :cond_0
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/BikeLane;

    .line 382
    .local v0, bikeLane:Lcom/citibikenyc/citibike/models/BikeLane;
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/BikeLane;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 384
    .local v4, id:Ljava/lang/Integer;
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 386
    new-instance v10, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v10}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 387
    const/high16 v11, 0x40c0

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v10

    .line 388
    const v11, -0xff0100

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v10

    .line 389
    iget-object v11, v0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v10

    .line 390
    iget-object v11, v0, Lcom/citibikenyc/citibike/models/BikeLane;->end:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v8

    .line 392
    .local v8, rectOptions:Lcom/google/android/gms/maps/model/PolylineOptions;
    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10, v8}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v6

    .line 393
    .local v6, line:Lcom/google/android/gms/maps/model/Polyline;
    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 377
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

    .line 395
    .restart local v0       #bikeLane:Lcom/citibikenyc/citibike/models/BikeLane;
    .restart local v4       #id:Ljava/lang/Integer;
    :cond_2
    :try_start_2
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    .end local v0           #bikeLane:Lcom/citibikenyc/citibike/models/BikeLane;
    .end local v4           #id:Ljava/lang/Integer;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 400
    .local v5, key:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/maps/model/Polyline;

    .line 401
    .local v7, polyline:Lcom/google/android/gms/maps/model/Polyline;
    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 402
    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private addItemsToMap()V
    .locals 10

    .prologue
    const/high16 v9, 0x415c

    const/4 v8, 0x1

    .line 292
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v6

    iget-object v0, v6, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 293
    .local v0, bounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v5

    .line 295
    .local v5, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    monitor-enter p0

    .line 296
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v6, v6, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 295
    monitor-exit p0

    .line 365
    return-void

    .line 297
    :cond_0
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v6, v6, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/models/Place;

    .line 300
    .local v4, place:Lcom/citibikenyc/citibike/models/Place;
    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-nez v6, :cond_3

    .line 301
    iget-object v6, v4, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 303
    invoke-direct {p0, v4, v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    .line 296
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_2
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 306
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 307
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 295
    .end local v4           #place:Lcom/citibikenyc/citibike/models/Place;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 314
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

    .line 315
    :cond_4
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 316
    invoke-direct {p0, v4, v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    goto :goto_1

    .line 318
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

    .line 319
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    .line 320
    invoke-direct {p0, v4, v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    .line 321
    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v6, v4, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 322
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    goto :goto_1

    .line 323
    :cond_6
    iget-boolean v6, v4, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    if-eqz v6, :cond_1

    .line 325
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 326
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 328
    invoke-direct {p0, v4, v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    .line 329
    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v6, v4, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 330
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    goto/16 :goto_1

    .line 332
    :cond_7
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    iget v7, v4, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_a

    iget-object v6, v4, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 333
    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v6, v8, :cond_a

    .line 334
    iget v6, v5, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpl-float v6, v6, v9

    if-gez v6, :cond_8

    iget v6, v5, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_a

    rem-int/lit8 v6, v1, 0x3

    if-nez v6, :cond_a

    .line 335
    :cond_8
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9

    .line 336
    invoke-virtual {v4}, Lcom/citibikenyc/citibike/models/Place;->getClusterIcon()I

    move-result v2

    .line 338
    .local v2, iconId:I
    invoke-direct {p0, v4, v1, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;II)Lcom/google/android/gms/maps/model/Marker;

    .line 339
    iput v2, v4, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 340
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    goto/16 :goto_1

    .line 341
    .end local v2           #iconId:I
    :cond_9
    iget v6, v4, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iget v7, v4, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    if-ne v6, v7, :cond_1

    .line 343
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 344
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 347
    invoke-virtual {v4}, Lcom/citibikenyc/citibike/models/Place;->getClusterIcon()I

    move-result v2

    .line 349
    .restart local v2       #iconId:I
    invoke-direct {p0, v4, v1, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;II)Lcom/google/android/gms/maps/model/Marker;

    .line 350
    iput v2, v4, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 351
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    goto/16 :goto_1

    .line 354
    .end local v2           #iconId:I
    :cond_a
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    .line 356
    .local v3, marker:Lcom/google/android/gms/maps/model/Marker;
    if-eqz v3, :cond_1

    .line 357
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v6

    if-nez v6, :cond_1

    .line 358
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 359
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
    .line 467
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->getMarkerForItem(Lcom/citibikenyc/citibike/models/Place;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 469
    .local v0, m:Lcom/google/android/gms/maps/model/Marker;
    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    monitor-exit p0

    .line 474
    return-object v0

    .line 469
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
    .line 478
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0, p1, p3}, Lcom/citibikenyc/citibike/MapPlaceManager;->getMarkerForItem(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 480
    .local v0, m:Lcom/google/android/gms/maps/model/Marker;
    monitor-enter p0

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    monitor-exit p0

    .line 485
    return-object v0

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter "address"
    .parameter "stringToAdd"

    .prologue
    .line 756
    invoke-direct {p0, p2}, Lcom/citibikenyc/citibike/MapPlaceManager;->isFieldNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getMarkerForItem(Lcom/citibikenyc/citibike/models/Place;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 2
    .parameter "p"

    .prologue
    .line 498
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 499
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 500
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 501
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 502
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 503
    iget v1, p1, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 498
    return-object v0
.end method

.method private getMarkerForItem(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 2
    .parameter "p"
    .parameter "iconId"

    .prologue
    .line 507
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 508
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 509
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 510
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 511
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 512
    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 507
    return-object v0
.end method

.method private getNearbyScoopPlaces(Lcom/citibikenyc/citibike/models/Place;)Ljava/util/ArrayList;
    .locals 8
    .parameter "place"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/citibikenyc/citibike/models/Place;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x5

    .line 878
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v2, v4, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I[I)Ljava/util/ArrayList;

    move-result-object v0

    .line 887
    .local v0, nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    :goto_0
    return-object v0

    .line 880
    .end local v0           #nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    new-array v3, v3, [I

    aput v5, v3, v7

    invoke-virtual {v1, v2, v4, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I[I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    goto :goto_0

    .line 882
    .end local v0           #nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_1
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_2

    .line 883
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    new-array v3, v3, [I

    aput v6, v3, v7

    invoke-virtual {v1, v2, v4, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I[I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    goto :goto_0

    .line 885
    .end local v0           #nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_2
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-virtual {v1, v2, v4, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I[I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    goto :goto_0

    .line 879
    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 885
    :array_1
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getPriceAndType(Lcom/citibikenyc/citibike/models/ScoopPlace;)Ljava/lang/String;
    .locals 5
    .parameter "place"

    .prologue
    .line 789
    iget-object v3, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "null"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v2, ""

    .line 790
    .local v2, type:Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->price:Ljava/lang/Double;

    if-nez v3, :cond_2

    const-string v1, ""

    .line 791
    .local v1, price:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, details:Ljava/lang/String;
    return-object v0

    .line 789
    .end local v0           #details:Ljava/lang/String;
    .end local v1           #price:Ljava/lang/String;
    .end local v2           #type:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->type:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 790
    .restart local v2       #type:Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->price:Ljava/lang/Double;

    invoke-direct {p0, v3}, Lcom/citibikenyc/citibike/MapPlaceManager;->getPriceAsDollers(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getPriceAsDollers(Ljava/lang/Double;)Ljava/lang/String;
    .locals 5
    .parameter "price"

    .prologue
    .line 796
    const-string v0, ""

    .line 797
    .local v0, dollers:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 798
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v2, v3

    .line 799
    .local v2, priceInt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 803
    .end local v1           #i:I
    .end local v2           #priceInt:I
    :cond_0
    return-object v0

    .line 800
    .restart local v1       #i:I
    .restart local v2       #priceInt:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getVerticalOffset(DD)D
    .locals 15
    .parameter "northLatitude"
    .parameter "southLatitude"

    .prologue
    .line 891
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 892
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 893
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 895
    const/4 v7, 0x1

    .line 896
    const/high16 v8, 0x4316

    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 895
    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v5, v7

    .line 897
    .local v5, viewableHeight:I
    const/4 v7, 0x1

    .line 898
    const/high16 v8, 0x4234

    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 897
    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v0, v7

    .line 899
    .local v0, actionBarHeight:I
    const/4 v7, 0x1

    .line 900
    const/high16 v8, 0x41e8

    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 899
    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v2, v7

    .line 902
    .local v2, iconHeightOffset:I
    sub-double v7, p1, p3

    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    .line 903
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

    .line 902
    mul-double v3, v7, v9

    .line 904
    .local v3, ret:D
    return-wide v3
.end method

.method private initHeader()V
    .locals 8

    .prologue
    const v7, 0x7f080017

    const/4 v6, 0x0

    .line 160
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030050

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mScoopHeader:Landroid/view/View;

    .line 161
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 162
    .local v0, leftMargin:I
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 163
    .local v2, rightMargin:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0, v6, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 165
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mScoopHeader:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method

.method private isFieldNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "fieldValue"

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, isNull:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    const/4 v0, 0x1

    .line 774
    :cond_0
    :goto_0
    return v0

    .line 770
    :cond_1
    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeItemsFromMap()V
    .locals 4

    .prologue
    .line 434
    monitor-enter p0

    .line 435
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 434
    monitor-exit p0

    .line 442
    return-void

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 437
    .local v1, marker:Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
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
    .line 445
    const/4 v0, 0x0

    .line 447
    .local v0, exceptionFound:Z
    monitor-enter p0

    .line 448
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 457
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 459
    if-eqz v0, :cond_0

    .line 460
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    :cond_0
    monitor-exit p0

    .line 463
    return-void

    .line 449
    :cond_1
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    .line 450
    .local v2, marker:Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 451
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 448
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 447
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
    .line 489
    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 492
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 489
    :cond_0
    monitor-exit p0

    .line 495
    return-void

    .line 489
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
    .line 243
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_1

    .line 244
    monitor-enter p0

    .line 245
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

    .line 246
    .local v0, oldMarkerIndex:I
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/Place;

    .line 248
    .local v1, oldPlace:Lcom/citibikenyc/citibike/models/Place;
    iget v2, v1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-nez v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 254
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 256
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 244
    monitor-exit p0

    .line 259
    .end local v0           #oldMarkerIndex:I
    .end local v1           #oldPlace:Lcom/citibikenyc/citibike/models/Place;
    :cond_1
    return-void

    .line 244
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setAddress(Lcom/citibikenyc/citibike/models/ScoopPlace;)V
    .locals 8
    .parameter "place"

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    .local v0, address:Ljava/lang/StringBuilder;
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->address:Lcom/citibikenyc/citibike/models/Address;

    iget-object v1, v6, Lcom/citibikenyc/citibike/models/Address;->address1:Ljava/lang/String;

    .line 741
    .local v1, address1:Ljava/lang/String;
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->address:Lcom/citibikenyc/citibike/models/Address;

    iget-object v2, v6, Lcom/citibikenyc/citibike/models/Address;->address2:Ljava/lang/String;

    .line 742
    .local v2, address2:Ljava/lang/String;
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->address:Lcom/citibikenyc/citibike/models/Address;

    iget-object v3, v6, Lcom/citibikenyc/citibike/models/Address;->city:Ljava/lang/String;

    .line 743
    .local v3, city:Ljava/lang/String;
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->address:Lcom/citibikenyc/citibike/models/Address;

    iget-object v4, v6, Lcom/citibikenyc/citibike/models/Address;->state:Ljava/lang/String;

    .line 744
    .local v4, state:Ljava/lang/String;
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->address:Lcom/citibikenyc/citibike/models/Address;

    iget-object v5, v6, Lcom/citibikenyc/citibike/models/Address;->zip:Ljava/lang/Long;

    .line 746
    .local v5, zip:Ljava/lang/Long;
    invoke-direct {p0, v0, v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->addString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 747
    invoke-direct {p0, v0, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 748
    invoke-direct {p0, v0, v3}, Lcom/citibikenyc/citibike/MapPlaceManager;->addString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, v0, v4}, Lcom/citibikenyc/citibike/MapPlaceManager;->addString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 750
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/citibikenyc/citibike/MapPlaceManager;->addString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 752
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v7, 0x7f0500b8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    return-void
.end method

.method private setFavorites(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 4
    .parameter "place"

    .prologue
    const/4 v3, 0x0

    .line 836
    iget v1, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 837
    :cond_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f0500c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 842
    .local v0, favoriteButton:Landroid/widget/Button;
    :goto_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    invoke-interface {v1, p1}, Lcom/citibikenyc/citibike/interfaces/FavoriteListener;->isFavorite(Lcom/citibikenyc/citibike/models/Place;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 843
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 844
    const-string v1, "Favorited"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 849
    :goto_1
    return-void

    .line 839
    .end local v0           #favoriteButton:Landroid/widget/Button;
    :cond_1
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f050076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .restart local v0       #favoriteButton:Landroid/widget/Button;
    goto :goto_0

    .line 846
    :cond_2
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 847
    const-string v1, "Favorite"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setLocationDetails(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 11
    .parameter "place"

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 807
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v6, 0x7f05006e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 808
    .local v4, stationLabel:Landroid/widget/TextView;
    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v6, 0x7f050070

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 811
    .local v0, bikeInfo:Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v6, 0x7f05006f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 813
    .local v3, placeDescription:Landroid/widget/TextView;
    iget v5, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-eq v5, v9, :cond_0

    .line 814
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 815
    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 832
    :goto_0
    return-void

    .line 817
    :cond_0
    iget v5, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v5, v9, :cond_1

    iget-boolean v5, p1, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v5, :cond_1

    .line 818
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 819
    const v5, 0x7f0a0025

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 820
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v6, 0x7f050071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 825
    .local v1, bikesLabel:Landroid/widget/TextView;
    iget v5, p1, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    if-le v5, v10, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v6, 0x7f050072

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 828
    .local v2, docksLabel:Landroid/widget/TextView;
    iget v5, p1, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    if-le v5, v10, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 825
    .end local v2           #docksLabel:Landroid/widget/TextView;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 828
    .restart local v2       #docksLabel:Landroid/widget/TextView;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private setNYTApp()V
    .locals 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v1, 0x7f0500c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0141

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    return-void
.end method

.method private setNearByList(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 9
    .parameter "place"

    .prologue
    const/4 v8, 0x1

    .line 852
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f050086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/citibikenyc/citibike/helpers/PlaceListView;

    .line 853
    .local v6, nearbyList:Lcom/citibikenyc/citibike/helpers/PlaceListView;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x5

    new-array v5, v8, [I

    const/4 v7, 0x0

    aput v8, v5, v7

    invoke-virtual {v1, v2, v4, v5}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I[I)Ljava/util/ArrayList;

    move-result-object v3

    .line 854
    .local v3, nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    const v2, 0x7f030038

    .line 855
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 856
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0200da

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 854
    invoke-direct/range {v0 .. v5}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 858
    .local v0, nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-virtual {v6, v1}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->setActionListener(Lcom/citibikenyc/citibike/interfaces/ActionListener;)V

    .line 859
    invoke-virtual {v6, v0}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 860
    return-void
.end method

.method private setPriceAndType(Lcom/citibikenyc/citibike/models/ScoopPlace;)V
    .locals 4
    .parameter "place"

    .prologue
    .line 778
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->getPriceAndType(Lcom/citibikenyc/citibike/models/ScoopPlace;)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, details:Ljava/lang/String;
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v3, 0x7f0500b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 780
    .local v1, typeAndPriceTV:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    :goto_0
    return-void

    .line 783
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setScoopDetails(Lcom/citibikenyc/citibike/models/ScoopPlace;)V
    .locals 8
    .parameter "place"

    .prologue
    const v7, 0x7f0500c0

    .line 709
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v5, 0x7f0500b5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 710
    .local v3, title:Landroid/widget/TextView;
    iget-object v4, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->setPriceAndType(Lcom/citibikenyc/citibike/models/ScoopPlace;)V

    .line 713
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->setAddress(Lcom/citibikenyc/citibike/models/ScoopPlace;)V

    .line 715
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->setNYTApp()V

    .line 718
    iget v1, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->stars:F

    .line 719
    .local v1, rating:F
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v5, 0x7f0500b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;

    invoke-virtual {v4, v1}, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->setRatings(F)V

    .line 721
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v5, 0x7f0500ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->review:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->reviewer:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "null"

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, reviewer:Ljava/lang/String;
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v5, 0x7f0500bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->phone:Ljava/lang/String;

    .line 725
    .local v0, phone:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 726
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 731
    :goto_1
    return-void

    .line 722
    .end local v0           #phone:Ljava/lang/String;
    .end local v2           #reviewer:Ljava/lang/String;
    :cond_0
    iget-object v4, p1, Lcom/citibikenyc/citibike/models/ScoopPlace;->reviewer:Ljava/lang/String;

    goto :goto_0

    .line 728
    .restart local v0       #phone:Ljava/lang/String;
    .restart local v2       #reviewer:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private setTopShopsView(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 8
    .parameter "place"

    .prologue
    const v7, 0x7f0200d8

    .line 863
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const v2, 0x7f050087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/citibikenyc/citibike/helpers/PlaceListView;

    .line 864
    .local v6, topStopList:Lcom/citibikenyc/citibike/helpers/PlaceListView;
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->getNearbyScoopPlaces(Lcom/citibikenyc/citibike/models/Place;)Ljava/util/ArrayList;

    move-result-object v3

    .line 866
    .local v3, nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    const v2, 0x7f030037

    .line 867
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 868
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 866
    invoke-direct/range {v0 .. v5}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 869
    .local v0, nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->useLargeIcons:Z

    .line 871
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-virtual {v6, v1}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->setActionListener(Lcom/citibikenyc/citibike/interfaces/ActionListener;)V

    .line 872
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mScoopHeader:Landroid/view/View;

    invoke-virtual {v6, v1}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->addHeader(Landroid/view/View;)V

    .line 873
    invoke-virtual {v6, v0}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 874
    return-void
.end method

.method private trackInfoDetail(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 6
    .parameter "place"

    .prologue
    const-wide/16 v4, 0x0

    .line 661
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v0, :pswitch_data_0

    .line 671
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "map_main"

    const-string v2, "map_details"

    const-string v3, "Execute"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 675
    :goto_0
    return-void

    .line 663
    :pswitch_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "map_main"

    const-string v2, "map_coffee_details"

    const-string v3, "Execute"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 667
    :pswitch_1
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "map_main"

    const-string v2, "map_restaurant_details"

    const-string v3, "Execute"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDetailView(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 6
    .parameter "place"

    .prologue
    const v5, 0x7f050085

    const v4, 0x7f050084

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 692
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p1

    .line 695
    check-cast v0, Lcom/citibikenyc/citibike/models/ScoopPlace;

    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->setScoopDetails(Lcom/citibikenyc/citibike/models/ScoopPlace;)V

    .line 702
    :goto_0
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->setNearByList(Lcom/citibikenyc/citibike/models/Place;)V

    .line 704
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->setFavorites(Lcom/citibikenyc/citibike/models/Place;)V

    .line 705
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->setTopShopsView(Lcom/citibikenyc/citibike/models/Place;)V

    .line 706
    return-void

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 699
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->setLocationDetails(Lcom/citibikenyc/citibike/models/Place;)V

    goto :goto_0
.end method


# virtual methods
.method public clearBikeLanes()V
    .locals 4

    .prologue
    .line 423
    monitor-enter p0

    .line 424
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 423
    monitor-exit p0

    .line 431
    return-void

    .line 425
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleLanes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polyline;

    .line 426
    .local v1, polyline:Lcom/google/android/gms/maps/model/Polyline;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
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

    .line 1000
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 1001
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 1002
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 1003
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const v3, 0x3e99999a

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 1004
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 1006
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/16 v3, 0x12c

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 1009
    .end local v0           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    iput-boolean v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    .line 1010
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mButtonLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 1012
    return-void
.end method

.method public clearDetailWithoutAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1015
    iput-boolean v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    .line 1016
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 1018
    return-void
.end method

.method public clearRoute()V
    .locals 5

    .prologue
    .line 1021
    iget-boolean v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-eqz v1, :cond_0

    .line 1022
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    .line 1024
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_1

    .line 1025
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 1026
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 1027
    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastZoom:F

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 1028
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 1030
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/16 v3, 0x1f4

    new-instance v4, Lcom/citibikenyc/citibike/MapPlaceManager$4;

    invoke-direct {v4, p0}, Lcom/citibikenyc/citibike/MapPlaceManager$4;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 1045
    .end local v0           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeRouteItems()V

    goto :goto_0
.end method

.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "marker"

    .prologue
    .line 517
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

    .line 522
    iget-boolean v8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-eqz v8, :cond_0

    .line 574
    :goto_0
    return-object v7

    .line 526
    :cond_0
    monitor-enter p0

    .line 527
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

    .line 526
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    iget-object v8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v8, v8, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/citibikenyc/citibike/models/Place;

    .line 532
    .local v6, place:Lcom/citibikenyc/citibike/models/Place;
    iget-object v8, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03002b

    invoke-virtual {v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 533
    .local v7, window:Landroid/view/View;
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v9, 0x216

    const/16 v10, 0x96

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    const v8, 0x7f05007d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 536
    .local v5, labelView:Landroid/widget/TextView;
    iget-object v8, v6, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    const v8, 0x7f05007e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 539
    .local v3, descriptionView:Landroid/widget/TextView;
    const v8, 0x7f05007f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 541
    .local v2, bikeInfo:Landroid/view/View;
    iget v8, v6, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v8, v11, :cond_3

    iget-boolean v8, v6, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-eqz v8, :cond_3

    .line 542
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    const v8, 0x7f050080

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 545
    .local v1, bikeCountView:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v6, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    const v8, 0x7f050082

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 548
    .local v4, dockCountView:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v6, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget v8, v6, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    if-ne v8, v11, :cond_1

    .line 551
    const v8, 0x7f050081

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 552
    .local v0, bikeCountLabel:Landroid/widget/TextView;
    const-string v8, "Bike"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    .end local v0           #bikeCountLabel:Landroid/widget/TextView;
    :cond_1
    iget v8, v6, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    if-ne v8, v11, :cond_2

    .line 556
    const v8, 0x7f050083

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 557
    .restart local v0       #bikeCountLabel:Landroid/widget/TextView;
    const-string v8, "Dock"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    .end local v0           #bikeCountLabel:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 526
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

    .line 561
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

    .line 562
    const v8, 0x7f0a0025

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 563
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 566
    :cond_4
    iget-object v8, v6, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 567
    iget-object v8, v6, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    :cond_5
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v0, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    return-object v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 1224
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    return v0
.end method

.method public isShowingRoute()Z
    .locals 1

    .prologue
    .line 1228
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    return v0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 5
    .parameter "position"

    .prologue
    .line 263
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v3, v3, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    if-nez v3, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getMapHelper(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)Lcom/citibikenyc/citibike/helpers/MapHelper;

    move-result-object v1

    .line 268
    .local v1, mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;
    iget-object v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v3}, Lcom/citibikenyc/citibike/helpers/MapHelper;->isOutsideBounds(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/helpers/MapHelper;->moveIfOutsideBounds()V

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->layers:[Z

    const/4 v4, 0x5

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_4

    .line 278
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    .line 280
    .local v2, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v3, v2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v4, 0x4168

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 282
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addBikelanesToMap()V

    .line 289
    .end local v2           #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :goto_0
    return-void

    .line 271
    :cond_2
    invoke-virtual {v1, p1}, Lcom/citibikenyc/citibike/helpers/MapHelper;->onCameraChangedInsideBounds(Lcom/google/android/gms/maps/model/CameraPosition;)Z

    move-result v0

    .line 272
    .local v0, cameraChangedInsideBounds:Z
    if-eqz v0, :cond_1

    goto :goto_0

    .line 284
    .end local v0           #cameraChangedInsideBounds:Z
    .restart local v2       #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_3
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearBikeLanes()V

    goto :goto_0

    .line 287
    .end local v2           #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_4
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearBikeLanes()V

    goto :goto_0
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 13
    .parameter "marker"

    .prologue
    .line 606
    iget-boolean v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-eqz v9, :cond_0

    .line 607
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    .line 658
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 612
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iput v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->lastZoom:F

    .line 614
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v9

    iget-object v0, v9, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 616
    .local v0, bounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 617
    .local v5, markerIndex:I
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v9, v9, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/citibikenyc/citibike/models/Place;

    .line 618
    .local v7, place:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {v7}, Lcom/citibikenyc/citibike/models/Place;->setLargeIcon()V

    .line 619
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v9, v9, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 620
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v9, v9, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v9, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 621
    iput v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    .line 623
    iget-object v9, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v9, v9, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v11, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v11, v11, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/citibikenyc/citibike/MapPlaceManager;->getVerticalOffset(DD)D

    move-result-wide v3

    .line 625
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

    .line 626
    .local v6, offCenter:Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    .line 628
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

    .line 629
    invoke-direct {p0, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeMarker(I)V

    .line 630
    invoke-direct {p0, v7, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v9

    iput-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 631
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {p0, v9, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeItemsFromMap(Lcom/google/android/gms/maps/model/Marker;I)V

    .line 638
    :goto_1
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v9}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v10, 0x4040

    add-float/2addr v9, v10

    invoke-static {v9}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    .line 640
    new-instance v9, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v9}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 641
    invoke-virtual {v9, v6}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v9

    .line 642
    iget-object v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const v11, 0x3e99999a

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v9

    .line 643
    invoke-virtual {v9}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 645
    .local v1, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v10

    const/16 v11, 0x12c

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 647
    invoke-direct {p0, v7}, Lcom/citibikenyc/citibike/MapPlaceManager;->updateDetailView(Lcom/citibikenyc/citibike/models/Place;)V

    .line 650
    invoke-direct {p0, v7}, Lcom/citibikenyc/citibike/MapPlaceManager;->trackInfoDetail(Lcom/citibikenyc/citibike/models/Place;)V

    .line 652
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    const v10, 0x7f040008

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 653
    .local v8, slideUp:Landroid/view/animation/Animation;
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mButtonLayout:Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 657
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    goto/16 :goto_0

    .line 633
    .end local v1           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v8           #slideUp:Landroid/view/animation/Animation;
    :cond_1
    invoke-direct {p0, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeMarker(I)V

    .line 634
    invoke-direct {p0, v7, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    .line 635
    .local v2, detailMarker:Lcom/google/android/gms/maps/model/Marker;
    invoke-direct {p0, v2, v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeItemsFromMap(Lcom/google/android/gms/maps/model/Marker;I)V

    goto :goto_1
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 8
    .parameter "latLng"

    .prologue
    const/4 v7, 0x0

    .line 1150
    iput-object v7, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 1152
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    .line 1154
    .local v3, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v4, v3, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v5, 0x4168

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1155
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    .line 1156
    .local v2, oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition;

    const/high16 v4, 0x4178

    iget v5, v2, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iget v6, v2, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-direct {v1, p1, v4, v5, v6}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    .line 1159
    .local v1, newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 1160
    .local v0, cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v5, 0x12c

    invoke-virtual {v4, v0, v5, v7}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 1162
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
    .line 1166
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 1168
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 1170
    .local v1, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v2, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v3, 0x4168

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-nez v2, :cond_0

    .line 1171
    new-instance v0, Lcom/citibikenyc/citibike/models/Place;

    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, p1, v4}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 1174
    .local v0, droppedPin:Lcom/citibikenyc/citibike/models/Place;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 1175
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->onPlaceSelection(Lcom/citibikenyc/citibike/models/Place;)V

    .line 1177
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/citibikenyc/citibike/MapPlaceManager$5;

    invoke-direct {v3, p0, p1, v0}, Lcom/citibikenyc/citibike/MapPlaceManager$5;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/google/android/gms/maps/model/LatLng;Lcom/citibikenyc/citibike/models/Place;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1219
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1221
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

    .line 1122
    iput-object v9, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 1124
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

    .line 1125
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removePinMarker()V

    .line 1128
    :cond_0
    iget-boolean v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-eqz v5, :cond_1

    .line 1144
    :goto_0
    return v4

    .line 1132
    :cond_1
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    .line 1134
    .local v3, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v5, v3, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v6, 0x4168

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 1135
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    .line 1136
    .local v2, oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    const/high16 v6, 0x4178

    iget v7, v2, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iget v8, v2, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    .line 1139
    .local v1, newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 1140
    .local v0, cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/16 v6, 0x12c

    invoke-virtual {v5, v0, v6, v9}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    goto :goto_0

    .line 1144
    .end local v0           #cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    .end local v1           #newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v2           #oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onPlaceDataLoad()V
    .locals 0

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 1088
    return-void
.end method

.method public onPlaceDataUpdate()V
    .locals 5

    .prologue
    .line 1093
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    if-eqz v3, :cond_0

    .line 1094
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v3, v3, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/models/Place;

    .line 1095
    .local v2, updatedMarker:Lcom/citibikenyc/citibike/models/Place;
    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->updateDetailView(Lcom/citibikenyc/citibike/models/Place;)V

    .line 1098
    .end local v2           #updatedMarker:Lcom/citibikenyc/citibike/models/Place;
    :cond_0
    const/4 v1, 0x0

    .line 1100
    .local v1, showingInfoBubble:Z
    monitor-enter p0

    .line 1102
    :try_start_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1103
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1104
    const/4 v1, 0x1

    .line 1107
    :cond_1
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingDetail:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    if-nez v3, :cond_2

    .line 1108
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 1111
    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1112
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget v4, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 1113
    .local v0, infoBubbleMarker:Lcom/google/android/gms/maps/model/Marker;
    if-eqz v0, :cond_3

    .line 1114
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 1100
    .end local v0           #infoBubbleMarker:Lcom/google/android/gms/maps/model/Marker;
    :cond_3
    monitor-exit p0

    .line 1118
    return-void

    .line 1100
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
    .line 172
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removePinMarker()V

    .line 174
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v5, v5, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 178
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    .line 181
    .local v4, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v5, v4, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/high16 v6, 0x4168

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 182
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    .line 183
    .local v3, oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v6, 0x4178

    iget v7, v3, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iget v8, v3, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    .line 185
    .local v2, newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 190
    .end local v2           #newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v3           #oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    .local v0, cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    :goto_0
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v6, Lcom/citibikenyc/citibike/MapPlaceManager$1;

    invoke-direct {v6, p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager$1;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/models/Place;)V

    invoke-virtual {v5, v0, v6}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 240
    .end local v0           #cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    .end local v4           #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :goto_1
    return-void

    .line 187
    .restart local v4       #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .restart local v0       #cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    goto :goto_0

    .line 218
    .end local v0           #cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;
    .end local v4           #pos:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_1
    monitor-enter p0

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removePinMarker()V

    .line 221
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-virtual {v5, p1}, Lcom/citibikenyc/citibike/PlaceDataManager;->addLocation(Lcom/citibikenyc/citibike/models/Place;)I

    move-result v1

    .line 222
    .local v1, markerIndex:I
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->getMarkerForItem(Lcom/citibikenyc/citibike/models/Place;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v5

    iput-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 223
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->markerIds:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mSelectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 218
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v5, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v6}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v6

    const/16 v7, 0x12c

    new-instance v8, Lcom/citibikenyc/citibike/MapPlaceManager$2;

    invoke-direct {v8, p0}, Lcom/citibikenyc/citibike/MapPlaceManager$2;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    goto :goto_1

    .line 218
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

    .line 1048
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    .line 1049
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->routePolyLine:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1052
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startPoint:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startPoint:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1054
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startStation:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startStation:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1058
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startStation:Lcom/google/android/gms/maps/model/Marker;

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endStation:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endStation:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1062
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endStation:Lcom/google/android/gms/maps/model/Marker;

    .line 1064
    :cond_2
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endPoint:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endPoint:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 1066
    iput-object v1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 1069
    :cond_3
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    if-eqz v0, :cond_4

    .line 1070
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v0, :cond_5

    .line 1071
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 1075
    :goto_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v0, :cond_6

    .line 1076
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 1082
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addItemsToMap()V

    .line 1083
    return-void

    .line 1073
    :cond_5
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v0, v0, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    goto :goto_0

    .line 1078
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

    .line 913
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearRoute()V

    .line 914
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    .line 915
    iput-boolean v10, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->showingRoute:Z

    .line 916
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removePinMarker()V

    .line 917
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeItemsFromMap()V

    .line 919
    invoke-virtual {p1}, Lcom/citibikenyc/citibike/models/RouteResult;->getPolyLines()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v4

    .line 920
    .local v4, rectOptions:Lcom/google/android/gms/maps/model/PolylineOptions;
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 922
    .local v0, bikeLineColor:I
    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 923
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->routePolyLine:Lcom/google/android/gms/maps/model/Polyline;

    .line 926
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_0

    .line 927
    iget-object v5, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 928
    .local v5, start:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {v5}, Lcom/citibikenyc/citibike/models/Place;->setStartIcon()V

    .line 929
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 930
    iget-object v8, v5, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 931
    iget-object v8, v5, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 932
    invoke-virtual {v7, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 933
    iget v8, v5, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    invoke-static {v8}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 929
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 936
    .end local v5           #start:Lcom/citibikenyc/citibike/models/Place;
    :cond_0
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v7, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v6, v7}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 937
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 938
    iget-object v8, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v8, v8, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 939
    iget-object v8, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v8, v8, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 940
    invoke-virtual {v7, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 941
    iget-object v8, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    iget v8, v8, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    invoke-static {v8}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 937
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->startStation:Lcom/google/android/gms/maps/model/Marker;

    .line 944
    :cond_1
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_2

    .line 945
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 946
    .local v1, end:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/models/Place;->setEndIcon()V

    .line 947
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 948
    iget-object v8, v1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 949
    iget-object v8, v1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 950
    invoke-virtual {v7, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 951
    iget v8, v1, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    invoke-static {v8}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 947
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endPoint:Lcom/google/android/gms/maps/model/Marker;

    .line 954
    .end local v1           #end:Lcom/citibikenyc/citibike/models/Place;
    :cond_2
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v7, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v6, v7}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 955
    iget-object v2, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    .line 956
    .local v2, endStation:Lcom/citibikenyc/citibike/models/Place;
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 957
    iget-object v8, v2, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 958
    iget-object v8, v2, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 959
    invoke-virtual {v7, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 960
    iget v8, v2, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    invoke-static {v8}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    .line 956
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->endStation:Lcom/google/android/gms/maps/model/Marker;

    .line 965
    .end local v2           #endStation:Lcom/citibikenyc/citibike/models/Place;
    :cond_3
    const/high16 v6, 0x4284

    iget-object v7, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 964
    invoke-static {v10, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v3, v6

    .line 966
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

    .line 969
    iget-boolean v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->mOnBike:Z

    if-nez v6, :cond_5

    .line 970
    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v7, p1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v6, v7}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 971
    :cond_4
    iget-object v6, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;

    new-instance v7, Lcom/citibikenyc/citibike/MapPlaceManager$3;

    invoke-direct {v7, p0}, Lcom/citibikenyc/citibike/MapPlaceManager$3;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 996
    :cond_5
    return-void
.end method

.method public resetCurrentMarker()V
    .locals 5

    .prologue
    .line 578
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    if-ltz v2, :cond_2

    .line 579
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/Place;

    .line 580
    .local v1, place:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 581
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 582
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 584
    monitor-enter p0

    .line 585
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->visibleMarkers:Landroid/util/SparseArray;

    iget v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    .line 587
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

    .line 588
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

    .line 589
    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeMarker(I)V

    .line 590
    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-direct {p0, v1, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->pinMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 584
    :goto_0
    monitor-exit p0

    .line 602
    .end local v0           #marker:Lcom/google/android/gms/maps/model/Marker;
    .end local v1           #place:Lcom/citibikenyc/citibike/models/Place;
    :goto_1
    return-void

    .line 592
    .restart local v0       #marker:Lcom/google/android/gms/maps/model/Marker;
    .restart local v1       #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_0
    if-eqz v0, :cond_1

    .line 593
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

    .line 594
    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeMarker(I)V

    .line 596
    :cond_1
    iget v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->currentMarkerId:I

    invoke-direct {p0, v1, v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->addMarker(Lcom/citibikenyc/citibike/models/Place;I)Lcom/google/android/gms/maps/model/Marker;

    goto :goto_0

    .line 584
    .end local v0           #marker:Lcom/google/android/gms/maps/model/Marker;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 600
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

.method public setTabHost(Landroid/widget/TabHost;)V
    .locals 0
    .parameter "tabHost"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mTabHost:Landroid/widget/TabHost;

    .line 157
    return-void
.end method

.method public showBikeLanes()V
    .locals 5

    .prologue
    const/high16 v4, 0x4168

    .line 409
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 410
    .local v1, pos:Lcom/google/android/gms/maps/model/CameraPosition;
    iget v2, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 411
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 412
    iget-object v3, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    .line 413
    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 415
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 420
    .end local v0           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MapPlaceManager;->addBikelanesToMap()V

    goto :goto_0
.end method

.method showHideTab(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 2
    .parameter "place"

    .prologue
    const/4 v1, 0x2

    .line 678
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v0, :pswitch_data_0

    .line 685
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    :goto_0
    return-void

    .line 681
    :pswitch_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
