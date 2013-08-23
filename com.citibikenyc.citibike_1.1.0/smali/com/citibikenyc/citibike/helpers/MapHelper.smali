.class public Lcom/citibikenyc/citibike/helpers/MapHelper;
.super Ljava/lang/Object;
.source "MapHelper.java"


# static fields
.field private static final DEFAULT_CURRENT_ZOOM:F = 18.0f

.field private static final DEFAULT_MAP_ANIMATION_SPEED:I = 0x12c

.field private static final GPS_CHECK_INTERVAL:I = 0x5dc

.field private static final MAX_GPS_FAILURES:I = 0x5

.field protected static final TAG:Ljava/lang/String; = "MapHelper"

.field private static defaultCenter:Lcom/google/android/gms/maps/model/LatLng;

.field private static lastCenter:Lcom/google/android/gms/maps/model/LatLng;

.field private static mapBoundary:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private static mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

.field private static northEastBound:Lcom/google/android/gms/maps/model/LatLng;

.field private static southWestbound:Lcom/google/android/gms/maps/model/LatLng;


# instance fields
.field private currentLocation:Lcom/google/android/gms/maps/model/LatLng;

.field private gpsActivity:Landroid/app/Activity;

.field private gpsFailures:I

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field m_gpsChecker:Ljava/lang/Runnable;

.field private nogpsHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v1, 0x4047d5fceb78897fL

    const-wide v3, -0x3fa2a6d352220bc4L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    sput-object v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->northEastBound:Lcom/google/android/gms/maps/model/LatLng;

    .line 42
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v1, 0x4047d4a4ebdd334cL

    const-wide v3, -0x3fa2a5b152f3c2dbL

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    sput-object v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->southWestbound:Lcom/google/android/gms/maps/model/LatLng;

    .line 23
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)V
    .locals 17
    .parameter "gMap"
    .parameter "context"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->currentLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 35
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsFailures:I

    .line 196
    new-instance v14, Lcom/citibikenyc/citibike/helpers/MapHelper$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/citibikenyc/citibike/helpers/MapHelper$1;-><init>(Lcom/citibikenyc/citibike/helpers/MapHelper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->m_gpsChecker:Ljava/lang/Runnable;

    .line 60
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 61
    const v14, 0x7f0a013b

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 62
    .local v4, north:D
    const v14, 0x7f0a0138

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 63
    .local v6, south:D
    const v14, 0x7f0a0139

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 64
    .local v12, west:D
    const v14, 0x7f0a013a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 66
    .local v2, east:D
    const v14, 0x7f0a013c

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 67
    .local v8, unionSquareLat:D
    const v14, 0x7f0a013d

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 69
    .local v10, unionSquareLong:D
    new-instance v14, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v14, v4, v5, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    sput-object v14, Lcom/citibikenyc/citibike/helpers/MapHelper;->northEastBound:Lcom/google/android/gms/maps/model/LatLng;

    .line 70
    new-instance v14, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v14, v6, v7, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    sput-object v14, Lcom/citibikenyc/citibike/helpers/MapHelper;->southWestbound:Lcom/google/android/gms/maps/model/LatLng;

    .line 71
    new-instance v14, Lcom/google/android/gms/maps/model/LatLngBounds;

    sget-object v15, Lcom/citibikenyc/citibike/helpers/MapHelper;->southWestbound:Lcom/google/android/gms/maps/model/LatLng;

    sget-object v16, Lcom/citibikenyc/citibike/helpers/MapHelper;->northEastBound:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct/range {v14 .. v16}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    sput-object v14, Lcom/citibikenyc/citibike/helpers/MapHelper;->mapBoundary:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 72
    new-instance v14, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v14, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    sput-object v14, Lcom/citibikenyc/citibike/helpers/MapHelper;->lastCenter:Lcom/google/android/gms/maps/model/LatLng;

    .line 73
    sget-object v14, Lcom/citibikenyc/citibike/helpers/MapHelper;->lastCenter:Lcom/google/android/gms/maps/model/LatLng;

    sput-object v14, Lcom/citibikenyc/citibike/helpers/MapHelper;->defaultCenter:Lcom/google/android/gms/maps/model/LatLng;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/helpers/MapHelper;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsFailures:I

    return v0
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/helpers/MapHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsFailures:I

    return-void
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/helpers/MapHelper;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->nogpsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/helpers/MapHelper;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/helpers/MapHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->clearGpsChecker()V

    return-void
.end method

.method private clearGpsChecker()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsActivity:Landroid/app/Activity;

    .line 217
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->nogpsHandler:Landroid/os/Handler;

    .line 218
    return-void
.end method

.method public static getMapHelper(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)Lcom/citibikenyc/citibike/helpers/MapHelper;
    .locals 1
    .parameter "gMap"
    .parameter "context"

    .prologue
    .line 52
    sget-object v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-direct {v0, p0, p1}, Lcom/citibikenyc/citibike/helpers/MapHelper;-><init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)V

    sput-object v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 55
    :cond_0
    sget-object v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    return-object v0
.end method

