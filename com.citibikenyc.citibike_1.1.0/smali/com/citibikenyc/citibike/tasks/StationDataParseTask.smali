.class public Lcom/citibikenyc/citibike/tasks/StationDataParseTask;
.super Landroid/os/AsyncTask;
.source "StationDataParseTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public applicationContext:Landroid/content/Context;

.field private callback:Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;

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
.method public constructor <init>(Ljava/util/List;Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;Landroid/content/Context;)V
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
            "Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, locations:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->locations:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->locations:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->callback:Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;

    .line 34
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->applicationContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 17
    .parameter "params"

    .prologue
    .line 39
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 41
    .local v16, success:Ljava/lang/Boolean;
    const/4 v2, 0x0

    :try_start_0
    aget-object v14, p1, v2

    .line 43
    .local v14, locationsUpdateData:Lorg/json/JSONObject;
    const-string v2, "results"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 45
    .local v13, locationsJSON:Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v10, v2, :cond_0

    .line 60
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 65
    .end local v10           #i:I
    .end local v13           #locationsJSON:Lorg/json/JSONArray;
    .end local v14           #locationsUpdateData:Lorg/json/JSONObject;
    :goto_1
    return-object v16

    .line 46
    .restart local v10       #i:I
    .restart local v13       #locationsJSON:Lorg/json/JSONArray;
    .restart local v14       #locationsUpdateData:Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 48
    .local v12, locationJSON:Lorg/json/JSONObject;
    new-instance v1, Lcom/citibikenyc/citibike/models/Place;

    const-string v2, "id"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    .line 49
    const-string v6, "Active"

    const-string v7, "status"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 50
    const-string v7, "availableBikes"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "availableDocks"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 48
    invoke-direct/range {v1 .. v8}, Lcom/citibikenyc/citibike/models/Place;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;ZII)V

    .line 52
    .local v1, newStation:Lcom/citibikenyc/citibike/models/Place;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 55
    .local v11, locationIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/citibikenyc/citibike/models/Place;

    .line 56
    .local v15, oldStation:Lcom/citibikenyc/citibike/models/Place;
    iget-boolean v2, v1, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    iget v3, v1, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    iget v4, v1, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v15, v2, v3, v4}, Lcom/citibikenyc/citibike/models/Place;->updateStationData(ZII)V

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v2, v11, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v11           #locationIndex:I
    .end local v15           #oldStation:Lcom/citibikenyc/citibike/models/Place;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 61
    .end local v1           #newStation:Lcom/citibikenyc/citibike/models/Place;
    .end local v10           #i:I
    .end local v12           #locationJSON:Lorg/json/JSONObject;
    .end local v13           #locationsJSON:Lorg/json/JSONArray;
    .end local v14           #locationsUpdateData:Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 62
    .local v9, e:Lorg/json/JSONException;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 63
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->doInBackground([Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->callback:Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;->onStationDataSuccess()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->callback:Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/tasks/StationDataParseTask$StationDataLoadCallBack;->onStationDataFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/StationDataParseTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
