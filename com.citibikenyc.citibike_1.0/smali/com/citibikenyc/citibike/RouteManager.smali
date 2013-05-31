.class public Lcom/citibikenyc/citibike/RouteManager;
.super Ljava/lang/Object;
.source "RouteManager.java"

# interfaces
.implements Lcom/citibikenyc/citibike/interfaces/RouteListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "RouteManager"


# instance fields
.field public currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

.field mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

.field mActivity:Landroid/app/Activity;

.field mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

.field mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

.field private mModeView:Landroid/widget/TextView;

.field mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;


# direct methods
.method public constructor <init>(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/helpers/MapHelper;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;Landroid/app/Activity;)V
    .locals 1
    .parameter "mapPlaceManager"
    .parameter "mapHelper"
    .parameter "placeDataProvider"
    .parameter "activity"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    .line 44
    iput-object p3, p0, Lcom/citibikenyc/citibike/RouteManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    .line 45
    iput-object p1, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 46
    iput-object p2, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 47
    iput-object p4, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    .line 48
    check-cast p4, Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .end local p4
    iput-object p4, p0, Lcom/citibikenyc/citibike/RouteManager;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    .line 49
    return-void
.end method

.method private getHideableRouteViews(Landroid/view/View;)[Landroid/view/View;
    .locals 6
    .parameter "parentView"

    .prologue
    .line 343
    const v5, 0x7f050085

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 344
    .local v3, reverseButton:Landroid/view/View;
    const v5, 0x7f050080

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 345
    .local v4, startLabel:Landroid/view/View;
    const v5, 0x7f050082

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 346
    .local v0, endLabel:Landroid/view/View;
    const v5, 0x7f050086

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 347
    .local v1, listView:Landroid/view/View;
    const/4 v5, 0x4

    new-array v2, v5, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v5, 0x1

    aput-object v0, v2, v5

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v5, 0x3

    aput-object v1, v2, v5

    .line 348
    .local v2, results:[Landroid/view/View;
    return-object v2
.end method

.method private getShowableRouteViews(Landroid/view/View;)[Landroid/view/View;
    .locals 3
    .parameter "parentView"

    .prologue
    .line 352
    const v2, 0x7f050084

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 353
    .local v1, routeButton:Landroid/view/View;
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 354
    .local v0, results:[Landroid/view/View;
    return-object v0
.end method

.method private openRouteScreen(Lcom/citibikenyc/citibike/models/Place;Lcom/citibikenyc/citibike/models/Place;)V
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v8, 0x4

    .line 195
    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const v6, 0x7f05007f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 198
    .local v3, mapRoute:Landroid/view/View;
    const v5, 0x7f050086

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 199
    .local v1, directionsList:Landroid/widget/ListView;
    new-instance v0, Lcom/citibikenyc/citibike/models/Place;

    const-string v5, "Current Location"

    const-string v6, ""

    iget-object v7, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v7}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getCurrentLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 201
    .local v0, current:Lcom/citibikenyc/citibike/models/Place;
    const v5, 0x7f050081

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 202
    .local v4, startAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    const v5, 0x7f050083

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 204
    .local v2, endAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    if-nez p1, :cond_0

    .line 205
    invoke-virtual {v4, v0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    .line 210
    :goto_0
    if-nez p2, :cond_1

    .line 211
    invoke-virtual {v2, v0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    .line 216
    :goto_1
    invoke-virtual {v4}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->dismissDropDown()V

    .line 217
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->dismissDropDown()V

    .line 219
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 222
    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/RouteManager;->setupRouteForm(Landroid/view/View;)V

    .line 225
    const v5, 0x7f050085

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 226
    const v5, 0x7f050084

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 228
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v5

    const-string v6, "map_routing"

    invoke-virtual {v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 229
    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v5}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->slideViewFromLeft(Landroid/view/View;Landroid/content/Context;)V

    .line 230
    return-void

    .line 207
    :cond_0
    invoke-virtual {v4, p1}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v2, p2}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelSearch()V
    .locals 5

    .prologue
    .line 359
    iget-object v3, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const v4, 0x7f05007f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 360
    .local v1, mapRoute:Landroid/view/View;
    const v3, 0x7f050081

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 361
    .local v2, startAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    const v3, 0x7f050083

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 363
    .local v0, endAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->clearFocus()V

    .line 364
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->clearFocus()V

    .line 365
    return-void
.end method

.method public clearRoute()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f050087

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, routeResultBar:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v1}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearRoute()V

    .line 99
    return-void
.end method

.method public closeRouteDirections()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 283
    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const v6, 0x7f05007f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 285
    .local v3, mapRoute:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/citibikenyc/citibike/RouteManager;->getHideableRouteViews(Landroid/view/View;)[Landroid/view/View;

    move-result-object v1

    .line 286
    .local v1, hideableViews:[Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/citibikenyc/citibike/RouteManager;->getShowableRouteViews(Landroid/view/View;)[Landroid/view/View;

    move-result-object v4

    .line 287
    .local v4, showableViews:[Landroid/view/View;
    invoke-static {v4, v7}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->updateVisibility([Landroid/view/View;I)V

    .line 288
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->updateVisibility([Landroid/view/View;I)V

    .line 290
    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 291
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, focusView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 294
    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 298
    :cond_0
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 299
    return-void
.end method

.method public onReroute(Z)V
    .locals 14
    .parameter "onBike"

    .prologue
    .line 234
    iget-object v11, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v11}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearRoute()V

    .line 236
    const-string v11, "RouteManager"

    const-string v12, "onReroute"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v11, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const v12, 0x7f05007f

    invoke-virtual {v11, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 238
    .local v8, mapRoute:Landroid/view/View;
    const v11, 0x7f050081

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 239
    .local v9, startAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    const v11, 0x7f050083

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 240
    .local v2, endAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    invoke-virtual {v9}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->getSelectedPlace()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v10

    .line 241
    .local v10, startPlace:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->getSelectedPlace()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v3

    .line 243
    .local v3, endPlace:Lcom/citibikenyc/citibike/models/Place;
    if-eqz v10, :cond_0

    iget-object v11, v10, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v11, :cond_0

    if-eqz v3, :cond_0

    iget-object v11, v3, Lcom/citibikenyc/citibike/models/Place;->point:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v11, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/RouteManager;->closeRouteDirections()V

    .line 246
    const-string v11, "RouteManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "onReroute from "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/citibikenyc/citibike/models/Place;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/models/Place;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v11, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const v12, 0x7f050045

    invoke-virtual {v11, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 249
    .local v7, loaderView:Landroid/view/View;
    const v11, 0x7f050046

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 250
    .local v6, loaderIcon:Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200b8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    const v11, 0x7f050047

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 253
    .local v5, loaderCopy:Landroid/widget/TextView;
    const-string v11, "Calculating"

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    new-instance v4, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;

    iget-object v11, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v11, v11, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-direct {v4, p0, v7, v11, p1}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;-><init>(Lcom/citibikenyc/citibike/interfaces/RouteListener;Landroid/view/View;Lcom/citibikenyc/citibike/PlaceDataManager;Z)V

    .line 256
    .local v4, getDirectionsTask:Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;
    const/4 v11, 0x2

    new-array v11, v11, [Lcom/citibikenyc/citibike/models/Place;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-virtual {v4, v11}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 280
    .end local v4           #getDirectionsTask:Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;
    .end local v5           #loaderCopy:Landroid/widget/TextView;
    .end local v6           #loaderIcon:Landroid/widget/ImageView;
    .end local v7           #loaderView:Landroid/view/View;
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string v11, "RouteManager"

    const-string v12, "Start and end places not set"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0a00d4

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 266
    const v11, 0x7f0a00d5

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 267
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 268
    const v12, 0x104000a

    new-instance v13, Lcom/citibikenyc/citibike/RouteManager$3;

    invoke-direct {v13, p0}, Lcom/citibikenyc/citibike/RouteManager$3;-><init>(Lcom/citibikenyc/citibike/RouteManager;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 278
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onRoute(Lcom/citibikenyc/citibike/models/RouteResult;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 53
    if-eqz p1, :cond_1

    .line 54
    const-string v4, "RouteManager"

    iget-object v5, p1, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object p1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    .line 56
    iget-object v4, p0, Lcom/citibikenyc/citibike/RouteManager;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/citibikenyc/citibike/interfaces/ActionListener;->closeDetails(Landroid/view/View;)V

    .line 58
    iget-object v4, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const v5, 0x7f050087

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, routeResultBar:Landroid/view/View;
    const v4, 0x7f050088

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 61
    .local v3, routeResultText:Landroid/widget/TextView;
    iget-object v4, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v4, :cond_0

    .line 62
    iget-object v4, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v4, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v4, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->renderRoute(Lcom/citibikenyc/citibike/models/RouteResult;)V

    .line 93
    .end local v2           #routeResultBar:Landroid/view/View;
    .end local v3           #routeResultText:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 64
    .restart local v2       #routeResultBar:Landroid/view/View;
    .restart local v3       #routeResultText:Landroid/widget/TextView;
    :cond_0
    iget-object v4, p1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    iget-object v4, v4, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    .end local v2           #routeResultBar:Landroid/view/View;
    .end local v3           #routeResultText:Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/RouteManager;->mActionListener:Lcom/citibikenyc/citibike/interfaces/ActionListener;

    invoke-interface {v4}, Lcom/citibikenyc/citibike/interfaces/ActionListener;->closeRoute()V

    .line 72
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a00a6

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 79
    const v4, 0x7f0a00a7

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 80
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 81
    const v5, 0x104000a

    new-instance v6, Lcom/citibikenyc/citibike/RouteManager$1;

    invoke-direct {v6, p0}, Lcom/citibikenyc/citibike/RouteManager$1;-><init>(Lcom/citibikenyc/citibike/RouteManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 91
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public reverseRoute(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 329
    const-string v4, "RouteManager"

    const-string v5, "reverseRoute"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v4, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const v5, 0x7f05007f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 332
    .local v1, mapRoute:Landroid/view/View;
    const v4, 0x7f050081

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 333
    .local v3, startAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    const v4, 0x7f050083

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 335
    .local v0, endAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->getSelectedPlace()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v2

    .line 336
    .local v2, oldEndAddress:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {v3}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->getSelectedPlace()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    .line 337
    invoke-virtual {v3, v2}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    .line 339
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/RouteManager;->onReroute(Z)V

    .line 340
    return-void
.end method

.method public routeFromMarker()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "RouteManager"

    const-string v1, "routeFromMarker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/citibikenyc/citibike/RouteManager;->openRouteScreen(Lcom/citibikenyc/citibike/models/Place;Lcom/citibikenyc/citibike/models/Place;)V

    .line 191
    return-void
.end method

.method public routeToMarker()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 171
    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v5}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getCurrentLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 172
    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const v6, 0x7f050045

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 173
    .local v4, loaderView:Landroid/view/View;
    const v5, 0x7f050046

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 174
    .local v3, loaderIcon:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    const v5, 0x7f050047

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 177
    .local v2, loaderCopy:Landroid/widget/TextView;
    const-string v5, "Calculating"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    new-instance v0, Lcom/citibikenyc/citibike/models/Place;

    const-string v5, "Current Location"

    const-string v6, ""

    iget-object v7, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v7}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getCurrentLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    const/4 v8, 0x4

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 180
    .local v0, current:Lcom/citibikenyc/citibike/models/Place;
    new-instance v1, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;

    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v5, v5, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-direct {v1, p0, v4, v5, v9}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;-><init>(Lcom/citibikenyc/citibike/interfaces/RouteListener;Landroid/view/View;Lcom/citibikenyc/citibike/PlaceDataManager;Z)V

    .line 181
    .local v1, getDirectionsTask:Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/citibikenyc/citibike/models/Place;

    aput-object v0, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v7}, Lcom/citibikenyc/citibike/MapPlaceManager;->getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    .end local v0           #current:Lcom/citibikenyc/citibike/models/Place;
    .end local v1           #getDirectionsTask:Lcom/citibikenyc/citibike/tasks/GetDirectionsTask;
    .end local v2           #loaderCopy:Landroid/widget/TextView;
    .end local v3           #loaderIcon:Landroid/widget/ImageView;
    .end local v4           #loaderView:Landroid/view/View;
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v5, "RouteManager"

    const-string v6, "No current location found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v6}, Lcom/citibikenyc/citibike/MapPlaceManager;->getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/citibikenyc/citibike/RouteManager;->openRouteScreen(Lcom/citibikenyc/citibike/models/Place;Lcom/citibikenyc/citibike/models/Place;)V

    goto :goto_0
.end method

.method public setupRouteForm(Landroid/view/View;)V
    .locals 13
    .parameter "mapRoute"

    .prologue
    const v12, 0x7f03003f

    const/4 v11, 0x4

    .line 303
    const v8, 0x7f050081

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 304
    .local v7, startAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    const v8, 0x7f050083

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 306
    .local v1, endAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    new-instance v0, Lcom/citibikenyc/citibike/models/Place;

    const-string v8, "Current Location"

    const-string v9, ""

    iget-object v10, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v10}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getCurrentLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/citibikenyc/citibike/models/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 307
    .local v0, current:Lcom/citibikenyc/citibike/models/Place;
    new-instance v4, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v8, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v8, v12, v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;-><init>(Landroid/content/Context;ILcom/citibikenyc/citibike/models/Place;)V

    .line 308
    .local v4, locationAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;
    new-instance v2, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v8, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v8, v12, v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;-><init>(Landroid/content/Context;ILcom/citibikenyc/citibike/models/Place;)V

    .line 310
    .local v2, endLocationAdapter:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;
    iget-object v8, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    iget-object v9, p0, Lcom/citibikenyc/citibike/RouteManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-virtual {v7, v8, v9, v4, v2}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setAdapterAfterTouch(Lcom/citibikenyc/citibike/helpers/MapHelper;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)V

    .line 311
    iget-object v8, p0, Lcom/citibikenyc/citibike/RouteManager;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    iget-object v9, p0, Lcom/citibikenyc/citibike/RouteManager;->mPlaceDataProvider:Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;

    invoke-virtual {v1, v8, v9, v2, v4}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setAdapterAfterTouch(Lcom/citibikenyc/citibike/helpers/MapHelper;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)V

    .line 313
    const v8, 0x7f050085

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 314
    .local v5, reverseButton:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 316
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/RouteManager;->getHideableRouteViews(Landroid/view/View;)[Landroid/view/View;

    move-result-object v3

    .line 317
    .local v3, hideableViews:[Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/RouteManager;->getShowableRouteViews(Landroid/view/View;)[Landroid/view/View;

    move-result-object v6

    .line 318
    .local v6, showableViews:[Landroid/view/View;
    invoke-virtual {v7, v3, v6}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setCollapsableViews([Landroid/view/View;[Landroid/view/View;)V

    .line 319
    invoke-virtual {v1, v3, v6}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setCollapsableViews([Landroid/view/View;[Landroid/view/View;)V

    .line 321
    iget-object v8, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v8, v8, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    if-nez v8, :cond_1

    .line 323
    :cond_0
    const v8, 0x7f050086

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :cond_1
    return-void
.end method

.method public showDirections()V
    .locals 12

    .prologue
    .line 103
    const-string v1, "RouteManager"

    const-string v2, "onRoutebarClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f05007f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 105
    .local v9, mapRoute:Landroid/view/View;
    const v1, 0x7f050086

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 107
    .local v6, directionsList:Landroid/widget/ListView;
    new-instance v1, Lcom/citibikenyc/citibike/RouteManager$2;

    invoke-direct {v1, p0, v9}, Lcom/citibikenyc/citibike/RouteManager$2;-><init>(Lcom/citibikenyc/citibike/RouteManager;Landroid/view/View;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    const v1, 0x7f050081

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 126
    .local v10, startAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    const v1, 0x7f050083

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;

    .line 128
    .local v7, endAddress:Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;,"Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView<Lcom/citibikenyc/citibike/models/Place;>;"
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v1, v1, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v1, v1, Lcom/citibikenyc/citibike/models/RouteResult;->startPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v10, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    .line 134
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v1, v1, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v1, :cond_4

    .line 135
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v1, v1, Lcom/citibikenyc/citibike/models/RouteResult;->endPlace:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v7, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    .line 140
    :cond_1
    :goto_1
    invoke-virtual {v10}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->dismissDropDown()V

    .line 141
    invoke-virtual {v7}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->dismissDropDown()V

    .line 143
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v1, v1, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 144
    new-instance v0, Lcom/citibikenyc/citibike/helpers/RouteAdapter;

    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    .line 145
    const v2, 0x7f03001c

    iget-object v3, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v3, v3, Lcom/citibikenyc/citibike/models/RouteResult;->steps:Ljava/util/List;

    iget-object v4, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 146
    iget-object v5, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f0200c9

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 144
    invoke-direct/range {v0 .. v5}, Lcom/citibikenyc/citibike/helpers/RouteAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 148
    .local v0, nearbyAdapter:Lcom/citibikenyc/citibike/helpers/RouteAdapter;
    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 150
    .local v8, headerView:Landroid/view/View;
    const v1, 0x7f05004e

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->mModeView:Landroid/widget/TextView;

    .line 151
    invoke-virtual {v6, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 154
    .end local v8           #headerView:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-boolean v1, v1, Lcom/citibikenyc/citibike/models/RouteResult;->mOnBike:Z

    if-eqz v1, :cond_5

    .line 155
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->mModeView:Landroid/widget/TextView;

    const v2, 0x7f0a00d2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 160
    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    .end local v0           #nearbyAdapter:Lcom/citibikenyc/citibike/helpers/RouteAdapter;
    :goto_3
    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/RouteManager;->setupRouteForm(Landroid/view/View;)V

    .line 166
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "map_routing"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->mActivity:Landroid/app/Activity;

    invoke-static {v9, v1}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->slideViewFromLeft(Landroid/view/View;Landroid/content/Context;)V

    .line 168
    return-void

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v1, v1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v1, v1, Lcom/citibikenyc/citibike/models/RouteResult;->startStation:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v10, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    goto/16 :goto_0

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v1, v1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-object v1, v1, Lcom/citibikenyc/citibike/models/RouteResult;->endStation:Lcom/citibikenyc/citibike/models/Place;

    invoke-virtual {v7, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAutoCompleteTextView;->setPlace(Lcom/citibikenyc/citibike/models/Place;)V

    goto/16 :goto_1

    .line 157
    .restart local v0       #nearbyAdapter:Lcom/citibikenyc/citibike/helpers/RouteAdapter;
    :cond_5
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager;->mModeView:Landroid/widget/TextView;

    const v2, 0x7f0a00d1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 162
    .end local v0           #nearbyAdapter:Lcom/citibikenyc/citibike/helpers/RouteAdapter;
    :cond_6
    const-string v1, "RouteManager"

    const-string v2, "currentRoute is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
