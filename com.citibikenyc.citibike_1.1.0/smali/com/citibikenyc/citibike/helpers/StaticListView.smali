.class public abstract Lcom/citibikenyc/citibike/helpers/StaticListView;
.super Landroid/widget/LinearLayout;
.source "StaticListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 23
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mHeaderView:Landroid/view/View;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 23
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mHeaderView:Landroid/view/View;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 23
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mHeaderView:Landroid/view/View;

    .line 34
    return-void
.end method


# virtual methods
.method public addHeader(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mHeaderView:Landroid/view/View;

    .line 38
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 57
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mHeaderView:Landroid/view/View;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 58
    .local v1, pos:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/StaticListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 63
    return-void

    .line 57
    .end local v0           #i:I
    .end local v1           #pos:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 59
    .restart local v0       #i:I
    .restart local v1       #pos:I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/StaticListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/helpers/StaticListView;->onItemClick(I)V

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public abstract onItemClick(I)V
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 42
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/StaticListView;->removeAllViews()V

    .line 43
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mHeaderView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/helpers/StaticListView;->addView(Landroid/view/View;)V

    .line 48
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 53
    return-void

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/helpers/StaticListView;->addView(Landroid/view/View;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
