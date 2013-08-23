.class public Lcom/citibikenyc/citibike/PlaceDataManager;
.super Ljava/lang/Object;
.source "PlaceDataManager.java"

# interfaces
.implements Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;
.implements Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;


# static fields
.field public static final ALTA_STATION_UPDATE_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/data2/stations.php?updateOnly=true"

.field public static final ALTA_STATION_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/data2/stations.php"

.field public static final BRANCH_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/branch/list"

.field private static COMPARE_DISTANCE:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/content/list"

.field public static final HELMET_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/helmet/list"

.field public static final MAXIMUM_CONTENT_FRESHNESS:I = 0xe10

.field protected static final TAG:Ljava/lang/String; = "PlaceDataManager"

.field public static final TEST_STATION_UPDATE_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/station/updates"

.field public static final TEST_STATION_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/station/list"

.field public static final UPDATE_BRANCH:I = 0x3

.field public static final UPDATE_CONTENT:I = 0x0

.field public static final UPDATE_COPY:I = 0x4

.field public static final UPDATE_FREQUENCY:I = 0x3c

.field public static final UPDATE_HELMET:I = 0x2

.field public static final UPDATE_STATION:I = 0x1

.field private static instance:Lcom/citibikenyc/citibike/PlaceDataManager;


# instance fields
.field private lastUpdated:[J

.field public locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;",
            ">;"
        }
    .end annotation
.end field

.field updateQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/citibikenyc/citibike/PlaceDataManager;->instance:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 471
    new-instance v0, Lcom/citibikenyc/citibike/PlaceDataManager$1;

    invoke-direct {v0}, Lcom/citibikenyc/citibike/PlaceDataManager$1;-><init>()V

    sput-object v0, Lcom/citibikenyc/citibike/PlaceDataManager;->COMPARE_DISTANCE:Ljava/util/Comparator;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->observers:Ljava/util/ArrayList;

    .line 64
    iput-boolean v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    .line 66
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    .line 69
    iput-object p1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    .line 70
    sput-object p0, Lcom/citibikenyc/citibike/PlaceDataManager;->instance:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 72
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    aput-wide v2, v0, v4

    .line 73
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 74
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    .line 75
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    .line 77
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->cancelUpdates()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    .line 82
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadSavedContent()V

    .line 83
    return-void
.end method

.method public static getInstance()Lcom/citibikenyc/citibike/PlaceDataManager;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/citibikenyc/citibike/PlaceDataManager;->instance:Lcom/citibikenyc/citibike/PlaceDataManager;

    return-object v0
.end method

