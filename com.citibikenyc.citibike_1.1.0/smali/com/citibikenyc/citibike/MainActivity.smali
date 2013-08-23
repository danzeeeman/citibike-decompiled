.class public Lcom/citibikenyc/citibike/MainActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/citibikenyc/citibike/interfaces/ActionListener;
.implements Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/MainActivity$CitiState;
    }
.end annotation


# static fields
.field public static final SHOW_TIMER:Ljava/lang/String; = "SHOW_TIMER"

.field protected static final TAG:Ljava/lang/String; = "CitiBike"


# instance fields
.field bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

.field private favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

.field private gMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mActionBarSearchItem:Lcom/actionbarsherlock/view/MenuItem;

.field private mCurrentFragmentIndex:I

.field private mFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mMapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

.field private mTapDetector:Lcom/citibikenyc/citibike/interfaces/TapDetector;

.field private mTapListener:Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;

.field private mapButtonClear:Landroid/widget/ImageButton;

.field private mapButtonLocation:Landroid/widget/ImageButton;

.field private mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

.field private mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

.field private menu:Lcom/slidingmenu/lib/SlidingMenu;

.field private menuFragment:Lcom/citibikenyc/citibike/MainMenuFragment;

.field private newFragment:Landroid/support/v4/app/Fragment;

.field placeDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

.field routeManager:Lcom/citibikenyc/citibike/RouteManager;

