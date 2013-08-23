.class public Lcom/citibikenyc/citibike/helpers/PlaceListView;
.super Lcom/citibikenyc/citibike/helpers/StaticListView;
.source "PlaceListView.java"


# instance fields
.field mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/helpers/StaticListView;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 14
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mContext:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/citibikenyc/citibike/helpers/StaticListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 14
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/citibikenyc/citibike/helpers/StaticListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 14
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mContext:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mAdapter:Landroid/widget/ListAdapter;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 35
    .local v0, p:Lcom/citibikenyc/citibike/models/Place;
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-interface {v1, v0}, Lcom/citibikenyc/citibike/interfaces/ActionListener;->onPlaceRequest(Lcom/citibikenyc/citibike/models/Place;)V

    .line 38
    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/citibikenyc/citibike/interfaces/ActionListener;)V
    .locals 0
    .parameter "actionListener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 42
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 8
    .parameter "adapter"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x4120

    .line 46
    invoke-super {p0, p1}, Lcom/citibikenyc/citibike/helpers/StaticListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    new-instance v0, Lcom/citibikenyc/citibike/helpers/FooterView;

    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/citibikenyc/citibike/helpers/FooterView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, footerView:Lcom/citibikenyc/citibike/helpers/FooterView;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 50
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    .line 51
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 50
    invoke-static {v7, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 52
    invoke-static {v7, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 54
    .local v2, lrMargins:I
    invoke-virtual {v1, v2, v6, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/helpers/FooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/PlaceListView;->addView(Landroid/view/View;)V

    .line 57
    return-void
.end method
