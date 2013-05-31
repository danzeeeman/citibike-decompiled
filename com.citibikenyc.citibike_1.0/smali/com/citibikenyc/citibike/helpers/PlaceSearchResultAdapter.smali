.class public Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PlaceSearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;
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
.field protected static final TAG:Ljava/lang/String; = "PlaceSearchResultAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPlace:Lcom/citibikenyc/citibike/models/Place;

.field private mExcludeCurrentLocation:Z

.field private mExcludedAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

.field private mFilter:Landroid/widget/Filter;

.field private mGooglePlaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field private mLocale:Ljava/util/Locale;

.field private mPlaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field private mPois:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field private mStations:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field private mViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "viewResourceId"

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mLocale:Ljava/util/Locale;

    .line 58
    iput p2, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mViewResourceId:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludeCurrentLocation:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/citibikenyc/citibike/models/Place;->PLACE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mStations:Ljava/util/SortedSet;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mGooglePlaces:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/citibikenyc/citibike/models/Place;->PLACE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPois:Ljava/util/SortedSet;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/citibikenyc/citibike/models/Place;)V
    .locals 0
    .parameter "context"
    .parameter "viewResourceId"
    .parameter "currentPlace"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;-><init>(Landroid/content/Context;I)V

    .line 69
    iput-object p3, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mCurrentPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 70
    return-void
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Ljava/util/Locale;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludeCurrentLocation:Z

    return v0
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Lcom/citibikenyc/citibike/models/Place;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mCurrentPlace:Lcom/citibikenyc/citibike/models/Place;

    return-object v0
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mStations:Ljava/util/SortedSet;

    return-object v0
.end method

