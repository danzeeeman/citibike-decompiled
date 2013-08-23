.class public final Lcom/google/android/gms/internal/t$a;
.super Lcom/google/android/gms/internal/ah$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation


# instance fields
.field final synthetic M:Lcom/google/android/gms/internal/t;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/t$a;->M:Lcom/google/android/gms/internal/t;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ah$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/t$a;->M:Lcom/google/android/gms/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/internal/t;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/t$a;->M:Lcom/google/android/gms/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/internal/t;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/t$b;

    iget-object v4, p0, Lcom/google/android/gms/internal/t$a;->M:Lcom/google/android/gms/internal/t;

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/google/android/gms/internal/t$b;-><init>(Lcom/google/android/gms/internal/t;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
