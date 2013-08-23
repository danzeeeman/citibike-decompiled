.class Lcom/google/android/gms/maps/SupportMapFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/LifecycleDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/SupportMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final ag:Landroid/support/v4/app/Fragment;

.field private final ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/at;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-static {p1}, Lcom/google/android/gms/internal/at;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ag:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public g()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ag:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "MapOptions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MapOptions"

    const-string v2, "MapOptions"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/g;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-static {p1}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/f;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/f;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onCreateView(Lcom/google/android/gms/internal/f;Lcom/google/android/gms/internal/f;Landroid/os/Bundle;)Lcom/google/android/gms/internal/f;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ab;->a(Lcom/google/android/gms/internal/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onDestroyView()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onDestroyView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "MapOptions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-static {p1}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/f;

    move-result-object v2

    invoke-interface {v1, v2, v0, p3}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onInflate(Lcom/google/android/gms/internal/f;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onLowMemory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onLowMemory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment$a;->ah:Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
