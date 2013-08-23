.class public Lcom/citibikenyc/citibike/SearchEventReceiver;
.super Ljava/lang/Object;
.source "SearchEventReceiver.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;
.implements Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;",
        "Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SearchEventReceiver"


# instance fields
.field private mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

.field private mContext:Landroid/content/Context;

.field private mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

.field private mMenu:Lcom/slidingmenu/lib/SlidingMenu;

.field private mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

.field private mPlaceEventListener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

.field private mQueryStart:Ljava/lang/String;

.field private mSearchItem:Lcom/actionbarsherlock/view/MenuItem;

.field private mSearchListView:Landroid/widget/ListView;

.field private mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

.field private searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/view/MenuItem;Landroid/widget/ListView;Lcom/slidingmenu/lib/SlidingMenu;Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;Lcom/citibikenyc/citibike/helpers/MapHelper;Lcom/citibikenyc/citibike/interfaces/ActionListener;)V
    .locals 1
    .parameter "context"
    .parameter "searchItem"
    .parameter "searchListView"
    .parameter "menu"
    .parameter "placeEventListener"
    .parameter "placeDataProvider"
    .parameter "mapHelper"
    .parameter "actionListener"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mQueryStart:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 48
    iput-object p3, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    .line 49
    iput-object p4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    .line 50
    iput-object p5, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceEventListener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    .line 51
    iput-object p6, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    .line 52
    iput-object p7, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 53
    iput-object p8, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 55
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 56
    return-void
.end method

.method private geocodePlace(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 123
    new-instance v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;

    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceEventListener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;-><init>(Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;Lcom/citibikenyc/citibike/models/Place;)V

    .line 124
    .local v0, mapGeocodeTask:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "googleplace"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    return-void
.end method

.method private initSearchResults()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f030045

    invoke-direct {v0, v1, v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    .line 131
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public clearResults()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->clear()V

    .line 141
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->notifyDataSetChanged()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    .line 144
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 62
    .local v0, p:Lcom/citibikenyc/citibike/models/Place;
    iget-object v1, v0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/SearchEventReceiver;->geocodePlace(Lcom/citibikenyc/citibike/models/Place;)V

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SearchEventReceiver;->clearResults()V

    .line 70
    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 71
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-interface {v1, v0}, Lcom/citibikenyc/citibike/interfaces/ActionListener;->onPlaceRequest(Lcom/citibikenyc/citibike/models/Place;)V

    .line 66
    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceEventListener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    invoke-interface {v1, v0}, Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;->onPlaceSelection(Lcom/citibikenyc/citibike/models/Place;)V

    goto :goto_0
.end method

.method public onMapPlaces(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter "searchString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, placeData:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->setGooglePlaces(Ljava/util/List;Z)V

    .line 164
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SearchEventReceiver;->clearResults()V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 152
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 8
    .parameter "searchTerm"

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 75
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/citibikenyc/citibike/SearchEventReceiver;->initSearchResults()V

    .line 77
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 82
    .local v1, len:I
    if-nez v1, :cond_2

    .line 83
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->clear()V

    .line 84
    const-string v2, ""

    iput-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mQueryStart:Ljava/lang/String;

    .line 106
    :cond_1
    :goto_0
    return v7

    .line 85
    :cond_2
    if-ne v1, v6, :cond_3

    .line 86
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mQueryStart:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    iput-object p1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mQueryStart:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v3, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v3, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getStations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v4, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getNonStations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->setPois(Ljava/util/Collection;Ljava/util/Collection;Z)V

    goto :goto_0

    .line 90
    :cond_3
    const/4 v2, 0x5

    if-lt v1, v2, :cond_5

    .line 91
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 94
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    invoke-virtual {v2, v6}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->cancel(Z)Z

    .line 98
    :cond_4
    new-instance v2, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    invoke-direct {v2, p0}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;-><init>(Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;)V

    iput-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    .line 99
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 101
    .local v0, currentLocation:Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v7

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "10"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 103
    .end local v0           #currentLocation:Lcom/google/android/gms/maps/model/LatLng;
    :cond_5
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5
    .parameter "query"

    .prologue
    const/4 v4, 0x1

    .line 112
    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;

    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceEventListener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-direct {v0, v1, v2}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;-><init>(Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;)V

    .line 114
    .local v0, mapGeocodeTask:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    aput-object v3, v1, v2

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 119
    .end local v0           #mapGeocodeTask:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;
    :goto_0
    return v4

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/citibikenyc/citibike/interfaces/ActionListener;->onPlaceRequest(Lcom/citibikenyc/citibike/models/Place;)V

    goto :goto_0
.end method
