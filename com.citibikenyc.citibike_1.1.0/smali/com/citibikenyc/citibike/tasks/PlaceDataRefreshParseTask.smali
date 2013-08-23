.class public Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;
.super Landroid/os/AsyncTask;
.source "PlaceDataRefreshParseTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "PlaceDataRefresh"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private callback:Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field private placeUpdateType:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "callback"
    .parameter "applicationContext"
    .parameter "placeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;",
            "Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, locations:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->callback:Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;

    .line 37
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->applicationContext:Landroid/content/Context;

    .line 38
    iput p4, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->placeUpdateType:I

    .line 39
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/json/JSONObject;)Ljava/lang/Long;
    .locals 22
    .parameter "params"

    .prologue
    .line 43
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 44
    .local v19, result:Ljava/lang/Long;
    const/4 v3, 0x0

    aget-object v15, p1, v3

    .line 46
    .local v15, locationsUpdateData:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "results"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 49
    .local v14, locationsJSON:Lorg/json/JSONArray;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v18, placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v11, v3, :cond_0

    .line 59
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v11, v3, :cond_2

    .line 106
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 111
    const-string v3, "lastUpdate"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 114
    move-object/from16 v0, p0

    iget v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->placeUpdateType:I

    packed-switch v3, :pswitch_data_0

    .line 130
    .end local v11           #i:I
    .end local v14           #locationsJSON:Lorg/json/JSONArray;
    .end local v18           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :goto_3
    return-object v19

    .line 52
    .restart local v11       #i:I
    .restart local v14       #locationsJSON:Lorg/json/JSONArray;
    .restart local v18       #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/citibikenyc/citibike/models/Place;

    .line 54
    .local v17, p:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->placeUpdateType:I

    if-ne v3, v4, :cond_1

    .line 55
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 60
    .end local v17           #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_2
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 62
    .local v13, locationJSON:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 63
    .local v2, newPlace:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->placeUpdateType:I

    packed-switch v3, :pswitch_data_1

    .line 79
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    const-string v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "label"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 80
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "latitude"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "longitude"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v7, 0x0

    .line 79
    invoke-direct/range {v2 .. v7}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 84
    .restart local v2       #newPlace:Lcom/citibikenyc/citibike/models/Place;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 87
    .local v12, locationIndex:I
    if-ltz v12, :cond_4

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/citibikenyc/citibike/models/Place;

    .line 89
    .local v16, oldStation:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    move-object/from16 v0, p0

    iget v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->placeUpdateType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 92
    iget-boolean v3, v2, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    iget v4, v2, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v5, v2, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Lcom/citibikenyc/citibike/models/Place;->updateStationData(ZII)V

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v12, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v12           #locationIndex:I
    .end local v16           #oldStation:Lcom/citibikenyc/citibike/models/Place;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 65
    :pswitch_0
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    const-string v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Citibank Branch"

    const-string v5, "label"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "latitude"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "longitude"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v7, 0x3

    .line 65
    invoke-direct/range {v2 .. v7}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 67
    .restart local v2       #newPlace:Lcom/citibikenyc/citibike/models/Place;
    goto :goto_4

    .line 69
    :pswitch_1
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    const-string v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "label"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "latitude"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "longitude"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v7, 0x2

    .line 69
    invoke-direct/range {v2 .. v7}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 71
    .restart local v2       #newPlace:Lcom/citibikenyc/citibike/models/Place;
    goto/16 :goto_4

    .line 73
    :pswitch_2
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    const-string v3, "id"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "label"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 74
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    const-string v7, "latitude"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "longitude"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 75
    const-string v7, "Active"

    const-string v8, "status"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 76
    const-string v8, "availableBikes"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "availableDocks"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 73
    invoke-direct/range {v2 .. v9}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ZII)V

    .line 77
    .restart local v2       #newPlace:Lcom/citibikenyc/citibike/models/Place;
    goto/16 :goto_4

    .line 95
    .restart local v12       #locationIndex:I
    .restart local v16       #oldStation:Lcom/citibikenyc/citibike/models/Place;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    invoke-interface {v3, v12, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 125
    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    .end local v11           #i:I
    .end local v12           #locationIndex:I
    .end local v13           #locationJSON:Lorg/json/JSONObject;
    .end local v14           #locationsJSON:Lorg/json/JSONArray;
    .end local v16           #oldStation:Lcom/citibikenyc/citibike/models/Place;
    .end local v18           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :catch_0
    move-exception v10

    .line 126
    .local v10, e:Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 98
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v2       #newPlace:Lcom/citibikenyc/citibike/models/Place;
    .restart local v11       #i:I
    .restart local v12       #locationIndex:I
    .restart local v13       #locationJSON:Lorg/json/JSONObject;
    .restart local v14       #locationsJSON:Lorg/json/JSONArray;
    .restart local v18       #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_4
    :try_start_1
    const-string v3, "PlaceDataRefresh"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: unable to update previously existing item "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/citibikenyc/citibike/models/Place;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 101
    .end local v12           #locationIndex:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 106
    .end local v2           #newPlace:Lcom/citibikenyc/citibike/models/Place;
    .end local v13           #locationJSON:Lorg/json/JSONObject;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/citibikenyc/citibike/models/Place;

    .line 107
    .restart local v17       #p:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->locations:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 116
    .end local v17           #p:Lcom/citibikenyc/citibike/models/Place;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->applicationContext:Landroid/content/Context;

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->applicationContext:Landroid/content/Context;

    .line 116
    invoke-static {v3, v4, v5}, Lcom/citibikenyc/citibike/helpers/FileHelper;->writeTextToInternalStorage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    goto/16 :goto_3

    .line 120
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->applicationContext:Landroid/content/Context;

    const v4, 0x7f0a0034

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->applicationContext:Landroid/content/Context;

    .line 120
    invoke-static {v3, v4, v5}, Lcom/citibikenyc/citibike/helpers/FileHelper;->writeTextToInternalStorage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 63
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->doInBackground([Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->callback:Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;

    iget v1, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->placeUpdateType:I

    invoke-interface {v0, p1, v1}, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;->onPlaceDataRefreshParseTaskSuccess(Ljava/lang/Long;I)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->callback:Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask$PlaceDataRefreshParseTaskCallBack;->onPlaceDataRefreshParseTaskFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlaceDataRefreshParseTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
