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

.field public static final TYPE_CURRENT_LOCATION:I = 0x4

.field public static final TYPE_GENERIC:I = 0x0

.field public static final TYPE_HELMET:I = 0x2

.field public static final TYPE_LANE:I = 0x5

.field public static final TYPE_STATION:I = 0x1


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

.field public placeType:I

.field public point:Lcom/google/android/gms/maps/model/LatLng;

.field public redraw:Z

.field public referenceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/citibikenyc/citibike/models/Place$1;

    invoke-direct {v0}, Lcom/citibikenyc/citibike/models/Place$1;-><init>()V

    sput-object v0, Lcom/citibikenyc/citibike/models/Place;->PLACE_COMPARATOR:Ljava/util/Comparator;

    .line 9
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

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 15
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 16
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 18
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 19
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 20
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 21
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 23
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 27
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    .line 36
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    .line 84
    iput p1, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    .line 85
    iput-object p2, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .line 86
    invoke-direct {p0, p3}, Lcom/citibikenyc/citibike/models/Place;->formatAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 88
    const-string v0, "Current Location"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->getIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 95
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 96
    return-void

    .line 91
    :cond_0
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v4, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 14
    iput-boolean v3, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 15
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 16
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 18
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 19
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 20
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 21
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 23
    iput-object v4, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 27
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    .line 36
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    .line 39
    iput p1, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    .line 40
    iput-object p2, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 43
    iput-boolean p5, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 44
    iput p6, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 45
    iput p7, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 46
    iput v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 48
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 15
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 16
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 18
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 19
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 20
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 21
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 23
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 27
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    .line 36
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    .line 52
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->id:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    .line 53
    iget-object v0, p1, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 57
    iget-boolean v0, p1, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 58
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 59
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 60
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 61
    iget-wide v0, p1, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 62
    iget-boolean v0, p1, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 63
    iget-wide v0, p1, Lcom/citibikenyc/citibike/models/Place;->distance:D

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 65
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 66
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

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 15
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 16
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 18
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 19
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 20
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 21
    iput v2, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 23
    iput-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 27
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    .line 36
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    .line 69
    iput-object p1, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .line 70
    invoke-direct {p0, p2}, Lcom/citibikenyc/citibike/models/Place;->formatAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 73
    const-string v0, "Current Location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x4

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->getIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 80
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 81
    return-void

    .line 76
    :cond_0
    iput p4, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    goto :goto_0
.end method

