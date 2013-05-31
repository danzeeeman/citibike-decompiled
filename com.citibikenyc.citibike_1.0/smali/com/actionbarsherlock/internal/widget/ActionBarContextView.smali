.class public Lcom/actionbarsherlock/internal/widget/ActionBarContextView;
.super Lcom/actionbarsherlock/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2


# instance fields
.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

.field private mCurrentAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

.field private mCustomView:Landroid/view/View;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    sget v0, Lcom/actionbarsherlock/R$attr;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    sget-object v1, Lcom/actionbarsherlock/R$styleable;->SherlockActionMode:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 89
    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 92
    const/4 v1, 0x4

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 95
    const/4 v1, 0x3

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .line 274
    .local v0, a:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    if-eqz v0, :cond_0

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .line 276
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->end()V

    .line 278
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 181
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 183
    .local v2, inflater:Landroid/view/LayoutInflater;
    sget v3, Lcom/actionbarsherlock/R$layout;->abs__action_bar_title_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 184
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 185
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/actionbarsherlock/R$id;->abs__action_bar_title:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 186
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/actionbarsherlock/R$id;->abs__action_bar_subtitle:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 187
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 190
    :cond_0
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 195
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v4

    .line 199
    .local v1, hasTitle:Z
    :goto_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v4

    .line 200
    .local v0, hasSubtitle:Z
    :goto_1
    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v4

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 203
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 205
    :cond_4
    return-void

    .end local v0           #hasSubtitle:Z
    .end local v1           #hasTitle:Z
    :cond_5
    move v1, v5

    .line 198
    goto :goto_0

    .restart local v1       #hasTitle:Z
    :cond_6
    move v0, v5

    .line 199
    goto :goto_1

    .restart local v0       #hasSubtitle:Z
    :cond_7
    move v3, v6

    .line 200
    goto :goto_2
.end method

