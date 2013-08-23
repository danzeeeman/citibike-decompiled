.class public Lcom/citibikenyc/citibike/helpers/FontableTextView;
.super Landroid/widget/TextView;
.source "FontableTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget-object v0, Lcom/citibikenyc/citibike/R$styleable;->com_citibikenyc_citibike_helpers_FontableTextView:[I

    .line 19
    const/4 v1, 0x0

    .line 17
    invoke-static {p0, p1, p2, v0, v1}, Lcom/citibikenyc/citibike/helpers/FontUtil;->setCustomFont(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;[II)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    sget-object v0, Lcom/citibikenyc/citibike/R$styleable;->com_citibikenyc_citibike_helpers_FontableTextView:[I

    .line 26
    const/4 v1, 0x0

    .line 24
    invoke-static {p0, p1, p2, v0, v1}, Lcom/citibikenyc/citibike/helpers/FontUtil;->setCustomFont(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;[II)V

    .line 27
    return-void
.end method
