.class public Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "PlaceAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/AutoCompleteTextView;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "PlaceAutoCompleteTextView"


# instance fields
.field private afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

.field private collapseableViews:[Landroid/view/View;

.field private defaultColor:I

.field private expandableViews:[Landroid/view/View;

.field private expandedHintText:Ljava/lang/String;

.field private hasCollapsed:Z

.field private mExcludeAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

.field private mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

.field private mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

.field private mQueryStart:Ljava/lang/String;

.field private mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

.field private selectedPlace:Lcom/citibikenyc/citibike/models/Place;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->selectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 33
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    .line 36
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->collapseableViews:[Landroid/view/View;

    .line 37
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->expandableViews:[Landroid/view/View;

    .line 38
    iput v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->defaultColor:I

    .line 39
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->expandedHintText:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->hasCollapsed:Z

    .line 44
    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mQueryStart:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->initSelectedOptions(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->defaultColor:I

    .line 53
    return-void
.end method


# virtual methods
.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "selectedItem"

    .prologue
    .line 71
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    move-object v0, p1

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 72
    .local v0, selectedPlace:Lcom/citibikenyc/citibike/models/Place;
    iget-object v1, v0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    return-object v1
.end method

.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 66
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getSelectedPlace()Lcom/citibikenyc/citibike/models/Place;
    .locals 1

    .prologue
    .line 106
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->selectedPlace:Lcom/citibikenyc/citibike/models/Place;

    return-object v0
.end method

.method public initSelectedOptions(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    if-eqz p2, :cond_0

    .line 57
    sget-object v1, Lcom/citibikenyc/citibike/R$styleable;->com_citibikenyc_citibike_helpers_PlaceAutoCompleteTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->expandedHintText:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->collapseableViews:[Landroid/view/View;

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "PlaceAutoCompleteTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEditorAction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->hasCollapsed:Z

    .line 162
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->collapseableViews:[Landroid/view/View;

    invoke-static {v0, v3}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->updateVisibility([Landroid/view/View;I)V

    .line 163
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->expandableViews:[Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->updateVisibility([Landroid/view/View;I)V

    .line 167
    :cond_0
    return v3
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 172
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    const-string v0, "PlaceAutoCompleteTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFocusChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-nez p2, :cond_0

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->hasCollapsed:Z

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 137
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 139
    .local v0, place:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    .line 141
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mExcludeAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-eqz v1, :cond_0

    .line 142
    iget-object v2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mExcludeAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget v1, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->excludeCurrentLocation(Z)V

    .line 144
    :cond_0
    return-void

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onMapPlaces(Ljava/lang/String;Ljava/util/List;)V
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
    .line 246
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    .local p2, placeData:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->setGooglePlaces(Ljava/util/List;Z)V

    .line 247
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "lengthBefore"
    .parameter "lengthAfter"

    .prologue
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    const/4 v7, 0x1

    .line 204
    iget v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->defaultColor:I

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setTextColor(I)V

    .line 206
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-eqz v3, :cond_1

    .line 207
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 210
    .local v1, len:I
    if-nez v1, :cond_2

    .line 211
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    const-string v3, ""

    iput-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mQueryStart:Ljava/lang/String;

    .line 219
    :cond_0
    :goto_0
    if-ne v1, v7, :cond_3

    .line 220
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mQueryStart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    iput-object v2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mQueryStart:Ljava/lang/String;

    .line 222
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v4, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v4, v2}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getStations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v5, v2}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getNonStations(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->setPois(Ljava/util/Collection;Ljava/util/Collection;Z)V

    .line 241
    .end local v1           #len:I
    .end local v2           #str:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 242
    return-void

    .line 214
    .restart local v1       #len:I
    .restart local v2       #str:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 224
    :cond_3
    const/4 v3, 0x5

    if-lt v1, v3, :cond_5

    .line 225
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 228
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    invoke-virtual {v3, v7}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->cancel(Z)Z

    .line 232
    :cond_4
    new-instance v3, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    invoke-direct {v3, p0}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;-><init>(Lcom/citibikenyc/citibike/tasks/MapGetPlaces$OnMapPlacesListener;)V

    iput-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    .line 233
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 235
    .local v0, currentLocation:Lcom/google/android/gms/maps/model/LatLng;
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mapGetPlacesTask:Lcom/citibikenyc/citibike/tasks/MapGetPlaces;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "10"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/citibikenyc/citibike/tasks/MapGetPlaces;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 237
    .end local v0           #currentLocation:Lcom/google/android/gms/maps/model/LatLng;
    :cond_5
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    const/4 v2, 0x1

    .line 182
    invoke-super {p0, p2}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 184
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->hasCollapsed:Z

    if-nez v0, :cond_1

    .line 185
    iput-boolean v2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->hasCollapsed:Z

    .line 187
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->collapseableViews:[Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->updateVisibility([Landroid/view/View;I)V

    .line 192
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->expandableViews:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->updateVisibility([Landroid/view/View;I)V

    .line 194
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->expandedHintText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->expandedHintText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 199
    :cond_1
    return v2
.end method

.method public removeViewListeners()V
    .locals 2

    .prologue
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    const/4 v1, 0x0

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->hasCollapsed:Z

    .line 148
    iput-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->collapseableViews:[Landroid/view/View;

    .line 149
    iput-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->expandableViews:[Landroid/view/View;

    .line 150
    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    return-void
.end method

.method public setAdapterAfterTouch(Lcom/citibikenyc/citibike/helpers/MapHelper;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)V
    .locals 2
    .parameter "mapHelper"
    .parameter "placeDataProvider"
    .parameter "adapter"
    .parameter "excludeAdapter"

    .prologue
    .line 123
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 124
    iput-object p2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    .line 125
    iput-object p3, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    .line 126
    iput-object p4, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->mExcludeAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    .line 128
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->selectedPlace:Lcom/citibikenyc/citibike/models/Place;

    iget v0, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->excludeCurrentLocation(Z)V

    .line 132
    :cond_0
    invoke-virtual {p3, p4}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->setExcludedAdapter(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)V

    .line 133
    return-void
.end method

.method public setCollapsableViews([Landroid/view/View;[Landroid/view/View;)V
    .locals 1
    .parameter "hideViews"
    .parameter "showViews"

    .prologue
    .line 111
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->hasCollapsed:Z

    .line 112
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->collapseableViews:[Landroid/view/View;

    .line 113
    iput-object p2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->expandableViews:[Landroid/view/View;

    .line 114
    invoke-virtual {p0, p0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    invoke-virtual {p0, p0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 116
    invoke-virtual {p0, p0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    invoke-virtual {p0, p0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    return-void
.end method

.method public setPlace(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 7
    .parameter "place"

    .prologue
    .local p0, this:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<TT;>;"
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->selectedPlace:Lcom/citibikenyc/citibike/models/Place;

    .line 78
    if-eqz p1, :cond_4

    .line 79
    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, isCurrent:Z
    iget v4, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setTextColor(I)V

    .line 86
    const/4 v0, 0x1

    .line 96
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-eqz v4, :cond_1

    .line 97
    iget-object v4, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->afterTouchAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->excludeCurrentLocation(Z)V

    .line 103
    .end local v0           #isCurrent:Z
    :cond_1
    :goto_2
    return-void

    .line 88
    .restart local v0       #isCurrent:Z
    :cond_2
    iget v4, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->defaultColor:I

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setTextColor(I)V

    .line 90
    iget-object v4, p1, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v4, :cond_0

    .line 91
    new-instance v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;

    invoke-direct {v1, v6, v6, p1}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;-><init>(Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;Lcom/citibikenyc/citibike/models/Place;)V

    .line 92
    .local v1, mapGeocodeTask:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "googleplace"

    aput-object v5, v4, v2

    iget-object v5, p1, Lcom/citibikenyc/citibike/models/Place;->referenceId:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .end local v1           #mapGeocodeTask:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;
    :cond_3
    move v2, v3

    .line 97
    goto :goto_1

    .line 100
    .end local v0           #isCurrent:Z
    :cond_4
    iget v2, p0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->defaultColor:I

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setTextColor(I)V

    .line 101
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
