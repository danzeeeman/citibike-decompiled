.class public Lcom/citibikenyc/citibike/models/BikeLane;
.super Ljava/lang/Object;
.source "BikeLane.java"


# instance fields
.field public end:Lcom/google/android/gms/maps/model/LatLng;

.field public start:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    .line 11
    iput-object p2, p0, Lcom/citibikenyc/citibike/models/BikeLane;->end:Lcom/google/android/gms/maps/model/LatLng;

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 35
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 36
    check-cast v0, Lcom/citibikenyc/citibike/models/BikeLane;

    .line 37
    .local v0, other:Lcom/citibikenyc/citibike/models/BikeLane;
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/BikeLane;->end:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_4

    .line 38
    iget-object v3, v0, Lcom/citibikenyc/citibike/models/BikeLane;->end:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v3, :cond_5

    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/BikeLane;->end:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcom/citibikenyc/citibike/models/BikeLane;->end:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_5
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_6

    .line 43
    iget-object v3, v0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v3, :cond_0

    move v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_6
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 46
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 21
    const/16 v0, 0x1f

    .line 22
    .local v0, prime:I
    const/4 v1, 0x1

    .line 23
    .local v1, result:I
    iget-object v2, p0, Lcom/citibikenyc/citibike/models/BikeLane;->end:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 24
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 25
    return v1

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/models/BikeLane;->end:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v2

    goto :goto_0

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lane"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/citibikenyc/citibike/models/BikeLane;->start:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
