.class Lcom/citibikenyc/citibike/PlaceDataManager$5;
.super Ljava/lang/Object;
.source "PlaceDataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/PlaceDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/citibikenyc/citibike/models/Place;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/citibikenyc/citibike/models/Place;Lcom/citibikenyc/citibike/models/Place;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 430
    iget-boolean v0, p2, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-nez v0, :cond_0

    .line 431
    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    .line 432
    :cond_0
    iget-boolean v0, p1, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-nez v0, :cond_1

    .line 433
    const/4 v0, -0x1

    goto :goto_0

    .line 435
    :cond_1
    iget-wide v0, p1, Lcom/citibikenyc/citibike/models/Place;->distance:D

    iget-wide v2, p2, Lcom/citibikenyc/citibike/models/Place;->distance:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/citibikenyc/citibike/models/Place;

    check-cast p2, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {p0, p1, p2}, Lcom/citibikenyc/citibike/PlaceDataManager$5;->compare(Lcom/citibikenyc/citibike/models/Place;Lcom/citibikenyc/citibike/models/Place;)I

    move-result v0

    return v0
.end method
