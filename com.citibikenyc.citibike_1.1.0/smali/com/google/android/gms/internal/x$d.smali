.class final Lcom/google/android/gms/internal/x$d;
.super Lcom/google/android/gms/internal/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/t",
        "<",
        "Lcom/google/android/gms/internal/ai;",
        ">.c<",
        "Lcom/google/android/gms/plus/PlusClient$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final aH:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic ab:Lcom/google/android/gms/internal/x;

.field public final ck:Lcom/google/android/gms/internal/au;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/plus/PlusClient$b;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/au;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/x$d;->ab:Lcom/google/android/gms/internal/x;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/t$c;-><init>(Lcom/google/android/gms/internal/t;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/x$d;->aH:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p4, p0, Lcom/google/android/gms/internal/x$d;->ck:Lcom/google/android/gms/internal/au;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/plus/PlusClient$b;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/x$d;->aH:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/x$d;->ck:Lcom/google/android/gms/internal/au;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/plus/PlusClient$b;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/au;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/PlusClient$b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/x$d;->a(Lcom/google/android/gms/plus/PlusClient$b;)V

    return-void
.end method
