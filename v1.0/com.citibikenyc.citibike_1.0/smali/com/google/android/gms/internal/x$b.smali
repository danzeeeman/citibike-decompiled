.class final Lcom/google/android/gms/internal/x$b;
.super Lcom/google/android/gms/internal/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final aT:Lcom/google/android/gms/plus/PlusClient$a;

.field final synthetic ab:Lcom/google/android/gms/internal/x;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/plus/PlusClient$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/x$b;->ab:Lcom/google/android/gms/internal/x;

    invoke-direct {p0}, Lcom/google/android/gms/internal/aa;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/x$b;->aT:Lcom/google/android/gms/plus/PlusClient$a;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/x$b;->ab:Lcom/google/android/gms/internal/x;

    new-instance v2, Lcom/google/android/gms/internal/x$c;

    iget-object v3, p0, Lcom/google/android/gms/internal/x$b;->ab:Lcom/google/android/gms/internal/x;

    iget-object v4, p0, Lcom/google/android/gms/internal/x$b;->aT:Lcom/google/android/gms/plus/PlusClient$a;

    invoke-direct {v2, v3, v4, v1, p3}, Lcom/google/android/gms/internal/x$c;-><init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/plus/PlusClient$a;Lcom/google/android/gms/common/ConnectionResult;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/t$c;)V

    return-void
.end method
