.class public Lcom/citibikenyc/citibike/FavoritesManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FavoritesManager.java"

# interfaces
.implements Lcom/citibikenyc/citibike/interfaces/FavoriteListener;


# static fields
.field private static final COLUMN_CREATED:Ljava/lang/String; = "created"

.field private static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final COLUMN_LABEL:Ljava/lang/String; = "label"

.field private static final COLUMN_LAT:Ljava/lang/String; = "lat"

.field private static final COLUMN_LNG:Ljava/lang/String; = "lng"

.field private static final COLUMN_REFERENCE_ID:Ljava/lang/String; = "referenceId"

.field private static final COLUMN_TYPE:Ljava/lang/String; = "placeType"

.field private static final DATABASE_NAME:Ljava/lang/String; = "citibike"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final FAVORITES_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE favorites (_id TEXT,referenceId TEXT, label TEXT, description TEXT,lat ,lng ,placeType integer, created integer);"

.field private static final FAVORITES_TABLE_NAME:Ljava/lang/String; = "favorites"

.field protected static final TAG:Ljava/lang/String; = "FavoritesManager"


# instance fields
.field private allColumns:[Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;)V
    .locals 4
    .parameter "context"
    .parameter "placeDataProvider"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x4

    .line 52
    const-string v0, "citibike"

    invoke-direct {p0, p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    iput-object v1, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "referenceId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 42
    const-string v2, "description"

    aput-object v2, v0, v1

    const-string v1, "lat"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "lng"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "placeType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 43
    const-string v2, "created"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->allColumns:[Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    .line 54
    invoke-direct {p0}, Lcom/citibikenyc/citibike/FavoritesManager;->open()V

    .line 55
    return-void
.end method

.method private cursorToFavorite(Landroid/database/Cursor;)Lcom/citibikenyc/citibike/models/Place;
    .locals 8
    .parameter "cursor"

    .prologue
    .line 256
    new-instance v0, Lcom/citibikenyc/citibike/models/Place;

    const-string v1, "label"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    const-string v2, "description"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const-string v4, "lat"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 259
    const-string v6, "lng"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 258
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 260
    const-string v4, "placeType"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 256
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 262
    .local v0, place:Lcom/citibikenyc/citibike/models/Place;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/citibikenyc/citibike/models/Place;->id:I

    .line 263
    const-string v1, "referenceId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 264
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/Place;->setDefaultIcon()V

    .line 266
    const-string v1, "created"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 268
    return-object v0
.end method

.method private open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    return-void
.end method

.method private updateFavorite(JLcom/citibikenyc/citibike/models/Place;)V
    .locals 7
    .parameter "id"
    .parameter "place"

    .prologue
    .line 187
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    iget v2, p3, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v1, "referenceId"

    iget-object v2, p3, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "label"

    iget-object v2, p3, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "description"

    iget-object v2, p3, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "lat"

    iget-object v2, p3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 193
    const-string v1, "lng"

    iget-object v2, p3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 194
    const-string v1, "placeType"

    iget v2, p3, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorites"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    return-void
.end method


# virtual methods
.method public declared-synchronized addFavorite(Lcom/citibikenyc/citibike/models/Place;)J
    .locals 9
    .parameter "place"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addFavorite: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v3, :pswitch_data_0

    .line 106
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 108
    .local v0, favoriteTimestamp:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    iget v4, p1, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v3, "referenceId"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v3, "label"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "description"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "lat"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 114
    const-string v3, "lng"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 115
    const-string v3, "placeType"

    iget v4, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v3, "created"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    iput-wide v0, p1, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 119
    iget-object v3, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v3, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->update(Lcom/citibikenyc/citibike/models/Place;)Z

    .line 121
    iget-object v3, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "favorites"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    monitor-exit p0

    return-wide v3

    .line 92
    .end local v0           #favoriteTimestamp:J
    .end local v2           #values:Landroid/content/ContentValues;
    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Favorites"

    const-string v5, "Add"

    const-string v6, "Citi Branch"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 95
    :pswitch_1
    :try_start_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Favorites"

    const-string v5, "Add"

    const-string v6, "Google Place"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 98
    :pswitch_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Favorites"

    const-string v5, "Add"

    const-string v6, "Bike Shop"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 101
    :pswitch_3
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Favorites"

    const-string v5, "Add"

    const-string v6, "Station"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 83
    :cond_0
    return-void
.end method

.method public declared-synchronized getAllFavorites()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 201
    monitor-enter p0

    :try_start_0
    const-string v0, "FavoritesManager"

    const-string v1, "getAllFavorites"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v10, favorites:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v13, toUpdate:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    iget-object v2, p0, Lcom/citibikenyc/citibike/FavoritesManager;->allColumns:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "created DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 207
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 209
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 245
    const-string v0, "FavoritesManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrieved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 252
    monitor-exit p0

    return-object v10

    .line 210
    :cond_0
    :try_start_1
    invoke-direct {p0, v8}, Lcom/citibikenyc/citibike/FavoritesManager;->cursorToFavorite(Landroid/database/Cursor;)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v12

    .line 213
    .local v12, place:Lcom/citibikenyc/citibike/models/Place;
    iget v0, v12, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-eq v0, v14, :cond_1

    iget v0, v12, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, v12, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    iget v1, v12, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    iget v2, v12, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-interface {v0, v1, v2}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getPlace(II)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v11

    .line 217
    .local v11, p:Lcom/citibikenyc/citibike/models/Place;
    if-nez v11, :cond_2

    .line 219
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #favorites:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    .end local v11           #p:Lcom/citibikenyc/citibike/models/Place;
    .end local v12           #place:Lcom/citibikenyc/citibike/models/Place;
    .end local v13           #toUpdate:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/citibikenyc/citibike/models/Place;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #favorites:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    .restart local v11       #p:Lcom/citibikenyc/citibike/models/Place;
    .restart local v12       #place:Lcom/citibikenyc/citibike/models/Place;
    .restart local v13       #toUpdate:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v11, v12}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 223
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-wide v0, v12, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    iput-wide v0, v11, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 227
    move-object v12, v11

    .line 234
    .end local v11           #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_3
    :goto_2
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 228
    .restart local v11       #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_4
    iget v0, v12, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v0, v14, :cond_3

    .line 230
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v0, v12}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getBikeData(Lcom/citibikenyc/citibike/models/Place;)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v12

    goto :goto_2

    .line 248
    .end local v11           #p:Lcom/citibikenyc/citibike/models/Place;
    .end local v12           #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 249
    .local v9, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/citibikenyc/citibike/models/Place;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    invoke-direct {p0, v2, v3, v0}, Lcom/citibikenyc/citibike/FavoritesManager;->updateFavorite(JLcom/citibikenyc/citibike/models/Place;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public isFavorite(Lcom/citibikenyc/citibike/models/Place;)Z
    .locals 8
    .parameter "p"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 129
    iget v5, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-nez v5, :cond_0

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "select 1 from favorites where placeType = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 131
    const-string v6, "label"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = ? AND CAST("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS TEXT) = ? AND CAST("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lng"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS TEXT) = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, sql:Ljava/lang/String;
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/String;

    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    aput-object v5, v0, v4

    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    .line 138
    .local v0, args:[Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 139
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 140
    .local v2, exists:Z
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 142
    const-wide/16 v4, 0x0

    iput-wide v4, p1, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 143
    iget-object v4, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v4, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->update(Lcom/citibikenyc/citibike/models/Place;)Z

    .line 145
    return v2

    .line 134
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #exists:Z
    .end local v3           #sql:Ljava/lang/String;
    :cond_0
    const-string v3, "select 1 from favorites where _id = ? AND placeType = ?"

    .line 135
    .restart local v3       #sql:Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/String;

    iget v5, p1, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    iget v5, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .restart local v0       #args:[Ljava/lang/String;
    goto :goto_0

    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_1
    move v2, v4

    .line 139
    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 59
    const-string v0, "FavoritesManager"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "CREATE TABLE favorites (_id TEXT,referenceId TEXT, label TEXT, description TEXT,lat ,lng ,placeType integer, created integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 65
    const-string v0, "FavoritesManager"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/FavoritesManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method

.method public removeFavorite(Lcom/citibikenyc/citibike/models/Place;)Z
    .locals 12
    .parameter "p"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 151
    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v3, :pswitch_data_0

    .line 170
    :goto_0
    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-nez v3, :cond_0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "placeType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "label"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 172
    const-string v4, "AND CAST("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS TEXT) = ? AND CAST("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lng"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS TEXT) = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, deleteSql:Ljava/lang/String;
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    iget-object v3, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    aput-object v3, v0, v9

    iget-object v3, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v10

    iget-object v3, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v11

    .line 179
    .local v0, args:[Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "favorites"

    invoke-virtual {v3, v4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 180
    .local v2, deletedRows:I
    const-string v3, "FavoritesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "removeFavorite - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return v9

    .line 153
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #deleteSql:Ljava/lang/String;
    .end local v2           #deletedRows:I
    :pswitch_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Favorites"

    const-string v5, "Delete"

    const-string v6, "Citi Branch"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 156
    :pswitch_1
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Favorites"

    const-string v5, "Delete"

    const-string v6, "Google Place"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 159
    :pswitch_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Favorites"

    const-string v5, "Delete"

    const-string v6, "Bike Shop"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 162
    :pswitch_3
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    const-string v4, "Favorites"

    const-string v5, "Delete"

    const-string v6, "Station"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 175
    :cond_0
    const-string v1, "_id = ? AND placeType = ?"

    .line 176
    .restart local v1       #deleteSql:Ljava/lang/String;
    new-array v0, v11, [Ljava/lang/String;

    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v10

    .restart local v0       #args:[Ljava/lang/String;
    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
