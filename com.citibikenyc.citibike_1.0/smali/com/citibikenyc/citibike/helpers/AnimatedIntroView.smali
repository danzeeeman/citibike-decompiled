.class public Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;
.super Landroid/view/View;
.source "AnimatedIntroView.java"


# instance fields
.field private arrowPaint:Landroid/graphics/Paint;

.field private rightArrowPath:Landroid/graphics/Path;

.field private rightArrowPathAnimation:Lcom/citibikenyc/citibike/helpers/PathAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->arrowPaint:Landroid/graphics/Paint;

    .line 20
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->arrowPaint:Landroid/graphics/Paint;

    const v1, -0xfd4f10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->arrowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->arrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    return-void
.end method


# virtual methods
.method public animateIntro(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x4316

    const/high16 v1, 0x42c8

    const/high16 v2, 0x4248

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPath:Landroid/graphics/Path;

    .line 29
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 30
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPath:Landroid/graphics/Path;

    const/high16 v1, 0x437a

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 31
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 32
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    new-instance v0, Lcom/citibikenyc/citibike/helpers/PathAnimation;

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPath:Landroid/graphics/Path;

    invoke-direct {v0, p0, v1}, Lcom/citibikenyc/citibike/helpers/PathAnimation;-><init>(Landroid/view/View;Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPathAnimation:Lcom/citibikenyc/citibike/helpers/PathAnimation;

    .line 36
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPathAnimation:Lcom/citibikenyc/citibike/helpers/PathAnimation;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/citibikenyc/citibike/helpers/PathAnimation;->setDuration(J)V

    .line 38
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPathAnimation:Lcom/citibikenyc/citibike/helpers/PathAnimation;

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 39
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPathAnimation:Lcom/citibikenyc/citibike/helpers/PathAnimation;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->rightArrowPathAnimation:Lcom/citibikenyc/citibike/helpers/PathAnimation;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PathAnimation;->getCurrentPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/AnimatedIntroView;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 46
    :cond_0
    return-void
.end method
