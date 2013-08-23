.class Lcom/google/android/gms/internal/aj$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bg:I

.field final synthetic cN:Lcom/google/android/gms/internal/aj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aj;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aj$a;->cN:Lcom/google/android/gms/internal/aj;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/aj$a;->bg:I

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    aget-object v1, p1, v0

    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/aj$a;->bg:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/aj$a;->bg:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/aj;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/google/android/gms/internal/aj;->E()Ljava/lang/String;

    move-result-object v2

    const-string v3, "closed failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/google/android/gms/internal/aj;->E()Ljava/lang/String;

    move-result-object v2

    const-string v3, "closed failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    throw v0

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/google/android/gms/internal/aj;->E()Ljava/lang/String;

    move-result-object v2

    const-string v3, "closed failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->cN:Lcom/google/android/gms/internal/aj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/internal/aj;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->cN:Lcom/google/android/gms/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/internal/aj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aj$a;->cN:Lcom/google/android/gms/internal/aj;

    iget-object v1, p0, Lcom/google/android/gms/internal/aj$a;->cN:Lcom/google/android/gms/internal/aj;

    invoke-static {v1}, Lcom/google/android/gms/internal/aj;->b(Lcom/google/android/gms/internal/aj;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aj;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aj$a;->a([Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aj$a;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
