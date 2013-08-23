.class public Lcom/citibikenyc/citibike/models/RouteResult;
.super Ljava/lang/Object;
.source "RouteResult.java"


# instance fields
.field public bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field public endPlace:Lcom/citibikenyc/citibike/models/Place;

.field public endStation:Lcom/citibikenyc/citibike/models/Place;

.field public mEncodedPolylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOnBike:Z

.field public startPlace:Lcom/citibikenyc/citibike/models/Place;

.field public startStation:Lcom/citibikenyc/citibike/models/Place;

.field public steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/RouteStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/citibikenyc/citibike/models/Place;Lcom/citibikenyc/citibike/models/Place;Z)V
    .locals 1
    .parameter "startPlace"
    .parameter "endPlace"
    .parameter "onBike"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 12
    iput-object v0, p0, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    .line 13
    iput-object v0, p0, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    .line 14
    iput-object v0, p0, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 23
    iput-object p1, p0, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 24
    iput-object p2, p0, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 25
    iput-boolean p3, p0, Lcom/citibikenyc/citibike/models/RouteResult;->mOnBike:Z

    .line 26
    return-void
.end method


# virtual methods
.method public decodePolyline(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .parameter "encodedPolyline"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v11, poly:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v5, 0x0

    .local v5, index:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 42
    .local v8, len:I
    const/4 v7, 0x0

    .local v7, lat:I
    const/4 v9, 0x0

    .line 44
    .local v9, lng:I
    :goto_0
    if-lt v5, v8, :cond_0

    .line 72
    return-object v11

    .line 45
    :cond_0
    const/4 v13, 0x0

    .local v13, shift:I
    const/4 v12, 0x0

    .line 48
    .local v12, result:I
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .local v6, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v2, v14, -0x3f

    .line 49
    .local v2, b:I
    and-int/lit8 v14, v2, 0x1f

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    .line 50
    add-int/lit8 v13, v13, 0x5

    .line 51
    const/16 v14, 0x20

    if-ge v2, v14, :cond_4

    .line 53
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_1

    shr-int/lit8 v14, v12, 0x1

    xor-int/lit8 v3, v14, -0x1

    .line 54
    .local v3, dlat:I
    :goto_2
    add-int/2addr v7, v3

    .line 56
    const/4 v13, 0x0

    .line 57
    const/4 v12, 0x0

    move v5, v6

    .line 60
    .end local v6           #index:I
    .restart local v5       #index:I
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .restart local v6       #index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v2, v14, -0x3f

    .line 61
    and-int/lit8 v14, v2, 0x1f

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    .line 62
    add-int/lit8 v13, v13, 0x5

    .line 63
    const/16 v14, 0x20

    if-ge v2, v14, :cond_3

    .line 65
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_2

    shr-int/lit8 v14, v12, 0x1

    xor-int/lit8 v4, v14, -0x1

    .line 66
    .local v4, dlng:I
    :goto_4
    add-int/2addr v9, v4

    .line 68
    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v14, v7

    const-wide v16, 0x40f86a0000000000L

    div-double v14, v14, v16

    int-to-double v0, v9

    move-wide/from16 v16, v0

    const-wide v18, 0x40f86a0000000000L

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v10, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 69
    .local v10, p:Lcom/google/android/gms/maps/model/LatLng;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v6

    .end local v6           #index:I
    .restart local v5       #index:I
    goto :goto_0

    .line 53
    .end local v3           #dlat:I
    .end local v4           #dlng:I
    .end local v5           #index:I
    .end local v10           #p:Lcom/google/android/gms/maps/model/LatLng;
    .restart local v6       #index:I
    :cond_1
    shr-int/lit8 v3, v12, 0x1

    goto :goto_2

    .line 65
    .restart local v3       #dlat:I
    :cond_2
    shr-int/lit8 v4, v12, 0x1

    goto :goto_4

    :cond_3
    move v5, v6

    .end local v6           #index:I
    .restart local v5       #index:I
    goto :goto_3

    .end local v3           #dlat:I
    .end local v5           #index:I
    .restart local v6       #index:I
    :cond_4
    move v5, v6

    .end local v6           #index:I
    .restart local v5       #index:I
    goto :goto_1
.end method

.method public getPolyLines()Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 4

    .prologue
    .line 29
    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 31
    .local v1, rectOptions:Lcom/google/android/gms/maps/model/PolylineOptions;
    iget-object v2, p0, Lcom/citibikenyc/citibike/models/RouteResult;->mEncodedPolylines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    return-object v1

    .line 31
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, encodedPolyline:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/models/RouteResult;->decodePolyline(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 33
    const/high16 v3, 0x3f80

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    goto :goto_0
.end method
