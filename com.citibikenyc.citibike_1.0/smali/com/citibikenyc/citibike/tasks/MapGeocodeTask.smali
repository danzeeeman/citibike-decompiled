.class public Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;
.super Landroid/os/AsyncTask;
.source "MapGeocodeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/citibikenyc/citibike/models/Place;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$citibikenyc$citibike$tasks$MapGeocodeTask$RequestType:[I = null

.field protected static final TAG:Ljava/lang/String; = "MapGeocodeTask"


# instance fields
.field codeRequest:Ljava/lang/String;

.field codeType:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

.field private listener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

.field private mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

.field requestPlace:Lcom/citibikenyc/citibike/models/Place;

.field requestTitle:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$citibikenyc$citibike$tasks$MapGeocodeTask$RequestType()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->$SWITCH_TABLE$com$citibikenyc$citibike$tasks$MapGeocodeTask$RequestType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->values()[Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->ADDRESS:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    invoke-virtual {v1}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->GOOGLEPLACE:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    invoke-virtual {v1}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->STATION:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    invoke-virtual {v1}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->$SWITCH_TABLE$com$citibikenyc$citibike$tasks$MapGeocodeTask$RequestType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;)V
    .locals 1
    .parameter "listener"
    .parameter "actionListener"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->requestPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 40
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    .line 41
    iput-object p2, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;Lcom/citibikenyc/citibike/models/Place;)V
    .locals 1
    .parameter "listener"
    .parameter "actionListener"
    .parameter "p"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->requestPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 45
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    .line 46
    iput-object p2, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 47
    iput-object p3, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->requestPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 48
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/citibikenyc/citibike/models/Place;
    .locals 22
    .parameter "params"

    .prologue
    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 54
    .local v11, locale:Ljava/util/Locale;
    const/16 v18, 0x0

    aget-object v18, p1, v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->valueOf(Ljava/lang/String;)Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->codeType:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    .line 55
    const/16 v18, 0x1

    aget-object v18, p1, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->codeRequest:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 58
    const/16 v18, 0x2

    aget-object v18, p1, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->requestTitle:Ljava/lang/String;

    .line 61
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->codeRequest:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 62
    const-string v18, "MapGeocodeTask"

    const-string v19, "ERROR: Coded place is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v14, 0x0

    .line 143
    :goto_0
    return-object v14

    .line 67
    :cond_1
    const/4 v6, 0x0

    .line 69
    .local v6, googlePlaces:Ljava/net/URL;
    :try_start_0
    invoke-static {}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->$SWITCH_TABLE$com$citibikenyc$citibike$tasks$MapGeocodeTask$RequestType()[I

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->codeType:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 86
    const/4 v14, 0x0

    goto :goto_0

    .line 71
    :pswitch_0
    new-instance v7, Ljava/net/URL;

    .line 72
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "https://maps.googleapis.com/maps/api/place/details/json?reference="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->codeRequest:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "UTF-8"

    invoke-static/range {v19 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 74
    const-string v19, "&language=en&sensor=false&key="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 75
    const-string v19, "AIzaSyA3zOYaE1R3OADwJ7CpBQ91xtxi1Rbmt9o"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 72
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 71
    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .end local v6           #googlePlaces:Ljava/net/URL;
    .local v7, googlePlaces:Ljava/net/URL;
    :try_start_1
    const-string v18, "DEBUG"

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v6, v7

    .line 89
    .end local v7           #googlePlaces:Ljava/net/URL;
    .restart local v6       #googlePlaces:Ljava/net/URL;
    :goto_1
    :try_start_2
    const-string v18, "MapGeocodeTask"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Geocode URL:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    .line 92
    .local v17, tc:Ljava/net/URLConnection;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    .line 93
    invoke-virtual/range {v17 .. v17}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 92
    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 96
    .local v8, in:Ljava/io/BufferedReader;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v16, sb:Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, line:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 102
    const/4 v15, 0x0

    .line 104
    .local v15, placeResultData:Lorg/json/JSONObject;
    const-string v9, ""

    .line 105
    .local v9, label:Ljava/lang/String;
    const-string v4, ""

    .line 107
    .local v4, description:Ljava/lang/String;
    invoke-static {}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->$SWITCH_TABLE$com$citibikenyc$citibike$tasks$MapGeocodeTask$RequestType()[I

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->codeType:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_1

    .line 126
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 79
    .end local v4           #description:Ljava/lang/String;
    .end local v8           #in:Ljava/io/BufferedReader;
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #line:Ljava/lang/String;
    .end local v15           #placeResultData:Lorg/json/JSONObject;
    .end local v16           #sb:Ljava/lang/StringBuffer;
    .end local v17           #tc:Ljava/net/URLConnection;
    :pswitch_1
    new-instance v7, Ljava/net/URL;

    .line 80
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "https://maps.googleapis.com/maps/api/geocode/json?address="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->codeRequest:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "UTF-8"

    invoke-static/range {v19 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 82
    const-string v19, "&language=en&sensor=true&key="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 83
    const-string v19, "AIzaSyA3zOYaE1R3OADwJ7CpBQ91xtxi1Rbmt9o"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 80
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 79
    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v6           #googlePlaces:Ljava/net/URL;
    .restart local v7       #googlePlaces:Ljava/net/URL;
    move-object v6, v7

    .line 84
    .end local v7           #googlePlaces:Ljava/net/URL;
    .restart local v6       #googlePlaces:Ljava/net/URL;
    goto/16 :goto_1

    .line 99
    .restart local v8       #in:Ljava/io/BufferedReader;
    .restart local v10       #line:Ljava/lang/String;
    .restart local v16       #sb:Ljava/lang/StringBuffer;
    .restart local v17       #tc:Ljava/net/URLConnection;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 137
    .end local v8           #in:Ljava/io/BufferedReader;
    .end local v10           #line:Ljava/lang/String;
    .end local v16           #sb:Ljava/lang/StringBuffer;
    .end local v17           #tc:Ljava/net/URLConnection;
    :catch_0
    move-exception v5

    .line 138
    .local v5, e:Ljava/io/IOException;
    :goto_3
    const-string v18, "MapGeocodeTask"

    const-string v19, "MapGetPlaces : doInBackground"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v5           #e:Ljava/io/IOException;
    :goto_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 109
    .restart local v4       #description:Ljava/lang/String;
    .restart local v8       #in:Ljava/io/BufferedReader;
    .restart local v9       #label:Ljava/lang/String;
    .restart local v10       #line:Ljava/lang/String;
    .restart local v15       #placeResultData:Lorg/json/JSONObject;
    .restart local v16       #sb:Ljava/lang/StringBuffer;
    .restart local v17       #tc:Ljava/net/URLConnection;
    :pswitch_2
    :try_start_3
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v19, "result"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->requestPlace:Lcom/citibikenyc/citibike/models/Place;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->requestPlace:Lcom/citibikenyc/citibike/models/Place;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 129
    :cond_3
    :goto_5
    const-string v18, "DEBUG"

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v18, Lorg/json/JSONObject;

    const-string v19, "geometry"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v19, "location"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 132
    .local v13, placeLocation:Lorg/json/JSONObject;
    new-instance v12, Lcom/google/android/gms/maps/model/LatLng;

    const-string v18, "lat"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    const-string v20, "lng"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 133
    .local v12, locationResult:Lcom/google/android/gms/maps/model/LatLng;
    new-instance v14, Lcom/citibikenyc/citibike/models/Place;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v14, v9, v4, v12, v0}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 135
    .local v14, placeResult:Lcom/citibikenyc/citibike/models/Place;
    goto/16 :goto_0

    .line 114
    .end local v12           #locationResult:Lcom/google/android/gms/maps/model/LatLng;
    .end local v13           #placeLocation:Lorg/json/JSONObject;
    .end local v14           #placeResult:Lcom/citibikenyc/citibike/models/Place;
    :pswitch_3
    new-instance v18, Lorg/json/JSONObject;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v19, "results"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 115
    const-string v18, "RLC Address"

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v18, "formatted_address"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 118
    const-string v18, "formatted_address"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 121
    :cond_4
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 122
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 124
    goto/16 :goto_5

    .line 139
    .end local v4           #description:Ljava/lang/String;
    .end local v8           #in:Ljava/io/BufferedReader;
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #line:Ljava/lang/String;
    .end local v15           #placeResultData:Lorg/json/JSONObject;
    .end local v16           #sb:Ljava/lang/StringBuffer;
    .end local v17           #tc:Ljava/net/URLConnection;
    :catch_1
    move-exception v5

    .line 140
    .local v5, e:Lorg/json/JSONException;
    :goto_6
    const-string v18, "MapGeocodeTask"

    const-string v19, "MapGetPlaces : doInBackground"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 139
    .end local v5           #e:Lorg/json/JSONException;
    .end local v6           #googlePlaces:Ljava/net/URL;
    .restart local v7       #googlePlaces:Ljava/net/URL;
    :catch_2
    move-exception v5

    move-object v6, v7

    .end local v7           #googlePlaces:Ljava/net/URL;
    .restart local v6       #googlePlaces:Ljava/net/URL;
    goto :goto_6

    .line 137
    .end local v6           #googlePlaces:Ljava/net/URL;
    .restart local v7       #googlePlaces:Ljava/net/URL;
    :catch_3
    move-exception v5

    move-object v6, v7

    .end local v7           #googlePlaces:Ljava/net/URL;
    .restart local v6       #googlePlaces:Ljava/net/URL;
    goto/16 :goto_3

    .line 69
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 107
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->doInBackground([Ljava/lang/String;)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 148
    if-eqz p1, :cond_4

    .line 149
    const-string v1, "MapGeocodeTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPostExecute : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/citibikenyc/citibike/models/Place;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->requestPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v1, :cond_3

    .line 153
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->requestPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 154
    .local v0, resultPlace:Lcom/citibikenyc/citibike/models/Place;
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    .line 156
    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 163
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-interface {v1, v0}, Lcom/citibikenyc/citibike/interfaces/ActionListener;->onPlaceRequest(Lcom/citibikenyc/citibike/models/Place;)V

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->listener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    invoke-interface {v1, v0}, Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;->onPlaceSelection(Lcom/citibikenyc/citibike/models/Place;)V

    .line 173
    .end local v0           #resultPlace:Lcom/citibikenyc/citibike/models/Place;
    :cond_2
    :goto_1
    return-void

    .line 160
    :cond_3
    new-instance v0, Lcom/citibikenyc/citibike/models/Place;

    iget-object v1, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .restart local v0       #resultPlace:Lcom/citibikenyc/citibike/models/Place;
    goto :goto_0

    .line 171
    .end local v0           #resultPlace:Lcom/citibikenyc/citibike/models/Place;
    :cond_4
    const-string v1, "MapGeocodeTask"

    const-string v2, "Unable to geocode request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->onPostExecute(Lcom/citibikenyc/citibike/models/Place;)V

    return-void
.end method
