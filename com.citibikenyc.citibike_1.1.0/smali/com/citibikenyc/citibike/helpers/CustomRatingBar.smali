.class public Lcom/citibikenyc/citibike/helpers/CustomRatingBar;
.super Landroid/widget/LinearLayout;
.source "CustomRatingBar.java"


# instance fields
.field private mRatings:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->mRatings:Ljava/lang/Float;

    .line 15
    return-void
.end method

.method private addFullStar(Z)V
    .locals 3
    .parameter "isHalfStar"

    .prologue
    const/4 v2, -0x2

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, iv:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    if-eqz p1, :cond_0

    const v1, 0x7f0200c4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->addView(Landroid/view/View;)V

    .line 46
    return-void

    .line 44
    :cond_0
    const v1, 0x7f0200c3

    goto :goto_0
.end method


# virtual methods
.method public setRatings(F)V
    .locals 8
    .parameter "rating"

    .prologue
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-nez v4, :cond_1

    .line 23
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->setVisibility(I)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->mRatings:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, p1

    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->setVisibility(I)V

    .line 30
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    float-to-double v6, p1

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move v1, v3

    .line 31
    .local v1, isLastStarHalf:Z
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->mRatings:Ljava/lang/Float;

    .line 32
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->removeAllViews()V

    .line 33
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 34
    .local v2, stars:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    add-int/lit8 v4, v2, -0x1

    if-lt v0, v4, :cond_3

    .line 37
    invoke-direct {p0, v1}, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->addFullStar(Z)V

    goto :goto_0

    .line 30
    .end local v0           #i:I
    .end local v1           #isLastStarHalf:Z
    .end local v2           #stars:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 35
    .restart local v0       #i:I
    .restart local v1       #isLastStarHalf:Z
    .restart local v2       #stars:I
    :cond_3
    invoke-direct {p0, v3}, Lcom/citibikenyc/citibike/helpers/CustomRatingBar;->addFullStar(Z)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
