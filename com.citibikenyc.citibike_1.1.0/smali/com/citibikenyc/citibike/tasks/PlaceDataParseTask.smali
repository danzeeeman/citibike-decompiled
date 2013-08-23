.class public Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;
.super Landroid/os/AsyncTask;
.source "PlaceDataParseTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;
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


# instance fields
.field public applicationContext:Landroid/content/Context;

.field public callback:Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;

.field public locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "callback"
    .parameter "applicationContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;",
            "Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, locations:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->locations:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->locations:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->callback:Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;

    .line 32
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->applicationContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/json/JSONObject;)Ljava/lang/Long;
    .locals 22
    .parameter "params"

    .prologue
    .line 37
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 39
    .local v12, lastUpdate:Ljava/lang/Long;
    const/4 v3, 0x0

    aget-object v15, p1, v3

    .line 43
    .local v15, locationsData:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "results"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 46
    .local v16, locationsJSON:Lorg/json/JSONArray;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v19, placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v11, v3, :cond_0

    .line 57
    const/4 v11, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v11, v3, :cond_2

    .line 86
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->applicationContext:Landroid/content/Context;

    const v4, 0x7f0a0033

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->applicationContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/citibikenyc/citibike/helpers/FileHelper;->writeTextToInternalStorage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 90
    const-string v3, "lastUpdate"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 97
    .end local v11           #i:I
    .end local v16           #locationsJSON:Lorg/json/JSONArray;
    .end local v19           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :goto_3
    return-object v12

    .line 49
    .restart local v11       #i:I
    .restart local v16       #locationsJSON:Lorg/json/JSONArray;
    .restart local v19       #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/citibikenyc/citibike/models/Place;

    .line 51
    .local v18, p:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 52
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 58
    .end local v18           #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 60
    .local v14, locationJSON:Lorg/json/JSONObject;
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    const-string v3, "id"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 61
    const-string v4, "label"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    .line 62
    const-string v7, "latitude"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 63
    const-string v9, "longitude"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 64
    const-string v7, "Active"

    .line 65
    const-string v8, "status"

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 66
    const-string v8, "availableBikes"

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 67
    const-string v9, "availableDocks"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 60
    invoke-direct/range {v2 .. v9}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ZII)V

    .line 70
    .local v2, place:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 74
    .local v13, locationIndex:I
    if-ltz v13, :cond_3

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/citibikenyc/citibike/models/Place;

    .line 77
    .local v17, oldStation:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    iget-boolean v3, v2, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    .line 79
    iget v4, v2, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v5, v2, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    .line 78
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5}, Lcom/citibikenyc/citibike/models/Place;->updateStationData(ZII)V

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->locations:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v3, v13, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v17           #oldStation:Lcom/citibikenyc/citibike/models/Place;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 82
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 92
    .end local v2           #place:Lcom/citibikenyc/citibike/models/Place;
    .end local v11           #i:I
    .end local v13           #locationIndex:I
    .end local v14           #locationJSON:Lorg/json/JSONObject;
    .end local v16           #locationsJSON:Lorg/json/JSONArray;
    .end local v19           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :catch_0
    move-exception v10

    .line 93
    .local v10, e:Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto/16 :goto_3

    .line 86
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v11       #i:I
    .restart local v16       #locationsJSON:Lorg/json/JSONArray;
    .restart local v19       #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/citibikenyc/citibike/models/Place;

    .line 87
    .restart local v18       #p:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->locations:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->doInBackground([Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 104
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->callback:Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;

    invoke-interface {v0, p1}, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;->onParseDataSuccess(Ljava/lang/Long;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->callback:Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask$ParseDataParseCallBack;->onParseDataFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlaceDataParseTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
