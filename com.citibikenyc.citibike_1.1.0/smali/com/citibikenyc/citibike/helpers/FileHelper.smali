.class public Lcom/citibikenyc/citibike/helpers/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    new-array v1, v3, [B

    .line 15
    .local v1, bytes:[B
    const/4 v2, 0x0

    .line 16
    .local v2, len:I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    .line 19
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 17
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static readTextFromInternalStorage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "filename"
    .parameter "mContext"

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 38
    .local v3, fin:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x1000

    new-array v1, v5, [B

    .line 40
    .local v1, bytes:[B
    const/4 v4, 0x0

    .line 41
    .local v4, len:I
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_0

    .line 44
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "UTF8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 48
    .end local v0           #byteStream:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bytes:[B
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :goto_1
    return-object v5

    .line 42
    .restart local v0       #byteStream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bytes:[B
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v4       #len:I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v0           #byteStream:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bytes:[B
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catch_0
    move-exception v2

    .line 46
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static writeTextToInternalStorage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "filename"
    .parameter "content"
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2, p0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 25
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 26
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const/4 v2, 0x1

    .line 32
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