.method private makeInAnimation()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 397
    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->getWidth()I

    move-result v8

    neg-int v10, v8

    .line 398
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v10, v8

    int-to-float v8, v8

    .line 397
    invoke-virtual {v9, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->setTranslationX(F)V

    .line 399
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    const-string v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 400
    .local v2, buttonAnimator:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 401
    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 402
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 404
    new-instance v7, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 405
    .local v7, set:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
    invoke-virtual {v7, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 407
    .local v1, b:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    if-eqz v8, :cond_0

    .line 408
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v8}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    .line 409
    .local v4, count:I
    if-lez v4, :cond_0

    .line 410
    add-int/lit8 v5, v4, -0x1

    .local v5, i:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_0
    if-gez v5, :cond_1

    .line 421
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_0
    return-object v7

    .line 411
    .restart local v4       #count:I
    .restart local v5       #i:I
    .restart local v6       #j:I
    :cond_1
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v8, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v3

    .line 412
    .local v3, child:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;
    invoke-virtual {v3, v12}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setScaleY(F)V

    .line 413
    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v3, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 414
    .local v0, a:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v8, 0x64

    invoke-virtual {v0, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 415
    mul-int/lit8 v8, v6, 0x46

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 416
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    .line 410
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 413
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private makeOutAnimation()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 425
    iget-object v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    const-string v9, "translationX"

    new-array v10, v14, [F

    .line 426
    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->getWidth()I

    move-result v7

    neg-int v11, v7

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v11, v7

    int-to-float v7, v7

    aput v7, v10, v13

    .line 425
    invoke-static {v8, v9, v10}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 427
    .local v2, buttonAnimator:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v7, 0xc8

    invoke-virtual {v2, v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 428
    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 429
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 431
    new-instance v6, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v6}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 432
    .local v6, set:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
    invoke-virtual {v6, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 434
    .local v1, b:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;
    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    if-eqz v7, :cond_0

    .line 435
    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v4

    .line 436
    .local v4, count:I
    if-lez v4, :cond_0

    .line 437
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_1

    .line 448
    .end local v4           #count:I
    .end local v5           #i:I
    :cond_0
    return-object v6

    .line 438
    .restart local v4       #count:I
    .restart local v5       #i:I
    :cond_1
    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v7, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v3

    .line 439
    .local v3, child:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;
    invoke-virtual {v3, v12}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setScaleY(F)V

    .line 440
    const-string v7, "scaleY"

    new-array v8, v14, [F

    aput v12, v8, v13

    invoke-static {v3, v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 441
    .local v0, a:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v7, 0x64

    invoke-virtual {v0, v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 442
    mul-int/lit8 v7, v5, 0x46

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 443
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    .line 437
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 257
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    if-nez v0, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->killMode()V

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 267
    iput v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 268
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->makeOutAnimation()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .line 269
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 319
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 324
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 8
    .parameter "mode"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 209
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    if-nez v4, :cond_2

    .line 210
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 211
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget v4, Lcom/actionbarsherlock/R$layout;->abs__action_mode_close_item:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    iput-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    .line 212
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 217
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    sget v5, Lcom/actionbarsherlock/R$id;->abs__action_mode_close_button:I

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, closeButton:Landroid/view/View;
    new-instance v4, Lcom/actionbarsherlock/internal/widget/ActionBarContextView$1;

    invoke-direct {v4, p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView$1;-><init>(Lcom/actionbarsherlock/internal/widget/ActionBarContextView;Lcom/actionbarsherlock/view/ActionMode;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenu()Lcom/actionbarsherlock/view/Menu;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 225
    .local v3, menu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 228
    :cond_1
    new-instance v4, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 229
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 231
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 233
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_3

    .line 234
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 235
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    iput-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 236
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v4, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :goto_1
    iput-boolean v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 254
    return-void

    .line 213
    .end local v0           #closeButton:Landroid/view/View;
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #menu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    :cond_2
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 214
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 240
    .restart local v0       #closeButton:Landroid/view/View;
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v3       #menu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    :cond_3
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 241
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 240
    invoke-virtual {v4, v5, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 243
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 245
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 246
    iget v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 248
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    iput-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 249
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v4, v5, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 282
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 283
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 286
    :cond_0
    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 287
    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 289
    return-void
.end method

.method public onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 500
    return-void
.end method

.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 492
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->killMode()V

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 496
    return-void
.end method

.method public onAnimationRepeat(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 504
    return-void
.end method

.method public onAnimationStart(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 488
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 103
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 105
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 107
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 516
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 522
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 454
    .local v2, x:I
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 455
    .local v3, y:I
    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 457
    .local v0, contentHeight:I
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 458
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 459
    .local v1, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    .line 460
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 461
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 463
    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v4, :cond_0

    .line 464
    const/4 v4, 0x1

    iput v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 465
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->makeInAnimation()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .line 466
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCurrentAnimation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->start()V

    .line 467
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 471
    .end local v1           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 472
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 475
    :cond_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 476
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v2, v4

    .line 479
    :cond_2
    sub-int v4, p4, p2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 481
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_3

    .line 482
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->positionChildInverse(Landroid/view/View;III)I

    move-result v4

    sub-int/2addr v2, v4

    .line 484
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 329
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 330
    .local v20, widthMode:I
    const/high16 v21, 0x4000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 331
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " can only be used "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 332
    const-string v23, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 331
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 335
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 336
    .local v12, heightMode:I
    if-nez v12, :cond_1

    .line 337
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " can only be used "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 338
    const-string v23, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 337
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 341
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 343
    .local v5, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v21, v0

    if-lez v21, :cond_6

    .line 344
    move-object/from16 v0, p0

    iget v15, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 346
    .local v15, maxHeight:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v22

    add-int v19, v21, v22

    .line 347
    .local v19, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v21

    sub-int v21, v5, v21

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v22

    sub-int v3, v21, v22

    .line 348
    .local v3, availableWidth:I
    sub-int v11, v15, v19

    .line 349
    .local v11, height:I
    const/high16 v21, -0x8000

    move/from16 v0, v21

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 351
    .local v4, childSpecHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mClose:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 354
    .local v14, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v21, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v3, v3, v21

    .line 357
    .end local v14           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v21, v0

    .line 359
    const/16 v22, 0x0

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 362
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 366
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 368
    .local v14, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 369
    const/high16 v10, 0x4000

    .line 370
    .local v10, customWidthMode:I
    :goto_1
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    if-ltz v21, :cond_8

    .line 371
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 372
    .local v9, customWidth:I
    :goto_2
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 373
    const/high16 v8, 0x4000

    .line 374
    .local v8, customHeightMode:I
    :goto_3
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    if-ltz v21, :cond_a

    .line 375
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 376
    .local v7, customHeight:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 377
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 376
    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 380
    .end local v7           #customHeight:I
    .end local v8           #customHeightMode:I
    .end local v9           #customWidth:I
    .end local v10           #customWidthMode:I
    .end local v14           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v21, v0

    if-gtz v21, :cond_d

    .line 381
    const/16 v16, 0x0

    .line 382
    .local v16, measuredHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v6

    .line 383
    .local v6, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    if-lt v13, v6, :cond_b

    .line 390
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 394
    .end local v6           #count:I
    .end local v13           #i:I
    .end local v16           #measuredHeight:I
    :goto_6
    return-void

    .line 344
    .end local v3           #availableWidth:I
    .end local v4           #childSpecHeight:I
    .end local v11           #height:I
    .end local v15           #maxHeight:I
    .end local v19           #verticalPadding:I
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 369
    .restart local v3       #availableWidth:I
    .restart local v4       #childSpecHeight:I
    .restart local v11       #height:I
    .restart local v14       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v15       #maxHeight:I
    .restart local v19       #verticalPadding:I
    :cond_7
    const/high16 v10, -0x8000

    goto :goto_1

    .restart local v10       #customWidthMode:I
    :cond_8
    move v9, v3

    .line 371
    goto :goto_2

    .line 373
    .restart local v9       #customWidth:I
    :cond_9
    const/high16 v8, -0x8000

    goto :goto_3

    .restart local v8       #customHeightMode:I
    :cond_a
    move v7, v11

    .line 375
    goto :goto_4

    .line 384
    .end local v8           #customHeightMode:I
    .end local v9           #customWidth:I
    .end local v10           #customWidthMode:I
    .end local v14           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v6       #count:I
    .restart local v13       #i:I
    .restart local v16       #measuredHeight:I
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 385
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v17, v21, v19

    .line 386
    .local v17, paddedViewHeight:I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_c

    .line 387
    move/from16 v16, v17

    .line 383
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 392
    .end local v6           #count:I
    .end local v13           #i:I
    .end local v16           #measuredHeight:I
    .end local v17           #paddedViewHeight:I
    .end local v18           #v:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_6
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 144
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 145
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 156
    :cond_1
    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->requestLayout()V

    .line 160
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 6
    .parameter "split"

    .prologue
    const/4 v5, -0x1

    .line 112
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 113
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 115
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 117
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 118
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 119
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 121
    .local v1, oldParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #oldParent:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 141
    :cond_2
    return-void

    .line 125
    .restart local v0       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 126
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    .line 125
    invoke-virtual {v2, v3, v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 128
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 130
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 133
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 135
    .restart local v1       #oldParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 169
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->initTitle()V

    .line 170
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 164
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->initTitle()V

    .line 165
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
