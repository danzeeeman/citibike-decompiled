.class public Lcom/citibikenyc/citibike/interfaces/TapDetector;
.super Ljava/lang/Object;
.source "TapDetector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;,
        Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I


# instance fields
.field private mLastTapArea:Landroid/graphics/RectF;

.field private mLastTapCount:I

.field private mListener:Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;

.field private mRadius:F

.field private mTapCounter:Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;)V
    .locals 6
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    .line 34
    new-instance v0, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;

    sget v1, Lcom/citibikenyc/citibike/interfaces/TapDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v1

    sget v1, Lcom/citibikenyc/citibike/interfaces/TapDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;-><init>(Lcom/citibikenyc/citibike/interfaces/TapDetector;JJ)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mTapCounter:Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;

    .line 19
    iput-object p2, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mListener:Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;

    .line 20
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->init(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/interfaces/TapDetector;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/interfaces/TapDetector;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    return v0
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/interfaces/TapDetector;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    return-void
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/interfaces/TapDetector;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 24
    iget-object v1, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mListener:Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "OnGestureListener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 28
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mRadius:F

    .line 29
    return-void
.end method


# virtual methods
.method addPoint(FFI)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "tapCount"

    .prologue
    .line 68
    packed-switch p3, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mListener:Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;->onSingleTap()Z

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mListener:Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;->onDoubleTap()Z

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mListener:Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;->onTripleTap()Z

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 122
    invoke-virtual {p0, p2}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 64
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 39
    :pswitch_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mTapCounter:Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->resetCounter()V

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 41
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 43
    .local v1, y:F
    iget-object v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;

    if-eqz v3, :cond_2

    .line 44
    iget-object v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    iget v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 46
    iget v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    goto :goto_0

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->addPoint(FFI)V

    .line 49
    iput v2, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    goto :goto_0

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->addPoint(FFI)V

    .line 53
    iput v2, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    .line 54
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mRadius:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mRadius:F

    sub-float v5, v1, v5

    iget v6, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mRadius:F

    add-float/2addr v6, v0

    iget v7, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mRadius:F

    add-float/2addr v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;

    goto :goto_0

    .line 57
    :cond_2
    iput v2, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I

    .line 58
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mRadius:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mRadius:F

    sub-float v5, v1, v5

    iget v6, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mRadius:F

    add-float/2addr v6, v0

    iget v7, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mRadius:F

    add-float/2addr v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
