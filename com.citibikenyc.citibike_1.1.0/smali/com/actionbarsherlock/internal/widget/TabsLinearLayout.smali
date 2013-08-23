.class public Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;
.super Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;
.source "TabsLinearLayout.java"


# static fields
.field private static final LinearLayout_measureWithLargestChild:I

.field private static final R_styleable_LinearLayout:[I


# instance fields
.field private mUseLargestChild:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 11
    const v2, 0x10102d4

    aput v2, v0, v1

    .line 10
    sput-object v0, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->R_styleable_LinearLayout:[I

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object v1, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->R_styleable_LinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->mUseLargestChild:Z

    .line 23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    return-void
.end method

.method private useLargestChildHorizontal()V
    .locals 10

    .prologue
    const/high16 v9, 0x4000

    .line 73
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->getChildCount()I

    move-result v1

    .line 76
    .local v1, childCount:I
    const/4 v4, 0x0

    .line 77
    .local v4, largestChildWidth:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 82
    const/4 v6, 0x0

    .line 84
    .local v6, totalWidth:I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 111
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->setMeasuredDimension(II)V

    .line 112
    return-void

    .line 78
    .end local v6           #totalWidth:I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v0           #child:Landroid/view/View;
    .restart local v6       #totalWidth:I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 84
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 95
    .local v2, childExtra:F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_4

    .line 97
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 96
    invoke-virtual {v0, v7, v8}, Landroid/view/View;->measure(II)V

    .line 101
    add-int/2addr v6, v4

    .line 107
    :goto_3
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    goto :goto_2

    .line 104
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_3
.end method


# virtual methods
.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->onMeasure(II)V

    .line 60
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->getChildCount()I

    move-result v0

    .line 61
    .local v0, childCount:I
    const/4 v3, 0x2

    if-gt v0, v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 64
    .local v1, mode:I
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->mUseLargestChild:Z

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->getOrientation()I

    move-result v2

    .line 66
    .local v2, orientation:I
    if-nez v2, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->useLargestChildHorizontal()V

    goto :goto_0
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/TabsLinearLayout;->mUseLargestChild:Z

    .line 54
    return-void
.end method
