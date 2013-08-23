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

.field private static final FAVORITES_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE favorites (_id TEXT,referenceId TEXT, label TEXT, description TEXT,lat ,lng ,placeType integer, created integer );"

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

    .line 59
    const-string v0, "citibike"

    invoke-direct {p0, p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    iput-object v1, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    .line 48
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

    .line 49
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

    .line 50
    const-string v2, "created"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->allColumns:[Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    .line 61
    invoke-direct {p0}, Lcom/citibikenyc/citibike/FavoritesManager;->open()V

    .line 62
    return-void
.end method

.method private cursorToFavorite(Landroid/database/Cursor;)Lcom/citibikenyc/citibike/models/ScoopPlace;
    .locals 8
    .parameter "cursor"

    .prologue
    .line 260
    new-instance v0, Lcom/citibikenyc/citibike/models/ScoopPlace;

    const-string v1, "label"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    const-string v2, "description"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const-string v4, "lat"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 264
    const-string v6, "lng"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 263
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 265
    const-string v4, "placeType"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 260
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/citibikenyc/citibike/models/ScoopPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 267
    .local v0, place:Lcom/citibikenyc/citibike/models/ScoopPlace;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/citibikenyc/citibike/models/ScoopPlace;->id:I

    .line 268
    const-string v1, "referenceId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/ScoopPlace;->referenceId:Ljava/lang/String;

    .line 269
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/ScoopPlace;->setDefaultIcon()V

    .line 272
    const-string v1, "created"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 271
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/citibikenyc/citibike/models/ScoopPlace;->favoritedTimestamp:J

    .line 275
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
    .line 77
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    return-void
.end method

.method private updateFavorite(JLcom/citibikenyc/citibike/models/Place;)V
    .locals 7
    .parameter "id"
    .parameter "place"

    .prologue
    .line 191
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    iget v2, p3, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v1, "referenceId"

    iget-object v2, p3, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "label"

    iget-object v2, p3, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "description"

    iget-object v2, p3, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "lat"

    iget-object v2, p3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 197
    const-string v1, "lng"

    iget-object v2, p3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 198
    const-string v1, "placeType"

    iget v2, p3, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
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

    .line 201
    return-void
.end method


# virtual methods
.method public declared-synchronized addFavorite(Lcom/citibikenyc/citibike/models/Place;)J
    .locals 9
    .parameter "place"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v3, :pswitch_data_0

    .line 111
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, favoriteTimestamp:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    iget v4, p1, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v3, "referenceId"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v3, "label"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "description"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "lat"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 119
    const-string v3, "lng"

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 120
    const-string v3, "placeType"

    iget v4, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v3, "created"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    iput-wide v0, p1, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 123
    iget-object v3, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v3, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->update(Lcom/citibikenyc/citibike/models/Place;)Z

    .line 125
    iget-object v3, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "favorites"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    monitor-exit p0

    return-wide v3

    .line 97
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

    .line 95
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 100
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

    .line 103
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

    .line 106
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

    .line 95
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
    .line 85
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
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
    .line 205
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v10, favorites:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 208
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

    .line 210
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 212
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 251
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

    .line 255
    monitor-exit p0

    return-object v10

    .line 213
    :cond_0
    :try_start_1
    invoke-direct {p0, v8}, Lcom/citibikenyc/citibike/FavoritesManager;->cursorToFavorite(Landroid/database/Cursor;)Lcom/citibikenyc/citibike/models/ScoopPlace;

    move-result-object v12

    .line 216
    .local v12, place:Lcom/citibikenyc/citibike/models/Place;
    iget v14, v12, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    .line 217
    .local v14, type:I
    const/4 v0, 0x1

    if-eq v14, v0, :cond_1

    const/4 v0, 0x3

    if-eq v14, v0, :cond_1

    const/4 v0, 0x2

    if-eq v14, v0, :cond_1

    const/4 v0, 0x7

    if-eq v14, v0, :cond_1

    const/16 v0, 0x8

    if-ne v14, v0, :cond_3

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    iget v1, v12, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    iget v2, v12, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-interface {v0, v1, v2}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getPlace(II)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v11

    .line 221
    .local v11, p:Lcom/citibikenyc/citibike/models/Place;
    if-nez v11, :cond_2

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #favorites:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    .end local v11           #p:Lcom/citibikenyc/citibike/models/Place;
    .end local v12           #place:Lcom/citibikenyc/citibike/models/Place;
    .end local v13           #toUpdate:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/citibikenyc/citibike/models/Place;>;"
    .end local v14           #type:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 225
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #favorites:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    .restart local v11       #p:Lcom/citibikenyc/citibike/models/Place;
    .restart local v12       #place:Lcom/citibikenyc/citibike/models/Place;
    .restart local v13       #toUpdate:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/citibikenyc/citibike/models/Place;>;"
    .restart local v14       #type:I
    :cond_2
    :try_start_2
    invoke-virtual {v11, v12}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 227
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-wide v0, v12, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    iput-wide v0, v11, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 231
    move-object v12, v11

    .line 238
    .end local v11           #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_3
    :goto_2
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 232
    .restart local v11       #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_4
    iget v0, v12, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 234
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v0, v12}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getBikeData(Lcom/citibikenyc/citibike/models/Place;)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v12

    goto :goto_2

    .line 251
    .end local v11           #p:Lcom/citibikenyc/citibike/models/Place;
    .end local v12           #place:Lcom/citibikenyc/citibike/models/Place;
    .end local v14           #type:I
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 252
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
    .locals 9
    .parameter "p"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    iget v4, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-nez v4, :cond_0

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select 1 from favorites where placeType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 135
    const-string v5, "label"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = ? AND CAST("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "lat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS TEXT) = ? AND CAST("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "lng"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS TEXT) = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, sql:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    aput-object v4, v0, v6

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    .line 142
    .local v0, args:[Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 143
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    .line 145
    .local v2, exists:Z
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    const-wide/16 v4, 0x0

    iput-wide v4, p1, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    .line 148
    iget-object v4, p0, Lcom/citibikenyc/citibike/FavoritesManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v4, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->update(Lcom/citibikenyc/citibike/models/Place;)Z

    .line 150
    return v2

    .line 138
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #exists:Z
    .end local v3           #sql:Ljava/lang/String;
    :cond_0
    const-string v3, "select 1 from favorites where _id = ? AND placeType = ?"

    .line 139
    .restart local v3       #sql:Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    iget v4, p1, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    iget v4, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .restart local v0       #args:[Ljava/lang/String;
    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 66
    const-string v0, "CREATE TABLE favorites (_id TEXT,referenceId TEXT, label TEXT, description TEXT,lat ,lng ,placeType integer, created integer );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 72
    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/FavoritesManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
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

    .line 156
    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v3, :pswitch_data_0

    .line 175
    :goto_0
    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-nez v3, :cond_0

    .line 176
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

    .line 177
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

    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
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

    .line 184
    .local v0, args:[Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/citibikenyc/citibike/FavoritesManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "favorites"

    invoke-virtual {v3, v4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 186
    .local v2, deletedRows:I
    return v9

    .line 158
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

    goto :goto_0

    .line 161
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

    .line 164
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

    .line 167
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

    .line 180
    :cond_0
    const-string v1, "_id = ? AND placeType = ?"

    .line 181
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

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