.method static synthetic access$5(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;Ljava/lang/String;Ljava/util/Collection;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->copyFilteredItems(Ljava/lang/String;Ljava/util/Collection;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mGooglePlaces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPois:Ljava/util/SortedSet;

    return-object v0
.end method

.method static synthetic access$8(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized copyFilteredItems(Ljava/lang/String;Ljava/util/Collection;Ljava/util/List;)V
    .locals 5
    .parameter "lowerCaseFilterStr"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, source:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/citibikenyc/citibike/models/Place;>;"
    .local p3, destination:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 207
    monitor-exit p0

    return-void

    .line 193
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/Place;

    .line 194
    .local v1, p:Lcom/citibikenyc/citibike/models/Place;
    iget v3, v1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 195
    iget-object v0, v1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    .line 200
    .local v0, label:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    iget-boolean v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludeCurrentLocation:Z

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 203
    :cond_2
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    .end local v0           #label:Ljava/lang/String;
    .end local v1           #p:Lcom/citibikenyc/citibike/models/Place;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 197
    .restart local v1       #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_3
    :try_start_2
    iget-object v0, v1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #label:Ljava/lang/String;
    goto :goto_1
.end method

.method private resetPlaces(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 295
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludeCurrentLocation:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mCurrentPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mStations:Ljava/util/SortedSet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mGooglePlaces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPois:Ljava/util/SortedSet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 303
    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->notifyDataSetChanged()V

    .line 306
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mStations:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 287
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mGooglePlaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPois:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 289
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->resetPlaces(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized excludeCurrentLocation(Z)V
    .locals 2
    .parameter "exclude"

    .prologue
    const/4 v0, 0x1

    .line 269
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludeCurrentLocation:Z

    if-eq v1, p1, :cond_1

    .line 270
    iput-boolean p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludeCurrentLocation:Z

    .line 272
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludedAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludedAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->excludeCurrentLocation(Z)V

    .line 277
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->resetPlaces(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentPlace()Lcom/citibikenyc/citibike/models/Place;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mCurrentPlace:Lcom/citibikenyc/citibike/models/Place;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;-><init>(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mFilter:Landroid/widget/Filter;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/citibikenyc/citibike/models/Place;
    .locals 1
    .parameter "position"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;

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
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getItem(I)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 88
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0a0024

    const/4 v7, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 95
    if-nez p2, :cond_7

    .line 96
    iget-object v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 97
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mViewResourceId:I

    invoke-virtual {v2, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;

    invoke-direct {v1, v11}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;-><init>(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;)V

    .line 100
    .local v1, holder:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;
    const v5, 0x7f05009c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->label:Landroid/widget/TextView;

    .line 101
    const v5, 0x7f0500a2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    .line 102
    const v5, 0x7f05009e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->bikes:Landroid/widget/TextView;

    .line 103
    const v5, 0x7f0500a0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->docks:Landroid/widget/TextView;

    .line 104
    const v5, 0x7f0500a5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    .line 105
    const v5, 0x7f0500a6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    .line 106
    const v5, 0x7f05009b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->iconHolder:Landroid/widget/ImageView;

    .line 107
    const v5, 0x7f05009d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    .line 109
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 117
    .local v3, place:Lcom/citibikenyc/citibike/models/Place;
    if-eqz v3, :cond_6

    .line 118
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->label:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 119
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->label:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget v5, v3, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v5, v7, :cond_8

    iget-boolean v5, v3, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-eqz v5, :cond_8

    .line 123
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->bikes:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 124
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->bikes:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Lcom/citibikenyc/citibike/models/Place;->bikesAvailable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_1
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->docks:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 128
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->docks:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Lcom/citibikenyc/citibike/models/Place;->docksAvailable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_2
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 132
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_3
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 136
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_4
    :goto_1
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 155
    iget-boolean v5, v3, Lcom/citibikenyc/citibike/models/Place;->hasDistance:Z

    if-eqz v5, :cond_b

    .line 156
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mContext:Landroid/content/Context;

    const-string v6, "SETTINGS_PREFS"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 160
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v5, "DISTANCE_IN_MILES"

    sget-boolean v6, Lcom/citibikenyc/citibike/SettingsFragment;->DISTANCE_MI:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 162
    .local v0, distanceMi:Z
    if-nez v0, :cond_a

    .line 163
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/models/Place;->getDistanceInKilometers()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_2
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 170
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    if-nez v0, :cond_5

    .line 173
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 182
    .end local v0           #distanceMi:Z
    .end local v4           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_5
    :goto_3
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->iconHolder:Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    .line 183
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->iconHolder:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/models/Place;->getIconResource()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    :cond_6
    return-object p2

    .line 111
    .end local v1           #holder:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;
    .end local v3           #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;

    .restart local v1       #holder:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;
    goto/16 :goto_0

    .line 138
    .restart local v3       #place:Lcom/citibikenyc/citibike/models/Place;
    :cond_8
    iget v5, v3, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v5, v7, :cond_9

    iget-boolean v5, v3, Lcom/citibikenyc/citibike/models/Place;->isActive:Z

    if-nez v5, :cond_9

    .line 139
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 142
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    const v6, 0x7f0a0025

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 145
    :cond_9
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 146
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->bikeInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 149
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->description:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 166
    .restart local v0       #distanceMi:Z
    .restart local v4       #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_a
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/models/Place;->getDistanceInMiles()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 177
    .end local v0           #distanceMi:Z
    .end local v4           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_b
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;->distanceUnits:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public isCurrentLocationExcluded()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludeCurrentLocation:Z

    return v0
.end method

.method public setExcludedAdapter(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)V
    .locals 0
    .parameter "excludedAdapter"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludedAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    .line 74
    return-void
.end method

.method public declared-synchronized setGooglePlaces(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "notify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, placeData:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mGooglePlaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mGooglePlaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    invoke-direct {p0, p2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->resetPlaces(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPois(Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter "notify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, stations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/citibikenyc/citibike/models/Place;>;"
    .local p2, pois:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/citibikenyc/citibike/models/Place;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mStations:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 260
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mStations:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 262
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPois:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 263
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPois:Ljava/util/SortedSet;

    invoke-interface {v0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 265
    invoke-direct {p0, p3}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->resetPlaces(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
