.class public interface abstract Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;
.super Ljava/lang/Object;
.source "MapGetPlaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/tasks/MapGetPlaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMapPlacesListener"
.end annotation


# virtual methods
.method public abstract onMapPlaces(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;)V"
        }
    .end annotation
.end method
