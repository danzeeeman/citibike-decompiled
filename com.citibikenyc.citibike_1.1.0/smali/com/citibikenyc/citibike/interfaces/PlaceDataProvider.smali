.class public interface abstract Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;
.super Ljava/lang/Object;
.source "PlaceDataProvider.java"


# virtual methods
.method public abstract addPlaceDataObserver(Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;)V
.end method

.method public abstract getBikeData(Lcom/citibikenyc/citibike/models/Place;)Lcom/citibikenyc/citibike/models/Place;
.end method

.method public abstract getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;I[I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "I[I)",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNonStations(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getPlace(II)Lcom/citibikenyc/citibike/models/Place;
.end method

.method public abstract getPlaces(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getStations(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract update(Lcom/citibikenyc/citibike/models/Place;)Z
.end method
