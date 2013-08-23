.class public Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;
.super Landroid/os/AsyncTask;
.source "PlacesLoadFromDiskTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "PlacesLoadFromDiskTask"


# instance fields
.field private listener:Lcom/citibikenyc/citibike/PlaceDataManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/citibikenyc/citibike/PlaceDataManager;)V
    .locals 0
    .parameter "mContext"
    .parameter "listener"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->listener:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 29
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private loadFile(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "filename"

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, result:Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .end local v1           #result:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/citibikenyc/citibike/helpers/FileHelper;->readTextFromInternalStorage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .restart local v1       #result:Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->loadFromAssets(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 75
    .end local v1           #result:Lorg/json/JSONObject;
    :cond_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #result:Lorg/json/JSONObject;
    goto :goto_0
.end method

.method private loadFileToJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .parameter "filename"

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, result:Lorg/json/JSONArray;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .end local v1           #result:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/citibikenyc/citibike/helpers/FileHelper;->readTextFromInternalStorage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .restart local v1       #result:Lorg/json/JSONArray;
    :goto_0
    if-nez v1, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->loadJSONArrayFromAssets(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 88
    .end local v1           #result:Lorg/json/JSONArray;
    :cond_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #result:Lorg/json/JSONArray;
    goto :goto_0
.end method

.method private loadFromAssets(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "filename"

    .prologue
    .line 92
    iget-object v4, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 95
    .local v0, assetManager:Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 96
    .local v2, is:Ljava/io/InputStream;
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/citibikenyc/citibike/helpers/FileHelper;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadJSONArrayFromAssets(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .parameter "filename"

    .prologue
    .line 105
    iget-object v4, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 108
    .local v0, assetManager:Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 110
    .local v2, is:Ljava/io/InputStream;
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/citibikenyc/citibike/helpers/FileHelper;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v6, 0x0

    aget-object v5, p1, v6

    .line 35
    .local v5, stationFile:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v0, p1, v6

    .line 36
    .local v0, branchFile:Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v2, p1, v6

    .line 37
    .local v2, helmetFile:Ljava/lang/String;
    const/4 v6, 0x3

    aget-object v4, p1, v6

    .line 41
    .local v4, scoopFile:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v3, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, v5}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->loadFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->loadFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->loadFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-direct {p0, v4}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->loadFileToJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v3           #results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    return-object v3

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "PlacesLoadFromDiskTask"

    const-string v7, "doInBackground"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 59
    iget-object v4, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->listener:Lcom/citibikenyc/citibike/PlaceDataManager;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->onSavedContent(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "PlacesLoadFromDiskTask"

    const-string v1, "Unable to retrieve data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
