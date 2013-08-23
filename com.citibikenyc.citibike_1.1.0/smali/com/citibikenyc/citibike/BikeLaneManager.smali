.class public Lcom/citibikenyc/citibike/BikeLaneManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BikeLaneManager.java"


# static fields
.field private static final BIKELANES_TABLE_NAME:Ljava/lang/String; = "bikelanes"

.field private static final COLUMN_ELAT:Ljava/lang/String; = "elat"

.field private static final COLUMN_ELNG:Ljava/lang/String; = "elng"

.field private static final COLUMN_SLAT:Ljava/lang/String; = "slat"

.field private static final COLUMN_SLNG:Ljava/lang/String; = "slng"

.field private static final DATABASE_NAME:Ljava/lang/String; = "citibike_lanes"

.field private static final DATABASE_VERSION:I = 0x1


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 37
    const-string v1, "citibike_lanes"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    iput-object p1, p0, Lcom/citibikenyc/citibike/BikeLaneManager;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/citibikenyc/citibike/BikeLaneManager;->getDbFilePath()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, filePath:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/BikeLaneManager;->copyBikeLanesDb(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/citibikenyc/citibike/BikeLaneManager;->open()V

    .line 52
    return-void
.end method

.method private copyBikeLanesDb(Ljava/lang/String;)V
    .locals 7
    .parameter "filePath"

    .prologue
    .line 175
    :try_start_0
    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeLaneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "citibike_lanes"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 176
    .local v2, in:Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 179
    .local v4, out:Ljava/io/OutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 182
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-gtz v3, :cond_0

    .line 186
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 187
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 191
    .end local v0           #buf:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 183
    .restart local v0       #buf:[B
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #len:I
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v0           #buf:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private cursorToBikeLane(Landroid/database/Cursor;)Lcom/citibikenyc/citibike/models/BikeLane;
    .locals 7
    .parameter "cursor"

    .prologue
    .line 147
    new-instance v0, Lcom/citibikenyc/citibike/models/BikeLane;

    .line 148
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    const-string v2, "slat"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 149
    const-string v4, "slng"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 148
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 150
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const-string v3, "elat"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 151
    const-string v5, "elng"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    .line 150
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 147
    invoke-direct {v0, v1, v2}, Lcom/citibikenyc/citibike/models/BikeLane;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 153
    .local v0, lane:Lcom/citibikenyc/citibike/models/BikeLane;
    return-object v0
.end method

.method private getDbFilePath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 160
    .local v1, filePath:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeLaneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 161
    .local v2, m:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/citibikenyc/citibike/BikeLaneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, packageName:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 164
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/databases/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "citibike_lanes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 170
    .end local v2           #m:Landroid/content/pm/PackageManager;
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #packageName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/citibikenyc/citibike/BikeLaneManager;->getDbFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/BikeLaneManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeLaneManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeLaneManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/citibikenyc/citibike/BikeLaneManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 68
    :cond_0
    return-void
.end method

.method public getLanes(Lcom/google/android/gms/maps/model/LatLngBounds;)Ljava/util/Set;
    .locals 7
    .parameter "latLngBounds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/citibikenyc/citibike/models/BikeLane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v2, lanes:Ljava/util/Set;,"Ljava/util/Set<Lcom/citibikenyc/citibike/models/BikeLane;>;"
    iget-object v3, p0, Lcom/citibikenyc/citibike/BikeLaneManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select * from bikelanes WHERE (slat > "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 125
    const-string v5, " AND slat < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 126
    const-string v5, " AND slng > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 127
    const-string v5, " AND slng < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 128
    const-string v5, ") OR (elat > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 129
    const-string v5, " AND elat < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 130
    const-string v5, " AND elng > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 131
    const-string v5, " AND elng < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 123
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 134
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 143
    return-object v2

    .line 136
    :cond_0
    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/BikeLaneManager;->cursorToBikeLane(Landroid/database/Cursor;)Lcom/citibikenyc/citibike/models/BikeLane;

    move-result-object v1

    .line 137
    .local v1, lane:Lcom/citibikenyc/citibike/models/BikeLane;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 56
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/citibikenyc/citibike/BikeLaneManager;->getDbFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/BikeLaneManager;->copyBikeLanesDb(Ljava/lang/String;)V

    .line 61
    return-void
.end method