.method private getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/citibikenyc/citibike/helpers/UpdateReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.citibikenyc.citibike.update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private notifyObservers(Z)V
    .locals 2
    .parameter "update"

    .prologue
    .line 619
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 626
    return-void

    .line 620
    :cond_0
    if-eqz p1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;

    invoke-interface {v1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;->onPlaceDataUpdate()V

    .line 619
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;

    invoke-interface {v1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;->onPlaceDataLoad()V

    goto :goto_1
.end method


# virtual methods
.method public addLocation(Lcom/citibikenyc/citibike/models/Place;)I
    .locals 1
    .parameter "p"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public addPlaceDataObserver(Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    return-void
.end method

.method public cancelUpdates()V
    .locals 4

    .prologue
    .line 196
    const-string v2, "PlaceDataManager"

    const-string v3, "cancelUpdates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/PlaceDataManager;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 198
    .local v1, pi:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 199
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 200
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    .line 201
    return-void
.end method

.method public getBikeData(Lcom/citibikenyc/citibike/models/Place;)Lcom/citibikenyc/citibike/models/Place;
    .locals 2
    .parameter "p"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 601
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 9
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 466
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 467
    .local v8, dist:[F
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 468
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getNearbyEndStations(Lcom/google/android/gms/maps/model/LatLng;I)Ljava/util/ArrayList;
    .locals 8
    .parameter "position"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v2, nearbyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v1, nearby:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 512
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 519
    sget-object v4, Lcom/citibikenyc/citibike/PlaceDataManager;->COMPARE_DISTANCE:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 520
    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 522
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 527
    .end local v0           #i:I
    :cond_0
    return-object v2

    .line 513
    .restart local v0       #i:I
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 514
    .local v3, place:Lcom/citibikenyc/citibike/models/Place;
    iget-boolean v4, v3, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    if-lez v4, :cond_3

    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_3

    .line 515
    :cond_2
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1, v4}, Lcom/citibikenyc/citibike/PlaceDataManager;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/citibikenyc/citibike/models/Place;->setDistanceInMeters(D)V

    .line 516
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    .end local v3           #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "position"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;II)Ljava/util/ArrayList;
    .locals 8
    .parameter "position"
    .parameter "limit"
    .parameter "placeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v2, nearbyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, nearby:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 431
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 446
    sget-object v4, Lcom/citibikenyc/citibike/PlaceDataManager;->COMPARE_DISTANCE:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 448
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le p2, v4, :cond_0

    .line 449
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    .line 452
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-lt v0, p2, :cond_7

    .line 457
    .end local v0           #i:I
    :cond_1
    return-object v2

    .line 432
    .restart local v0       #i:I
    :cond_2
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 434
    .local v3, place:Lcom/citibikenyc/citibike/models/Place;
    if-eqz p3, :cond_3

    iget v4, v3, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne p3, v4, :cond_6

    .line 435
    :cond_3
    if-eqz p1, :cond_4

    .line 436
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_4

    .line 437
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_6

    .line 439
    :cond_4
    if-eqz p1, :cond_5

    .line 440
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1, v4}, Lcom/citibikenyc/citibike/PlaceDataManager;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/citibikenyc/citibike/models/Place;->setDistanceInMeters(D)V

    .line 442
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v3           #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;II)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNearbyStartStations(Lcom/google/android/gms/maps/model/LatLng;I)Ljava/util/ArrayList;
    .locals 8
    .parameter "position"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v2, nearbyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v1, nearby:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 487
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 496
    sget-object v4, Lcom/citibikenyc/citibike/PlaceDataManager;->COMPARE_DISTANCE:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 497
    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 499
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 504
    .end local v0           #i:I
    :cond_0
    return-object v2

    .line 488
    .restart local v0       #i:I
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 489
    .local v3, place:Lcom/citibikenyc/citibike/models/Place;
    iget-boolean v4, v3, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    if-lez v4, :cond_3

    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_3

    .line 490
    :cond_2
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1, v4}, Lcom/citibikenyc/citibike/PlaceDataManager;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/citibikenyc/citibike/models/Place;->setDistanceInMeters(D)V

    .line 491
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v3           #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getNonStations(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "labelSearchTerm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v3, placeList:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 592
    .end local v0           #i:I
    :cond_0
    return-object v3

    .line 579
    .restart local v0       #i:I
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/models/Place;

    .line 580
    .local v2, place:Lcom/citibikenyc/citibike/models/Place;
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 582
    .local v1, locale:Ljava/util/Locale;
    iget v4, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 583
    iget-object v4, v2, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 584
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_3
    iget v4, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 586
    iget-object v4, v2, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getPlace(II)Lcom/citibikenyc/citibike/models/Place;
    .locals 3
    .parameter "placeType"
    .parameter "id"

    .prologue
    .line 665
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 673
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/Place;

    .line 668
    .local v1, p:Lcom/citibikenyc/citibike/models/Place;
    iget v2, v1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v2, p1, :cond_2

    iget v2, v1, Lcom/citibikenyc/citibike/models/Place;->id:I

    if-eq v2, p2, :cond_0

    .line 665
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPlaces(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "labelSearchTerm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v4, placeList:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v5, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 535
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 552
    .end local v0           #i:I
    :cond_0
    return-object v4

    .line 536
    .restart local v0       #i:I
    :cond_1
    iget-object v5, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 537
    .local v3, place:Lcom/citibikenyc/citibike/models/Place;
    iget-object v5, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 540
    .local v2, locale:Ljava/util/Locale;
    iget v5, v3, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 541
    iget-object v1, v3, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 546
    .local v1, label:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 547
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    .end local v1           #label:Ljava/lang/String;
    :cond_3
    iget-object v1, v3, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .restart local v1       #label:Ljava/lang/String;
    goto :goto_1
.end method

.method public getStations(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "labelSearchTerm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v3, stationList:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 560
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 570
    .end local v0           #i:I
    :cond_0
    return-object v3

    .line 561
    .restart local v0       #i:I
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/models/Place;

    .line 562
    .local v2, place:Lcom/citibikenyc/citibike/models/Place;
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 564
    .local v1, locale:Ljava/util/Locale;
    iget v4, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, v2, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 565
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->cancelUpdates()V

    .line 128
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadContent()V

    .line 129
    return-void
.end method

.method public loadContent()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "PlaceDataManager"

    const-string v1, "loadContent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    const-string v1, "http://appservices.citibikenyc.com/v1/content/list"

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V

    .line 135
    return-void
.end method

.method public loadData(ILjava/lang/String;)V
    .locals 4
    .parameter "loadType"
    .parameter "url"

    .prologue
    .line 169
    const-string v1, "PlaceDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadData "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;

    invoke-direct {v0, p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;-><init>(Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;I)V

    .line 171
    .local v0, loader:Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    return-void
.end method

.method public loadLocations()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "PlaceDataManager"

    const-string v1, "loadLocations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v0, 0x64

    const-string v1, "http://appservices.citibikenyc.com/data2/stations.php"

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V

    .line 166
    return-void
.end method

.method public loadSavedContent()V
    .locals 5

    .prologue
    .line 101
    new-instance v0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;

    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;-><init>(Landroid/content/Context;Lcom/citibikenyc/citibike/PlaceDataManager;)V

    .line 102
    .local v0, placesLoadFromDisk:Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0033

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 103
    iget-object v3, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0034

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 104
    iget-object v3, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 102
    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method

.method public onContentLoad(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "result"

    .prologue
    .line 631
    :try_start_0
    const-string v2, "results"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 634
    .local v1, updateTimestamps:Lorg/json/JSONObject;
    const-string v2, "branch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_0
    const-string v2, "helmet"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 639
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 640
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 647
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadLocations()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    .end local v1           #updateTimestamps:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "PlaceDataManager"

    const-string v3, "JSONException in content from onContentLoad"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPlaceDataLoad(Lorg/json/JSONObject;)V
    .locals 22
    .parameter "locationsData"

    .prologue
    .line 212
    const-string v3, "PlaceDataManager"

    const-string v4, "onPlaceDataLoad"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_0
    const-string v3, "lastUpdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 217
    .local v18, stationTimestamp:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    cmp-long v3, v18, v3

    if-lez v3, :cond_6

    .line 218
    const-string v3, "PlaceDataManager"

    const-string v4, "DEBUG Our whole stations list needs refreshed:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v3, "PlaceDataManager"

    const-string v4, "Load stations"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v3, "results"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 224
    .local v14, locationsJSON:Lorg/json/JSONArray;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v17, placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v11, v3, :cond_1

    .line 235
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v11, v3, :cond_3

    .line 258
    const-string v3, "PlaceDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Stations complete. Total: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v4, 0x1

    const-string v5, "lastUpdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 262
    const-string v3, "PlaceDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Stations to remove: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 267
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->notifyObservers(Z)V

    .line 269
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    if-nez v3, :cond_0

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->scheduleUpdates()V

    .line 274
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0033

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/citibikenyc/citibike/helpers/FileHelper;->writeTextToInternalStorage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 284
    .end local v11           #i:I
    .end local v14           #locationsJSON:Lorg/json/JSONArray;
    .end local v17           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    .end local v18           #stationTimestamp:J
    :goto_3
    return-void

    .line 227
    .restart local v11       #i:I
    .restart local v14       #locationsJSON:Lorg/json/JSONArray;
    .restart local v17       #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    .restart local v18       #stationTimestamp:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/citibikenyc/citibike/models/Place;

    .line 229
    .local v16, p:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 230
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 236
    .end local v16           #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_3
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 238
    .local v13, locationJSON:Lorg/json/JSONObject;
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    const-string v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "label"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 239
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "latitude"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "longitude"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 240
    const-string v7, "Active"

    const-string v8, "status"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 241
    const-string v8, "availableBikes"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "availableDocks"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 238
    invoke-direct/range {v2 .. v9}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ZII)V

    .line 244
    .local v2, place:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 247
    .local v12, locationIndex:I
    if-ltz v12, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/citibikenyc/citibike/models/Place;

    .line 250
    .local v15, oldStation:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    iget-boolean v3, v2, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    iget v4, v2, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v5, v2, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v15, v3, v4, v5}, Lcom/citibikenyc/citibike/models/Place;->updateStationData(ZII)V

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v12, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 235
    .end local v15           #oldStation:Lcom/citibikenyc/citibike/models/Place;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 254
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 281
    .end local v2           #place:Lcom/citibikenyc/citibike/models/Place;
    .end local v11           #i:I
    .end local v12           #locationIndex:I
    .end local v13           #locationJSON:Lorg/json/JSONObject;
    .end local v14           #locationsJSON:Lorg/json/JSONArray;
    .end local v17           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    .end local v18           #stationTimestamp:J
    :catch_0
    move-exception v10

    .line 282
    .local v10, e:Lorg/json/JSONException;
    const-string v3, "PlaceDataManager"

    const-string v4, "JSONException in content from onPlaceDataLoad"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 263
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v11       #i:I
    .restart local v14       #locationsJSON:Lorg/json/JSONArray;
    .restart local v17       #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    .restart local v18       #stationTimestamp:J
    :cond_5
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/citibikenyc/citibike/models/Place;

    .line 264
    .restart local v16       #p:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 276
    .end local v11           #i:I
    .end local v14           #locationsJSON:Lorg/json/JSONArray;
    .end local v16           #p:Lcom/citibikenyc/citibike/models/Place;
    .end local v17           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_6
    const-string v3, "PlaceDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG Doing updates instead:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->refreshLocations()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public onPlaceDataRefresh(Lorg/json/JSONObject;I)V
    .locals 20
    .parameter "locationsUpdateData"
    .parameter "placeUpdateType"

    .prologue
    .line 326
    const-string v3, "PlaceDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPlaceDataRefresh:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :try_start_0
    const-string v3, "results"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 330
    .local v14, locationsJSON:Lorg/json/JSONArray;
    const-string v3, "PlaceDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updating palces for type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v17, placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v11, v3, :cond_1

    .line 343
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v11, v3, :cond_3

    .line 390
    const-string v3, "PlaceDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Places to remove: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const-string v4, "lastUpdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, p2

    .line 396
    const-string v3, "PlaceDataManager"

    const-string v4, "Marker update complete."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    packed-switch p2, :pswitch_data_0

    .line 410
    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->notifyObservers(Z)V

    .line 412
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    if-nez v3, :cond_0

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->scheduleUpdates()V

    .line 419
    .end local v11           #i:I
    .end local v14           #locationsJSON:Lorg/json/JSONArray;
    .end local v17           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_0
    :goto_4
    return-void

    .line 336
    .restart local v11       #i:I
    .restart local v14       #locationsJSON:Lorg/json/JSONArray;
    .restart local v17       #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/citibikenyc/citibike/models/Place;

    .line 338
    .local v16, p:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_2

    .line 339
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 344
    .end local v16           #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_3
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 346
    .local v13, locationJSON:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 347
    .local v2, newPlace:Lcom/citibikenyc/citibike/models/Place;
    packed-switch p2, :pswitch_data_1

    .line 363
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    const-string v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "label"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 364
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "latitude"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "longitude"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v7, 0x0

    .line 363
    invoke-direct/range {v2 .. v7}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 368
    .restart local v2       #newPlace:Lcom/citibikenyc/citibike/models/Place;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 371
    .local v12, locationIndex:I
    if-ltz v12, :cond_5

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/citibikenyc/citibike/models/Place;

    .line 373
    .local v15, oldStation:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 375
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_4

    .line 376
    iget-boolean v3, v2, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    iget v4, v2, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v5, v2, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v15, v3, v4, v5}, Lcom/citibikenyc/citibike/models/Place;->updateStationData(ZII)V

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v12, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 343
    .end local v12           #locationIndex:I
    .end local v15           #oldStation:Lcom/citibikenyc/citibike/models/Place;
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 349
    :pswitch_0
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    const-string v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Citibank Branch"

    const-string v5, "label"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "latitude"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "longitude"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v7, 0x3

    .line 349
    invoke-direct/range {v2 .. v7}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 351
    .restart local v2       #newPlace:Lcom/citibikenyc/citibike/models/Place;
    goto :goto_5

    .line 353
    :pswitch_1
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    const-string v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "label"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 354
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "latitude"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "longitude"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v7, 0x2

    .line 353
    invoke-direct/range {v2 .. v7}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 355
    .restart local v2       #newPlace:Lcom/citibikenyc/citibike/models/Place;
    goto/16 :goto_5

    .line 357
    :pswitch_2
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    const-string v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "label"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 358
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "latitude"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "longitude"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 359
    const-string v7, "Active"

    const-string v8, "status"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 360
    const-string v8, "availableBikes"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "availableDocks"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 357
    invoke-direct/range {v2 .. v9}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ZII)V

    .line 361
    .restart local v2       #newPlace:Lcom/citibikenyc/citibike/models/Place;
    goto/16 :goto_5

    .line 379
    .restart local v12       #locationIndex:I
    .restart local v15       #oldStation:Lcom/citibikenyc/citibike/models/Place;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v12, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 416
    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    .end local v11           #i:I
    .end local v12           #locationIndex:I
    .end local v13           #locationJSON:Lorg/json/JSONObject;
    .end local v14           #locationsJSON:Lorg/json/JSONArray;
    .end local v15           #oldStation:Lcom/citibikenyc/citibike/models/Place;
    .end local v17           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :catch_0
    move-exception v10

    .line 417
    .local v10, e:Lorg/json/JSONException;
    const-string v3, "PlaceDataManager"

    const-string v4, "JSONException in content from onPlaceDataRefresh with type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 382
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v2       #newPlace:Lcom/citibikenyc/citibike/models/Place;
    .restart local v11       #i:I
    .restart local v12       #locationIndex:I
    .restart local v13       #locationJSON:Lorg/json/JSONObject;
    .restart local v14       #locationsJSON:Lorg/json/JSONArray;
    .restart local v17       #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_5
    :try_start_1
    const-string v3, "PlaceDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: unable to update previously existing item "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 385
    .end local v12           #locationIndex:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 391
    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    .end local v13           #locationJSON:Lorg/json/JSONObject;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/citibikenyc/citibike/models/Place;

    .line 392
    .restart local v16       #p:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 401
    .end local v16           #p:Lcom/citibikenyc/citibike/models/Place;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    .line 401
    invoke-static {v3, v4, v5}, Lcom/citibikenyc/citibike/helpers/FileHelper;->writeTextToInternalStorage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    goto/16 :goto_3

    .line 405
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0034

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    .line 405
    invoke-static {v3, v4, v5}, Lcom/citibikenyc/citibike/helpers/FileHelper;->writeTextToInternalStorage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 399
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 347
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSavedContent(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "stationData"
    .parameter "branchData"
    .parameter "helmetData"

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    .line 110
    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/PlaceDataManager;->onPlaceDataLoad(Lorg/json/JSONObject;)V

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    .line 114
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->onPlaceDataRefresh(Lorg/json/JSONObject;I)V

    .line 116
    :cond_1
    if-eqz p3, :cond_2

    .line 117
    const/4 v0, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->onPlaceDataRefresh(Lorg/json/JSONObject;I)V

    .line 119
    :cond_2
    const-string v0, "PlaceDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG onSavedContent, Current Timestamps: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->init()V

    .line 121
    return-void
.end method

.method public onStationDataRefresh(Lorg/json/JSONObject;)V
    .locals 14
    .parameter "locationsUpdateData"

    .prologue
    .line 288
    const-string v1, "PlaceDataManager"

    const-string v2, "onStationDataRefresh"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_0
    const-string v1, "results"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 292
    .local v12, locationsJSON:Lorg/json/JSONArray;
    const-string v1, "PlaceDataManager"

    const-string v2, "Updating markers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v9, v1, :cond_1

    .line 312
    const-string v1, "PlaceDataManager"

    const-string v2, "Marker update complete."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->notifyObservers(Z)V

    .line 316
    iget-boolean v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    if-nez v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->scheduleUpdates()V

    .line 322
    .end local v9           #i:I
    .end local v12           #locationsJSON:Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-void

    .line 295
    .restart local v9       #i:I
    .restart local v12       #locationsJSON:Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 297
    .local v11, locationJSON:Lorg/json/JSONObject;
    new-instance v0, Lcom/citibikenyc/citibike/models/Place;

    const-string v1, "id"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    .line 298
    const-string v5, "Active"

    const-string v6, "status"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 299
    const-string v6, "availableBikes"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "availableDocks"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 297
    invoke-direct/range {v0 .. v7}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ZII)V

    .line 301
    .local v0, newStation:Lcom/citibikenyc/citibike/models/Place;
    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 304
    .local v10, locationIndex:I
    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/citibikenyc/citibike/models/Place;

    .line 305
    .local v13, oldStation:Lcom/citibikenyc/citibike/models/Place;
    iget-boolean v1, v0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    iget v2, v0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v3, v0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v13, v1, v2, v3}, Lcom/citibikenyc/citibike/models/Place;->updateStationData(ZII)V

    .line 306
    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v1, v10, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    .end local v10           #locationIndex:I
    .end local v13           #oldStation:Lcom/citibikenyc/citibike/models/Place;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 308
    :cond_2
    const-string v1, "PlaceDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to locate update station: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/Place;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 319
    .end local v0           #newStation:Lcom/citibikenyc/citibike/models/Place;
    .end local v9           #i:I
    .end local v11           #locationJSON:Lorg/json/JSONObject;
    .end local v12           #locationsJSON:Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 320
    .local v8, e:Lorg/json/JSONException;
    const-string v1, "PlaceDataManager"

    const-string v2, "JSONException in content from onStationDataRefresh with type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public refreshLocations()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "PlaceDataManager"

    const-string v1, "refreshLocations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/16 v0, 0xc8

    const-string v1, "http://appservices.citibikenyc.com/data2/stations.php?updateOnly=true"

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V

    .line 177
    return-void
