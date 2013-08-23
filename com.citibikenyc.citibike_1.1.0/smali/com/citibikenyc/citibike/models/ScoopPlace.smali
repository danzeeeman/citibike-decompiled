.class public Lcom/citibikenyc/citibike/models/ScoopPlace;
.super Lcom/citibikenyc/citibike/models/Place;
.source "ScoopPlace.java"


# instance fields
.field public address:Lcom/citibikenyc/citibike/models/Address;

.field public price:Ljava/lang/Double;

.field public review:Ljava/lang/String;

.field public reviewer:Ljava/lang/String;

.field public stars:F

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 0
    .parameter "id"
    .parameter "label"
    .parameter "description"
    .parameter "point"
    .parameter "placeType"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ZII)V
    .locals 0
    .parameter "id"
    .parameter "label"
    .parameter "description"
    .parameter "point"
    .parameter "isActive"
    .parameter "bikesAvailable"
    .parameter "docksAvailable"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p7}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ZII)V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/models/Place;-><init>(Lcom/citibikenyc/citibike/models/Place;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/citibikenyc/citibike/models/Address;Ljava/lang/String;FLjava/lang/Double;I)V
    .locals 2
    .parameter "label"
    .parameter "address"
    .parameter "phone"
    .parameter "stars"
    .parameter "price"
    .parameter "placeType"

    .prologue
    .line 29
    .line 30
    invoke-static {p2}, Lcom/citibikenyc/citibike/models/ScoopPlace;->getAddressString(Lcom/citibikenyc/citibike/models/Address;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {p2}, Lcom/citibikenyc/citibike/models/ScoopPlace;->getLatLng(Lcom/citibikenyc/citibike/models/Address;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 32
    invoke-direct {p0, p1, v0, v1, p6}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 33
    iput p4, p0, Lcom/citibikenyc/citibike/models/ScoopPlace;->stars:F

    .line 34
    iput-object p5, p0, Lcom/citibikenyc/citibike/models/ScoopPlace;->price:Ljava/lang/Double;

    .line 35
    iput-object p2, p0, Lcom/citibikenyc/citibike/models/ScoopPlace;->address:Lcom/citibikenyc/citibike/models/Address;

    .line 36
    iput-object p3, p0, Lcom/citibikenyc/citibike/models/ScoopPlace;->phone:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 0
    .parameter "label"
    .parameter "description"
    .parameter "point"
    .parameter "placeType"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 26
    return-void
.end method

.method private static getAddressString(Lcom/citibikenyc/citibike/models/Address;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 41
    const-string v0, ""

    .line 42
    .local v0, addressStr:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 43
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/Address;->address1:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "null"

    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Address;->address1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Address;->address1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/Address;->address2:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "null"

    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Address;->address2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/models/Address;->address2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_1
    return-object v0
.end method

.method public static getCategory(Ljava/lang/String;)I
    .locals 1
    .parameter "cat"

    .prologue
    .line 68
    const-string v0, "Restaurants"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/16 v0, 0x8

    .line 73
    :goto_0
    return v0

    .line 70
    :cond_0
    const-string v0, "Coffee"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x7

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLatLng(Lcom/citibikenyc/citibike/models/Address;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .parameter "address"

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/citibikenyc/citibike/models/Address;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
