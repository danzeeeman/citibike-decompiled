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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_LOAD_TYPE:I = 0x0

.field public static final PLACES_LOAD_TYPE_FULL:I = 0x64

.field public static final PLACES_LOAD_TYPE_UPDATE:I = 0xc8

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
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->loadType:I

    .line 30
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    .line 31
    iput p2, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->loadType:I

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .parameter "params"

    .prologue
    .line 36
    const/4 v7, 0x0

    aget-object v0, p1, v7

    .line 40
    .local v0, URI:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .local v4, requestURL:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 42
    .local v6, tc:Ljava/net/URLConnection;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 43
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 46
    .local v2, in:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v5, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 52
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #requestURL:Ljava/net/URL;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .end local v6           #tc:Ljava/net/URLConnection;
    :goto_1
    return-object v7

    .line 49
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #requestURL:Ljava/net/URL;
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    .restart local v6       #tc:Ljava/net/URLConnection;
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 54
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #requestURL:Ljava/net/URL;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .end local v6           #tc:Ljava/net/URLConnection;
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/io/IOException;
    const-string v7, "LocationLoadTask"

    const-string v8, "doInBackground"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v1           #e:Ljava/io/IOException;
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 56
    :catch_1
    move-exception v1

    .line 57
    .local v1, e:Lorg/json/JSONException;
    const-string v7, "LocationLoadTask"

    const-string v8, "doInBackground"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string v0, "LocationLoadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPostExecute : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->loadType:I

    sparse-switch v0, :sswitch_data_0

    .line 79
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    iget v1, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->loadType:I

    invoke-interface {v0, p1, v1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;->onPlaceDataRefresh(Lorg/json/JSONObject;I)V

    .line 85
    :goto_0
    return-void

    .line 70
    :sswitch_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    invoke-interface {v0, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;->onContentLoad(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 73
    :sswitch_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    invoke-interface {v0, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;->onPlaceDataLoad(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 76
    :sswitch_2
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/PlacesLoadTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;

    invoke-interface {v0, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataListener;->onStationDataRefresh(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "LocationLoadTask"

    const-string v1, "Unable to retrieve data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method
