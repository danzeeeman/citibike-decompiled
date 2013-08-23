.class Lcom/google/android/gms/maps/GoogleMap$4;
.super Lcom/google/android/gms/internal/an$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic G:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic K:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$4;->G:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$4;->K:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/internal/an$a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/google/android/gms/internal/s;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$4;->K:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v0

    return v0
.end method
