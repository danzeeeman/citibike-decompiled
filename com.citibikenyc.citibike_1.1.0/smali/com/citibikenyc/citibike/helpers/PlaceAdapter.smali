.class public Lcom/citibikenyc/citibike/helpers/PlaceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PlaceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;,
        Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/citibikenyc/citibike/models/Place;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "PlaceAdapter"


# instance fields
.field private formatDate:Ljava/lang/String;

.field private formatTime:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeletePlace:Lcom/citibikenyc/citibike/models/Place;

.field private mListener:Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;

.field private mLocale:Ljava/util/Locale;

.field private mOriginalObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field private mViewResourceId:I

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field private rowBackground:Landroid/graphics/drawable/Drawable;

.field private rowBackground_first:Landroid/graphics/drawable/Drawable;

.field private sdfDate:Ljava/text/SimpleDateFormat;

.field private sdfTime:Ljava/text/SimpleDateFormat;

.field public useLargeIcons:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
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
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->useLargeIcons:Z

    .line 54
    iput-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->rowBackground:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->rowBackground_first:Landroid/graphics/drawable/Drawable;

    .line 57
    const-string v0, "MM.dd.yy"

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->formatDate:Ljava/lang/String;

    .line 59
    const-string v0, "h:mma"

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->formatTime:Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->init(Landroid/content/Context;ILjava/util/List;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
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
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->useLargeIcons:Z

    .line 54
    iput-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->rowBackground:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->rowBackground_first:Landroid/graphics/drawable/Drawable;

    .line 57
    const-string v0, "MM.dd.yy"

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->formatDate:Ljava/lang/String;

    .line 59
    const-string v0, "h:mma"

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->formatTime:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->rowBackground:Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object p5, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->rowBackground_first:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->init(Landroid/content/Context;ILjava/util/List;)V

    .line 75
    return-void
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/helpers/PlaceAdapter;)Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mListener:Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/citibikenyc/citibike/helpers/PlaceAdapter;)Lcom/citibikenyc/citibike/models/Place;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mDeletePlace:Lcom/citibikenyc/citibike/models/Place;

    return-object v0
.end method

.method private init(Landroid/content/Context;ILjava/util/List;)V
    .locals 3
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
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mLocale:Ljava/util/Locale;

    .line 80
    iput p2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mViewResourceId:I

    .line 81
    iput-object p3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    .line 83
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->formatDate:Ljava/lang/String;

    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->sdfDate:Ljava/text/SimpleDateFormat;

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->formatTime:Ljava/lang/String;

    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->sdfTime:Ljava/text/SimpleDateFormat;

    .line 87
    return-void
.end method


