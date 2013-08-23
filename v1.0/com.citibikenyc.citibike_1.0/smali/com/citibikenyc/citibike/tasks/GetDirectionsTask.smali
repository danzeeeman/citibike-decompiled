.class public Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;
.super Landroid/os/AsyncTask;
.source "GetDirectionsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/citibikenyc/citibike/models/Place;",
        "Ljava/lang/Void;",
        "Lcom/citibikenyc/citibike/models/RouteResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final BICYCLING:Ljava/lang/String; = "bicycling"

.field protected static final TAG:Ljava/lang/String; = "GetDirectionsTask"

.field private static final WALKING:Ljava/lang/String; = "walking"


# instance fields
.field private listener:Lcom/citibikenyc/citibike/interfaces/RouteListener;

.field private loadingView:Landroid/view/View;

.field private mOnBike:Z

.field private mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;


# direct methods
.method public constructor <init>(Lcom/citibikenyc/citibike/interfaces/RouteListener;Landroid/view/View;Lcom/citibikenyc/citibike/PlaceDataManager;Z)V
    .locals 2
    .parameter "listener"
    .parameter "loadingView"
    .parameter "mPlaceDataManager"
    .parameter "onBike"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->listener:Lcom/citibikenyc/citibike/interfaces/RouteListener;

    .line 34
    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->loadingView:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 38
    iput-boolean p4, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mOnBike:Z

    .line 39
    iput-object p1, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->listener:Lcom/citibikenyc/citibike/interfaces/RouteListener;

    .line 40
    iput-object p2, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->loadingView:Landroid/view/View;

    .line 41
    iput-object p3, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 43
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->loadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    return-void
.end method

