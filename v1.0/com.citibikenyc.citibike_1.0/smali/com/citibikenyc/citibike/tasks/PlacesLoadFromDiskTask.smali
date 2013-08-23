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
        "[",
        "Lorg/json/JSONObject;",
        ">;"
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
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->listener:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 24
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private loadFile(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "filename"

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, result:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "PlacesLoadFromDiskTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: Checking for internal storage file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    .end local v1           #result:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/citibikenyc/citibike/helpers/FileHelper;->readTextFromInternalStorage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .restart local v1       #result:Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_0

    .line 69
    const-string v2, "PlacesLoadFromDiskTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG: No internal storage, checking assets folder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->loadFromAssets(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 72
    .end local v1           #result:Lorg/json/JSONObject;
    :cond_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #result:Lorg/json/JSONObject;
    goto :goto_0
.end method

.method private loadFromAssets(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "filename"

    .prologue
    .line 76
    iget-object v4, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 79
    .local v0, assetManager:Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 81
    .local v2, is:Ljava/io/InputStream;
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/citibikenyc/citibike/helpers/FileHelper;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
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

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->doInBackground([Ljava/lang/String;)[Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[Lorg/json/JSONObject;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    aget-object v4, p1, v5

    .line 30
    .local v4, stationFile:Ljava/lang/String;
    aget-object v0, p1, v6

    .line 31
    .local v0, branchFile:Ljava/lang/String;
    aget-object v2, p1, v7

    .line 35
    .local v2, helmetFile:Ljava/lang/String;
    const/4 v5, 0x3

    :try_start_0
    new-array v3, v5, [Lorg/json/JSONObject;

    .line 36
    .local v3, results:[Lorg/json/JSONObject;
    const/4 v5, 0x0

    invoke-direct {p0, v4}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->loadFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v3, v5

    .line 37
    const/4 v5, 0x1

    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->loadFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v3, v5

    .line 38
    const/4 v5, 0x2

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->loadFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v3           #results:[Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "PlacesLoadFromDiskTask"

    const-string v6, "doInBackground"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    new-array v3, v8, [Lorg/json/JSONObject;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->onPostExecute([Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute([Lorg/json/JSONObject;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string v0, "PlacesLoadFromDiskTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPostExecute : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadFromDiskTask;->listener:Lcom/citibikenyc/citibike/PlaceDataManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/citibikenyc/citibike/PlaceDataManager;->onSavedContent(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "PlacesLoadFromDiskTask"

    const-string v1, "Unable to retrieve data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
