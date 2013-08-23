.class Lcom/google/android/gms/internal/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/d;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/d$1;->b:Lcom/google/android/gms/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/d$1;->b:Lcom/google/android/gms/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/d;->b(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onResume()V

    return-void
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
