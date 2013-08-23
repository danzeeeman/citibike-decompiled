.class public Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;
.super Landroid/os/AsyncTask;
.source "PlacesLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_LOAD_TYPE:I = 0x0

.field public static final PLACES_LOAD_TYPE_FULL:I = 0x64

.field public static final PLACES_LOAD_TYPE_UPDATE:I = 0xc8

.field public static final SCOOP_PLACES_LOAD:I = 0x12c

.field protected static final TAG:Ljava/lang/String; = "LocationLoadTask"


# instance fields
.field private listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

.field private loadType:I


# direct methods
.method public constructor <init>(Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "loadType"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->loadType:I

    .line 32
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    .line 33
    iput p2, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->loadType:I

    .line 34
    return-void
.end method

.method private getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "result"

    .prologue
    .line 65
    :try_start_0
    iget v1, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->loadType:I

    sparse-switch v1, :sswitch_data_0

    .line 79
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    :goto_0
    return-object v1

    .line 67
    :sswitch_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 85
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    .end local v0           #e:Lorg/json/JSONException;
    :sswitch_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :sswitch_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :sswitch_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .parameter "params"

    .prologue
    .line 38
    const/4 v8, 0x0

    aget-object v0, p1, v8

    .line 42
    .local v0, URI:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    .local v4, requestURL:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 44
    .local v7, tc:Ljava/net/URLConnection;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 47
    .local v2, in:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, result:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 60
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #requestURL:Ljava/net/URL;
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #tc:Ljava/net/URLConnection;
    :goto_1
    return-object v8

    .line 50
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #requestURL:Ljava/net/URL;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    .restart local v7       #tc:Ljava/net/URLConnection;
    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #requestURL:Ljava/net/URL;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #tc:Ljava/net/URLConnection;
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/io/IOException;
    const-string v8, "LocationLoadTask"

    const-string v9, "doInBackground"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v8, 0x0

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->loadType:I

    sparse-switch v0, :sswitch_data_0

    .line 109
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    iget v1, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->loadType:I

    invoke-interface {v0, p1, v1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;->onPlaceDataRefresh(Lorg/json/JSONObject;I)V

    .line 115
    :goto_0
    return-void

    .line 93
    .restart local p1
    :sswitch_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-interface {v0, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;->onContentLoad(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 97
    .restart local p1
    :sswitch_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-interface {v0, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;->onPlaceDataLoad(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 101
    .restart local p1
    :sswitch_2
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-interface {v0, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;->onStationDataRefresh(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 105
    .restart local p1
    :sswitch_3
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    invoke-interface {v0, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;->onScoopPlaceLoad(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 113
    .restart local p1
    :cond_0
    const-string v0, "LocationLoadTask"

    const-string v1, "Unable to retrieve data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_3
    .end sparse-switch
.end method
