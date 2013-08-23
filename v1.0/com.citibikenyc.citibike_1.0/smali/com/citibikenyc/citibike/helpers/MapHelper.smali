.class public Lcom/citibikenyc/citibike/helpers/MapHelper;
.super Ljava/lang/Object;
.source "MapHelper.java"


# static fields
.field private static final DEFAULT_CURRENT_ZOOM:F = 16.0f

.field private static final DEFAULT_MAP_ANIMATION_SPEED:I = 0x12c

.field private static final GPS_CHECK_INTERVAL:I = 0x5dc

.field private static final MAX_GPS_FAILURES:I = 0x5

.field protected static final TAG:Ljava/lang/String; = "MapHelper"


# instance fields
.field private currentLocation:Lcom/google/android/gms/maps/model/LatLng;

.field private gpsActivity:Landroid/app/Activity;

.field private gpsFailures:I

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field m_gpsChecker:Ljava/lang/Runnable;

.field private nogpsHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .parameter "gMap"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->currentLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsFailures:I

    .line 98
    new-instance v0, Lcom/citibikenyc/citibike/helpers/MapHelper$1;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/helpers/MapHelper$1;-><init>(Lcom/citibikenyc/citibike/helpers/MapHelper;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->m_gpsChecker:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/helpers/MapHelper;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsFailures:I

    return v0
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/helpers/MapHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsFailures:I

    return-void
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/helpers/MapHelper;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->nogpsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/helpers/MapHelper;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/helpers/MapHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->clearGpsChecker()V

    return-void
.end method

.method private clearGpsChecker()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsActivity:Landroid/app/Activity;

    .line 120
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->nogpsHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method public static setTransparent(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 138
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 146
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 141
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-static {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->setTransparent(Landroid/view/ViewGroup;)V

    .line 138
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    instance-of v3, v0, Landroid/view/SurfaceView;

    if-eqz v3, :cond_1

    .line 143
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public animateTo(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 76
    const/high16 v0, 0x4180

    const/16 v1, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcom/citibikenyc/citibike/helpers/MapHelper;->animateTo(Lcom/google/android/gms/maps/model/LatLng;FI)V

    .line 77
    return-void
.end method

.method public animateTo(Lcom/google/android/gms/maps/model/LatLng;FI)V
    .locals 4
    .parameter "point"
    .parameter "zoom"
    .parameter "speed"

    .prologue
    .line 80
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 81
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 85
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 86
    return-void
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 7

    .prologue
    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v2, :cond_1

    .line 41
    const-string v2, "MapHelper"

    const-string v3, "Map is currently null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getMyLocation()Landroid/location/Location;

    move-result-object v0

    .line 44
    .local v0, current:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 45
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->currentLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 46
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->currentLocation:Lcom/google/android/gms/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 49
    .end local v0           #current:Landroid/location/Location;
    :catch_0
    move-exception v1

    .line 50
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "MapHelper"

    const-string v3, "Unable to retrieve current location"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public moveTo(Lcom/google/android/gms/maps/model/LatLng;F)V
    .locals 2
    .parameter "point"
    .parameter "zoom"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 133
    return-void
.end method

.method public moveToCurrentLocation()Z
    .locals 4

    .prologue
    .line 61
    const-string v2, "MapHelper"

    const-string v3, "moveToCurrentLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getCurrentLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 65
    .local v0, current:Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->animateTo(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 v2, 0x1

    .line 72
    .end local v0           #current:Lcom/google/android/gms/maps/model/LatLng;
    :goto_0
    return v2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showDefaultView()V
    .locals 5

    .prologue
    .line 125
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v1, 0x40445bee27a2f2fcL

    const-wide v3, -0x3fad805d679dd3bdL

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 127
    .local v0, defaultCenter:Lcom/google/android/gms/maps/model/LatLng;
    const/high16 v1, 0x4150

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/helpers/MapHelper;->moveTo(Lcom/google/android/gms/maps/model/LatLng;F)V

    .line 128
    return-void
.end method

.method public showStartView(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->showDefaultView()V

    .line 91
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->moveToCurrentLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsActivity:Landroid/app/Activity;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->nogpsHandler:Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->nogpsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->m_gpsChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_0
    return-void
.end method
