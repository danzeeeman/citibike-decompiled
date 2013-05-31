.class public Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IcsColorDrawable.java"


# instance fields
.field private color:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->paint:Landroid/graphics/Paint;

    .line 26
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->color:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/ColorDrawable;)V
    .locals 5
    .parameter "drawable"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->paint:Landroid/graphics/Paint;

    .line 18
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    iput v2, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->color:I

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 30
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->color:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 34
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->color:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 38
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->color:I

    ushr-int/lit8 v0, v0, 0x18

    if-eq p1, v0, :cond_0

    .line 39
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->color:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->color:I

    .line 40
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/IcsColorDrawable;->invalidateSelf()V

    .line 42
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "colorFilter"

    .prologue
    .line 46
    return-void
.end method