# virtual methods
.method public add(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->add(Lcom/citibikenyc/citibike/models/Place;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 285
    return-void
.end method

.method public clearPlaceForDeletion()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mDeletePlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mDeletePlace:Lcom/citibikenyc/citibike/models/Place;

    .line 309
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->notifyDataSetChanged()V

    .line 311
    :cond_0
    return-void
.end method

.method public filterByNotType(I)V
    .locals 4
    .parameter "placeType"

    .prologue
    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 343
    iput-object v2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    .line 345
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 346
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->notifyDataSetChanged()V

    .line 350
    :goto_1
    return-void

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/Place;

    .line 338
    .local v1, p:Lcom/citibikenyc/citibike/models/Place;
    iget v3, v1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-eq v3, p1, :cond_1

    .line 339
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v1           #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_2
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method

.method public filterByType(I)V
    .locals 4
    .parameter "placeType"

    .prologue
    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 323
    iput-object v2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    .line 325
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 326
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->notifyDataSetChanged()V

    .line 331
    :goto_1
    return-void

    .line 317
    :cond_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/Place;

    .line 318
    .local v1, p:Lcom/citibikenyc/citibike/models/Place;
    iget v3, v1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v3, p1, :cond_1

    .line 319
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v1           #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_2
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/citibikenyc/citibike/models/Place;
    .locals 1
    .parameter "position"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->getItem(I)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Lcom/citibikenyc/citibike/models/Place;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->getPosition(Lcom/citibikenyc/citibike/models/Place;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x7f0a0024

    const/4 v9, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 92
    if-nez p2, :cond_c

    .line 93
    iget-object v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 94
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mViewResourceId:I

    invoke-virtual {v2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;-><init>(Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;)V

    .line 98
    .local v1, holder:Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;
    const v5, 0x7f0500a5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->label:Landroid/widget/TextView;

    .line 99
    const v5, 0x7f0500ab

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    .line 100
    const v5, 0x7f0500a7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->bikes:Landroid/widget/TextView;

    .line 101
    const v5, 0x7f0500a9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->docks:Landroid/widget/TextView;

    .line 102
    const v5, 0x7f0500af

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    .line 103
    const v5, 0x7f0500b0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    .line 104
    const v5, 0x7f0500a4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->iconHolder:Landroid/widget/ImageView;

    .line 105
    const v5, 0x7f0500a6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    .line 106
    const v5, 0x7f0500ac

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->favoriteTimestamp:Landroid/widget/TextView;

    .line 107
    const v5, 0x7f05004f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->vContainer:Landroid/view/View;

    .line 108
    const v5, 0x7f0500ad

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->deleteButton:Landroid/view/View;

    .line 109
    const v5, 0x7f0500ae

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->scoopDescription:Landroid/widget/TextView;

    .line 112
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->deleteButton:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 113
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->deleteButton:Landroid/view/View;

    new-instance v8, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$1;

    invoke-direct {v8, p0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$1;-><init>(Lcom/citibikenyc/citibike/helpers/PlaceAdapter;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    if-nez p1, :cond_d

    iget-object v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->rowBackground_first:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->vContainer:Landroid/view/View;

    if-eqz v5, :cond_d

    .line 130
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->vContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->rowBackground_first:Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v8}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 137
    .local v3, place:Lcom/citibikenyc/citibike/models/Place;
    if-eqz v3, :cond_b

    .line 138
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->label:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 139
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->label:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_2
    iget v5, v3, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v5, v9, :cond_e

    iget-boolean v5, v3, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-eqz v5, :cond_e

    .line 143
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->bikes:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 144
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->bikes:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v3, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_3
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->docks:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 148
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->docks:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v3, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_4
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 152
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_5
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 156
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :cond_6
    :goto_2
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 177
    iget-boolean v5, v3, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-eqz v5, :cond_12

    .line 178
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mContext:Landroid/content/Context;

    const-string v8, "SETTINGS_PREFS"

    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 182
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v5, "DISTANCE_IN_MILES"

    sget-boolean v8, Lcom/citibikenyc/citibike/SettingsFragment;->DISTANCE_MI:Z

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 184
    .local v0, distanceMi:Z
    if-nez v0, :cond_11

    .line 185
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/models/Place;->getDistanceInKilometers()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :goto_3
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 192
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    if-nez v0, :cond_7

    .line 195
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 204
    .end local v0           #distanceMi:Z
    .end local v4           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_7
    :goto_4
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->iconHolder:Landroid/widget/ImageView;

    if-eqz v5, :cond_8

    .line 205
    iget-boolean v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->useLargeIcons:Z

    if-eqz v5, :cond_13

    .line 206
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->iconHolder:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/models/Place;->getBigIconResource()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    :cond_8
    :goto_5
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->favoriteTimestamp:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    .line 213
    iget-wide v8, v3, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_14

    .line 214
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->favoriteTimestamp:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->favoriteTimestamp:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Favorited "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->sdfDate:Ljava/text/SimpleDateFormat;

    iget-wide v10, v3, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 216
    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->sdfTime:Ljava/text/SimpleDateFormat;

    iget-wide v10, v3, Lcom/citibikenyc/citibike/models/Place;->favoritedTimestamp:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 215
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_9
    :goto_6
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->deleteButton:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 223
    iget-object v8, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->deleteButton:Landroid/view/View;

    iget-object v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mDeletePlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v3, v5}, Lcom/citibikenyc/citibike/models/Place;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_a
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->scoopDescription:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    .line 227
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->scoopDescription:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_b
    return-object p2

    .line 125
    .end local v1           #holder:Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;
    .end local v3           #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;

    .restart local v1       #holder:Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;
    goto/16 :goto_0

    .line 131
    :cond_d
    iget-object v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->rowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->vContainer:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 132
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->vContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->rowBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v8}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 158
    .restart local v3       #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_e
    iget v5, v3, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v5, v9, :cond_10

    iget-boolean v5, v3, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v5, :cond_10

    .line 159
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    if-eqz v5, :cond_f

    .line 160
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_f
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 164
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    const v8, 0x7f0a0025

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 167
    :cond_10
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 168
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 171
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 188
    .restart local v0       #distanceMi:Z
    .restart local v4       #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_11
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/models/Place;->getDistanceInMiles()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 199
    .end local v0           #distanceMi:Z
    .end local v4           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_12
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 208
    :cond_13
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->iconHolder:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/models/Place;->getIconResource()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 218
    :cond_14
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$PlaceHolder;->favoriteTimestamp:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_15
    move v5, v7

    .line 223
    goto/16 :goto_7
.end method

.method public hasMarkedPlaceForDeletion()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mDeletePlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markPlaceForDeletion(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mDeletePlace:Lcom/citibikenyc/citibike/models/Place;

    .line 303
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->notifyDataSetChanged()V

    .line 304
    return-void
.end method

.method public remove(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->notifyDataSetChanged()V

    .line 255
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->remove(Lcom/citibikenyc/citibike/models/Place;)V

    return-void
.end method

.method public replace(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->objects:Ljava/util/List;

    .line 289
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mOriginalObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    return-void
.end method

.method public setOnDeleteRequestListener(Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mListener:Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;

    .line 295
    return-void
.end method