.method public static setTransparent(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 235
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 243
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 238
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-static {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->setTransparent(Landroid/view/ViewGroup;)V

    .line 235
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    instance-of v3, v0, Landroid/view/SurfaceView;

    if-eqz v3, :cond_1

    .line 240
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public animateTo(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 118
    const/high16 v0, 0x4190

    const/16 v1, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcom/citibikenyc/citibike/helpers/MapHelper;->animateTo(Lcom/google/android/gms/maps/model/LatLng;FI)V

    .line 119
    return-void
.end method

.method public animateTo(Lcom/google/android/gms/maps/model/LatLng;FI)V
    .locals 4
    .parameter "point"
    .parameter "zoom"
    .parameter "speed"

    .prologue
    .line 122
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 123
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 126
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    sput-object p1, Lcom/citibikenyc/citibike/helpers/MapHelper;->lastCenter:Lcom/google/android/gms/maps/model/LatLng;

    .line 127
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 129
    return-void
.end method

.method public animateToDefaultCenter()V
    .locals 3

    .prologue
    .line 142
    sget-object v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->defaultCenter:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v1, 0x4180

    const/16 v2, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/citibikenyc/citibike/helpers/MapHelper;->animateTo(Lcom/google/android/gms/maps/model/LatLng;FI)V

    .line 144
    return-void
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 7

    .prologue
    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v2, :cond_1

    .line 79
    const-string v2, "MapHelper"

    const-string v3, "Map is currently null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getMyLocation()Landroid/location/Location;

    move-result-object v0

    .line 82
    .local v0, current:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 83
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->currentLocation:Lcom/google/android/gms/maps/model/LatLng;

    .line 84
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->currentLocation:Lcom/google/android/gms/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 87
    .end local v0           #current:Landroid/location/Location;
    :catch_0
    move-exception v1

    .line 88
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "MapHelper"

    const-string v3, "Unable to retrieve current location"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isOutsideBounds(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 2
    .parameter "latLan"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, isOutside:Z
    sget-object v1, Lcom/citibikenyc/citibike/helpers/MapHelper;->mapBoundary:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveIfOutsideBounds()V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->lastCenter:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->moveIfOutsideBounds(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 164
    return-void
.end method

.method public moveIfOutsideBounds(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3
    .parameter "latLon"

    .prologue
    .line 171
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 172
    .local v0, tempCenter:Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget v1, v2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 173
    .local v1, tempZoom:F
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->isOutsideBounds(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    const v2, 0x4134cccd

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 176
    const v1, 0x4134cccd

    .line 179
    :cond_0
    const/16 v2, 0x12c

    invoke-virtual {p0, p1, v1, v2}, Lcom/citibikenyc/citibike/helpers/MapHelper;->animateTo(Lcom/google/android/gms/maps/model/LatLng;FI)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    sput-object v0, Lcom/citibikenyc/citibike/helpers/MapHelper;->lastCenter:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_0
.end method

.method public moveTo(Lcom/google/android/gms/maps/model/LatLng;F)V
    .locals 2
    .parameter "point"
    .parameter "zoom"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 230
    return-void
.end method

.method public moveToCurrentLocation()Z
    .locals 4

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getCurrentLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 103
    .local v0, current:Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->isOutsideBounds(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const/high16 v2, 0x4190

    const/16 v3, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/citibikenyc/citibike/helpers/MapHelper;->animateTo(Lcom/google/android/gms/maps/model/LatLng;FI)V

    .line 109
    :goto_0
    const/4 v2, 0x1

    .line 114
    .end local v0           #current:Lcom/google/android/gms/maps/model/LatLng;
    :goto_1
    return v2

    .line 107
    .restart local v0       #current:Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->animateToDefaultCenter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0           #current:Lcom/google/android/gms/maps/model/LatLng;
    :catch_0
    move-exception v1

    .line 112
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onCameraChangedInsideBounds(Lcom/google/android/gms/maps/model/CameraPosition;)Z
    .locals 4
    .parameter "position"

    .prologue
    const v3, 0x4134cccd

    .line 147
    iget v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 148
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 149
    iget-object v2, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 153
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 154
    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    sput-object v1, Lcom/citibikenyc/citibike/helpers/MapHelper;->lastCenter:Lcom/google/android/gms/maps/model/LatLng;

    .line 155
    const/4 v1, 0x1

    .line 158
    .end local v0           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    :goto_0
    return v1

    .line 157
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    sput-object v1, Lcom/citibikenyc/citibike/helpers/MapHelper;->lastCenter:Lcom/google/android/gms/maps/model/LatLng;

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLastZoomAndCenter(Lcom/google/android/gms/maps/model/LatLng;F)V
    .locals 0
    .parameter "latLng"
    .parameter "zoom"

    .prologue
    .line 167
    sput-object p1, Lcom/citibikenyc/citibike/helpers/MapHelper;->lastCenter:Lcom/google/android/gms/maps/model/LatLng;

    .line 168
    return-void
.end method

.method public showDefaultView()V
    .locals 5

    .prologue
    .line 222
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v1, 0x40445bee27a2f2fcL

    const-wide v3, -0x3fad805d679dd3bdL

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 224
    .local v0, defaultCenter:Lcom/google/android/gms/maps/model/LatLng;
    const/high16 v1, 0x4150

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/helpers/MapHelper;->moveTo(Lcom/google/android/gms/maps/model/LatLng;F)V

    .line 225
    return-void
.end method

.method public showStartView(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->showDefaultView()V

    .line 189
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->moveToCurrentLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->gpsActivity:Landroid/app/Activity;

    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->nogpsHandler:Landroid/os/Handler;

    .line 192
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->nogpsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/MapHelper;->m_gpsChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    :cond_0
    return-void
.end method
