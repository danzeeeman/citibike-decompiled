.class Lcom/google/android/gms/maps/GoogleMap$7;
.super Lcom/google/android/gms/internal/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic G:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic O:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$7;->G:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$7;->O:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/internal/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/s;)Lcom/google/android/gms/internal/f;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$7;->O:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/internal/s;)Lcom/google/android/gms/internal/f;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$7;->O:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ab;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/f;

    move-result-object v0

    return-object v0
.end method
