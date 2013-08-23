.class public Lcom/citibikenyc/citibike/helpers/MenuButton;
.super Landroid/widget/Button;
.source "MenuButton.java"


# instance fields
.field private drawableLeft_off:I

.field private drawableLeft_on:I

.field private textColor_off:I

.field private textColor_on:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 19
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_on:I

    .line 20
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_off:I

    .line 21
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_on:I

    .line 22
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_off:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_on:I

    .line 20
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_off:I

    .line 21
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_on:I

    .line 22
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_off:I

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/citibikenyc/citibike/helpers/MenuButton;->initSelectedOptions(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_on:I

    .line 20
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_off:I

    .line 21
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_on:I

    .line 22
    iput v0, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_off:I

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/citibikenyc/citibike/helpers/MenuButton;->initSelectedOptions(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public initSelectedOptions(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    .line 39
    sget-object v4, Lcom/citibikenyc/citibike/R$styleable;->com_citibikenyc_citibike_helpers_MenuButton:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "drawable/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, drawableLeft_on_id:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "drawable/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, drawableLeft_off_id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_on:I

    .line 47
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_off:I

    .line 49
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MenuButton;->getCurrentTextColor()I

    move-result v4

    iput v4, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_off:I

    .line 50
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, textColor_on_id:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 52
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_on:I

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MenuButton;->setSelectedOff()V

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void

    .line 54
    :cond_0
    iget v4, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_off:I

    iput v4, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_on:I

    goto :goto_0
.end method

.method public setSelectedOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    iget v1, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_off:I

    if-lez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, img:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/citibikenyc/citibike/helpers/MenuButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 78
    .end local v0           #img:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v1, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_off:I

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/helpers/MenuButton;->setTextColor(I)V

    .line 79
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/citibikenyc/citibike/helpers/MenuButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSelectedOn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget v1, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_on:I

    if-lez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/MenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->drawableLeft_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    .local v0, img:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/citibikenyc/citibike/helpers/MenuButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 68
    .end local v0           #img:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v1, p0, Lcom/citibikenyc/citibike/helpers/MenuButton;->textColor_on:I

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/helpers/MenuButton;->setTextColor(I)V

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/citibikenyc/citibike/helpers/MenuButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
