.class public Lcom/citibikenyc/citibike/models/Place;
.super Ljava/lang/Object;
.source "Place.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/citibikenyc/citibike/models/Place;",
        ">;"
    }
.end annotation


# static fields
.field public static PLACE_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BRANCH:I = 0x3

.field public static final TYPE_COFFEE:I = 0x7

.field public static final TYPE_CURRENT_LOCATION:I = 0x4

.field public static final TYPE_FUELED:I = 0x6

.field public static final TYPE_GENERIC:I = 0x0

.field public static final TYPE_HELMET:I = 0x2

.field public static final TYPE_LANE:I = 0x5

.field public static final TYPE_RESTURANT:I = 0x8

.field public static final TYPE_STATION:I = 0x1

.field private static fueledBoundary:Lcom/google/android/gms/maps/model/LatLngBounds;


# instance fields
.field public bikesAvailable:I

.field public currentIconId:I

.field public description:Ljava/lang/String;

.field private df:Ljava/text/DecimalFormat;

.field public distance:D

.field public docksAvailable:I

.field public favoritedTimestamp:J

.field public hasDistance:Z

.field public iconId:I

.field public id:I

.field public isActive:Z

.field public label:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public placeType:I

.field public point:Lcom/google/android/gms/maps/model/LatLng;

.field public redraw:Z

