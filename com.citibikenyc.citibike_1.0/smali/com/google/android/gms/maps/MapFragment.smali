.class public Lcom/google/android/gms/maps/MapFragment;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/MapFragment$a;,
        Lcom/google/android/gms/maps/MapFragment$b;
    }
.end annotation


# instance fields
.field private aK:Lcom/google/android/gms/maps/GoogleMap;

.field private final cO:Lcom/google/android/gms/maps/MapFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/android/gms/maps/MapFragment$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/MapFragment$a;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    return-void
.end method

.method public static newInstance()Lcom/google/android/gms/maps/MapFragment;
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-direct {v0}, Lcom/google/android/gms/maps/MapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/MapFragment;
    .locals 3

    new-instance v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-direct {v0}, Lcom/google/android/gms/maps/MapFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected g()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$a;->a()V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$a;->aa()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$a;->aa()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->g()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    move-result-object v0

    goto :goto_0
.end method

.method public getMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapFragment;->g()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->getMap()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->aK:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->aK:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->ab()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_3

    :cond_2
    new-instance v0, Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;-><init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->aK:Lcom/google/android/gms/maps/GoogleMap;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->aK:Lcom/google/android/gms/maps/GoogleMap;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/MapFragment$a;->a(Lcom/google/android/gms/maps/MapFragment$a;Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/maps/MapFragment$a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$a;->onDestroy()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$a;->onDestroyView()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/MapFragment$a;->a(Lcom/google/android/gms/maps/MapFragment$a;Landroid/app/Activity;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/maps/MapFragment$a;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$a;->onLowMemory()V

    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$a;->onPause()V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$a;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->cO:Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$a;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
