.class public Lcom/citibikenyc/citibike/helpers/FooterView;
.super Landroid/widget/LinearLayout;
.source "FooterView.java"


# instance fields
.field private hasResized:Z

.field private windowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/FooterView;->hasResized:Z

    .line 26
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/helpers/FooterView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/FooterView;->hasResized:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/helpers/FooterView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 39
    .local v1, size:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/FooterView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/FooterView;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/citibikenyc/citibike/helpers/FooterView;->windowHeight:I

    .line 54
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/FooterView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 44
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 46
    .local v0, display:Landroid/view/Display;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 48
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/citibikenyc/citibike/helpers/FooterView;->windowHeight:I

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/citibikenyc/citibike/helpers/FooterView;->windowHeight:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    .line 58
    iget-boolean v8, p0, Lcom/citibikenyc/citibike/helpers/FooterView;->hasResized:Z

    if-nez v8, :cond_1

    .line 66
    iput-boolean v10, p0, Lcom/citibikenyc/citibike/helpers/FooterView;->hasResized:Z

    .line 67
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 68
    .local v2, location:[I
    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/helpers/FooterView;->getLocationOnScreen([I)V

    .line 71
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/FooterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 72
    .local v4, lpt:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 73
    .local v1, left:I
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 74
    .local v6, right:I
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 75
    .local v7, top:I
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 77
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/FooterView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/citibikenyc/citibike/helpers/FooterView;->windowHeight:I

    aget v10, v2, v10

    sub-int/2addr v9, v10

    add-int v5, v8, v9

    .line 80
    .local v5, newHeight:I
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/FooterView;->getHeight()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/FooterView;->getHeight()I

    move-result v5

    .line 84
    :cond_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v1, v7, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/helpers/FooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #location:[I
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #lpt:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5           #newHeight:I
    .end local v6           #right:I
    .end local v7           #top:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    return-void
.end method