.method private addDirections(Lcom/citibikenyc/citibike/models/RouteResult;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 37
    .parameter "route"
    .parameter "mode"
    .parameter "startPoint"
    .parameter "endPoint"

    .prologue
    .line 181
    :try_start_0
    new-instance v15, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "http://maps.googleapis.com/maps/api/directions/json?origin="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p3

    iget-wide v7, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-wide v7, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 183
    const-string v7, "&destination="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-wide v7, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-wide v7, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 184
    const-string v7, "&mode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&sensor=true&units=imperial"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-direct {v15, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 186
    .local v15, googleDirections:Ljava/net/URL;
    const-string v5, "GetDirectionsTask"

    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v34

    .line 189
    .local v34, tc:Ljava/net/URLConnection;
    const v5, 0xea60

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 190
    const v5, 0xea60

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 192
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual/range {v34 .. v34}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 195
    .local v17, in:Ljava/io/BufferedReader;
    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v29, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v22

    .local v22, line:Ljava/lang/String;
    if-nez v22, :cond_0

    .line 202
    const-string v5, "bicycling"

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v9, 0x0

    .line 205
    .local v9, type:I
    :goto_1
    new-instance v28, Lorg/json/JSONObject;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    .local v28, routes:Lorg/json/JSONObject;
    new-instance v18, Lorg/json/JSONArray;

    const-string v5, "routes"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 207
    .local v18, ja:Lorg/json/JSONArray;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28           #routes:Lorg/json/JSONObject;
    check-cast v28, Lorg/json/JSONObject;

    .line 208
    .restart local v28       #routes:Lorg/json/JSONObject;
    const-string v5, "GetDirectionsTask"

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v18, Lorg/json/JSONArray;

    .end local v18           #ja:Lorg/json/JSONArray;
    const-string v5, "legs"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v18       #ja:Lorg/json/JSONArray;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 213
    .local v19, jo:Lorg/json/JSONObject;
    new-instance v18, Lorg/json/JSONArray;

    .end local v18           #ja:Lorg/json/JSONArray;
    const-string v5, "steps"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v18       #ja:Lorg/json/JSONArray;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v16

    if-lt v0, v5, :cond_2

    .line 235
    const-string v5, "overview_polyline"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 236
    .local v27, overviewPolylines:Lorg/json/JSONObject;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/citibikenyc/citibike/models/RouteResult;->mEncodedPolylines:Ljava/util/List;

    const-string v7, "points"

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v10, Lorg/json/JSONObject;

    const-string v5, "bounds"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v10, bounds:Lorg/json/JSONObject;
    new-instance v26, Lorg/json/JSONObject;

    const-string v5, "northeast"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    .local v26, northeastBound:Lorg/json/JSONObject;
    new-instance v30, Lorg/json/JSONObject;

    const-string v5, "southwest"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    .local v30, southwestBound:Lorg/json/JSONObject;
    new-instance v25, Lcom/google/android/gms/maps/model/LatLng;

    .line 244
    const-string v5, "lat"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v5, "lng"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v35

    .line 243
    move-object/from16 v0, v25

    move-wide/from16 v1, v35

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 246
    .local v25, neBound:Lcom/google/android/gms/maps/model/LatLng;
    new-instance v33, Lcom/google/android/gms/maps/model/LatLng;

    .line 247
    const-string v5, "lat"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v5, "lng"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v35

    .line 246
    move-object/from16 v0, v33

    move-wide/from16 v1, v35

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 249
    .local v33, swBound:Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/citibikenyc/citibike/models/RouteResult;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v5, :cond_3

    .line 250
    new-instance v11, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v11}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 251
    .local v11, builder:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 252
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 253
    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/citibikenyc/citibike/models/RouteResult;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 259
    .end local v11           #builder:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    :goto_3
    const/4 v5, 0x1

    .line 264
    .end local v9           #type:I
    .end local v10           #bounds:Lorg/json/JSONObject;
    .end local v15           #googleDirections:Ljava/net/URL;
    .end local v16           #i:I
    .end local v17           #in:Ljava/io/BufferedReader;
    .end local v18           #ja:Lorg/json/JSONArray;
    .end local v19           #jo:Lorg/json/JSONObject;
    .end local v22           #line:Ljava/lang/String;
    .end local v25           #neBound:Lcom/google/android/gms/maps/model/LatLng;
    .end local v26           #northeastBound:Lorg/json/JSONObject;
    .end local v27           #overviewPolylines:Lorg/json/JSONObject;
    .end local v28           #routes:Lorg/json/JSONObject;
    .end local v29           #sb:Ljava/lang/StringBuffer;
    .end local v30           #southwestBound:Lorg/json/JSONObject;
    .end local v33           #swBound:Lcom/google/android/gms/maps/model/LatLng;
    .end local v34           #tc:Ljava/net/URLConnection;
    :goto_4
    return v5

    .line 198
    .restart local v15       #googleDirections:Ljava/net/URL;
    .restart local v17       #in:Ljava/io/BufferedReader;
    .restart local v22       #line:Ljava/lang/String;
    .restart local v29       #sb:Ljava/lang/StringBuffer;
    .restart local v34       #tc:Ljava/net/URLConnection;
    :cond_0
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 260
    .end local v15           #googleDirections:Ljava/net/URL;
    .end local v17           #in:Ljava/io/BufferedReader;
    .end local v22           #line:Ljava/lang/String;
    .end local v29           #sb:Ljava/lang/StringBuffer;
    .end local v34           #tc:Ljava/net/URLConnection;
    :catch_0
    move-exception v13

    .line 261
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    const/4 v5, 0x0

    goto :goto_4

    .line 202
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v15       #googleDirections:Ljava/net/URL;
    .restart local v17       #in:Ljava/io/BufferedReader;
    .restart local v22       #line:Ljava/lang/String;
    .restart local v29       #sb:Ljava/lang/StringBuffer;
    .restart local v34       #tc:Ljava/net/URLConnection;
    :cond_1
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 216
    .restart local v9       #type:I
    .restart local v16       #i:I
    .restart local v18       #ja:Lorg/json/JSONArray;
    .restart local v19       #jo:Lorg/json/JSONObject;
    .restart local v28       #routes:Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/json/JSONObject;

    .line 218
    .local v32, step:Lorg/json/JSONObject;
    new-instance v31, Lorg/json/JSONObject;

    const-string v5, "start_location"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v31, startLocation:Lorg/json/JSONObject;
    const-string v5, "lat"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 220
    .local v20, lat:D
    const-string v5, "lng"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    .line 221
    .local v23, lng:D
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v0, v20

    move-wide/from16 v2, v23

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 223
    .local v6, start:Lcom/google/android/gms/maps/model/LatLng;
    new-instance v14, Lorg/json/JSONObject;

    const-string v5, "end_location"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 224
    .local v14, endLocation:Lorg/json/JSONObject;
    const-string v5, "lat"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 225
    const-string v5, "lng"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    .line 227
    new-instance v12, Lorg/json/JSONObject;

    const-string v5, "distance"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 229
    .local v12, distance:Lorg/json/JSONObject;
    const-string v5, "GetDirectionsTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "startLocation: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " endLocation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v4, Lcom/citibikenyc/citibike/models/RouteStep;

    const-string v5, "html_instructions"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v0, v20

    move-wide/from16 v2, v23

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const-string v8, "value"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct/range {v4 .. v9}, Lcom/citibikenyc/citibike/models/RouteStep;-><init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;II)V

    .line 231
    .local v4, routeStep:Lcom/citibikenyc/citibike/models/RouteStep;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 255
    .end local v4           #routeStep:Lcom/citibikenyc/citibike/models/RouteStep;
    .end local v6           #start:Lcom/google/android/gms/maps/model/LatLng;
    .end local v12           #distance:Lorg/json/JSONObject;
    .end local v14           #endLocation:Lorg/json/JSONObject;
    .end local v20           #lat:D
    .end local v23           #lng:D
    .end local v31           #startLocation:Lorg/json/JSONObject;
    .end local v32           #step:Lorg/json/JSONObject;
    .restart local v10       #bounds:Lorg/json/JSONObject;
    .restart local v25       #neBound:Lcom/google/android/gms/maps/model/LatLng;
    .restart local v26       #northeastBound:Lorg/json/JSONObject;
    .restart local v27       #overviewPolylines:Lorg/json/JSONObject;
    .restart local v30       #southwestBound:Lorg/json/JSONObject;
    .restart local v33       #swBound:Lcom/google/android/gms/maps/model/LatLng;
    :cond_3
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/citibikenyc/citibike/models/RouteResult;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->including(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/citibikenyc/citibike/models/RouteResult;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 256
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/citibikenyc/citibike/models/RouteResult;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->including(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/citibikenyc/citibike/models/RouteResult;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/citibikenyc/citibike/models/Place;)Lcom/citibikenyc/citibike/models/RouteResult;
    .locals 13
    .parameter "params"

    .prologue
    .line 50
    const/4 v11, 0x0

    .line 51
    .local v11, startStation:Lcom/citibikenyc/citibike/models/Place;
    const/4 v8, 0x0

    .line 54
    .local v8, endStation:Lcom/citibikenyc/citibike/models/Place;
    iget-boolean v2, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mOnBike:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 56
    :cond_0
    iget-boolean v2, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mOnBike:Z

    if-nez v2, :cond_1

    .line 58
    const/4 v2, 0x0

    aget-object v11, p1, v2

    .line 70
    :cond_1
    :goto_0
    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget v2, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 72
    const/4 v2, 0x1

    aget-object v8, p1, v2

    .line 82
    :cond_2
    :goto_1
    new-instance v10, Lcom/citibikenyc/citibike/models/RouteResult;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    iget-boolean v4, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mOnBike:Z

    invoke-direct {v10, v2, v3, v4}, Lcom/citibikenyc/citibike/models/RouteResult;-><init>(Lcom/citibikenyc/citibike/models/Place;Lcom/citibikenyc/citibike/models/Place;Z)V

    .line 83
    .local v10, result:Lcom/citibikenyc/citibike/models/RouteResult;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lcom/citibikenyc/citibike/models/RouteResult;->mEncodedPolylines:Ljava/util/List;

    .line 87
    const-string v2, "GetDirectionsTask"

    const-string v3, "Getting Directions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-boolean v2, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mOnBike:Z

    if-nez v2, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8, v11}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 89
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2, v8}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2, v11}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 91
    :cond_4
    const-string v2, "GetDirectionsTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "One Leg - Getting walking directions from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v2, "walking"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->addDirections(Lcom/citibikenyc/citibike/models/RouteResult;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 93
    const/4 v10, 0x0

    .line 176
    .end local v10           #result:Lcom/citibikenyc/citibike/models/RouteResult;
    :goto_2
    return-object v10

    .line 62
    :cond_5
    iget-object v2, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyStartStations(Lcom/google/android/gms/maps/model/LatLng;I)Ljava/util/ArrayList;

    move-result-object v12

    .line 64
    .local v12, startStationOptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #startStation:Lcom/citibikenyc/citibike/models/Place;
    check-cast v11, Lcom/citibikenyc/citibike/models/Place;

    .restart local v11       #startStation:Lcom/citibikenyc/citibike/models/Place;
    goto/16 :goto_0

    .line 75
    .end local v12           #startStationOptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    :cond_6
    iget-object v2, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/citibikenyc/citibike/PlaceDataManager;->getNearbyEndStations(Lcom/google/android/gms/maps/model/LatLng;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 77
    .local v9, endStationOptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #endStation:Lcom/citibikenyc/citibike/models/Place;
    check-cast v8, Lcom/citibikenyc/citibike/models/Place;

    .restart local v8       #endStation:Lcom/citibikenyc/citibike/models/Place;
    goto/16 :goto_1

    .line 95
    .end local v9           #endStationOptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    .restart local v10       #result:Lcom/citibikenyc/citibike/models/RouteResult;
    :cond_7
    iget-boolean v2, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mOnBike:Z

    if-nez v2, :cond_8

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    :cond_8
    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget v2, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 96
    iget-boolean v2, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mOnBike:Z

    if-nez v2, :cond_9

    .line 97
    iput-object v11, v10, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    .line 101
    :cond_9
    const-string v2, "GetDirectionsTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "One Leg - Getting biking directions from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v2, "bicycling"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->addDirections(Lcom/citibikenyc/citibike/models/RouteResult;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 103
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 106
    :cond_a
    new-instance v0, Lcom/citibikenyc/citibike/models/RouteStep;

    const/4 v1, 0x3

    const-string v2, "Bike drop off"

    iget-object v3, v8, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    iget v4, v8, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iget-object v5, v8, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct/range {v0 .. v5}, Lcom/citibikenyc/citibike/models/RouteStep;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;)V

    .line 107
    .local v0, endStationStep:Lcom/citibikenyc/citibike/models/RouteStep;
    iget-object v2, v10, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iput-object v8, v10, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    .line 174
    .end local v0           #endStationStep:Lcom/citibikenyc/citibike/models/RouteStep;
    :cond_b
    :goto_3
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "Routing"

    const-string v4, "RoutePress"

    const-string v5, "Execute"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    const-string v2, "GetDirectionsTask"

    const-string v3, "Directions Complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 111
    :cond_c
    iget-boolean v2, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mOnBike:Z

    if-nez v2, :cond_11

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    .line 113
    const-string v2, "GetDirectionsTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "First Leg - Getting walking directions from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v2, "walking"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v11, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->addDirections(Lcom/citibikenyc/citibike/models/RouteResult;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 115
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 119
    :cond_d
    new-instance v1, Lcom/citibikenyc/citibike/models/RouteStep;

    const/4 v2, 0x3

    const-string v3, "Get a bike"

    iget-object v4, v11, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    iget v5, v11, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iget-object v6, v11, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct/range {v1 .. v6}, Lcom/citibikenyc/citibike/models/RouteStep;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;)V

    .line 120
    .local v1, startStationStep:Lcom/citibikenyc/citibike/models/RouteStep;
    iget-object v2, v10, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iput-object v11, v10, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    .line 124
    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget v2, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_f

    .line 125
    const-string v2, "GetDirectionsTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Second Leg - Getting biking directions from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v2, "bicycling"

    iget-object v3, v11, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v8, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->addDirections(Lcom/citibikenyc/citibike/models/RouteResult;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 127
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 130
    :cond_e
    new-instance v0, Lcom/citibikenyc/citibike/models/RouteStep;

    const/4 v3, 0x3

    const-string v4, "Bike drop off"

    iget-object v5, v8, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    iget v6, v8, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iget-object v7, v8, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/citibikenyc/citibike/models/RouteStep;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;)V

    .line 131
    .restart local v0       #endStationStep:Lcom/citibikenyc/citibike/models/RouteStep;
    iget-object v2, v10, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iput-object v8, v10, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    .line 135
    const-string v2, "GetDirectionsTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Third Leg - Getting walking directions from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v2, "walking"

    iget-object v3, v8, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->addDirections(Lcom/citibikenyc/citibike/models/RouteResult;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 137
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 140
    .end local v0           #endStationStep:Lcom/citibikenyc/citibike/models/RouteStep;
    :cond_f
    const-string v2, "GetDirectionsTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Second Leg - Getting biking directions from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v2, "bicycling"

    iget-object v3, v11, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->addDirections(Lcom/citibikenyc/citibike/models/RouteResult;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 142
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 145
    :cond_10
    new-instance v0, Lcom/citibikenyc/citibike/models/RouteStep;

    const/4 v3, 0x3

    const-string v4, "Bike drop off"

    iget-object v5, v8, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    iget v6, v8, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iget-object v7, v8, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/citibikenyc/citibike/models/RouteStep;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;)V

    .line 146
    .restart local v0       #endStationStep:Lcom/citibikenyc/citibike/models/RouteStep;
    iget-object v2, v10, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iput-object v8, v10, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    goto/16 :goto_3

    .line 151
    .end local v0           #endStationStep:Lcom/citibikenyc/citibike/models/RouteStep;
    .end local v1           #startStationStep:Lcom/citibikenyc/citibike/models/RouteStep;
    :cond_11
    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget v2, v2, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    .line 152
    const-string v2, "GetDirectionsTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "First Leg - Getting biking directions from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v2, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->mOnBike:Z

    if-nez v2, :cond_12

    .line 154
    iput-object v11, v10, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    .line 157
    :cond_12
    const-string v2, "bicycling"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v8, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->addDirections(Lcom/citibikenyc/citibike/models/RouteResult;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 158
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 161
    :cond_13
    new-instance v0, Lcom/citibikenyc/citibike/models/RouteStep;

    const/4 v3, 0x3

    const-string v4, "Bike drop off"

    iget-object v5, v8, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    iget v6, v8, Lcom/citibikenyc/citibike/models/Place;->iconId:I

    iget-object v7, v8, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/citibikenyc/citibike/models/RouteStep;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;)V

    .line 162
    .restart local v0       #endStationStep:Lcom/citibikenyc/citibike/models/RouteStep;
    iget-object v2, v10, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iput-object v8, v10, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    .line 166
    const-string v2, "GetDirectionsTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Second Leg - Getting walking directions from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v2, "walking"

    iget-object v3, v8, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v10, v2, v3, v4}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->addDirections(Lcom/citibikenyc/citibike/models/RouteResult;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 168
    const/4 v10, 0x0

    goto/16 :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->doInBackground([Lcom/citibikenyc/citibike/models/Place;)Lcom/citibikenyc/citibike/models/RouteResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/citibikenyc/citibike/models/RouteResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->listener:Lcom/citibikenyc/citibike/interfaces/RouteListener;

    invoke-interface {v0, p1}, Lcom/citibikenyc/citibike/interfaces/RouteListener;->onRoute(Lcom/citibikenyc/citibike/models/RouteResult;)V

    .line 271
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/citibikenyc/citibike/models/RouteResult;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->onPostExecute(Lcom/citibikenyc/citibike/models/RouteResult;)V

    return-void
.end method
