.class public Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MoreItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/citibikenyc/citibike/models/MoreItem;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MoreItemAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mViewResourceId:I

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/MoreItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "viewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/MoreItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/MoreItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;->objects:Ljava/util/List;

    .line 31
    iput p2, p0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;->mViewResourceId:I

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 37
    if-nez p2, :cond_1

    .line 38
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 39
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;->mViewResourceId:I

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;

    invoke-direct {v0, v5}, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;-><init>(Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;)V

    .line 42
    .local v0, holder:Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;
    const v3, 0x7f0500a1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;->label:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;->objects:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/models/MoreItem;

    .line 51
    .local v2, menuItem:Lcom/citibikenyc/citibike/models/MoreItem;
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;->label:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;->label:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/citibikenyc/citibike/models/MoreItem;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    return-object p2

    .line 46
    .end local v0           #holder:Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;
    .end local v2           #menuItem:Lcom/citibikenyc/citibike/models/MoreItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;

    .restart local v0       #holder:Lcom/citibikenyc/citibike/helpers/MoreItemAdapter$MoreItemHolder;
    goto :goto_0
.end method
