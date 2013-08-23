.class Lcom/google/android/gms/maps/MapView$a;
.super Lcom/google/android/gms/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/d",
        "<",
        "Lcom/google/android/gms/maps/MapView$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final cC:Landroid/view/ViewGroup;

.field private final cD:Lcom/google/android/gms/maps/GoogleMapOptions;

.field protected f:Lcom/google/android/gms/internal/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ag",
            "<",
            "Lcom/google/android/gms/maps/MapView$b;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/MapView$a;->cC:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/MapView$a;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/maps/MapView$a;->cD:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->f:Lcom/google/android/gms/internal/ag;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapView$a;->aa()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/n;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/MapView$a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/f;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/maps/MapView$a;->cD:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/f;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/MapView$a;->f:Lcom/google/android/gms/internal/ag;

    new-instance v2, Lcom/google/android/gms/maps/MapView$b;

    iget-object v3, p0, Lcom/google/android/gms/maps/MapView$a;->cC:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/MapView$b;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/internal/IMapViewDelegate;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ag;->b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/ag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ag",
            "<",
            "Lcom/google/android/gms/maps/MapView$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/MapView$a;->f:Lcom/google/android/gms/internal/ag;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/MapView$a;->a()V

    return-void
.end method
