.class public final Lcom/google/android/gms/internal/ap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ap$1;,
        Lcom/google/android/gms/internal/ap$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Uninstantiable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static d(Ljava/lang/Object;)Lcom/google/android/gms/internal/ap$a;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ap$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ap$a;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ap$1;)V

    return-object v0
.end method

.method public static varargs hashCode([Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
