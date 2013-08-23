.class final Lcom/google/android/gms/internal/x$c;
.super Lcom/google/android/gms/internal/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/t",
        "<",
        "Lcom/google/android/gms/internal/ai;",
        ">.c<",
        "Lcom/google/android/gms/plus/PlusClient$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ab:Lcom/google/android/gms/internal/x;

.field private final br:Lcom/google/android/gms/common/ConnectionResult;

.field private final bs:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/plus/PlusClient$a;Lcom/google/android/gms/common/ConnectionResult;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/x$c;->ab:Lcom/google/android/gms/internal/x;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/t$c;-><init>(Lcom/google/android/gms/internal/t;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/x$c;->br:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p4, p0, Lcom/google/android/gms/internal/x$c;->bs:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/plus/PlusClient$a;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/x$c;->br:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/x$c;->bs:Landroid/os/ParcelFileDescriptor;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/plus/PlusClient$a;->a(Lcom/google/android/gms/common/ConnectionResult;Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/x$c;->bs:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PlusClientImpl"

    const-string v2, "failed close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/PlusClient$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/x$c;->a(Lcom/google/android/gms/plus/PlusClient$a;)V

    return-void
.end method

.method public q()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/t$c;->q()V

    return-void
.end method
