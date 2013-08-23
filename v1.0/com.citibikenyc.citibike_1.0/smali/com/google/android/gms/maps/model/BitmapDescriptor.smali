.class public final Lcom/google/android/gms/maps/model/BitmapDescriptor;
.super Ljava/lang/Object;


# instance fields
.field private final bt:Lcom/google/android/gms/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/at;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/f;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->bt:Lcom/google/android/gms/internal/f;

    return-void
.end method


# virtual methods
.method public G()Lcom/google/android/gms/internal/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->bt:Lcom/google/android/gms/internal/f;

    return-object v0
.end method
