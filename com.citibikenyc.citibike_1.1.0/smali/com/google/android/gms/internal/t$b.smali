.class public final Lcom/google/android/gms/internal/t$b;
.super Lcom/google/android/gms/internal/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/t",
        "<TT;>.c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic M:Lcom/google/android/gms/internal/t;

.field public final aF:Landroid/os/Bundle;

.field public final aG:Landroid/os/IBinder;

.field public final statusCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/t;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/t$c;-><init>(Lcom/google/android/gms/internal/t;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/internal/t$b;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/internal/t$b;->aG:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/internal/t$b;->aF:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/t$b;->statusCode:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/t$b;->aF:Landroid/os/Bundle;

    const-string v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    iget v3, p0, Lcom/google/android/gms/internal/t$b;->statusCode:I

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/t$b;->aG:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/t;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GmsClient"

    const-string v1, "bound to service broker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    iget-object v1, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    iget-object v2, p0, Lcom/google/android/gms/internal/t$b;->aG:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/t;->j(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/t;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    invoke-static {v0}, Lcom/google/android/gms/internal/t;->c(Lcom/google/android/gms/internal/t;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/t;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    invoke-static {v0}, Lcom/google/android/gms/internal/t;->e(Lcom/google/android/gms/internal/t;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    invoke-static {v1}, Lcom/google/android/gms/internal/t;->d(Lcom/google/android/gms/internal/t;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/t;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/t;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/t$b;->M:Lcom/google/android/gms/internal/t;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/t$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
