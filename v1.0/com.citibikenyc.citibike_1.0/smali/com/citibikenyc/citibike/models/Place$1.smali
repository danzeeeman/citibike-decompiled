.class Lcom/citibikenyc/citibike/models/Place$1;
.super Ljava/lang/Object;
.source "Place.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/models/Place;
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
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/citibikenyc/citibike/models/Place;Lcom/citibikenyc/citibike/models/Place;)I
    .locals 1
    .parameter "place1"
    .parameter "palce2"

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Lcom/citibikenyc/citibike/models/Place;->compareTo(Lcom/citibikenyc/citibike/models/Place;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/citibikenyc/citibike/models/Place;

    check-cast p2, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {p0, p1, p2}, Lcom/citibikenyc/citibike/models/Place$1;->compare(Lcom/citibikenyc/citibike/models/Place;Lcom/citibikenyc/citibike/models/Place;)I

    move-result v0

    return v0
.end method
