.class public Lcom/citibikenyc/citibike/helpers/AnimatedIntroLayer;
.super Landroid/widget/RelativeLayout;
.source "AnimatedIntroLayer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public animateIntros()V
    .locals 12

    .prologue
    .line 21
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 23
    .local v10, animation:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const v2, 0x3f8ccccd

    const/4 v3, 0x0

    .line 24
    const v4, 0x3f8ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    .line 25
    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    .line 23
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 26
    .local v0, scaleUpAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 27
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 28
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 30
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f80

    .line 31
    const v4, 0x3f8ccccd

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    .line 32
    const/4 v8, 0x1

    const/high16 v9, 0x3f80

    .line 30
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 33
    .local v1, scaleDownAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 34
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 35
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 36
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 38
    const v2, 0x7f05005d

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/helpers/AnimatedIntroLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 39
    .local v11, detailsMarker:Landroid/view/View;
    invoke-virtual {v11, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    return-void
.end method
