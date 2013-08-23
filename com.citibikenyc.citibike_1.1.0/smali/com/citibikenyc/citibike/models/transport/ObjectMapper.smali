.class public Lcom/citibikenyc/citibike/models/transport/ObjectMapper;
.super Ljava/lang/Object;
.source "ObjectMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAddress(Lorg/json/JSONObject;)Lcom/citibikenyc/citibike/models/Address;
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p0}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->parseAddress(Lorg/json/JSONObject;)Lcom/citibikenyc/citibike/models/transport/TAddress;

    move-result-object v0

    .line 40
    .local v0, tAddress:Lcom/citibikenyc/citibike/models/transport/TAddress;
    invoke-static {v0}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->toAddress(Lcom/citibikenyc/citibike/models/transport/TAddress;)Lcom/citibikenyc/citibike/models/Address;

    move-result-object v1

    return-object v1
.end method

.method public static createScoopPlace(Lorg/json/JSONObject;)Lcom/citibikenyc/citibike/models/ScoopPlace;
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;

    invoke-direct {v0}, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;-><init>()V

    .line 57
    .local v0, tScoopPlace:Lcom/citibikenyc/citibike/models/transport/TScoopPlace;
    const-string v1, "address"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->parseAddress(Lorg/json/JSONObject;)Lcom/citibikenyc/citibike/models/transport/TAddress;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->address:Lcom/citibikenyc/citibike/models/transport/TAddress;

    .line 58
    const-string v1, "review"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->review:Ljava/lang/String;

    .line 59
    const-string v1, "author"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->reviewer:Ljava/lang/String;

    .line 60
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->type:Ljava/lang/String;

    .line 61
    const-string v1, "category"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->category:Ljava/lang/String;

    .line 62
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->id:Ljava/lang/String;

    .line 63
    const-string v1, "phone"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->phone:Ljava/lang/String;

    .line 64
    const-string v1, "price"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->price:Ljava/lang/Double;

    .line 65
    const-string v1, "stars"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->stars:Ljava/lang/Float;

    .line 66
    const-string v1, "title"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->title:Ljava/lang/String;

    .line 67
    invoke-static {v0}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->toScoopPlace(Lcom/citibikenyc/citibike/models/transport/TScoopPlace;)Lcom/citibikenyc/citibike/models/ScoopPlace;

    move-result-object v1

    return-object v1

    .line 65
    :cond_0
    const-string v1, "stars"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method private static getDouble(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;
    .locals 3
    .parameter "obj"
    .parameter "fieldName"

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .parameter "obj"
    .parameter "fieldName"

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "obj"
    .parameter "fieldName"

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseAddress(Lorg/json/JSONObject;)Lcom/citibikenyc/citibike/models/transport/TAddress;
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/citibikenyc/citibike/models/transport/TAddress;

    invoke-direct {v0}, Lcom/citibikenyc/citibike/models/transport/TAddress;-><init>()V

    .line 45
    .local v0, tAddress:Lcom/citibikenyc/citibike/models/transport/TAddress;
    const-string v1, "address1"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TAddress;->address1:Ljava/lang/String;

    .line 46
    const-string v1, "address2"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TAddress;->address2:Ljava/lang/String;

    .line 47
    const-string v1, "city"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TAddress;->city:Ljava/lang/String;

    .line 48
    const-string v1, "latitude"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TAddress;->latitude:Ljava/lang/Double;

    .line 49
    const-string v1, "longitude"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TAddress;->longitude:Ljava/lang/Double;

    .line 50
    const-string v1, "state"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TAddress;->state:Ljava/lang/String;

    .line 51
    const-string v1, "zip"

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/transport/TAddress;->zip:Ljava/lang/Long;

    .line 52
    return-object v0
.end method

.method public static toAddress(Lcom/citibikenyc/citibike/models/transport/TAddress;)Lcom/citibikenyc/citibike/models/Address;
    .locals 6
    .parameter "tAddress"

    .prologue
    .line 13
    new-instance v0, Lcom/citibikenyc/citibike/models/Address;

    invoke-direct {v0}, Lcom/citibikenyc/citibike/models/Address;-><init>()V

    .line 14
    .local v0, address:Lcom/citibikenyc/citibike/models/Address;
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/transport/TAddress;->address1:Ljava/lang/String;

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/Address;->address1:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/transport/TAddress;->address2:Ljava/lang/String;

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/Address;->address2:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/transport/TAddress;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/Address;->city:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/transport/TAddress;->state:Ljava/lang/String;

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/Address;->state:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/transport/TAddress;->zip:Ljava/lang/Long;

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/Address;->zip:Ljava/lang/Long;

    .line 19
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/citibikenyc/citibike/models/transport/TAddress;->latitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/citibikenyc/citibike/models/transport/TAddress;->longitude:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/Address;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 20
    return-object v0
.end method

.method public static toScoopPlace(Lcom/citibikenyc/citibike/models/transport/TScoopPlace;)Lcom/citibikenyc/citibike/models/ScoopPlace;
    .locals 7
    .parameter "tScoopPlace"

    .prologue
    .line 24
    new-instance v0, Lcom/citibikenyc/citibike/models/ScoopPlace;

    iget-object v1, p0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->title:Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->address:Lcom/citibikenyc/citibike/models/transport/TAddress;

    invoke-static {v2}, Lcom/citibikenyc/citibike/models/transport/ObjectMapper;->toAddress(Lcom/citibikenyc/citibike/models/transport/TAddress;)Lcom/citibikenyc/citibike/models/Address;

    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->phone:Ljava/lang/String;

    .line 27
    iget-object v4, p0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->stars:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 28
    iget-object v5, p0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->price:Ljava/lang/Double;

    .line 29
    iget-object v6, p0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->category:Ljava/lang/String;

    invoke-static {v6}, Lcom/citibikenyc/citibike/models/ScoopPlace;->getCategory(Ljava/lang/String;)I

    move-result v6

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/citibikenyc/citibike/models/ScoopPlace;-><init>(Ljava/lang/String;Lcom/citibikenyc/citibike/models/Address;Ljava/lang/String;FLjava/lang/Double;I)V

    .line 31
    .local v0, scoopPlace:Lcom/citibikenyc/citibike/models/ScoopPlace;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->getFormattedID()I

    move-result v1

    iput v1, v0, Lcom/citibikenyc/citibike/models/ScoopPlace;->id:I

    .line 32
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->review:Ljava/lang/String;

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/ScoopPlace;->review:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/ScoopPlace;->type:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->reviewer:Ljava/lang/String;

    iput-object v1, v0, Lcom/citibikenyc/citibike/models/ScoopPlace;->reviewer:Ljava/lang/String;

    .line 35
    return-object v0
.end method
