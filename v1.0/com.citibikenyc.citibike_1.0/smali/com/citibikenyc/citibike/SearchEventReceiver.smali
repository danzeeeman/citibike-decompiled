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
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mQueryStart:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 50
    iput-object p3, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    .line 51
    iput-object p4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    .line 52
    iput-object p5, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceEventListener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    .line 53
    iput-object p6, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    .line 54
    iput-object p7, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 55
    iput-object p8, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 57
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 58
    return-void
.end method

.method private geocodePlace(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 146
    new-instance v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;

    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceEventListener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;-><init>(Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;Lcom/citibikenyc/citibike/models/Place;)V

    .line 147
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

    .line 148
    return-void
.end method

.method private initSearchResults()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f03003f

    invoke-direct {v0, v1, v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    .line 154
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public clearResults()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "SearchEventReceiver"

    const-string v1, "clearResults"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->clear()V

    .line 165
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->notifyDataSetChanged()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    .line 168
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 62
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 63
    .local v0, p:Lcom/citibikenyc/citibike/models/Place;
    const-string v1, "SearchEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onItemClick:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/models/Place;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, v0, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_0

    .line 66
    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/SearchEventReceiver;->geocodePlace(Lcom/citibikenyc/citibike/models/Place;)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SearchEventReceiver;->clearResults()V

    .line 73
    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 74
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-interface {v1, v0}, Lcom/citibikenyc/citibike/interfaces/ActionListener;->onPlaceRequest(Lcom/citibikenyc/citibike/models/Place;)V

    .line 69
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
    .line 187
    .local p2, placeData:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->setGooglePlaces(Ljava/util/List;Z)V

    .line 188
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/SearchEventReceiver;->clearResults()V

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 176
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

    .line 78
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/citibikenyc/citibike/SearchEventReceiver;->initSearchResults()V

    .line 80
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 85
    .local v1, len:I
    if-nez v1, :cond_2

    .line 86
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->clear()V

    .line 87
    const-string v2, ""

    iput-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mQueryStart:Ljava/lang/String;

    .line 109
    :cond_1
    :goto_0
    return v7

    .line 88
    :cond_2
    if-ne v1, v6, :cond_3

    .line 89
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mQueryStart:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    iput-object p1, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mQueryStart:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v3, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v3, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getStations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v4, p1}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getNonStations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->setPois(Ljava/util/Collection;Ljava/util/Collection;Z)V

    goto :goto_0

    .line 93
    :cond_3
    const/4 v2, 0x5

    if-lt v1, v2, :cond_5

    .line 94
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    invoke-virtual {v2, v6}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->cancel(Z)Z

    .line 101
    :cond_4
    new-instance v2, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    invoke-direct {v2, p0}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;-><init>(Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;)V

    iput-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    .line 102
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 104
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

    .line 106
    .end local v0           #currentLocation:Lcom/google/android/gms/maps/model/LatLng;
    :cond_5
    iget-object v2, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->searchListAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 10
    .parameter "query"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 114
    const-string v4, "SearchEventReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Search For Place:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/models/Place;

    .line 119
    .local v3, p:Lcom/citibikenyc/citibike/models/Place;
    iget-object v4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Finding: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 121
    iget-object v4, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v4, :cond_0

    .line 122
    invoke-direct {p0, v3}, Lcom/citibikenyc/citibike/SearchEventReceiver;->geocodePlace(Lcom/citibikenyc/citibike/models/Place;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    .end local v3           #p:Lcom/citibikenyc/citibike/models/Place;
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v4}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 142
    return v8

    .line 124
    .restart local v3       #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-interface {v4, v3}, Lcom/citibikenyc/citibike/interfaces/ActionListener;->onPlaceRequest(Lcom/citibikenyc/citibike/models/Place;)V

    .line 125
    iget-object v4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceEventListener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    invoke-interface {v4, v3}, Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;->onPlaceSelection(Lcom/citibikenyc/citibike/models/Place;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 127
    .end local v3           #p:Lcom/citibikenyc/citibike/models/Place;
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "SearchEventReceiver"

    const-string v5, "No search results loaded, try and geocode the result"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;

    iget-object v4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceEventListener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    iget-object v5, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-direct {v1, v4, v5}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;-><init>(Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;)V

    .line 131
    .local v1, mapGeocodeTask:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-virtual {v1, v4}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #mapGeocodeTask:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;
    :catch_1
    move-exception v2

    .line 134
    .local v2, ne:Ljava/lang/NullPointerException;
    const-string v4, "SearchEventReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to locate place reference for:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;

    iget-object v4, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mPlaceEventListener:Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;

    iget-object v5, p0, Lcom/citibikenyc/citibike/SearchEventReceiver;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-direct {v1, v4, v5}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;-><init>(Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;)V

    .line 137
    .restart local v1       #mapGeocodeTask:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-virtual {v1, v4}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