.end method

.method public scheduleUpdates()V
    .locals 9

    .prologue
    .line 180
    const-string v7, "PlaceDataManager"

    const-string v8, "scheduleUpdates"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x1

    .line 183
    .local v1, alarmType:I
    const-wide/32 v4, 0xea60

    .line 184
    .local v4, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long v2, v7, v4

    .line 186
    .local v2, start:J
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->cancelUpdates()V

    .line 188
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    .line 189
    iget-object v7, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/citibikenyc/citibike/PlaceDataManager;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 190
    .local v6, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 192
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 193
    return-void
.end method

.method public testUpdate()V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, testData:Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->onPlaceDataLoad(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1           #testData:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public update(Lcom/citibikenyc/citibike/models/Place;)Z
    .locals 2
    .parameter "p"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 608
    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateData()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v8, 0x0

    .line 138
    const-string v2, "PlaceDataManager"

    const-string v3, "updateData"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v2, "PlaceDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finishUpdate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v9

    iget-object v6, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    aget-wide v6, v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v9

    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    aget-wide v4, v4, v8

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadContent()V

    .line 161
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 145
    .local v1, updatePlaceType:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    const-string v2, "PlaceDataManager"

    const-string v3, "Helmet update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v2, 0x2

    const-string v3, "http://appservices.citibikenyc.com/v1/helmet/list"

    invoke-virtual {p0, v2, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v1           #updatePlaceType:I
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PlaceDataManager"

    const-string v3, "Interrupted while updating data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #updatePlaceType:I
    :pswitch_1
    :try_start_1
    const-string v2, "PlaceDataManager"

    const-string v3, "Branch update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v2, 0x3

    const-string v3, "http://appservices.citibikenyc.com/v1/branch/list"

    invoke-virtual {p0, v2, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 159
    .end local v1           #updatePlaceType:I
    :cond_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->refreshLocations()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
