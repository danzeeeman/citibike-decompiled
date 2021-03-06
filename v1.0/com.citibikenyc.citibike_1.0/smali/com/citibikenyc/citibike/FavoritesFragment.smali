.class public Lcom/citibikenyc/citibike/FavoritesFragment;
.super Landroid/support/v4/app/ListFragment;
.source "FavoritesFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;
.implements Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "FavoritesFragment"


# instance fields
.field favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

.field private mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

.field private mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

.field private mFavoritePlaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderText:Landroid/widget/TextView;

.field mHeaderView:Landroid/view/View;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 39
    iput-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 40
    iput-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoritePlaces:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/FavoritesFragment;)Lcom/citibikenyc/citibike/interfaces/FavoriteListener;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/FavoritesFragment;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private customTabTextView(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/citibikenyc/citibike/helpers/FontableTextView;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/citibikenyc/citibike/helpers/FontableTextView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, txtTab:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 95
    const/4 v1, 0x2

    const/high16 v2, 0x4140

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 99
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 101
    return-object v0
.end method

.method private setTabsBackground(Landroid/widget/TabHost;)V
    .locals 6
    .parameter "tabHost"

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 108
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 116
    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 110
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0200f7

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearPlaceForDeletion()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->clearPlaceForDeletion()V

    .line 287
    :cond_0
    return-void
.end method

.method public hasMarkedPlaceForDeletion()Z
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, marked:Z
    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {v1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->hasMarkedPlaceForDeletion()Z

    move-result v0

    .line 296
    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    const-string v1, "FavoritesFragment"

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/FavoritesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->refresh()V

    .line 63
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f050055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, noFavoritesView:Landroid/view/View;
    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoritePlaces:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoritePlaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 67
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoritePlaces:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 74
    new-instance v1, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030033

    iget-object v4, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoritePlaces:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    .line 76
    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/FavoritesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {v1, p0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->setOnDeleteRequestListener(Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/citibikenyc/citibike/FavoritesFragment$1;

    invoke-direct {v2, p0}, Lcom/citibikenyc/citibike/FavoritesFragment$1;-><init>(Lcom/citibikenyc/citibike/FavoritesFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 88
    return-void

    .line 69
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0xb

    .line 120
    const-string v6, "FavoritesFragment"

    const-string v7, "onCreateView"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v6, 0x7f03001d

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 123
    .local v5, view:Landroid/view/View;
    const v6, 0x7f03001e

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mHeaderView:Landroid/view/View;

    .line 124
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mHeaderView:Landroid/view/View;

    const v7, 0x7f050059

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mHeaderText:Landroid/widget/TextView;

    .line 126
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mHeaderView:Landroid/view/View;

    const v7, 0x1020012

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    iput-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    .line 127
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 129
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "all"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 130
    .local v0, allTab:Landroid/widget/TabHost$TabSpec;
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "stations"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 131
    .local v4, stationsTab:Landroid/widget/TabHost$TabSpec;
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "places"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 133
    .local v3, placesTab:Landroid/widget/TabHost$TabSpec;
    const v6, 0x7f050056

    invoke-virtual {v0, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 134
    const v6, 0x7f050057

    invoke-virtual {v4, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 135
    const v6, 0x7f050058

    invoke-virtual {v3, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 137
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v8, :cond_1

    .line 139
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const v7, 0x7f02003c

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->setDividerDrawable(I)V

    .line 142
    const-string v6, "All"

    invoke-direct {p0, v6}, Lcom/citibikenyc/citibike/FavoritesFragment;->customTabTextView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 143
    const-string v6, "Stations"

    invoke-direct {p0, v6}, Lcom/citibikenyc/citibike/FavoritesFragment;->customTabTextView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 144
    const-string v6, "Places"

    invoke-direct {p0, v6}, Lcom/citibikenyc/citibike/FavoritesFragment;->customTabTextView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 151
    :goto_0
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 152
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 153
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 155
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v8, :cond_0

    .line 156
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {p0, v6}, Lcom/citibikenyc/citibike/FavoritesFragment;->setTabsBackground(Landroid/widget/TabHost;)V

    .line 159
    :cond_0
    iget-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/MainActivity;

    .line 163
    .local v1, mainActivity:Lcom/citibikenyc/citibike/MainActivity;
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/MainActivity;->getPlaceDataProvider()Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    move-result-object v2

    .line 165
    .local v2, placeDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;
    invoke-interface {v2, p0}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->addPlaceDataObserver(Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;)V

    .line 166
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/MainActivity;->getFavoriteListener()Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 167
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/MainActivity;->getActionListener()Lcom/citibikenyc/citibike/interfaces/ActionListener;

    move-result-object v6

    iput-object v6, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 169
    return-object v5

    .line 146
    .end local v1           #mainActivity:Lcom/citibikenyc/citibike/MainActivity;
    .end local v2           #placeDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;
    :cond_1
    const-string v6, "All"

    invoke-virtual {v0, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 147
    const-string v6, "Stations"

    invoke-virtual {v4, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 148
    const-string v6, "Places"

    invoke-virtual {v3, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method

.method public onDeleteRequest(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 8
    .parameter "place"

    .prologue
    const v7, 0x7f0a0091

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 246
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0090

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 254
    iget v3, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 255
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->description:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/citibikenyc/citibike/FavoritesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, message:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 263
    const v4, 0x104000a

    new-instance v5, Lcom/citibikenyc/citibike/FavoritesFragment$2;

    invoke-direct {v5, p0, p1}, Lcom/citibikenyc/citibike/FavoritesFragment$2;-><init>(Lcom/citibikenyc/citibike/FavoritesFragment;Lcom/citibikenyc/citibike/models/Place;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 270
    const/high16 v4, 0x104

    new-instance v5, Lcom/citibikenyc/citibike/FavoritesFragment$3;

    invoke-direct {v5, p0}, Lcom/citibikenyc/citibike/FavoritesFragment$3;-><init>(Lcom/citibikenyc/citibike/FavoritesFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 280
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 281
    return-void

    .line 257
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    :cond_0
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/citibikenyc/citibike/FavoritesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/String;
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroyView()V

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/FavoritesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 220
    .local v0, p:Lcom/citibikenyc/citibike/models/Place;
    const-string v1, "FavoritesFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Clicked on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-interface {v1, v0}, Lcom/citibikenyc/citibike/interfaces/ActionListener;->onPlaceRequest(Lcom/citibikenyc/citibike/models/Place;)V

    .line 225
    :cond_0
    return-void
.end method

.method public onPlaceDataLoad()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->refresh()V

    .line 237
    return-void
.end method

.method public onPlaceDataUpdate()V
    .locals 0

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/FavoritesFragment;->refresh()V

    .line 242
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "tabId"

    .prologue
    const/4 v3, 0x1

    .line 196
    const-string v0, "FavoritesFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clicked "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->clearPlaceForDeletion()V

    .line 202
    :cond_0
    const-string v0, "stations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "favorites_stations"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {v0, v3}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->filterByType(I)V

    .line 205
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v0, "places"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "favorites_places"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {v0, v3}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->filterByNotType(I)V

    .line 209
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0a0089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "favorites_all"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->filterByNotType(I)V

    .line 213
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "FavoritesFragment"

    const-string v1, "refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/interfaces/FavoriteListener;->getAllFavorites()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoritePlaces:Ljava/util/ArrayList;

    .line 176
    const-string v0, "FavoritesFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoritePlaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoritePlaces:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->replace(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->notifyDataSetChanged()V

    .line 183
    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/citibikenyc/citibike/interfaces/ActionListener;)V
    .locals 0
    .parameter "actionListener"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 191
    return-void
.end method

.method public setFavoriteListener(Lcom/citibikenyc/citibike/interfaces/FavoriteListener;)V
    .locals 0
    .parameter "favoriteListener"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 187
    return-void
.end method
