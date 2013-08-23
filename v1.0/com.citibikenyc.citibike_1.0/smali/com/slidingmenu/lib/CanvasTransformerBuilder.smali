.class public Lcom/slidingmenu/lib/CanvasTransformerBuilder;
.super Ljava/lang/Object;
.source "CanvasTransformerBuilder.java"


# static fields
.field private static lin:Landroid/view/animation/Interpolator;


# instance fields
.field private mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/slidingmenu/lib/CanvasTransformerBuilder$1;

    invoke-direct {v0}, Lcom/slidingmenu/lib/CanvasTransformerBuilder$1;-><init>()V

    sput-object v0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->lin:Landroid/view/animation/Interpolator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slidingmenu/lib/CanvasTransformerBuilder;)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    return-object v0
.end method

.method private initTransformer()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/slidingmenu/lib/CanvasTransformerBuilder$2;

    invoke-direct {v0, p0}, Lcom/slidingmenu/lib/CanvasTransformerBuilder$2;-><init>(Lcom/slidingmenu/lib/CanvasTransformerBuilder;)V

    iput-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public concatTransformer(Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
    .locals 1
    .parameter "t"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->initTransformer()V

    .line 86
    new-instance v0, Lcom/slidingmenu/lib/CanvasTransformerBuilder$6;

    invoke-direct {v0, p0, p1}, Lcom/slidingmenu/lib/CanvasTransformerBuilder$6;-><init>(Lcom/slidingmenu/lib/CanvasTransformerBuilder;Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V

    iput-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .line 92
    iget-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    return-object v0
.end method

.method public rotate(IIII)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
    .locals 6
    .parameter "openedDeg"
    .parameter "closedDeg"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 48
    sget-object v5, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->lin:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->rotate(IIIILandroid/view/animation/Interpolator;)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    move-result-object v0

    return-object v0
.end method

.method public rotate(IIIILandroid/view/animation/Interpolator;)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
    .locals 7
    .parameter "openedDeg"
    .parameter "closedDeg"
    .parameter "px"
    .parameter "py"
    .parameter "interp"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->initTransformer()V

    .line 54
    new-instance v0, Lcom/slidingmenu/lib/CanvasTransformerBuilder$4;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/slidingmenu/lib/CanvasTransformerBuilder$4;-><init>(Lcom/slidingmenu/lib/CanvasTransformerBuilder;Landroid/view/animation/Interpolator;IIII)V

    iput-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .line 62
    iget-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    return-object v0
.end method

.method public translate(IIII)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
    .locals 6
    .parameter "openedX"
    .parameter "closedX"
    .parameter "openedY"
    .parameter "closedY"

    .prologue
    .line 67
    sget-object v5, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->lin:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->translate(IIIILandroid/view/animation/Interpolator;)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    move-result-object v0

    return-object v0
.end method

.method public translate(IIIILandroid/view/animation/Interpolator;)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
    .locals 7
    .parameter "openedX"
    .parameter "closedX"
    .parameter "openedY"
    .parameter "closedY"
    .parameter "interp"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->initTransformer()V

    .line 73
    new-instance v0, Lcom/slidingmenu/lib/CanvasTransformerBuilder$5;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/slidingmenu/lib/CanvasTransformerBuilder$5;-><init>(Lcom/slidingmenu/lib/CanvasTransformerBuilder;Landroid/view/animation/Interpolator;IIII)V

    iput-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .line 81
    iget-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    return-object v0
.end method

.method public zoom(IIIIII)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
    .locals 8
    .parameter "openedX"
    .parameter "closedX"
    .parameter "openedY"
    .parameter "closedY"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 28
    sget-object v7, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->lin:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->zoom(IIIIIILandroid/view/animation/Interpolator;)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    move-result-object v0

    return-object v0
.end method

.method public zoom(IIIIIILandroid/view/animation/Interpolator;)Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
    .locals 9
    .parameter "openedX"
    .parameter "closedX"
    .parameter "openedY"
    .parameter "closedY"
    .parameter "px"
    .parameter "py"
    .parameter "interp"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->initTransformer()V

    .line 35
    new-instance v0, Lcom/slidingmenu/lib/CanvasTransformerBuilder$3;

    move-object v1, p0

    move-object/from16 v2, p7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/slidingmenu/lib/CanvasTransformerBuilder$3;-><init>(Lcom/slidingmenu/lib/CanvasTransformerBuilder;Landroid/view/animation/Interpolator;IIIIII)V

    iput-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .line 43
    iget-object v0, p0, Lcom/slidingmenu/lib/CanvasTransformerBuilder;->mTrans:Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    return-object v0
.end method
