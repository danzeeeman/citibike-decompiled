.class public Lcom/citibikenyc/citibike/models/RouteStep;
.super Ljava/lang/Object;
.source "RouteStep.java"


# static fields
.field private static final LABELS:[Ljava/lang/String; = null

.field private static final STRING_TO_ICON:[I = null

.field public static final TYPE_BIKING:I = 0x0

.field public static final TYPE_PLACE:I = 0x3

.field public static final TYPE_WALKING:I = 0x1

.field public static final TYPE_WALKING_UNMAPPED:I = 0x2


# instance fields
.field public description:Ljava/lang/String;

.field private df:Ljava/text/DecimalFormat;

.field public distance:D

.field public end:Lcom/google/android/gms/maps/model/LatLng;

.field public iconId:I

.field public label:Ljava/lang/String;

.field public start:Lcom/google/android/gms/maps/model/LatLng;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0xa

    .line 32
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 45
    .local v1, tempStringToIcon:[I
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 46
    const-string v3, "slight left"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 47
    const-string v3, "slightly left"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    .line 48
    const-string v3, "slight right"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 49
    const-string v3, "slightly right"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 50
    const-string v3, "left"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    .line 51
    const-string v3, "right"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    .line 52
    const-string v3, "head"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    .line 53
    const-string v3, "continue"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    .line 54
    const-string v3, "take"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    .line 55
    const-string v3, "make"

    aput-object v3, v0, v2

    .line 58
    .local v0, tempLabels:[Ljava/lang/String;
    sput-object v1, Lcom/citibikenyc/citibike/models/RouteStep;->STRING_TO_ICON:[I

    .line 59
    sput-object v0, Lcom/citibikenyc/citibike/models/RouteStep;->LABELS:[Ljava/lang/String;

    .line 10
    return-void

    .line 32
    :array_0
    .array-data 0x4
        0xbbt 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .parameter "type"
    .parameter "label"
    .parameter "description"
    .parameter "iconId"
    .parameter "point"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/citibikenyc/citibike/models/RouteStep;->iconId:I

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/citibikenyc/citibike/models/RouteStep;->distance:D

    .line 21
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/RouteStep;->df:Ljava/text/DecimalFormat;

    .line 63
    iput p1, p0, Lcom/citibikenyc/citibike/models/RouteStep;->type:I

    .line 64
    iput-object p2, p0, Lcom/citibikenyc/citibike/models/RouteStep;->label:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/citibikenyc/citibike/models/RouteStep;->description:Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/citibikenyc/citibike/models/RouteStep;->iconId:I

    .line 67
    iput-object p5, p0, Lcom/citibikenyc/citibike/models/RouteStep;->start:Lcom/google/android/gms/maps/model/LatLng;

    .line 68
    iput-object p5, p0, Lcom/citibikenyc/citibike/models/RouteStep;->end:Lcom/google/android/gms/maps/model/LatLng;

    .line 69
    const/4 v0, 0x3

    iput v0, p0, Lcom/citibikenyc/citibike/models/RouteStep;->type:I

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;II)V
    .locals 5
    .parameter "htmlDescription"
    .parameter "start"
    .parameter "end"
    .parameter "meters"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v4, p0, Lcom/citibikenyc/citibike/models/RouteStep;->iconId:I

    .line 19
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/citibikenyc/citibike/models/RouteStep;->distance:D

    .line 21
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/citibikenyc/citibike/models/RouteStep;->df:Ljava/text/DecimalFormat;

    .line 73
    iput p5, p0, Lcom/citibikenyc/citibike/models/RouteStep;->type:I

    .line 75
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/models/RouteStep;->parseHtmlDescription(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, parsedDescription:[Ljava/lang/String;
    packed-switch p5, :pswitch_data_0

    .line 88
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/citibikenyc/citibike/models/RouteStep;->label:Ljava/lang/String;

    .line 92
    :goto_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/citibikenyc/citibike/models/RouteStep;->description:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/citibikenyc/citibike/models/RouteStep;->start:Lcom/google/android/gms/maps/model/LatLng;

    .line 94
    iput-object p3, p0, Lcom/citibikenyc/citibike/models/RouteStep;->end:Lcom/google/android/gms/maps/model/LatLng;

    .line 95
    invoke-virtual {p0, p4}, Lcom/citibikenyc/citibike/models/RouteStep;->convertMeters(I)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/citibikenyc/citibike/models/RouteStep;->distance:D

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/models/RouteStep;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/citibikenyc/citibike/models/RouteStep;->getIconByLabel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/citibikenyc/citibike/models/RouteStep;->iconId:I

    .line 98
    return-void

    .line 80
    :pswitch_0
    aget-object v1, v0, v4

    const-string v2, "Head"

    const-string v3, "Bike"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/citibikenyc/citibike/models/RouteStep;->label:Ljava/lang/String;

    goto :goto_0

    .line 84
    :pswitch_1
    aget-object v1, v0, v4

    const-string v2, "Head"

    const-string v3, "Walk"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/citibikenyc/citibike/models/RouteStep;->label:Ljava/lang/String;

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getIconByLabel(Ljava/lang/String;)I
    .locals 3
    .parameter "label"

    .prologue
    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/citibikenyc/citibike/models/RouteStep;->LABELS:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 159
    const v1, 0x7f02009b

    :goto_1
    return v1

    .line 154
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/citibikenyc/citibike/models/RouteStep;->LABELS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    sget-object v1, Lcom/citibikenyc/citibike/models/RouteStep;->STRING_TO_ICON:[I

    aget v1, v1, v0

    goto :goto_1

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseHtmlDescription(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "htmlDescription"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 104
    .local v1, result:[Ljava/lang/String;
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, description:[Ljava/lang/String;
    aget-object v3, v0, v5

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/models/RouteStep;->getSplitPosition(Ljava/lang/String;)I

    move-result v2

    .line 107
    .local v2, splitPosition:I
    if-lez v2, :cond_0

    .line 108
    aget-object v3, v0, v5

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 109
    aget-object v3, v0, v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 115
    :goto_0
    return-object v1

    .line 111
    :cond_0
    aget-object v3, v0, v5

    aput-object v3, v1, v5

    .line 112
    const-string v3, ""

    aput-object v3, v1, v6

    goto :goto_0
.end method


# virtual methods
.method public convertMeters(I)D
    .locals 4
    .parameter "meters"

    .prologue
    .line 141
    int-to-double v0, p1

    const-wide v2, 0x3f445c700fd4d6a9L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/citibikenyc/citibike/models/RouteStep;->distance:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/citibikenyc/citibike/models/RouteStep;->df:Ljava/text/DecimalFormat;

    iget-wide v1, p0, Lcom/citibikenyc/citibike/models/RouteStep;->distance:D

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSplitPosition(Ljava/lang/String;)I
    .locals 5
    .parameter "s"

    .prologue
    .line 120
    const-string v3, "to stay on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 123
    .local v2, tempPos:I
    const-string v3, "Continue onto"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const/16 v0, 0xd

    .line 137
    .local v0, pos:I
    :goto_0
    return v0

    .line 125
    .end local v0           #pos:I
    :cond_0
    if-lez v2, :cond_1

    .line 126
    move v0, v2

    .restart local v0       #pos:I
    goto :goto_0

    .line 128
    .end local v0           #pos:I
    :cond_1
    const-string v3, "\\s+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, split:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 131
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x2

    .restart local v0       #pos:I
    goto :goto_0

    .line 133
    .end local v0           #pos:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #pos:I
    goto :goto_0
.end method