.method private formatAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "placeDescription"

    .prologue
    .line 386
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, placeString:[Ljava/lang/String;
    const-string v0, ""

    .line 388
    .local v0, description:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 390
    return-object v0
.end method

.method private getEndIconResource()I
    .locals 5

    .prologue
    .line 354
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v3, :pswitch_data_0

    .line 382
    :cond_0
    const v3, 0x7f020086

    :goto_0
    return v3

    .line 356
    :pswitch_0
    const v3, 0x7f0200b4

    goto :goto_0

    .line 358
    :pswitch_1
    const v3, 0x7f0200b7

    goto :goto_0

    .line 361
    :pswitch_2
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v3, :cond_1

    .line 362
    const v3, 0x7f0200b0

    goto :goto_0

    .line 364
    :cond_1
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    add-int v2, v3, v4

    .line 365
    .local v2, totalSpaces:I
    if-lez v2, :cond_0

    .line 366
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v2

    int-to-double v0, v3

    .line 367
    .local v0, available:D
    const-wide/high16 v3, 0x4059

    cmpl-double v3, v0, v3

    if-nez v3, :cond_2

    .line 368
    const v3, 0x7f02008d

    goto :goto_0

    .line 369
    :cond_2
    const-wide v3, 0x4051800000000000L

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_3

    .line 370
    const v3, 0x7f020096

    goto :goto_0

    .line 371
    :cond_3
    const-wide/high16 v3, 0x403e

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_4

    .line 372
    const v3, 0x7f020093

    goto :goto_0

    .line 373
    :cond_4
    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_5

    .line 374
    const v3, 0x7f020090

    goto :goto_0

    .line 376
    :cond_5
    const v3, 0x7f02008a

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSortOrder(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_0

    .line 199
    :pswitch_0
    move v0, p1

    .line 203
    .local v0, order:I
    :goto_0
    return v0

    .line 193
    .end local v0           #order:I
    :pswitch_1
    const/4 v0, -0x2

    .line 194
    .restart local v0       #order:I
    goto :goto_0

    .line 196
    .end local v0           #order:I
    :pswitch_2
    const/4 v0, -0x1

    .line 197
    .restart local v0       #order:I
    goto :goto_0

    .line 191
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
    .line 322
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v3, :pswitch_data_0

    .line 350
    :cond_0
    const v3, 0x7f020085

    :goto_0
    return v3

    .line 324
    :pswitch_0
    const v3, 0x7f0200b3

    goto :goto_0

    .line 326
    :pswitch_1
    const v3, 0x7f0200b6

    goto :goto_0

    .line 329
    :pswitch_2
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v3, :cond_1

    .line 330
    const v3, 0x7f020098

    goto :goto_0

    .line 332
    :cond_1
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    add-int v2, v3, v4

    .line 333
    .local v2, totalSpaces:I
    if-lez v2, :cond_0

    .line 334
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v2

    int-to-double v0, v3

    .line 335
    .local v0, available:D
    const-wide/high16 v3, 0x4059

    cmpl-double v3, v0, v3

    if-nez v3, :cond_2

    .line 336
    const v3, 0x7f02008c

    goto :goto_0

    .line 337
    :cond_2
    const-wide v3, 0x4051800000000000L

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_3

    .line 338
    const v3, 0x7f020095

    goto :goto_0

    .line 339
    :cond_3
    const-wide/high16 v3, 0x403e

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_4

    .line 340
    const v3, 0x7f020092

    goto :goto_0

    .line 341
    :cond_4
    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_5

    .line 342
    const v3, 0x7f02008f

    goto :goto_0

    .line 344
    :cond_5
    const v3, 0x7f020089

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/citibikenyc/citibike/models/Place;)I
    .locals 6
    .parameter "place"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v2, 0x0

    .line 184
    :goto_0
    return v2

    .line 173
    :cond_0
    iget v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v2, v3, :cond_3

    .line 174
    iget-boolean v2, p1, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-nez v2, :cond_1

    .line 175
    const/4 v2, 0x1

    goto :goto_0

    .line 176
    :cond_1
    iget-boolean v2, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-nez v2, :cond_2

    .line 177
    const/4 v2, -0x1

    goto :goto_0

    .line 179
    :cond_2
    iget-wide v2, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    iget-wide v4, p1, Lcom/citibikenyc/citibike/models/Place;->distance:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    goto :goto_0

    .line 181
    :cond_3
    iget v2, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/models/Place;->getSortOrder(I)I

    move-result v1

    .line 182
    .local v1, thisPlace:I
    iget v2, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/models/Place;->getSortOrder(I)I

    move-result v0

    .line 184
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

    .line 132
    if-ne p0, p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 137
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 139
    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 141
    .local v0, other:Lcom/citibikenyc/citibike/models/Place;
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-eq v3, v1, :cond_4

    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 142
    :cond_4
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    iget v4, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    iget v4, v0, Lcom/citibikenyc/citibike/models/Place;->id:I

    if-eq v3, v4, :cond_0

    .line 147
    :cond_5
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 148
    iget-object v3, v0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 149
    goto :goto_0

    .line 150
    :cond_6
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 151
    goto :goto_0

    .line 152
    :cond_7
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    iget v4, v0, Lcom/citibikenyc/citibike/models/Place;->id:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 153
    goto :goto_0

    .line 154
    :cond_8
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 155
    iget-object v3, v0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 156
    goto :goto_0

    .line 157
    :cond_9
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 158
    goto :goto_0

    .line 159
    :cond_a
    iget v3, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    iget v4, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 160
    goto :goto_0

    .line 161
    :cond_b
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 162
    iget-object v3, v0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 163
    goto :goto_0

    .line 164
    :cond_c
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 165
    goto :goto_0
.end method

.method public getBigIconResource()I
    .locals 6

    .prologue
    const v3, 0x7f020088

    .line 289
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v4, :pswitch_data_0

    .line 318
    const v3, 0x7f020084

    :cond_0
    :goto_0
    return v3

    .line 291
    :pswitch_0
    const v3, 0x7f020083

    goto :goto_0

    .line 293
    :pswitch_1
    const v3, 0x7f020087

    goto :goto_0

    .line 296
    :pswitch_2
    iget-boolean v4, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v4, :cond_1

    .line 297
    const v3, 0x7f020097

    goto :goto_0

    .line 299
    :cond_1
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v5, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    add-int v2, v4, v5

    .line 300
    .local v2, totalSpaces:I
    if-lez v2, :cond_0

    .line 301
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    int-to-double v0, v4

    .line 302
    .local v0, available:D
    const-wide/high16 v4, 0x4059

    cmpl-double v4, v0, v4

    if-nez v4, :cond_2

    .line 303
    const v3, 0x7f02008b

    goto :goto_0

    .line 304
    :cond_2
    const-wide v4, 0x4051800000000000L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_3

    .line 305
    const v3, 0x7f020094

    goto :goto_0

    .line 306
    :cond_3
    const-wide/high16 v4, 0x403e

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_4

    .line 307
    const v3, 0x7f020091

    goto :goto_0

    .line 308
    :cond_4
    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    .line 309
    const v3, 0x7f02008e

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getClusterIcon()I
    .locals 1

    .prologue
    .line 252
    const v0, 0x7f020076

    return v0
.end method

.method public getDistanceInKilometers()Ljava/lang/String;
    .locals 5

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    iget-wide v1, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDistanceInMiles()Ljava/lang/String;
    .locals 5

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->df:Ljava/text/DecimalFormat;

    iget-wide v1, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    const-wide v3, 0x3f445c7000000000L

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getIconResource()I
    .locals 6

    .prologue
    const v3, 0x7f02009f

    .line 256
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v4, :pswitch_data_0

    .line 285
    const v3, 0x7f02009b

    :cond_0
    :goto_0
    return v3

    .line 258
    :pswitch_0
    const v3, 0x7f0200b2

    goto :goto_0

    .line 260
    :pswitch_1
    const v3, 0x7f0200b5

    goto :goto_0

    .line 263
    :pswitch_2
    iget-boolean v4, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v4, :cond_1

    .line 264
    const v3, 0x7f0200ae

    goto :goto_0

    .line 266
    :cond_1
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v5, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    add-int v2, v4, v5

    .line 267
    .local v2, totalSpaces:I
    if-lez v2, :cond_0

    .line 268
    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v2

    int-to-double v0, v4

    .line 269
    .local v0, available:D
    const-wide/high16 v4, 0x4059

    cmpl-double v4, v0, v4

    if-nez v4, :cond_2

    .line 270
    const v3, 0x7f0200a2

    goto :goto_0

    .line 271
    :cond_2
    const-wide v4, 0x4051800000000000L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_3

    .line 272
    const v3, 0x7f0200ab

    goto :goto_0

    .line 273
    :cond_3
    const-wide/high16 v4, 0x403e

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_4

    .line 274
    const v3, 0x7f0200a8

    goto :goto_0

    .line 275
    :cond_4
    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    .line 276
    const v3, 0x7f0200a5

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 118
    const/16 v0, 0x1f

    .line 119
    .local v0, prime:I
    const/4 v1, 0x1

    .line 121
    .local v1, result:I
    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    .line 120
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 122
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->id:I

    add-int v1, v2, v4

    .line 123
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 124
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    add-int v1, v2, v4

    .line 125
    mul-int/lit8 v2, v1, 0x1f

    .line 126
    iget-object v4, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 125
    :goto_2
    add-int v1, v2, v3

    .line 127
    return v1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 126
    :cond_2
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setDefaultIcon()V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->getIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 238
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 239
    return-void
.end method

.method public setDistanceInMeters(D)V
    .locals 1
    .parameter "distance"

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/citibikenyc/citibike/models/Place;->distance:D

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    .line 229
    return-void
.end method

.method public setEndIcon()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/citibikenyc/citibike/models/Place;->getEndIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 248
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 249
    return-void
.end method

.method public setLargeIcon()V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->getBigIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 233
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 234
    return-void
.end method

.method public setStartIcon()V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/citibikenyc/citibike/models/Place;->getStartIconResource()I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 243
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iput v0, p0, Lcom/citibikenyc/citibike/models/Place;->currentIconId:I

    .line 244
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    return-object v0
.end method

.method public updateStationData(ZII)V
    .locals 2
    .parameter "isActive"
    .parameter "bikesAvailable"
    .parameter "docksAvailable"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 100
    iput p2, p0, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    .line 101
    iput p3, p0, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 102
    iget v0, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    .line 103
    .local v0, oldIcon:I
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 106
    iget v1, p0, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    if-eq v0, v1, :cond_0

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/citibikenyc/citibike/models/Place;->redraw:Z

    .line 109
    :cond_0
    return-void
.end method