.field public referenceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v2, 0x40445cb9fdbd2fa1L

    const-wide v4, -0x3fad8037e6f71a7eL

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 52
    .local v0, fueledNEBound:Lcom/google/android/gms/maps/model/LatLng;
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v2, 0x40445cb324851a87L

    const-wide v4, -0x3fad80242070b8d0L

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 53
    .local v1, fueledSWbound:Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    sput-object v2, Lcom/citibikenyc/citibike/models/Place;->fueledBoundary:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 265
    new-instance v2, Lcom/citibikenyc/citibike/models/Place$1;

    invoke-direct {v2}, Lcom/citibikenyc/citibike/models/Place$1;-><init>()V

    sput-object v2, Lcom/citibikenyc/citibike/models/Place;->PLACE_COMPARATOR:Ljava/util/Comparator;

    .line 14
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 4
    .parameter "id"
    .parameter "label"
    .parameter "description"
    .parameter "point"
    .parameter "placeType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 20
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 21
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 23
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 24
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 25
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 26
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 30
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 34
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    .line 57
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    .line 138
    iput p1, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    .line 139
    iput-object p2, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .line 140
    invoke-direct {p0, p3}, Lcom/citibikenyc/citibike/models/Place;->formatAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 142
    const-string v0, "Current Location"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x4

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->getIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 153
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 154
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/citibikenyc/citibike/models/Place;->isLocationOfFueled(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const/4 v0, 0x6

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    goto :goto_0

    .line 149
    :cond_1
    iput p5, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ZII)V
    .locals 5
    .parameter "id"
    .parameter "label"
    .parameter "description"
    .parameter "point"
    .parameter "isActive"
    .parameter "bikesAvailable"
    .parameter "docksAvailable"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v4, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 19
    iput-boolean v3, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 20
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 21
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 23
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 24
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 25
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 26
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 30
    iput-object v4, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 34
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    .line 57
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    .line 60
    iput p1, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    .line 61
    iput-object p2, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 64
    iput-boolean p5, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 65
    iput p6, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 66
    iput p7, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 67
    iput v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 69
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 20
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 21
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 23
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 24
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 25
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 26
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 30
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 34
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    .line 57
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    .line 73
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->id:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    .line 74
    iget-object v0, p1, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 78
    iget-boolean v0, p1, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 79
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 80
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 81
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 82
    iget-wide v0, p1, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 83
    iget-boolean v0, p1, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 84
    iget-wide v0, p1, Lcom/citibikenyc/citibike/models/Place;->distance:D

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 86
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 4
    .parameter "label"
    .parameter "description"
    .parameter "point"
    .parameter "placeType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 20
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 21
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 23
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 24
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 25
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 26
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 30
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 34
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    .line 57
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    .line 90
    iput-object p1, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .line 91
    invoke-direct {p0, p2}, Lcom/citibikenyc/citibike/models/Place;->formatAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 94
    const-string v0, "Current Location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x4

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->getIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 104
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 105
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/citibikenyc/citibike/models/Place;->isLocationOfFueled(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x6

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    goto :goto_0

    .line 100
    :cond_1
    iput p4, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    goto :goto_0
.end method

.method private formatAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "placeDescription"

    .prologue
    .line 468
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, placeString:[Ljava/lang/String;
    const-string v0, ""

    .line 470
    .local v0, description:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 472
    return-object v0
.end method

.method private getEndIconResource()I
    .locals 5

    .prologue
    .line 432
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v3, :pswitch_data_0

    .line 464
    :cond_0
    :pswitch_0
    const v3, 0x7f02008b

    :goto_0
    return v3

    .line 434
    :pswitch_1
    const v3, 0x7f0200bd

    goto :goto_0

    .line 436
    :pswitch_2
    const v3, 0x7f0200c1

    goto :goto_0

    .line 439
    :pswitch_3
    const v3, 0x7f02007d

    goto :goto_0

    .line 443
    :pswitch_4
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v3, :cond_1

    .line 444
    const v3, 0x7f0200b8

    goto :goto_0

    .line 446
    :cond_1
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    add-int v2, v3, v4

    .line 447
    .local v2, totalSpaces:I
    if-lez v2, :cond_0

    .line 448
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v2

    int-to-double v0, v3

    .line 449
    .local v0, available:D
    const-wide/high16 v3, 0x4059

    cmpl-double v3, v0, v3

    if-nez v3, :cond_2

    .line 450
    const v3, 0x7f020093

    goto :goto_0

    .line 451
    :cond_2
    const-wide v3, 0x4051800000000000L

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_3

    .line 452
    const v3, 0x7f02009c

    goto :goto_0

    .line 453
    :cond_3
    const-wide/high16 v3, 0x403e

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_4

    .line 454
    const v3, 0x7f020099

    goto :goto_0

    .line 455
    :cond_4
    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_5

    .line 456
    const v3, 0x7f020096

    goto :goto_0

    .line 458
    :cond_5
    const v3, 0x7f020090

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getSortOrder(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 250
    packed-switch p1, :pswitch_data_0

    .line 258
    :pswitch_0
    move v0, p1

    .line 262
    .local v0, order:I
    :goto_0
    return v0

    .line 252
    .end local v0           #order:I
    :pswitch_1
    const/4 v0, -0x2

    .line 253
    .restart local v0       #order:I
    goto :goto_0

    .line 255
    .end local v0           #order:I
    :pswitch_2
    const/4 v0, -0x1

    .line 256
    .restart local v0       #order:I
    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getStartIconResource()I
    .locals 5

    .prologue
    .line 397
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v3, :pswitch_data_0

    .line 428
    :cond_0
    :pswitch_0
    const v3, 0x7f02008a

    :goto_0
    return v3

    .line 399
    :pswitch_1
    const v3, 0x7f0200bc

    goto :goto_0

    .line 401
    :pswitch_2
    const v3, 0x7f0200c0

    goto :goto_0

    .line 403
    :pswitch_3
    const v3, 0x7f02007d

    goto :goto_0

    .line 407
    :pswitch_4
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v3, :cond_1

    .line 408
    const v3, 0x7f02009e

    goto :goto_0

    .line 410
    :cond_1
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    add-int v2, v3, v4

    .line 411
    .local v2, totalSpaces:I
    if-lez v2, :cond_0

    .line 412
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v2

    int-to-double v0, v3

    .line 413
    .local v0, available:D
    const-wide/high16 v3, 0x4059

    cmpl-double v3, v0, v3

    if-nez v3, :cond_2

    .line 414
    const v3, 0x7f020092

    goto :goto_0

    .line 415
    :cond_2
    const-wide v3, 0x4051800000000000L

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_3

    .line 416
    const v3, 0x7f02009b

    goto :goto_0

    .line 417
    :cond_3
    const-wide/high16 v3, 0x403e

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_4

    .line 418
    const v3, 0x7f020098

    goto :goto_0

    .line 419
    :cond_4
    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_5

    .line 420
    const v3, 0x7f020095

    goto :goto_0

    .line 422
    :cond_5
    const v3, 0x7f02008f

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/citibikenyc/citibike/models/Place;)I
    .locals 6
    .parameter "place"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/4 v2, 0x0

    .line 243
    :goto_0
    return v2

    .line 232
    :cond_0
    iget v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v2, v3, :cond_3

    .line 233
    iget-boolean v2, p1, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-nez v2, :cond_1

    .line 234
    const/4 v2, 0x1

    goto :goto_0

    .line 235
    :cond_1
    iget-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-nez v2, :cond_2

    .line 236
    const/4 v2, -0x1

    goto :goto_0

    .line 238
    :cond_2
    iget-wide v2, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    iget-wide v4, p1, Lcom/citibikenyc/citibike/models/Place;->distance:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    goto :goto_0

    .line 240
    :cond_3
    iget v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/models/Place;->getSortOrder(I)I

    move-result v1

    .line 241
    .local v1, thisPlace:I
    iget v2, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/models/Place;->getSortOrder(I)I

    move-result v0

    .line 243
    .local v0, thatPlace:I
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/models/Place;->compareTo(Lcom/citibikenyc/citibike/models/Place;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    if-ne p0, p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 194
    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 196
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 198
    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 200
    .local v0, other:Lcom/citibikenyc/citibike/models/Place;
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-eq v3, v1, :cond_4

    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 201
    :cond_4
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    iget v4, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    iget v4, v0, Lcom/citibikenyc/citibike/models/Place;->id:I

    if-eq v3, v4, :cond_0

    .line 206
    :cond_5
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 207
    iget-object v3, v0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 208
    goto :goto_0

    .line 209
    :cond_6
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 210
    goto :goto_0

    .line 211
    :cond_7
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    iget v4, v0, Lcom/citibikenyc/citibike/models/Place;->id:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 212
    goto :goto_0

    .line 213
    :cond_8
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 214
    iget-object v3, v0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 215
    goto :goto_0

    .line 216
    :cond_9
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 217
    goto :goto_0

    .line 218
    :cond_a
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    iget v4, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 219
    goto :goto_0

    .line 220
    :cond_b
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 221
    iget-object v3, v0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 222
    goto :goto_0

    .line 223
    :cond_c
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 224
    goto :goto_0
.end method

.method public getBigIconResource()I
    .locals 6

    .prologue
    const v3, 0x7f02008e

    .line 357
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v4, :pswitch_data_0

    .line 393
    :pswitch_0
    const v3, 0x7f020089

    :cond_0
    :goto_0
    return v3

    .line 359
    :pswitch_1
    const v3, 0x7f020087

    goto :goto_0

    .line 361
    :pswitch_2
    const v3, 0x7f02008c

    goto :goto_0

    .line 364
    :pswitch_3
    iget-boolean v4, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v4, :cond_1

    .line 365
    const v3, 0x7f02009d

    goto :goto_0

    .line 367
    :cond_1
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v5, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    add-int v2, v4, v5

    .line 368
    .local v2, totalSpaces:I
    if-lez v2, :cond_0

    .line 369
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    int-to-double v0, v4

    .line 370
    .local v0, available:D
    const-wide/high16 v4, 0x4059

    cmpl-double v4, v0, v4

    if-nez v4, :cond_2

    .line 371
    const v3, 0x7f020091

    goto :goto_0

    .line 372
    :cond_2
    const-wide v4, 0x4051800000000000L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_3

    .line 373
    const v3, 0x7f02009a

    goto :goto_0

    .line 374
    :cond_3
    const-wide/high16 v4, 0x403e

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_4

    .line 375
    const v3, 0x7f020097

    goto :goto_0

    .line 376
    :cond_4
    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    .line 377
    const v3, 0x7f020094

    goto :goto_0

    .line 385
    .end local v0           #available:D
    .end local v2           #totalSpaces:I
    :pswitch_4
    const v3, 0x7f02007d

    goto :goto_0

    .line 387
    :pswitch_5
    const v3, 0x7f020088

    goto :goto_0

    .line 389
    :pswitch_6
    const v3, 0x7f02008d

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getClusterIcon()I
    .locals 1

    .prologue
    .line 311
    const v0, 0x7f020076

    return v0
.end method

.method public getDistanceInKilometers()Ljava/lang/String;
    .locals 5

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    iget-wide v1, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDistanceInMiles()Ljava/lang/String;
    .locals 5

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    iget-wide v1, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    const-wide v3, 0x3f445c7000000000L

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getIconResource()I
    .locals 6

    .prologue
    const v3, 0x7f0200a7

    .line 315
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v4, :pswitch_data_0

    .line 353
    :pswitch_0
    const v3, 0x7f0200a2

    :cond_0
    :goto_0
    return v3

    .line 317
    :pswitch_1
    const v3, 0x7f0200bb

    goto :goto_0

    .line 319
    :pswitch_2
    const v3, 0x7f0200bf

    goto :goto_0

    .line 322
    :pswitch_3
    const v3, 0x7f02007d

    goto :goto_0

    .line 326
    :pswitch_4
    iget-boolean v4, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v4, :cond_1

    .line 327
    const v3, 0x7f0200b6

    goto :goto_0

    .line 329
    :cond_1
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v5, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    add-int v2, v4, v5

    .line 330
    .local v2, totalSpaces:I
    if-lez v2, :cond_0

    .line 331
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    int-to-double v0, v4

    .line 332
    .local v0, available:D
    const-wide/high16 v4, 0x4059

    cmpl-double v4, v0, v4

    if-nez v4, :cond_2

    .line 333
    const v3, 0x7f0200aa

    goto :goto_0

    .line 334
    :cond_2
    const-wide v4, 0x4051800000000000L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_3

    .line 335
    const v3, 0x7f0200b3

    goto :goto_0

    .line 336
    :cond_3
    const-wide/high16 v4, 0x403e

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_4

    .line 337
    const v3, 0x7f0200b0

    goto :goto_0

    .line 338
    :cond_4
    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    .line 339
    const v3, 0x7f0200ad

    goto :goto_0

    .line 347
    .end local v0           #available:D
    .end local v2           #totalSpaces:I
    :pswitch_5
    const v3, 0x7f0200be

    goto :goto_0

    .line 349
    :pswitch_6
    const v3, 0x7f0200c2

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 177
    const/16 v0, 0x1f

    .line 178
    .local v0, prime:I
    const/4 v1, 0x1

    .line 180
    .local v1, result:I
    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    .line 179
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 181
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    add-int v1, v2, v4

    .line 182
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 183
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    add-int v1, v2, v4

    .line 184
    mul-int/lit8 v2, v1, 0x1f

    .line 185
    iget-object v4, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 184
    :goto_2
    add-int v1, v2, v3

    .line 186
    return v1

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 185
    :cond_2
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isLocationOfFueled(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 5
    .parameter "label"
    .parameter "description"
    .parameter "point"

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, isFueled:Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    :cond_0
    if-eqz p3, :cond_1

    .line 112
    sget-object v2, Lcom/citibikenyc/citibike/models/Place;->fueledBoundary:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    const/4 v1, 0x1

    .line 133
    :cond_1
    :goto_0
    return v1

    .line 115
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    :cond_3
    const-string v2, "fueled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 119
    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v3, "Broadway"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 121
    :cond_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v3, "568 broadway"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string v3, "Manhattan"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDefaultIcon()V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->getIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 297
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 298
    return-void
.end method

.method public setDistanceInMeters(D)V
    .locals 1
    .parameter "distance"

    .prologue
    .line 286
    iput-wide p1, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 288
    return-void
.end method

.method public setEndIcon()V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/citibikenyc/citibike/models/Place;->getEndIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 307
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 308
    return-void
.end method

.method public setLargeIcon()V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->getBigIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 292
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 293
    return-void
.end method

.method public setStartIcon()V
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/citibikenyc/citibike/models/Place;->getStartIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 302
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 303
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", placetype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateStationData(ZII)V
    .locals 2
    .parameter "isActive"
    .parameter "bikesAvailable"
    .parameter "docksAvailable"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 158
    iput p2, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 159
    iput p3, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 160
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 161
    .local v0, oldIcon:I
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 164
    iget v1, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    if-eq v0, v1, :cond_0

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    .line 167
    :cond_0
    return-void
.end method