.field searchEventReceiver:Lcom/citibikenyc/citibike/SearchEventReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mFragments:Landroid/util/SparseArray;

    .line 89
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 90
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 91
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 92
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 94
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    .line 101
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    .line 1183
    new-instance v0, Lcom/citibikenyc/citibike/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/MainActivity$1;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mMapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    .line 1194
    new-instance v0, Lcom/citibikenyc/citibike/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/MainActivity$2;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mTapListener:Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/MainActivity;)Lcom/citibikenyc/citibike/MapPlaceManager;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/MainActivity;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mActionBarSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2(Lcom/citibikenyc/citibike/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->handleHomeSingleTap()V

    return-void
.end method

.method static synthetic access$3(Lcom/citibikenyc/citibike/MainActivity;)Lcom/citibikenyc/citibike/MainMenuFragment;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menuFragment:Lcom/citibikenyc/citibike/MainMenuFragment;

    return-object v0
.end method

.method static synthetic access$4(Lcom/citibikenyc/citibike/MainActivity;)Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method private clearStack()V
    .locals 8

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 711
    .local v3, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 715
    .local v1, count:I
    if-lez v1, :cond_4

    .line 717
    add-int/lit8 v5, v1, -0x1

    .local v5, i:I
    :goto_0
    if-gez v5, :cond_2

    .line 735
    .end local v5           #i:I
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    instance-of v6, v6, Lcom/citibikenyc/citibike/FavoritesFragment;

    if-eqz v6, :cond_1

    .line 736
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v2, Lcom/citibikenyc/citibike/FavoritesFragment;

    .line 738
    .local v2, f:Lcom/citibikenyc/citibike/FavoritesFragment;
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/FavoritesFragment;->hasMarkedPlaceForDeletion()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 739
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/FavoritesFragment;->clearPlaceForDeletion()V

    .line 742
    .end local v2           #f:Lcom/citibikenyc/citibike/FavoritesFragment;
    :cond_1
    return-void

    .line 718
    .restart local v5       #i:I
    :cond_2
    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 719
    .local v0, backStackEntry:Landroid/support/v4/app/FragmentManager$BackStackEntry;
    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 722
    .local v4, fragment:Landroid/support/v4/app/Fragment;
    const-class v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    check-cast v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    invoke-interface {v6}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->showingSubview()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 723
    check-cast v4, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    .end local v4           #fragment:Landroid/support/v4/app/Fragment;
    invoke-interface {v4}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->closeSubview()V

    .line 726
    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 717
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 730
    .end local v0           #backStackEntry:Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .end local v5           #i:I
    :cond_4
    const-class v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    iget-object v7, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    invoke-interface {v6}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->showingSubview()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 731
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    invoke-interface {v6}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->closeSubview()V

    goto :goto_1
.end method

.method private customTabTextView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 757
    new-instance v0, Lcom/citibikenyc/citibike/helpers/FontableTextView;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/helpers/FontableTextView;-><init>(Landroid/content/Context;)V

    .line 758
    .local v0, txtTab:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    const/4 v1, 0x5

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 760
    const/4 v1, 0x2

    const/high16 v2, 0x4140

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 761
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 762
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 763
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 764
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 765
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 767
    return-object v0
.end method

.method private getAppender(Lcom/citibikenyc/citibike/models/Place;)Ljava/lang/String;
    .locals 1
    .parameter "place"

    .prologue
    .line 878
    iget v0, p1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    packed-switch v0, :pswitch_data_0

    .line 886
    const-string v0, ""

    :goto_0
    return-object v0

    .line 880
    :pswitch_0
    const-string v0, "coffee_"

    goto :goto_0

    .line 883
    :pswitch_1
    const-string v0, "restaurant_"

    goto :goto_0

    .line 878
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 311
    new-instance v0, Lcom/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, slidingMenu:Lcom/slidingmenu/lib/SlidingMenu;
    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 313
    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 315
    const/high16 v1, 0x428c

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 314
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 317
    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 319
    const/high16 v1, 0x4260

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 318
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 320
    const v1, 0x3eb33333

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 321
    invoke-virtual {v0, p0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 322
    const v1, 0x7f030019

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 323
    return-object v0
.end method

.method private handleHomeSingleTap()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 608
    :goto_0
    return-void

    .line 602
    :cond_0
    iget v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mCurrentFragmentIndex:I

    const v1, 0x7f050093

    if-ne v0, v1, :cond_1

    .line 603
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->cancelSearch()V

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu()V

    goto :goto_0
.end method

.method private onEnableActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 357
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 359
    .local v0, actionBar:Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 360
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 361
    return-void
.end method

.method private setTabsBackground(Landroid/widget/TabHost;)V
    .locals 6
    .parameter "tabHost"

    .prologue
    const/4 v5, 0x0

    .line 772
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 773
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 781
    return-void

    .line 774
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 775
    .local v3, v:Landroid/view/View;
    const v4, 0x7f020111

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 777
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 779
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setTextToCenter(Landroid/widget/TabHost;)V
    .locals 7
    .parameter "tabHost"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 844
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 845
    .local v1, tabCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 859
    return-void

    .line 846
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 847
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_3

    .line 848
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 849
    .local v2, textView:Landroid/view/View;
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 850
    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 851
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    move-object v4, v2

    .line 852
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 854
    :cond_1
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #textView:Landroid/view/View;
    const/4 v4, 0x2

    const/high16 v5, 0x4140

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 856
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 845
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setupAutoComplete(Lcom/actionbarsherlock/view/MenuItem;Landroid/widget/ListView;)V
    .locals 10
    .parameter "searchItem"
    .parameter "searchListView"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/citibikenyc/citibike/MainActivity;->mActionBarSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 366
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/actionbarsherlock/widget/SearchView;

    .line 367
    .local v9, actionBarSearchView:Lcom/actionbarsherlock/widget/SearchView;
    new-instance v0, Lcom/citibikenyc/citibike/SearchEventReceiver;

    .line 368
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 369
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->placeDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v7, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/citibikenyc/citibike/SearchEventReceiver;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/view/MenuItem;Landroid/widget/ListView;Lcom/slidingmenu/lib/SlidingMenu;Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;Lcom/citibikenyc/citibike/helpers/MapHelper;Lcom/citibikenyc/citibike/interfaces/ActionListener;)V

    .line 367
    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->searchEventReceiver:Lcom/citibikenyc/citibike/SearchEventReceiver;

    .line 370
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->searchEventReceiver:Lcom/citibikenyc/citibike/SearchEventReceiver;

    invoke-virtual {v9, v0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 371
    return-void
.end method

.method private showIntro()Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 205
    const-string v4, "TERMS_PREFS"

    invoke-virtual {p0, v4, v3}, Lcom/citibikenyc/citibike/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 206
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v4, "TERMS_DATE"

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 208
    .local v1, termsDate:J
    cmp-long v4, v1, v5

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method


# virtual methods
.method public addFragment(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter "fragmentIndex"

    .prologue
    .line 534
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->mFragments:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->mFragments:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 572
    :goto_0
    return-object v2

    .line 538
    :cond_0
    const/4 v1, 0x0

    .line 539
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    sparse-switch p1, :sswitch_data_0

    .line 571
    :goto_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->mFragments:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v1

    .line 572
    goto :goto_0

    .line 541
    :sswitch_0
    new-instance v1, Lcom/citibikenyc/citibike/StationsFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/StationsFragment;-><init>()V

    .line 542
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 544
    :sswitch_1
    new-instance v1, Lcom/citibikenyc/citibike/TimerFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/TimerFragment;-><init>()V

    .line 545
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 547
    :sswitch_2
    new-instance v1, Lcom/citibikenyc/citibike/FavoritesFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/FavoritesFragment;-><init>()V

    .line 548
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 550
    :sswitch_3
    new-instance v1, Lcom/citibikenyc/citibike/ContactFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/ContactFragment;-><init>()V

    .line 551
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 553
    :sswitch_4
    new-instance v1, Lcom/citibikenyc/citibike/MorePagerFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/MorePagerFragment;-><init>()V

    .line 556
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 558
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "TITLE_RESOURCE_ID"

    const v3, 0x7f0a00b7

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 562
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_5
    new-instance v1, Lcom/citibikenyc/citibike/MoreListFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/MoreListFragment;-><init>()V

    .line 563
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 565
    :sswitch_6
    new-instance v1, Lcom/citibikenyc/citibike/LayersFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/LayersFragment;-><init>()V

    .line 566
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 568
    :sswitch_7
    new-instance v1, Lcom/citibikenyc/citibike/SettingsFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/SettingsFragment;-><init>()V

    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 539
    :sswitch_data_0
    .sparse-switch
        0x7f05003e -> :sswitch_6
        0x7f050094 -> :sswitch_0
        0x7f050095 -> :sswitch_1
        0x7f050096 -> :sswitch_2
        0x7f050097 -> :sswitch_3
        0x7f050098 -> :sswitch_4
        0x7f050099 -> :sswitch_7
        0x7f05009a -> :sswitch_5
    .end sparse-switch
.end method

.method public callLocation(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const-wide/16 v8, 0x0

    .line 910
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 911
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/MapPlaceManager;->getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v0

    .line 912
    .local v0, currentPlace:Lcom/citibikenyc/citibike/models/Place;
    iget-object v2, v0, Lcom/citibikenyc/citibike/models/Place;->phone:Ljava/lang/String;

    .line 913
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 914
    const/4 v4, 0x7

    iget v5, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v4, v5, :cond_2

    .line 915
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "map_main"

    const-string v6, "map_coffee_call_cta"

    const-string v7, "Execute"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 919
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, uri:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 921
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 922
    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 928
    .end local v0           #currentPlace:Lcom/citibikenyc/citibike/models/Place;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #number:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 916
    .restart local v0       #currentPlace:Lcom/citibikenyc/citibike/models/Place;
    .restart local v2       #number:Ljava/lang/String;
    :cond_2
    const/16 v4, 0x8

    iget v5, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v4, v5, :cond_0

    .line 917
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "map_main"

    const-string v6, "map_restaurants_call_cta"

    const-string v7, "Execute"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 925
    .end local v0           #currentPlace:Lcom/citibikenyc/citibike/models/Place;
    .end local v2           #number:Ljava/lang/String;
    :cond_3
    const-string v4, "No Calling feature"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public clearRoute(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->closeRoute()V

    .line 1039
    return-void
.end method

.method public closeDetails(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 892
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f05007c

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 893
    .local v0, mapFragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 894
    .local v1, mapView:Landroid/view/View;
    invoke-virtual {v1, v6, v6}, Landroid/view/View;->scrollTo(II)V

    .line 897
    const v4, 0x1020012

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    .line 898
    .local v3, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 901
    const v4, 0x7f050041

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 902
    .local v2, scrollView:Landroid/widget/ScrollView;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 903
    invoke-virtual {v2, v6, v6}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 905
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/MapPlaceManager;->resetCurrentMarker()V

    .line 906
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearDetail()V

    .line 907
    return-void
.end method

.method public closeLayers(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->isShowingRoute()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->isShowingDetail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearDetailWithoutAnimation()V

    .line 1095
    :cond_0
    const v0, 0x7f050093

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 1096
    return-void
.end method

.method public closeRoute()V
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonClear:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonLocation:Landroid/widget/ImageButton;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1071
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->clearRoute()V

    .line 1072
    return-void
.end method

.method public disableIntroMode()V
    .locals 2

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->onEnableActionBar()V

    .line 214
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->supportInvalidateOptionsMenu()V

    .line 218
    return-void
.end method

.method public enableThreedMode(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 745
    if-nez p1, :cond_0

    .line 746
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 747
    .local v1, oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v2, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget v3, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/4 v4, 0x0

    iget v5, v1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    .line 748
    .local v0, newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 751
    .end local v0           #newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v1           #oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 752
    return-void
.end method

.method public favoriteLocation(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 939
    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v0

    .line 941
    .local v0, currentPlace:Lcom/citibikenyc/citibike/models/Place;
    const/4 v5, 0x7

    iget v6, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v5, v6, :cond_1

    .line 942
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v5

    const-string v6, "map_main"

    const-string v7, "map_coffee_favorite_cta"

    const-string v8, "Execute"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 947
    :cond_0
    :goto_0
    const v5, 0x7f0a0027

    invoke-virtual {p0, v5}, Lcom/citibikenyc/citibike/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 948
    const v5, 0x7f0a0041

    const v6, 0x7f0a0042

    invoke-static {p0, v5, v6}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->showAlert(Landroid/app/Activity;II)V

    .line 983
    .end local p1
    :goto_1
    return-void

    .line 943
    .restart local p1
    :cond_1
    const/16 v5, 0x8

    iget v6, v0, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v5, v6, :cond_0

    .line 944
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v5

    const-string v6, "map_main"

    const-string v7, "map_restaurants_favorite_cta"

    const-string v8, "Execute"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 950
    :cond_2
    const v5, 0x7f050045

    invoke-virtual {p0, v5}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 951
    .local v4, loaderView:Landroid/view/View;
    const v5, 0x7f050046

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 952
    .local v3, loaderIcon:Landroid/widget/ImageView;
    const v5, 0x7f050047

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 953
    .local v2, loaderCopy:Landroid/widget/TextView;
    const/high16 v5, 0x7f04

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 954
    .local v1, fadeInAnimation:Landroid/view/animation/Animation;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 956
    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    invoke-interface {v5, v0}, Lcom/citibikenyc/citibike/interfaces/FavoriteListener;->isFavorite(Lcom/citibikenyc/citibike/models/Place;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 957
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 958
    const-string v5, "Favorited"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    invoke-interface {v5, v0}, Lcom/citibikenyc/citibike/interfaces/FavoriteListener;->addFavorite(Lcom/citibikenyc/citibike/models/Place;)J

    .line 962
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/citibikenyc/citibike/MainActivity$9;

    invoke-direct {v6, p0, v4}, Lcom/citibikenyc/citibike/MainActivity$9;-><init>(Lcom/citibikenyc/citibike/MainActivity;Landroid/view/View;)V

    .line 967
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x2

    mul-long/2addr v7, v9

    .line 962
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 969
    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 970
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v5, p1

    .line 972
    check-cast v5, Landroid/widget/Button;

    const-string v6, "Favorited"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 973
    check-cast p1, Landroid/widget/Button;

    .line 974
    .end local p1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 973
    invoke-virtual {p1, v5, v11, v11, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 976
    .restart local p1
    :cond_3
    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    invoke-interface {v5, v0}, Lcom/citibikenyc/citibike/interfaces/FavoriteListener;->removeFavorite(Lcom/citibikenyc/citibike/models/Place;)Z

    move-object v5, p1

    .line 978
    check-cast v5, Landroid/widget/Button;

    const-string v6, "Favorite"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 979
    check-cast p1, Landroid/widget/Button;

    .line 980
    .end local p1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020084

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 979
    invoke-virtual {p1, v5, v11, v11, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public getActionListener()Lcom/citibikenyc/citibike/interfaces/ActionListener;
    .locals 0

    .prologue
    .line 1171
    return-object p0
.end method

.method public getBikeTimerListener()Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    if-nez v0, :cond_0

    .line 1176
    new-instance v0, Lcom/citibikenyc/citibike/BikeTimer;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/citibikenyc/citibike/BikeTimer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    .line 1177
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    invoke-virtual {v0, p0}, Lcom/citibikenyc/citibike/BikeTimer;->addUpdateListener(Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;)V

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    return-object v0
.end method

.method public getFavoriteListener()Lcom/citibikenyc/citibike/interfaces/FavoriteListener;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    return-object v0
.end method

.method public getMapHelper()Lcom/citibikenyc/citibike/helpers/MapHelper;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    return-object v0
.end method

.method public getMapPlaceManager()Lcom/citibikenyc/citibike/MapPlaceManager;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    return-object v0
.end method

.method public getPlaceDataProvider()Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v0, v0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    return-object v0
.end method

.method public initMap(Lcom/google/android/gms/maps/SupportMapFragment;)V
    .locals 13
    .parameter "mapFragment"

    .prologue
    const/4 v12, 0x0

    .line 380
    const v0, 0x7f05007c

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 382
    .local v9, mapView:Landroid/view/View;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 383
    check-cast v9, Landroid/view/ViewGroup;

    .end local v9           #mapView:Landroid/view/View;
    invoke-static {v9}, Lcom/citibikenyc/citibike/helpers/MapHelper;->setTransparent(Landroid/view/ViewGroup;)V

    .line 386
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0, p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->getMapHelper(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)Lcom/citibikenyc/citibike/helpers/MapHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 391
    new-instance v0, Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/PlaceDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->placeDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 392
    new-instance v0, Lcom/citibikenyc/citibike/FavoritesManager;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->placeDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-direct {v0, v1, v4}, Lcom/citibikenyc/citibike/FavoritesManager;-><init>(Landroid/content/Context;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 394
    const v0, 0x7f050041

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 395
    .local v2, mapOverlay:Landroid/view/View;
    const v0, 0x7f05003d

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 397
    .local v3, buttonLayout:Landroid/view/View;
    new-instance v0, Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 398
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->placeDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v7, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/citibikenyc/citibike/MapPlaceManager;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/GoogleMap;Lcom/citibikenyc/citibike/PlaceDataManager;Lcom/citibikenyc/citibike/interfaces/FavoriteListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;)V

    .line 397
    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 399
    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->setTabHost(Landroid/widget/TabHost;)V

    .line 400
    new-instance v0, Lcom/citibikenyc/citibike/RouteManager;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v5, v5, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-direct {v0, v1, v4, v5, p0}, Lcom/citibikenyc/citibike/RouteManager;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/helpers/MapHelper;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    .line 403
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v0, p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->showStartView(Landroid/app/Activity;)V

    .line 406
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 407
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 408
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mMapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 414
    const-string v0, "SETTINGS_PREFS"

    invoke-virtual {p0, v0, v12}, Lcom/citibikenyc/citibike/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 415
    .local v10, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v0, "THREED_MODE_ON"

    sget-boolean v1, Lcom/citibikenyc/citibike/SettingsFragment;->THREED_ON:Z

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 416
    .local v11, threedOn:Z
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 418
    return-void
.end method

.method public moveToCurrentLocation(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->moveToCurrentLocation()Z

    .line 1035
    return-void
.end method

.method public navigateBack()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 644
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->searchEventReceiver:Lcom/citibikenyc/citibike/SearchEventReceiver;

    if-eqz v6, :cond_0

    .line 645
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->searchEventReceiver:Lcom/citibikenyc/citibike/SearchEventReceiver;

    invoke-virtual {v6}, Lcom/citibikenyc/citibike/SearchEventReceiver;->clearResults()V

    .line 649
    :cond_0
    const v6, 0x7f050088

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 651
    .local v5, mapRoute:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 652
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v6}, Lcom/citibikenyc/citibike/RouteManager;->closeRouteDirections()V

    move v6, v7

    .line 706
    :goto_0
    return v6

    .line 654
    :cond_1
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v6}, Lcom/citibikenyc/citibike/MapPlaceManager;->isShowingRoute()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 655
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->closeRoute()V

    move v6, v7

    .line 656
    goto :goto_0

    .line 657
    :cond_2
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v6}, Lcom/citibikenyc/citibike/MapPlaceManager;->isShowingDetail()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 658
    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->closeDetails(Landroid/view/View;)V

    move v6, v7

    .line 659
    goto :goto_0

    .line 660
    :cond_3
    iget v6, p0, Lcom/citibikenyc/citibike/MainActivity;->mCurrentFragmentIndex:I

    const v8, 0x7f05003e

    if-ne v6, v8, :cond_4

    .line 661
    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->closeLayers(Landroid/view/View;)V

    move v6, v7

    .line 662
    goto :goto_0

    .line 666
    :cond_4
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    instance-of v6, v6, Lcom/citibikenyc/citibike/FavoritesFragment;

    if-eqz v6, :cond_5

    .line 667
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v2, Lcom/citibikenyc/citibike/FavoritesFragment;

    .line 669
    .local v2, f:Lcom/citibikenyc/citibike/FavoritesFragment;
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/FavoritesFragment;->hasMarkedPlaceForDeletion()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 670
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/FavoritesFragment;->clearPlaceForDeletion()V

    move v6, v7

    .line 672
    goto :goto_0

    .line 677
    .end local v2           #f:Lcom/citibikenyc/citibike/FavoritesFragment;
    :cond_5
    const-class v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    iget-object v8, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    invoke-interface {v6}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->showingSubview()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 678
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    invoke-interface {v6}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->closeSubview()V

    move v6, v7

    .line 679
    goto :goto_0

    .line 683
    :cond_6
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 684
    .local v3, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 686
    .local v1, count:I
    if-lez v1, :cond_8

    .line 687
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 688
    .local v0, backStackEntry:Landroid/support/v4/app/FragmentManager$BackStackEntry;
    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 690
    .local v4, fragment:Landroid/support/v4/app/Fragment;
    const-class v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v4

    check-cast v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    invoke-interface {v6}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->showingSubview()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 691
    check-cast v4, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    .end local v4           #fragment:Landroid/support/v4/app/Fragment;
    invoke-interface {v4}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->closeSubview()V

    :goto_1
    move v6, v7

    .line 696
    goto/16 :goto_0

    .line 693
    .restart local v4       #fragment:Landroid/support/v4/app/Fragment;
    :cond_7
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_1

    .line 700
    .end local v0           #backStackEntry:Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .end local v4           #fragment:Landroid/support/v4/app/Fragment;
    :cond_8
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v6}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v6

    if-nez v6, :cond_9

    .line 701
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v6}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu()V

    move v6, v7

    .line 702
    goto/16 :goto_0

    .line 706
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onAttachedToWindow()V

    .line 237
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 238
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 612
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->isSlidingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->navigateBack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 613
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 616
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a003b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 620
    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 621
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 622
    const v3, 0x7f0a003a

    new-instance v4, Lcom/citibikenyc/citibike/MainActivity$6;

    invoke-direct {v4, p0}, Lcom/citibikenyc/citibike/MainActivity$6;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 627
    const/high16 v3, 0x104

    new-instance v4, Lcom/citibikenyc/citibike/MainActivity$7;

    invoke-direct {v4, p0}, Lcom/citibikenyc/citibike/MainActivity$7;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 634
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 637
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 639
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method

.method public onBikeSmart(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1005
    const-string v1, "http://www.nyc.gov/html/dot/downloads/pdf/dot_bikesmart_brochure.pdf"

    .line 1006
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v0, i:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1009
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1010
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f050043

    const v11, 0x7f05003c

    const/4 v12, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->onCreateActionBar()V

    .line 120
    const v9, 0x7f030018

    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->setContentView(I)V

    .line 123
    invoke-virtual {p0, v11}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 125
    .local v3, bkg:Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    const v9, 0xe6e7ea

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 130
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 135
    const v10, 0x7f0a003d

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 136
    const v10, 0x7f0a003e

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 137
    const v10, 0x104000a

    new-instance v11, Lcom/citibikenyc/citibike/MainActivity$3;

    invoke-direct {v11, p0}, Lcom/citibikenyc/citibike/MainActivity$3;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 147
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 202
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    new-instance v9, Lcom/citibikenyc/citibike/interfaces/TapDetector;

    iget-object v10, p0, Lcom/citibikenyc/citibike/MainActivity;->mTapListener:Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;

    invoke-direct {v9, p0, v10}, Lcom/citibikenyc/citibike/interfaces/TapDetector;-><init>(Landroid/content/Context;Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;)V

    iput-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->mTapDetector:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    .line 157
    invoke-virtual {p0, v11}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 158
    .local v7, main:Landroid/widget/FrameLayout;
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 159
    .local v6, layoutInflater:Landroid/view/LayoutInflater;
    const v9, 0x7f03002a

    invoke-virtual {v6, v9, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7, v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 162
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 163
    .local v4, fm:Landroid/support/v4/app/FragmentManager;
    const v9, 0x7f05007c

    invoke-virtual {v4, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 164
    .local v5, fragment:Landroid/support/v4/app/Fragment;
    check-cast v5, Lcom/google/android/gms/maps/SupportMapFragment;

    .end local v5           #fragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {p0, v5}, Lcom/citibikenyc/citibike/MainActivity;->initMap(Lcom/google/android/gms/maps/SupportMapFragment;)V

    .line 167
    const v9, 0x7f050040

    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonClear:Landroid/widget/ImageButton;

    .line 168
    const v9, 0x7f05003f

    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonLocation:Landroid/widget/ImageButton;

    .line 171
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v9

    iput-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    .line 172
    new-instance v9, Lcom/citibikenyc/citibike/MainMenuFragment;

    invoke-direct {v9}, Lcom/citibikenyc/citibike/MainMenuFragment;-><init>()V

    iput-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->menuFragment:Lcom/citibikenyc/citibike/MainMenuFragment;

    .line 173
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    .line 174
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 175
    const v10, 0x7f050048

    iget-object v11, p0, Lcom/citibikenyc/citibike/MainActivity;->menuFragment:Lcom/citibikenyc/citibike/MainMenuFragment;

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 176
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 178
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->onCreateDetailsView()V

    .line 179
    const v9, 0x7f050093

    iput v9, p0, Lcom/citibikenyc/citibike/MainActivity;->mCurrentFragmentIndex:I

    .line 182
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->showIntro()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 183
    iget-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v9, v12}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 186
    invoke-virtual {p0, v13}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 187
    .local v8, mainView:Landroid/view/View;
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 190
    new-instance v10, Lcom/citibikenyc/citibike/TermsFragment;

    invoke-direct {v10}, Lcom/citibikenyc/citibike/TermsFragment;-><init>()V

    const-string v11, "Terms"

    invoke-virtual {v9, v13, v10, v11}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 191
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 197
    .end local v8           #mainView:Landroid/view/View;
    :goto_1
    invoke-static {}, Lcom/citibikenyc/citibike/CitibikeApplication;->getInstance()Lcom/citibikenyc/citibike/CitibikeApplication;

    move-result-object v2

    .line 199
    .local v2, app:Lcom/citibikenyc/citibike/CitibikeApplication;
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/CitibikeApplication;->isOnline()Z

    move-result v9

    if-nez v9, :cond_0

    .line 200
    const v9, 0x7f0a003f

    const v10, 0x7f0a0040

    invoke-static {p0, v9, v10}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->showAlert(Landroid/app/Activity;II)V

    goto/16 :goto_0

    .line 194
    .end local v2           #app:Lcom/citibikenyc/citibike/CitibikeApplication;
    :cond_2
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->onEnableActionBar()V

    goto :goto_1
.end method

.method public onCreateActionBar()V
    .locals 5

    .prologue
    const v4, 0x7f02007f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    const v1, 0x7f0b0062

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/MainActivity;->setTheme(I)V

    .line 346
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 348
    .local v0, actionBar:Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 349
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(I)V

    .line 350
    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 351
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 352
    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 353
    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 354
    return-void
.end method

.method public onCreateDetailsView()V
    .locals 14

    .prologue
    const v13, 0x7f0a0047

    const v12, 0x7f0a0046

    const v11, 0x7f0a0045

    const/16 v10, 0xb

    .line 784
    const v8, 0x1020012

    invoke-virtual {p0, v8}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    .line 785
    .local v6, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 788
    const-string v8, "details"

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 789
    .local v0, detailsTab:Landroid/widget/TabHost$TabSpec;
    const-string v8, "nearby"

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 790
    .local v4, nearByTab:Landroid/widget/TabHost$TabSpec;
    const-string v8, "stops"

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 792
    .local v7, topStopsTab:Landroid/widget/TabHost$TabSpec;
    const v8, 0x7f05006d

    invoke-virtual {v0, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 793
    const v8, 0x7f050086

    invoke-virtual {v4, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 794
    const v8, 0x7f050087

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 797
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v10, :cond_0

    .line 799
    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    const v9, 0x7f02003c

    invoke-virtual {v8, v9}, Landroid/widget/TabWidget;->setDividerDrawable(I)V

    .line 802
    invoke-virtual {p0, v11}, Lcom/citibikenyc/citibike/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/citibikenyc/citibike/MainActivity;->customTabTextView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 803
    invoke-virtual {p0, v12}, Lcom/citibikenyc/citibike/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/citibikenyc/citibike/MainActivity;->customTabTextView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 804
    invoke-virtual {p0, v13}, Lcom/citibikenyc/citibike/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/citibikenyc/citibike/MainActivity;->customTabTextView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 811
    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 812
    invoke-virtual {v6, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 813
    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 814
    invoke-virtual {v6, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 816
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v10, :cond_1

    .line 817
    invoke-direct {p0, v6}, Lcom/citibikenyc/citibike/MainActivity;->setTabsBackground(Landroid/widget/TabHost;)V

    .line 823
    :goto_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    const v9, 0x7f05007c

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 824
    .local v1, mapFragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 825
    .local v2, mapView:Landroid/view/View;
    const/4 v8, 0x1

    const/high16 v9, 0x4316

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v3, v8

    .line 826
    .local v3, maxScroll:I
    const v8, 0x7f050041

    invoke-virtual {p0, v8}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 828
    .local v5, scrollView:Landroid/widget/ScrollView;
    new-instance v8, Lcom/citibikenyc/citibike/MainActivity$8;

    invoke-direct {v8, p0, v3, v2}, Lcom/citibikenyc/citibike/MainActivity$8;-><init>(Lcom/citibikenyc/citibike/MainActivity;ILandroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 840
    return-void

    .line 806
    .end local v1           #mapFragment:Landroid/support/v4/app/Fragment;
    .end local v2           #mapView:Landroid/view/View;
    .end local v3           #maxScroll:I
    .end local v5           #scrollView:Landroid/widget/ScrollView;
    :cond_0
    invoke-virtual {p0, v11}, Lcom/citibikenyc/citibike/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 807
    invoke-virtual {p0, v12}, Lcom/citibikenyc/citibike/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 808
    invoke-virtual {p0, v13}, Lcom/citibikenyc/citibike/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 819
    :cond_1
    invoke-direct {p0, v6}, Lcom/citibikenyc/citibike/MainActivity;->setTextToCenter(Landroid/widget/TabHost;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->showIntro()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 330
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 331
    const v1, 0x7f0500e2

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    const v1, 0x7f050044

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {p0, v2, v1}, Lcom/citibikenyc/citibike/MainActivity;->setupAutoComplete(Lcom/actionbarsherlock/view/MenuItem;Landroid/widget/ListView;)V

    .line 332
    const v1, 0x7f0500e1

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/citibikenyc/citibike/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/citibikenyc/citibike/MainActivity$4;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    .end local v0           #inflater:Lcom/actionbarsherlock/view/MenuInflater;
    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    invoke-virtual {v1, p0}, Lcom/citibikenyc/citibike/BikeTimer;->removeUpdateListener(Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;)V

    .line 285
    :cond_0
    invoke-static {}, Lcom/citibikenyc/citibike/PlaceDataManager;->getInstance()Lcom/citibikenyc/citibike/PlaceDataManager;

    move-result-object v0

    .line 286
    .local v0, manager:Lcom/citibikenyc/citibike/PlaceDataManager;
    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->cancelUpdates()V

    .line 290
    :cond_1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 291
    return-void
.end method

.method public onMapRoutebarClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonClear:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1062
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonLocation:Landroid/widget/ImageButton;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1064
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->showDirections()V

    .line 1065
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    const-string v0, "SHOW_TIMER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const v0, 0x7f050095

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 225
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 579
    const v1, 0x102002c

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 580
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 581
    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mTapDetector:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 588
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 595
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 583
    :cond_1
    const v1, 0x7f05000a

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_0

    .line 585
    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mTapDetector:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 590
    :pswitch_0
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->handleHomeSingleTap()V

    .line 592
    const/4 v1, 0x1

    goto :goto_1

    .line 588
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lcom/citibikenyc/citibike/CitibikeApplication;->getInstance()Lcom/citibikenyc/citibike/CitibikeApplication;

    move-result-object v0

    .line 261
    .local v0, app:Lcom/citibikenyc/citibike/CitibikeApplication;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/citibikenyc/citibike/CitibikeApplication;->setVisible(Z)V

    .line 265
    invoke-static {}, Lcom/citibikenyc/citibike/PlaceDataManager;->getInstance()Lcom/citibikenyc/citibike/PlaceDataManager;

    move-result-object v1

    .line 266
    .local v1, manager:Lcom/citibikenyc/citibike/PlaceDataManager;
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->cancelUpdates()V

    .line 270
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 271
    return-void
.end method

.method public onPlaceRequest(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 3
    .parameter "place"

    .prologue
    const v2, 0x7f050093

    .line 1022
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->closeRouteDirections()V

    .line 1023
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->closeDetails(Landroid/view/View;)V

    .line 1024
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->closeRoute()V

    .line 1026
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menuFragment:Lcom/citibikenyc/citibike/MainMenuFragment;

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/MainMenuFragment;->setSelected(Landroid/view/View;)V

    .line 1027
    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 1028
    if-eqz p1, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->onPlaceSelection(Lcom/citibikenyc/citibike/models/Place;)V

    .line 1031
    :cond_0
    return-void
.end method

.method public onReroute(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 1075
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonClear:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonLocation:Landroid/widget/ImageButton;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1078
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0, v2}, Lcom/citibikenyc/citibike/RouteManager;->onReroute(Z)V

    .line 1079
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 244
    invoke-static {}, Lcom/citibikenyc/citibike/CitibikeApplication;->getInstance()Lcom/citibikenyc/citibike/CitibikeApplication;

    move-result-object v0

    .line 245
    .local v0, app:Lcom/citibikenyc/citibike/CitibikeApplication;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/citibikenyc/citibike/CitibikeApplication;->setVisible(Z)V

    .line 248
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 249
    invoke-static {}, Lcom/citibikenyc/citibike/PlaceDataManager;->getInstance()Lcom/citibikenyc/citibike/PlaceDataManager;

    move-result-object v1

    .line 250
    .local v1, manager:Lcom/citibikenyc/citibike/PlaceDataManager;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->scheduleUpdates()V

    .line 254
    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lcom/citibikenyc/citibike/MainActivity$CitiState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/citibikenyc/citibike/MainActivity$CitiState;-><init>(Lcom/citibikenyc/citibike/MainActivity;Lcom/citibikenyc/citibike/MainActivity$CitiState;)V

    .line 305
    .local v0, data:Lcom/citibikenyc/citibike/MainActivity$CitiState;
    return-object v0
.end method

.method public onSafetyDownload(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1013
    const-string v1, "http://www.nyc.gov/html/dot/downloads/pdf/bicyclerules_fy08_english.pdf"

    .line 1014
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v0, i:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1017
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1018
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 231
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 232
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 276
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 277
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 7
    .parameter "tabId"

    .prologue
    .line 864
    const-string v2, "CitiBike"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Clicked "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const-string v1, "map_details"

    .line 866
    .local v1, viewName:Ljava/lang/String;
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/citibikenyc/citibike/MainActivity;->getAppender(Lcom/citibikenyc/citibike/models/Place;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, appender:Ljava/lang/String;
    const-string v2, "details"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "map_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 874
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "map_main"

    const-string v4, "Execute"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 875
    return-void

    .line 869
    :cond_1
    const-string v2, "nearby"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "map_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stations_nearby"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 871
    :cond_2
    const-string v2, "stops"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "map_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "top_stops"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onTimerDone()V
    .locals 6

    .prologue
    .line 1102
    const v3, 0x7f050095

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 1105
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1106
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0132

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1109
    .local v2, msg:Ljava/lang/String;
    const v3, 0x7f0a0131

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1113
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1114
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1115
    const v4, 0x104000a

    new-instance v5, Lcom/citibikenyc/citibike/MainActivity$10;

    invoke-direct {v5, p0}, Lcom/citibikenyc/citibike/MainActivity$10;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1121
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1124
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1125
    return-void
.end method

.method public onTimerMaxed()V
    .locals 5

    .prologue
    .line 1130
    const v2, 0x7f050095

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 1133
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1136
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1140
    const v2, 0x7f0a0133

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1141
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1142
    const v3, 0x104000a

    new-instance v4, Lcom/citibikenyc/citibike/MainActivity$11;

    invoke-direct {v4, p0}, Lcom/citibikenyc/citibike/MainActivity$11;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1148
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1151
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1152
    return-void
.end method

.method public openPlayStore(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 931
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "map_main"

    const-string v3, "google_play_nytimes_cta"

    const-string v4, "Execute"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 932
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 933
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "market://details?id=com.nytimes.android"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 934
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 935
    return-void
.end method

.method public reverseRoute(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0, p1}, Lcom/citibikenyc/citibike/RouteManager;->reverseRoute(Landroid/view/View;)V

    .line 1043
    return-void
.end method

.method public routeFromMarker(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->routeFromMarker()V

    .line 1058
    return-void
.end method

.method public routeToMarker(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonClear:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonLocation:Landroid/widget/ImageButton;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1053
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->routeToMarker()V

    .line 1054
    return-void
.end method

.method public shareLocation(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const-wide/16 v6, 0x0

    .line 987
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v1

    .line 989
    .local v1, currentPlace:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/citibikenyc/citibike/helpers/ShareHelper;->composeShare(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 991
    .local v0, chooserIntent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 992
    const/4 v2, 0x7

    iget v3, v1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v2, v3, :cond_1

    .line 993
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "map_main"

    const-string v4, "map_coffee_share_cta"

    const-string v5, "Execute"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 998
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/citibikenyc/citibike/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1002
    :goto_1
    return-void

    .line 994
    :cond_1
    const/16 v2, 0x8

    iget v3, v1, Lcom/citibikenyc/citibike/models/Place;->placeType:I

    if-ne v2, v3, :cond_0

    .line 995
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "map_main"

    const-string v4, "map_restaurants_share_cta"

    const-string v5, "Execute"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1000
    :cond_2
    const-string v2, "CitiBike"

    const-string v3, "Invalid share intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public showLayers(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1086
    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 1087
    return-void
.end method

.method public switchContent(I)V
    .locals 8
    .parameter "fragmentIndex"

    .prologue
    const v7, 0x7f050043

    const/16 v6, 0x8

    .line 431
    sparse-switch p1, :sswitch_data_0

    .line 462
    :goto_0
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->clearStack()V

    .line 465
    invoke-virtual {p0, v7}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 466
    .local v2, mainView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f05007c

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 468
    .local v3, mapFragment:Landroid/support/v4/app/Fragment;
    const v4, 0x7f050093

    if-ne p1, v4, :cond_2

    .line 469
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/RouteManager;->closeRouteDirections()V

    .line 471
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/MapPlaceManager;->isShowingDetail()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 472
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/MainActivity;->closeDetails(Landroid/view/View;)V

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 476
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 477
    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 478
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 479
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 523
    :cond_1
    :goto_1
    iput p1, p0, Lcom/citibikenyc/citibike/MainActivity;->mCurrentFragmentIndex:I

    .line 525
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    new-instance v5, Lcom/citibikenyc/citibike/MainActivity$5;

    invoke-direct {v5, p0}, Lcom/citibikenyc/citibike/MainActivity$5;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    .line 530
    const-wide/16 v6, 0xc8

    .line 525
    invoke-virtual {v4, v5, v6, v7}, Lcom/slidingmenu/lib/SlidingMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    return-void

    .line 433
    .end local v2           #mainView:Landroid/view/View;
    .end local v3           #mapFragment:Landroid/support/v4/app/Fragment;
    :sswitch_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "map_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :sswitch_1
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "stations_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :sswitch_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "timer_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :sswitch_3
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "favorites_all"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :sswitch_4
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "contact_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :sswitch_5
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "safety_info_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :sswitch_6
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "more_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :sswitch_7
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "layers_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :sswitch_8
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "settings_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    .restart local v2       #mainView:Landroid/view/View;
    .restart local v3       #mapFragment:Landroid/support/v4/app/Fragment;
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, fragmentTag:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    .line 483
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    if-nez v4, :cond_3

    .line 484
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/MainActivity;->addFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    .line 487
    :cond_3
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_1

    .line 489
    packed-switch p1, :pswitch_data_0

    .line 504
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_5

    .line 505
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 506
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 507
    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 508
    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v7, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 509
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 512
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 513
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 492
    :pswitch_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getBikeTimerListener()Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    move-result-object v0

    .line 494
    .local v0, bt:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;
    invoke-interface {v0}, Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;->getActionBarTextView()Landroid/widget/TextView;

    move-result-object v4

    if-nez v4, :cond_4

    .line 495
    const v4, 0x7f05003b

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-interface {v0, v4}, Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;->setActionBarTextView(Landroid/widget/TextView;)V

    goto :goto_2

    .line 500
    .end local v0           #bt:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;
    :pswitch_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v4, Lcom/citibikenyc/citibike/FavoritesFragment;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/FavoritesFragment;->refresh()V

    goto :goto_2

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x7f05003e -> :sswitch_7
        0x7f050093 -> :sswitch_0
        0x7f050094 -> :sswitch_1
        0x7f050095 -> :sswitch_2
        0x7f050096 -> :sswitch_3
        0x7f050097 -> :sswitch_4
        0x7f050098 -> :sswitch_5
        0x7f050099 -> :sswitch_8
        0x7f05009a -> :sswitch_6
    .end sparse-switch

    .line 489
    :pswitch_data_0
    .packed-switch 0x7f050095
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
