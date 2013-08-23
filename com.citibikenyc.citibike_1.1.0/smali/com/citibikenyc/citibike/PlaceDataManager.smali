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

.field private static final PREFS_SCOOP_KEY_UPDATED:Ljava/lang/String; = "updated"

.field private static final PREFS_SCOOP_TIMESTAMP:Ljava/lang/String; = "SCOOP_TIMESTAMP"

.field public static final SCOOP_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/data2/poi.json"

.field protected static final TAG:Ljava/lang/String; = "PlaceDataManager"

.field public static final TEST_STATION_UPDATE_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/station/updates"

.field public static final TEST_STATION_URL:Ljava/lang/String; = "http://appservices.citibikenyc.com/v1/station/list"

.field public static final UPDATE_BRANCH:I = 0x3

.field public static final UPDATE_CONTENT:I = 0x0

.field public static final UPDATE_COPY:I = 0x4

.field public static final UPDATE_FREQUENCY:I = 0x3c

.field public static final UPDATE_FREQUENCY_SCOOP:J = 0x93a80L

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

.field placeDataLoadCallBack:Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;

.field private placeDataRefreshParseCallBack:Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;

.field private scoopDataParseCallBack:Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;

.field private stationParseCallBack:Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;

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
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/citibikenyc/citibike/PlaceDataManager;->instance:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 428
    new-instance v0, Lcom/citibikenyc/citibike/PlaceDataManager$5;

    invoke-direct {v0}, Lcom/citibikenyc/citibike/PlaceDataManager$5;-><init>()V

    sput-object v0, Lcom/citibikenyc/citibike/PlaceDataManager;->COMPARE_DISTANCE:Ljava/util/Comparator;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->observers:Ljava/util/ArrayList;

    .line 86
    iput-boolean v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    .line 88
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    .line 259
    new-instance v0, Lcom/citibikenyc/citibike/PlaceDataManager$1;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/PlaceDataManager$1;-><init>(Lcom/citibikenyc/citibike/PlaceDataManager;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->placeDataLoadCallBack:Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;

    .line 284
    new-instance v0, Lcom/citibikenyc/citibike/PlaceDataManager$2;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/PlaceDataManager$2;-><init>(Lcom/citibikenyc/citibike/PlaceDataManager;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->stationParseCallBack:Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;

    .line 306
    new-instance v0, Lcom/citibikenyc/citibike/PlaceDataManager$3;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/PlaceDataManager$3;-><init>(Lcom/citibikenyc/citibike/PlaceDataManager;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->placeDataRefreshParseCallBack:Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;

    .line 331
    new-instance v0, Lcom/citibikenyc/citibike/PlaceDataManager$4;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/PlaceDataManager$4;-><init>(Lcom/citibikenyc/citibike/PlaceDataManager;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->scoopDataParseCallBack:Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;

    .line 91
    iput-object p1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    .line 92
    sput-object p0, Lcom/citibikenyc/citibike/PlaceDataManager;->instance:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 94
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    aput-wide v2, v0, v4

    .line 95
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    .line 98
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v1, 0x7

    aput-wide v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/16 v1, 0x8

    aput-wide v2, v0, v1

    .line 102
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->cancelUpdates()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    .line 107
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadSavedContent()V

    .line 108
    return-void
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/PlaceDataManager;)[J
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    return-object v0
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/PlaceDataManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/PlaceDataManager;->notifyObservers(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/PlaceDataManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    return v0
.end method

.method static synthetic access$5(Lcom/citibikenyc/citibike/PlaceDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->saveScoopLoadTimeStamp()V

    return-void
.end method

.method private addScoopToUpdateQueue()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    .line 628
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const-string v5, "SCOOP_TIMESTAMP"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "updated"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 630
    .local v0, scoopTimeStamp:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 631
    .local v2, timeNow:J
    sub-long v4, v2, v0

    const-wide/32 v6, 0x93a80

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 632
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/citibikenyc/citibike/PlaceDataManager;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/citibikenyc/citibike/PlaceDataManager;->instance:Lcom/citibikenyc/citibike/PlaceDataManager;

    return-object v0
.end method

.method private getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/citibikenyc/citibike/helpers/UpdateReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.citibikenyc.citibike.update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private varargs isPlaceTypeSame(Lcom/citibikenyc/citibike/models/Place;[I)Z
    .locals 5
    .parameter "place"
    .parameter "placeType"

    .prologue
    .line 407
    const/4 v1, 0x0

    .line 408
    .local v1, isSame:Z
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 414
    :goto_1
    return v1

    .line 408
    :cond_0
    aget v0, p2, v2

    .line 409
    .local v0, element:I
    iget v4, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v4, v0, :cond_1

    .line 410
    const/4 v1, 0x1

    .line 411
    goto :goto_1

    .line 408
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private varargs isPlaceTypeZero([I)Z
    .locals 3
    .parameter "placeType"

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, isZero:Z
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget v1, p1, v1

    if-nez v1, :cond_0

    .line 401
    const/4 v0, 0x1

    .line 403
    :cond_0
    return v0
.end method

.method private loadScoopData()V
    .locals 2

    .prologue
    .line 196
    const/16 v0, 0x12c

    const-string v1, "http://appservices.citibikenyc.com/data2/poi.json"

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V

    .line 197
    return-void
.end method

.method private notifyObservers(Z)V
    .locals 2
    .parameter "update"

    .prologue
    .line 579
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 586
    return-void

    .line 580
    :cond_0
    if-eqz p1, :cond_1

    .line 581
    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;

    invoke-interface {v1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;->onPlaceDataUpdate()V

    .line 579
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;

    invoke-interface {v1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;->onPlaceDataLoad()V

    goto :goto_1
.end method

.method private saveScoopLoadTimeStamp()V
    .locals 5

    .prologue
    .line 350
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 351
    .local v0, now:J
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const-string v3, "SCOOP_TIMESTAMP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "updated"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 352
    return-void
.end method


# virtual methods
.method public addLocation(Lcom/citibikenyc/citibike/models/Place;)I
    .locals 1
    .parameter "p"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
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
    .line 575
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    return-void
.end method

.method public cancelUpdates()V
    .locals 4

    .prologue
    .line 228
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/PlaceDataManager;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 229
    .local v1, pi:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 230
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 231
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    .line 232
    return-void
.end method

.method public getBikeData(Lcom/citibikenyc/citibike/models/Place;)Lcom/citibikenyc/citibike/models/Place;
    .locals 2
    .parameter "p"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 561
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
    .line 423
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 424
    .local v8, dist:[F
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 425
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
    .line 466
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v2, nearbyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v1, nearby:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 470
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 477
    sget-object v4, Lcom/citibikenyc/citibike/PlaceDataManager;->COMPARE_DISTANCE:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 479
    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 482
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 487
    .end local v0           #i:I
    :cond_0
    return-object v2

    .line 471
    .restart local v0       #i:I
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 472
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

    .line 473
    :cond_2
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1, v4}, Lcom/citibikenyc/citibike/PlaceDataManager;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/citibikenyc/citibike/models/Place;->setDistanceInMeters(D)V

    .line 474
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v3           #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I)Ljava/util/ArrayList;
    .locals 2
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
    const/4 v1, 0x0

    .line 356
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public varargs getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I[I)Ljava/util/ArrayList;
    .locals 8
    .parameter "position"
    .parameter "limit"
    .parameter "placeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "I[I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v2, nearbyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v1, nearby:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 368
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 384
    sget-object v4, Lcom/citibikenyc/citibike/PlaceDataManager;->COMPARE_DISTANCE:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 386
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le p2, v4, :cond_0

    .line 387
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    .line 390
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-lt v0, p2, :cond_7

    .line 395
    .end local v0           #i:I
    :cond_1
    return-object v2

    .line 369
    .restart local v0       #i:I
    :cond_2
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 371
    .local v3, place:Lcom/citibikenyc/citibike/models/Place;
    invoke-direct {p0, p3}, Lcom/citibikenyc/citibike/PlaceDataManager;->isPlaceTypeZero([I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v3, p3}, Lcom/citibikenyc/citibike/PlaceDataManager;->isPlaceTypeSame(Lcom/citibikenyc/citibike/models/Place;[I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 373
    :cond_3
    if-eqz p1, :cond_4

    .line 374
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_4

    .line 375
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_6

    .line 377
    :cond_4
    if-eqz p1, :cond_5

    .line 378
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1, v4}, Lcom/citibikenyc/citibike/PlaceDataManager;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/citibikenyc/citibike/models/Place;->setDistanceInMeters(D)V

    .line 380
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v3           #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
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

.method public bridge varargs synthetic getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I[I)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I[I)Ljava/util/ArrayList;

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
    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v2, nearbyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v1, nearby:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 444
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 454
    sget-object v4, Lcom/citibikenyc/citibike/PlaceDataManager;->COMPARE_DISTANCE:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 455
    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 457
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 462
    .end local v0           #i:I
    :cond_0
    return-object v2

    .line 445
    .restart local v0       #i:I
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 446
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

    .line 447
    :cond_2
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1, v4}, Lcom/citibikenyc/citibike/PlaceDataManager;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/citibikenyc/citibike/models/Place;->setDistanceInMeters(D)V

    .line 448
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v3           #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
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
    .line 535
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v3, placeList:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 538
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 552
    .end local v0           #i:I
    :cond_0
    return-object v3

    .line 539
    .restart local v0       #i:I
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/models/Place;

    .line 540
    .local v2, place:Lcom/citibikenyc/citibike/models/Place;
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 542
    .local v1, locale:Ljava/util/Locale;
    iget v4, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 543
    iget-object v4, v2, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 544
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_3
    iget v4, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 546
    iget-object v4, v2, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getPlace(II)Lcom/citibikenyc/citibike/models/Place;
    .locals 3
    .parameter "placeType"
    .parameter "id"

    .prologue
    .line 639
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 647
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 640
    :cond_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/Place;

    .line 642
    .local v1, p:Lcom/citibikenyc/citibike/models/Place;
    iget v2, v1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v2, p1, :cond_2

    iget v2, v1, Lcom/citibikenyc/citibike/models/Place;->id:I

    if-eq v2, p2, :cond_0

    .line 639
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
    .line 492
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v4, placeList:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v5, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 495
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 512
    .end local v0           #i:I
    :cond_0
    return-object v4

    .line 496
    .restart local v0       #i:I
    :cond_1
    iget-object v5, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 497
    .local v3, place:Lcom/citibikenyc/citibike/models/Place;
    iget-object v5, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 500
    .local v2, locale:Ljava/util/Locale;
    iget v5, v3, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 501
    iget-object v1, v3, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 506
    .local v1, label:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 507
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
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
    .line 517
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v3, stationList:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 520
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 530
    .end local v0           #i:I
    :cond_0
    return-object v3

    .line 521
    .restart local v0       #i:I
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/models/Place;

    .line 522
    .local v2, place:Lcom/citibikenyc/citibike/models/Place;
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 524
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

    .line 525
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->cancelUpdates()V

    .line 157
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadContent()V

    .line 158
    invoke-direct {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadScoopData()V

    .line 159
    return-void
.end method

.method public loadContent()V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    const-string v1, "http://appservices.citibikenyc.com/v1/content/list"

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V

    .line 167
    return-void
.end method

.method public loadData(ILjava/lang/String;)V
    .locals 3
    .parameter "loadType"
    .parameter "url"

    .prologue
    .line 205
    new-instance v0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;

    invoke-direct {v0, p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;-><init>(Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;I)V

    .line 206
    .local v0, loader:Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    return-void
.end method

.method public loadLocations()V
    .locals 2

    .prologue
    .line 201
    const/16 v0, 0x64

    const-string v1, "http://appservices.citibikenyc.com/data2/stations.php"

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V

    .line 202
    return-void
.end method

.method public loadSavedContent()V
    .locals 5

    .prologue
    .line 126
    new-instance v0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;

    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;-><init>(Landroid/content/Context;Lcom/citibikenyc/citibike/PlaceDataManager;)V

    .line 127
    .local v0, placesLoadFromDisk:Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0033

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 128
    iget-object v3, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0034

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 129
    iget-object v3, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0036

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 127
    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    return-void
.end method

.method public onContentLoad(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "result"

    .prologue
    .line 591
    :try_start_0
    const-string v2, "results"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 594
    .local v1, updateTimestamps:Lorg/json/JSONObject;
    const-string v2, "branch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_0
    const-string v2, "helmet"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 599
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_1
    invoke-direct {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->addScoopToUpdateQueue()V

    .line 607
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 611
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadLocations()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v1           #updateTimestamps:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "PlaceDataManager"

    const-string v3, "JSONException in content from onContentLoad"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPlaceDataLoad(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "locationsData"

    .prologue
    .line 244
    :try_start_0
    const-string v4, "lastUpdate"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 246
    .local v2, stationTimestamp:J
    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 247
    new-instance v1, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;

    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget-object v5, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->placeDataLoadCallBack:Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;

    iget-object v6, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;-><init>(Ljava/util/List;Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;Landroid/content/Context;)V

    .line 248
    .local v1, placeDataLoadTask:Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/json/JSONObject;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 257
    .end local v1           #placeDataLoadTask:Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;
    .end local v2           #stationTimestamp:J
    :goto_0
    return-void

    .line 251
    .restart local v2       #stationTimestamp:J
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->refreshLocations()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v2           #stationTimestamp:J
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "PlaceDataManager"

    const-string v5, "JSONException in content from onPlaceDataLoad"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPlaceDataRefresh(Lorg/json/JSONObject;I)V
    .locals 4
    .parameter "locationsUpdateData"
    .parameter "placeUpdateType"

    .prologue
    .line 302
    new-instance v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;

    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->placeDataRefreshParseCallBack:Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;

    iget-object v3, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;-><init>(Ljava/util/List;Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;Landroid/content/Context;I)V

    .line 303
    .local v0, placeDataRefreshParseTask:Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 304
    return-void
.end method

.method public onSavedContent(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 1
    .parameter "stationData"
    .parameter "branchData"
    .parameter "helmetData"
    .parameter "scoopData"

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/PlaceDataManager;->onPlaceDataLoad(Lorg/json/JSONObject;)V

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    .line 140
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->onPlaceDataRefresh(Lorg/json/JSONObject;I)V

    .line 142
    :cond_1
    if-eqz p3, :cond_2

    .line 143
    const/4 v0, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->onPlaceDataRefresh(Lorg/json/JSONObject;I)V

    .line 145
    :cond_2
    if-eqz p4, :cond_3

    .line 146
    invoke-virtual {p0, p4}, Lcom/citibikenyc/citibike/PlaceDataManager;->onScoopPlaceLoad(Lorg/json/JSONArray;)V

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->init()V

    .line 150
    return-void
.end method

.method public onScoopPlaceLoad(Lorg/json/JSONArray;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    new-instance v0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;

    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->scoopDataParseCallBack:Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;

    iget-object v3, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;-><init>(Ljava/util/List;Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;Landroid/content/Context;)V

    .line 327
    .local v0, scoopDataParseTask:Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONArray;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    .end local v0           #scoopDataParseTask:Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;
    :cond_0
    return-void
.end method

.method public onStationDataRefresh(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "locationsUpdateData"

    .prologue
    .line 280
    new-instance v0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;

    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->stationParseCallBack:Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;

    iget-object v3, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;-><init>(Ljava/util/List;Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;Landroid/content/Context;)V

    .line 281
    .local v0, stationDataParseTask:Lcom/citibikenyc/citibike/tasks/StationDataParseTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 282
    return-void
.end method

.method public refreshLocations()V
    .locals 2

    .prologue
    .line 210
    const/16 v0, 0xc8

    const-string v1, "http://appservices.citibikenyc.com/data2/stations.php?updateOnly=true"

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V

    .line 211
    return-void
.end method

.method public scheduleUpdates()V
    .locals 9

    .prologue
    .line 214
    const/4 v1, 0x1

    .line 215
    .local v1, alarmType:I
    const-wide/32 v4, 0xea60

    .line 216
    .local v4, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long v2, v7, v4

    .line 218
    .local v2, start:J
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->cancelUpdates()V

    .line 220
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updating:Z

    .line 221
    iget-object v7, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/citibikenyc/citibike/PlaceDataManager;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 222
    .local v6, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 224
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 225
    return-void
.end method

.method public testUpdate()V
    .locals 3

    .prologue
    .line 116
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, testData:Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->onPlaceDataLoad(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #testData:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public update(Lcom/citibikenyc/citibike/models/Place;)Z
    .locals 2
    .parameter "p"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    iget-object v1, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->locations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 568
    const/4 v0, 0x1

    .line 570
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateData()V
    .locals 6

    .prologue
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v4, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->lastUpdated:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadContent()V

    .line 193
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/PlaceDataManager;->updateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 175
    .local v1, updatePlaceType:I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 177
    :pswitch_1
    const/4 v2, 0x2

    const-string v3, "http://appservices.citibikenyc.com/v1/helmet/list"

    invoke-virtual {p0, v2, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v1           #updatePlaceType:I
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PlaceDataManager"

    const-string v3, "Interrupted while updating data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #updatePlaceType:I
    :pswitch_2
    const/4 v2, 0x3

    :try_start_1
    const-string v3, "http://appservices.citibikenyc.com/v1/branch/list"

    invoke-virtual {p0, v2, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadData(ILjava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_3
    invoke-direct {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->loadScoopData()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    .end local v1           #updatePlaceType:I
    :cond_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/PlaceDataManager;->refreshLocations()V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
