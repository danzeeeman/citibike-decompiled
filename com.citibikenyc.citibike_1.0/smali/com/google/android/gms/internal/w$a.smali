.class public Lcom/google/android/gms/internal/w$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/PlusClient$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic Z:Lcom/google/android/gms/internal/w;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/w$a;->Z:Lcom/google/android/gms/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/au;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/w$a;->Z:Lcom/google/android/gms/internal/w;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/w;->bR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/w$a;->Z:Lcom/google/android/gms/internal/w;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/w;->bR:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/w$a;->Z:Lcom/google/android/gms/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/internal/w;->bV:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/w$a;->Z:Lcom/google/android/gms/internal/w;

    iput-object p2, v0, Lcom/google/android/gms/internal/w;->cg:Lcom/google/android/gms/internal/au;

    iget-object v0, p0, Lcom/google/android/gms/internal/w$a;->Z:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/w;->D()V

    iget-object v0, p0, Lcom/google/android/gms/internal/w$a;->Z:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/w;->N()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/w$a;->Z:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/w;->Q()V

    goto :goto_0
.end method
