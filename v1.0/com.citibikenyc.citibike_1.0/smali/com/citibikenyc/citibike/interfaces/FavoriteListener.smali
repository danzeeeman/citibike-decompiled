.class public interface abstract Lcom/citibikenyc/citibike/interfaces/FavoriteListener;
.super Ljava/lang/Object;
.source "FavoriteListener.java"


# virtual methods
.method public abstract addFavorite(Lcom/citibikenyc/citibike/models/Place;)J
.end method

.method public abstract getAllFavorites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isFavorite(Lcom/citibikenyc/citibike/models/Place;)Z
.end method

.method public abstract removeFavorite(Lcom/citibikenyc/citibike/models/Place;)Z
.end method
