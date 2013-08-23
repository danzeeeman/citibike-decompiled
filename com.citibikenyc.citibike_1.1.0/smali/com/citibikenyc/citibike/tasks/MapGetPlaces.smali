.class public Lcom/citibikenyc/citibike/tasks/MapGetPlaces;
.super Landroid/os/AsyncTask;
.source "MapGetPlaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final GOOGLE_PLACES_API_KEY:Ljava/lang/String; = "AIzaSyA3zOYaE1R3OADwJ7CpBQ91xtxi1Rbmt9o"

.field protected static final TAG:Ljava/lang/String; = "MapGetPlaces"


# instance fields
.field private mListener:Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;

.field private mOriginalValues:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->searchString:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->mListener:Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;

    .line 45
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->doInBackground([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 16
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    .local v10, predictionsArr:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->mOriginalValues:Ljava/util/LinkedHashMap;

    .line 53
    const/4 v13, 0x0

    aget-object v13, p1, v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->searchString:Ljava/lang/String;

    .line 55
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->searchString:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-ge v13, v14, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v10

    .line 59
    :cond_1
    const-string v8, ""

    .line 60
    .local v8, locationString:Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v14, 0x4

    if-lt v13, v14, :cond_2

    .line 61
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "&location="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    aget-object v14, p1, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v14, p1, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&radius="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    aget-object v14, p1, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 65
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 66
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "https://maps.googleapis.com/maps/api/place/autocomplete/json?input="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->searchString:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-static {v14, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 68
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 69
    const-string v14, "&language=en&sensor=true&key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 70
    const-string v14, "AIzaSyA3zOYaE1R3OADwJ7CpBQ91xtxi1Rbmt9o"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 66
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 65
    invoke-direct {v2, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, googlePlaces:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    .line 74
    .local v12, tc:Ljava/net/URLConnection;
    const v13, 0xea60

    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 75
    const v13, 0xea60

    invoke-virtual {v12, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 77
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 80
    .local v4, in:Ljava/io/BufferedReader;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v11, sb:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-nez v7, :cond_3

    .line 86
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v9, predictions:Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    const-string v13, "predictions"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 89
    .local v5, ja:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_0

    .line 90
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 91
    .local v6, jo:Lorg/json/JSONObject;
    const-string v13, "description"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->formatResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "reference"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 83
    .end local v3           #i:I
    .end local v5           #ja:Lorg/json/JSONArray;
    .end local v6           #jo:Lorg/json/JSONObject;
    .end local v9           #predictions:Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 93
    .end local v2           #googlePlaces:Ljava/net/URL;
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v11           #sb:Ljava/lang/StringBuffer;
    .end local v12           #tc:Ljava/net/URLConnection;
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/io/IOException;
    const-string v13, "MapGetPlaces"

    const-string v14, "MapGetPlaces : doInBackground"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 95
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 96
    .local v1, e:Lorg/json/JSONException;
    const-string v13, "MapGetPlaces"

    const-string v14, "MapGetPlaces : doInBackground"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public formatResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "result"

    .prologue
    .line 153
    const-string v0, ", New York, NY, United States"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultReference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "resultKey"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->mOriginalValues:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasRan()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->mOriginalValues:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->onPostExecute(Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/LinkedHashMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, results:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->mOriginalValues:Ljava/util/LinkedHashMap;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, placeData:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 112
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->mListener:Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;

    iget-object v4, p0, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->searchString:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;->onMapPlaces(Ljava/lang/String;Ljava/util/List;)V

    .line 124
    return-void

    .line 112
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->parsePlace(Ljava/lang/String;)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v1

    .line 115
    .local v1, p:Lcom/citibikenyc/citibike/models/Place;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    .line 117
    iget-object v3, v1, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 118
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public parsePlace(Ljava/lang/String;)Lcom/citibikenyc/citibike/models/Place;
    .locals 6
    .parameter "placeDescription"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 127
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, placeString:[Ljava/lang/String;
    const-string v0, ""

    .line 129
    .local v0, description:Ljava/lang/String;
    array-length v2, v1

    packed-switch v2, :pswitch_data_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    :pswitch_0
    new-instance v2, Lcom/citibikenyc/citibike/models/Place;

    aget-object v3, v1, v5

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    return-object v2

    .line 134
    :pswitch_1
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
