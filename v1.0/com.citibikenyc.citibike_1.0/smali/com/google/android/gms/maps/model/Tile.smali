.class public final Lcom/google/android/gms/maps/model/Tile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ac;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/TileCreator;


# instance fields
.field private final Q:I

.field public final bM:[B

.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/TileCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/TileCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/TileCreator;

    return-void
.end method

.method constructor <init>(III[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/Tile;->Q:I

    iput p2, p0, Lcom/google/android/gms/maps/model/Tile;->width:I

    iput p3, p0, Lcom/google/android/gms/maps/model/Tile;->height:I

    iput-object p4, p0, Lcom/google/android/gms/maps/model/Tile;->bM:[B

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/Tile;-><init>(III[B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/TileCreator;

    const/4 v0, 0x0

    return v0
.end method

.method e()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/Tile;->Q:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/TileCreator;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/TileCreator;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V

    return-void
.end method
