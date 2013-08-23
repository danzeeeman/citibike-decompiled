.class final Lcom/google/android/gms/internal/y$b;
.super Lcom/google/android/gms/internal/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/t",
        "<",
        "Lcom/google/android/gms/internal/aq;",
        ">.c<",
        "Lcom/google/android/gms/panorama/PanoramaClient$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final aH:Lcom/google/android/gms/common/ConnectionResult;

.field public final aI:Landroid/content/Intent;

.field final synthetic af:Lcom/google/android/gms/internal/y;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/y;Lcom/google/android/gms/panorama/PanoramaClient$a;Lcom/google/android/gms/common/ConnectionResult;ILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/y$b;->af:Lcom/google/android/gms/internal/y;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/t$c;-><init>(Lcom/google/android/gms/internal/t;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/y$b;->aH:Lcom/google/android/gms/common/ConnectionResult;

    iput p4, p0, Lcom/google/android/gms/internal/y$b;->type:I

    iput-object p5, p0, Lcom/google/android/gms/internal/y$b;->aI:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/panorama/PanoramaClient$a;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/y$b;->aH:Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p0, Lcom/google/android/gms/internal/y$b;->type:I

    iget-object v2, p0, Lcom/google/android/gms/internal/y$b;->aI:Landroid/content/Intent;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/panorama/PanoramaClient$a;->a(Lcom/google/android/gms/common/ConnectionResult;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/panorama/PanoramaClient$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/y$b;->a(Lcom/google/android/gms/panorama/PanoramaClient$a;)V

    return-void
.end method
