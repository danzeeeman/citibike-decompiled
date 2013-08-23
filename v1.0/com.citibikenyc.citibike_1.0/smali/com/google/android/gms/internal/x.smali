.class public final Lcom/google/android/gms/internal/x;
.super Lcom/google/android/gms/internal/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/x$b;,
        Lcom/google/android/gms/internal/x$c;,
        Lcom/google/android/gms/internal/x$a;,
        Lcom/google/android/gms/internal/x$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/t",
        "<",
        "Lcom/google/android/gms/internal/ai;",
        ">;"
    }
.end annotation


# instance fields
.field private final cA:Ljava/lang/String;

.field private final cy:Ljava/lang/String;

.field private final cz:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 6

    const-string v2, "<<default account>>"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p5, p6, p7}, Lcom/google/android/gms/internal/t;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/x;->cy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/x;->cz:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/x;->cA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ai;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ai$a;->w(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ai;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/t$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/m;",
            "Lcom/google/android/gms/internal/t",
            "<",
            "Lcom/google/android/gms/internal/ai;",
            ">.a;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "skip_oob"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/x;->cy:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/x;->cz:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->k()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/x;->cA:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/m;->a(Lcom/google/android/gms/internal/ah;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/plus/PlusClient$a;Landroid/net/Uri;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->n()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "bounding_box"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/gms/internal/x$b;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/x$b;-><init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/plus/PlusClient$a;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->o()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0, v2, p2, v1}, Lcom/google/android/gms/internal/ai;->a(Lcom/google/android/gms/internal/r;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v3, v3}, Lcom/google/android/gms/internal/x$b;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/plus/PlusClient$b;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->n()V

    new-instance v1, Lcom/google/android/gms/internal/x$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/x$a;-><init>(Lcom/google/android/gms/internal/x;Lcom/google/android/gms/plus/PlusClient$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->o()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/ai;->a(Lcom/google/android/gms/internal/r;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/x$a;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public clearDefaultAccount()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->n()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->o()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ai;->clearDefaultAccount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->n()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->o()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ai;->getAccountName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.service.START"

    return-object v0
.end method

.method protected bridge synthetic j(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/x;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ai;

    move-result-object v0

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    return-object v0
.end method
