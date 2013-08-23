.class public Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;
.super Landroid/os/AsyncTask;
.source "ScoopDataParseTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/json/JSONArray;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public applicationContext:Landroid/content/Context;

.field private callback:Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;

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
.method public constructor <init>(Ljava/util/List;Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;Landroid/content/Context;)V
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
            "Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, locations:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->locations:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->locations:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->callback:Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;

    .line 38
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->applicationContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/json/JSONArray;)Ljava/lang/Boolean;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    .line 43
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 44
    .local v8, success:Ljava/lang/Boolean;
    aget-object v7, p1, v12

    .line 46
    .local v7, result:Lorg/json/JSONArray;
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v6, placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v9, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_0

    .line 56
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v1, v9, :cond_3

    .line 73
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 81
    iget-object v9, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->applicationContext:Landroid/content/Context;

    const v10, 0x7f0a0036

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->applicationContext:Landroid/content/Context;

    invoke-static {v9, v10, v11}, Lcom/citibikenyc/citibike/helpers/FileHelper;->writeTextToInternalStorage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 82
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 87
    .end local v1           #i:I
    .end local v6           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :goto_3
    return-object v8

    .line 49
    .restart local v1       #i:I
    .restart local v6       #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_0
    iget-object v9, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/citibikenyc/citibike/models/Place;

    .line 51
    .local v5, p:Lcom/citibikenyc/citibike/models/Place;
    iget v9, v5, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_1

    iget v9, v5, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    .line 52
    :cond_1
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v5           #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_3
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->createScoopPlace(Lorg/json/JSONObject;)Lcom/citibikenyc/citibike/models/ScoopPlace;

    move-result-object v3

    .line 59
    .local v3, newPlace:Lcom/citibikenyc/citibike/models/ScoopPlace;
    iget-object v9, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 60
    iget-object v9, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 62
    .local v2, locationIndex:I
    if-ltz v2, :cond_4

    .line 63
    iget-object v9, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/models/Place;

    .line 64
    .local v4, oldStation:Lcom/citibikenyc/citibike/models/Place;
    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object v9, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v9, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v2           #locationIndex:I
    .end local v4           #oldStation:Lcom/citibikenyc/citibike/models/Place;
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_5
    iget-object v9, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 83
    .end local v1           #i:I
    .end local v3           #newPlace:Lcom/citibikenyc/citibike/models/ScoopPlace;
    .end local v6           #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Lorg/json/JSONException;
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 73
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #i:I
    .restart local v6       #placesToRemove:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_6
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/citibikenyc/citibike/models/Place;

    .line 74
    .restart local v5       #p:Lcom/citibikenyc/citibike/models/Place;
    iget-object v10, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->locations:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->doInBackground([Lorg/json/JSONArray;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->callback:Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;->onScoopDataParseSuccess()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->callback:Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask$ScoopDataParseCallBack;->onScoopDataParseFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/ScoopDataParseTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
