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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 34
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/StaticListView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 55
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/StaticListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/helpers/StaticListView;->onItemClick(I)V

    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract onItemClick(I)V
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 40
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/StaticListView;->removeAllViews()V

    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 46
    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/StaticListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/helpers/StaticListView;->addView(Landroid/view/View;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
