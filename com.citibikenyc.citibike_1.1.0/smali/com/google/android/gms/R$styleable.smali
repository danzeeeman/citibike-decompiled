.class public final Lcom/google/android/gms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MapAttrs:[I = null

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x6

.field public static final MapAttrs_uiRotateGestures:I = 0x7

.field public static final MapAttrs_uiScrollGestures:I = 0x8

.field public static final MapAttrs_uiTiltGestures:I = 0x9

.field public static final MapAttrs_uiZoomControls:I = 0xa

.field public static final MapAttrs_uiZoomGestures:I = 0xb

.field public static final MapAttrs_useViewLifecycle:I = 0xc

.field public static final MapAttrs_zOrderOnTop:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/R$styleable;->MapAttrs:[I

    .line 29
    return-void

    .line 37
    :array_0
    .array-data 0x4
        0x6ft 0x0t 0x1t 0x7ft
        0x70t 0x0t 0x1t 0x7ft
        0x71t 0x0t 0x1t 0x7ft
        0x72t 0x0t 0x1t 0x7ft
        0x73t 0x0t 0x1t 0x7ft
        0x74t 0x0t 0x1t 0x7ft
        0x75t 0x0t 0x1t 0x7ft
        0x76t 0x0t 0x1t 0x7ft
        0x77t 0x0t 0x1t 0x7ft
        0x78t 0x0t 0x1t 0x7ft
        0x79t 0x0t 0x1t 0x7ft
        0x7at 0x0t 0x1t 0x7ft
        0x7bt 0x0t 0x1t 0x7ft
        0x7ct 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
