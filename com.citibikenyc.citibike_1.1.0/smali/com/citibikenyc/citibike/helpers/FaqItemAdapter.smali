.class public Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FaqItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/citibikenyc/citibike/models/FaqItem;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "FaqItemAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mViewResourceId:I

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/FaqItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "context"
    .parameter "viewResourceId"
    .parameter
    .parameter "rowBackground"
    .parameter "rowBackground_first"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/FaqItem;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/FaqItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;->objects:Ljava/util/List;

    .line 35
    iput p2, p0, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;->mViewResourceId:I

    .line 38
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

    .line 43
    if-nez p2, :cond_1

    .line 44
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 45
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;->mViewResourceId:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    new-instance v1, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;

    invoke-direct {v1, v5}, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;-><init>(Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;)V

    .line 48
    .local v1, holder:Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;
    const v3, 0x7f0500a1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;->label:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;->objects:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/FaqItem;

    .line 71
    .local v0, faqItem:Lcom/citibikenyc/citibike/models/FaqItem;
    iget-object v3, v1, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;->label:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, v1, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;->label:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/citibikenyc/citibike/models/FaqItem;->question:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    return-object p2

    .line 52
    .end local v0           #faqItem:Lcom/citibikenyc/citibike/models/FaqItem;
    .end local v1           #holder:Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;

    .restart local v1       #holder:Lcom/citibikenyc/citibike/helpers/FaqItemAdapter$FaqItemHolder;
    goto :goto_0
.end method
