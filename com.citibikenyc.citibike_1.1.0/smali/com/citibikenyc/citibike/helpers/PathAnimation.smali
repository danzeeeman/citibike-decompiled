.class public Lcom/citibikenyc/citibike/helpers/PathAnimation;
.super Landroid/view/animation/Animation;
.source "PathAnimation.java"


# instance fields
.field private clientView:Landroid/view/View;

.field private measure:Landroid/graphics/PathMeasure;

.field private subPath:Landroid/graphics/Path;

.field private tempPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Path;)V
    .locals 2
    .parameter "view"
    .parameter "path"

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->measure:Landroid/graphics/PathMeasure;

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->tempPath:Landroid/graphics/Path;

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->subPath:Landroid/graphics/Path;

    .line 21
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->clientView:Landroid/view/View;

    .line 22
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 30
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->measure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    mul-float v0, v1, p1

    .line 32
    .local v0, distance:F
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->measure:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->tempPath:Landroid/graphics/Path;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 33
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->subPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 34
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->subPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 36
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->clientView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 37
    return-void
.end method

.method public getCurrentPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PathAnimation;->subPath:Landroid/graphics/Path;

    return-object v0
.end method
