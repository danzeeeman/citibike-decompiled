.class public Lcom/citibikenyc/citibike/StationsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "StationsFragment.java"

# interfaces
.implements Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;


# static fields
.field protected static final TAG:Ljava/lang/String; = "MapPlaceManager"


# instance fields
.field private mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

.field mHeaderView:Landroid/view/View;

.field private mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

.field private mNearbyPlaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceDataManager:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

.field private nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/citibikenyc/citibike/StationsFragment;->mNearbyPlaces:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/citibikenyc/citibike/StationsFragment;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 29
    iput-object v0, p0, Lcom/citibikenyc/citibike/StationsFragment;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 30
    iput-object v0, p0, Lcom/citibikenyc/citibike/StationsFragment;->mPlaceDataManager:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    .line 31
    iput-object v0, p0, Lcom/citibikenyc/citibike/StationsFragment;->nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    .line 23
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/citibikenyc/citibike/StationsFragment;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/StationsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/citibikenyc/citibike/StationsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/StationsFragment;->mNearbyPlaces:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/StationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 61
    const v2, 0x7f030034

    iget-object v3, p0, Lcom/citibikenyc/citibike/StationsFragment;->mNearbyPlaces:Ljava/util/List;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/StationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 62
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/StationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    iput-object v0, p0, Lcom/citibikenyc/citibike/StationsFragment;->nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    .line 64
    iget-object v0, p0, Lcom/citibikenyc/citibike/StationsFragment;->nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/StationsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 35
    const v2, 0x7f030048

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, v:Landroid/view/View;
    const v2, 0x7f030049

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/citibikenyc/citibike/StationsFragment;->mHeaderView:Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/StationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/MainActivity;

    .line 41
    .local v0, mainActivity:Lcom/citibikenyc/citibike/MainActivity;
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MainActivity;->getPlaceDataProvider()Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/citibikenyc/citibike/StationsFragment;->mPlaceDataManager:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    .line 42
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MainActivity;->getMapHelper()Lcom/citibikenyc/citibike/helpers/MapHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/citibikenyc/citibike/StationsFragment;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 43
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MainActivity;->getActionListener()Lcom/citibikenyc/citibike/interfaces/ActionListener;

    move-result-object v2

    iput-object v2, p0, Lcom/citibikenyc/citibike/StationsFragment;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 45
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/StationsFragment;->onPlaceDataUpdate()V

    .line 46
    iget-object v2, p0, Lcom/citibikenyc/citibike/StationsFragment;->mPlaceDataManager:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-interface {v2, p0}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->addPlaceDataObserver(Lcom/citibikenyc/citibike/interfaces/PlaceDataObserver;)V

    .line 48
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroyView()V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/StationsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 71
    if-lez p3, :cond_1

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/StationsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-gt p3, v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/StationsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/Place;

    .line 73
    .local v0, p:Lcom/citibikenyc/citibike/models/Place;
    const-string v1, "MapPlaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Clicked on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/citibikenyc/citibike/StationsFragment;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/citibikenyc/citibike/StationsFragment;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-interface {v1, v0}, Lcom/citibikenyc/citibike/interfaces/ActionListener;->onPlaceRequest(Lcom/citibikenyc/citibike/models/Place;)V

    .line 81
    .end local v0           #p:Lcom/citibikenyc/citibike/models/Place;
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v1, "MapPlaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INVALID LIST ITEM CLICK position:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/StationsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPlaceDataLoad()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/StationsFragment;->onPlaceDataUpdate()V

    .line 102
    return-void
.end method

.method public onPlaceDataUpdate()V
    .locals 4

    .prologue
    .line 106
    const-string v1, "MapPlaceManager"

    const-string v2, "onPlaceDataUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/citibikenyc/citibike/StationsFragment;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v1}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getCurrentLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 109
    .local v0, current:Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/citibikenyc/citibike/StationsFragment;->mPlaceDataManager:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;->getNearbyPlaces(Lcom/google/android/gms/maps/model/LatLng;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/citibikenyc/citibike/StationsFragment;->mNearbyPlaces:Ljava/util/List;

    .line 111
    iget-object v1, p0, Lcom/citibikenyc/citibike/StationsFragment;->nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/citibikenyc/citibike/StationsFragment;->nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    iget-object v2, p0, Lcom/citibikenyc/citibike/StationsFragment;->mNearbyPlaces:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->replace(Ljava/util/List;)V

    .line 113
    iget-object v1, p0, Lcom/citibikenyc/citibike/StationsFragment;->nearbyAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    invoke-virtual {v1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->notifyDataSetChanged()V

    .line 115
    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/citibikenyc/citibike/interfaces/ActionListener;)V
    .locals 0
    .parameter "actionListener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/citibikenyc/citibike/StationsFragment;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 85
    return-void
.end method

.method public setPlaces(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/citibikenyc/citibike/models/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, nearbyPlaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/citibikenyc/citibike/models/Place;>;"
    iput-object p1, p0, Lcom/citibikenyc/citibike/StationsFragment;->mNearbyPlaces:Ljava/util/List;

    .line 89
    return-void
.end method
