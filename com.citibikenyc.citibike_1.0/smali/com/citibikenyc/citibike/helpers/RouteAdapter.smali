.class public Lcom/citibikenyc/citibike/helpers/RouteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RouteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/citibikenyc/citibike/models/RouteStep;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "RouteAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mViewResourceId:I

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/RouteStep;",
            ">;"
        }
    .end annotation
.end field

.field private rowBackground:Landroid/graphics/drawable/Drawable;

.field private rowBackground_first:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "viewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/citibikenyc/citibike/models/RouteStep;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/RouteStep;>;"
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->rowBackground:Landroid/graphics/drawable/Drawable;

    .line 27
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->rowBackground_first:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->objects:Ljava/util/List;

    .line 43
    iput p2, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->mViewResourceId:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
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
            "Lcom/citibikenyc/citibike/models/RouteStep;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/RouteStep;>;"
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->rowBackground:Landroid/graphics/drawable/Drawable;

    .line 27
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->rowBackground_first:Landroid/graphics/drawable/Drawable;

    .line 49
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->objects:Ljava/util/List;

    .line 51
    iput p2, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->mViewResourceId:I

    .line 52
    iput-object p4, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->rowBackground:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object p5, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->rowBackground_first:Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 59
    if-nez p2, :cond_5

    .line 60
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 61
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->mViewResourceId:I

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;

    invoke-direct {v0, v5}, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;-><init>(Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;)V

    .line 64
    .local v0, holder:Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;
    const v3, 0x7f05004f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->vContainer:Landroid/view/View;

    .line 65
    const v3, 0x7f050051

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->label:Landroid/widget/TextView;

    .line 66
    const v3, 0x7f050052

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->description:Landroid/widget/TextView;

    .line 67
    const v3, 0x7f050053

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->distance:Landroid/widget/TextView;

    .line 68
    const v3, 0x7f050054

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->distanceUnits:Landroid/widget/TextView;

    .line 69
    const v3, 0x7f050050

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->iconHolder:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    if-nez p1, :cond_6

    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->rowBackground_first:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->vContainer:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 78
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->vContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->rowBackground_first:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v4}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->objects:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/models/RouteStep;

    .line 85
    .local v2, routeStep:Lcom/citibikenyc/citibike/models/RouteStep;
    if-eqz v2, :cond_4

    .line 86
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->label:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->label:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/citibikenyc/citibike/models/RouteStep;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->description:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->description:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/citibikenyc/citibike/models/RouteStep;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_2
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->distance:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 96
    iget-wide v3, v2, Lcom/citibikenyc/citibike/models/RouteStep;->distance:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_7

    .line 97
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/models/RouteStep;->getDistance()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->distanceUnits:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->distanceUnits:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :cond_3
    :goto_2
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->iconHolder:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 107
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->iconHolder:Landroid/widget/ImageView;

    iget v4, v2, Lcom/citibikenyc/citibike/models/RouteStep;->iconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :cond_4
    return-object p2

    .line 73
    .end local v0           #holder:Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;
    .end local v2           #routeStep:Lcom/citibikenyc/citibike/models/RouteStep;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;

    .restart local v0       #holder:Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;
    goto :goto_0

    .line 79
    :cond_6
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->rowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->vContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->vContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;->rowBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v4}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 101
    .restart local v2       #routeStep:Lcom/citibikenyc/citibike/models/RouteStep;
    :cond_7
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->distanceUnits:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter$RouteHolder;->distanceUnits:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
