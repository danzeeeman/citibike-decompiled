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

    .line 66
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mFragments:Landroid/util/SparseArray;

    .line 75
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 76
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 77
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 78
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 80
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    .line 87
    iput-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/MainActivity;)Lcom/citibikenyc/citibike/MainMenuFragment;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menuFragment:Lcom/citibikenyc/citibike/MainMenuFragment;

    return-object v0
.end method

.method static synthetic access$1(Lcom/citibikenyc/citibike/MainActivity;)Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method private clearStack()V
    .locals 8

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 672
    .local v3, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 676
    .local v1, count:I
    if-lez v1, :cond_4

    .line 678
    add-int/lit8 v5, v1, -0x1

    .local v5, i:I
    :goto_0
    if-gez v5, :cond_2

    .line 696
    .end local v5           #i:I
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    instance-of v6, v6, Lcom/citibikenyc/citibike/FavoritesFragment;

    if-eqz v6, :cond_1

    .line 697
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v2, Lcom/citibikenyc/citibike/FavoritesFragment;

    .line 699
    .local v2, f:Lcom/citibikenyc/citibike/FavoritesFragment;
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/FavoritesFragment;->hasMarkedPlaceForDeletion()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 700
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/FavoritesFragment;->clearPlaceForDeletion()V

    .line 703
    .end local v2           #f:Lcom/citibikenyc/citibike/FavoritesFragment;
    :cond_1
    return-void

    .line 679
    .restart local v5       #i:I
    :cond_2
    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 680
    .local v0, backStackEntry:Landroid/support/v4/app/FragmentManager$BackStackEntry;
    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 683
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

    .line 684
    check-cast v4, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    .end local v4           #fragment:Landroid/support/v4/app/Fragment;
    invoke-interface {v4}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->closeSubview()V

    .line 687
    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 678
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 691
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

    .line 692
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    invoke-interface {v6}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->closeSubview()V

    goto :goto_1
.end method

.method private customTabTextView(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 718
    new-instance v0, Lcom/citibikenyc/citibike/helpers/FontableTextView;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/helpers/FontableTextView;-><init>(Landroid/content/Context;)V

    .line 719
    .local v0, txtTab:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 721
    const/4 v1, 0x2

    const/high16 v2, 0x4140

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 722
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 723
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 724
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 725
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 727
    return-object v0
.end method

.method private getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 280
    new-instance v0, Lcom/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, slidingMenu:Lcom/slidingmenu/lib/SlidingMenu;
    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 282
    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 284
    const/high16 v1, 0x4248

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 283
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 285
    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 287
    const/high16 v1, 0x4260

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 286
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 288
    const v1, 0x3eb33333

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 289
    invoke-virtual {v0, p0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 290
    const v1, 0x7f030019

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 291
    return-object v0
.end method

.method private onEnableActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 326
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 328
    .local v0, actionBar:Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 329
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 330
    return-void
.end method

.method private setTabsBackground(Landroid/widget/TabHost;)V
    .locals 6
    .parameter "tabHost"

    .prologue
    const/4 v5, 0x0

    .line 732
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 733
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 741
    return-void

    .line 734
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 735
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0200f7

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 737
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 739
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setupAutoComplete(Lcom/actionbarsherlock/view/MenuItem;Landroid/widget/ListView;)V
    .locals 10
    .parameter "searchItem"
    .parameter "searchListView"

    .prologue
    .line 335
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/actionbarsherlock/widget/SearchView;

    .line 336
    .local v9, searchView:Lcom/actionbarsherlock/widget/SearchView;
    new-instance v0, Lcom/citibikenyc/citibike/SearchEventReceiver;

    .line 337
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 338
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->placeDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v7, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/citibikenyc/citibike/SearchEventReceiver;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/view/MenuItem;Landroid/widget/ListView;Lcom/slidingmenu/lib/SlidingMenu;Lcom/citibikenyc/citibike/interfaces/PlaceEventListener;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;Lcom/citibikenyc/citibike/helpers/MapHelper;Lcom/citibikenyc/citibike/interfaces/ActionListener;)V

    .line 336
    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->searchEventReceiver:Lcom/citibikenyc/citibike/SearchEventReceiver;

    .line 339
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->searchEventReceiver:Lcom/citibikenyc/citibike/SearchEventReceiver;

    invoke-virtual {v9, v0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 340
    return-void
.end method

.method private showIntro()Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 183
    const-string v4, "TERMS_PREFS"

    invoke-virtual {p0, v4, v3}, Lcom/citibikenyc/citibike/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v4, "TERMS_DATE"

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 186
    .local v1, termsDate:J
    cmp-long v4, v1, v5

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method


# virtual methods
.method public addFragment(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .parameter "fragmentIndex"

    .prologue
    .line 502
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->mFragments:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->mFragments:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 541
    :goto_0
    return-object v2

    .line 506
    :cond_0
    const-string v2, "CitiBike"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creating new fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    sparse-switch p1, :sswitch_data_0

    .line 540
    :goto_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->mFragments:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v1

    .line 541
    goto :goto_0

    .line 510
    :sswitch_0
    new-instance v1, Lcom/citibikenyc/citibike/StationsFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/StationsFragment;-><init>()V

    .line 511
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 513
    :sswitch_1
    new-instance v1, Lcom/citibikenyc/citibike/TimerFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/TimerFragment;-><init>()V

    .line 514
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 516
    :sswitch_2
    new-instance v1, Lcom/citibikenyc/citibike/FavoritesFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/FavoritesFragment;-><init>()V

    .line 517
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 519
    :sswitch_3
    new-instance v1, Lcom/citibikenyc/citibike/ContactFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/ContactFragment;-><init>()V

    .line 520
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 522
    :sswitch_4
    new-instance v1, Lcom/citibikenyc/citibike/MorePagerFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/MorePagerFragment;-><init>()V

    .line 525
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 527
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "TITLE_RESOURCE_ID"

    const v3, 0x7f0a00ad

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 528
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 531
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_5
    new-instance v1, Lcom/citibikenyc/citibike/MoreListFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/MoreListFragment;-><init>()V

    .line 532
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 534
    :sswitch_6
    new-instance v1, Lcom/citibikenyc/citibike/LayersFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/LayersFragment;-><init>()V

    .line 535
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 537
    :sswitch_7
    new-instance v1, Lcom/citibikenyc/citibike/SettingsFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/SettingsFragment;-><init>()V

    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 508
    :sswitch_data_0
    .sparse-switch
        0x7f05003e -> :sswitch_6
        0x7f05008b -> :sswitch_0
        0x7f05008c -> :sswitch_1
        0x7f05008d -> :sswitch_2
        0x7f05008e -> :sswitch_3
        0x7f05008f -> :sswitch_4
        0x7f050090 -> :sswitch_7
        0x7f050091 -> :sswitch_5
    .end sparse-switch
.end method

.method public clearRoute(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->closeRoute()V

    .line 921
    return-void
.end method

.method public closeDetails(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 808
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f05006b

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 809
    .local v0, mapFragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 810
    .local v1, mapView:Landroid/view/View;
    invoke-virtual {v1, v6, v6}, Landroid/view/View;->scrollTo(II)V

    .line 813
    const v4, 0x1020012

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    .line 814
    .local v3, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 817
    const v4, 0x7f050041

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 818
    .local v2, scrollView:Landroid/widget/ScrollView;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 819
    invoke-virtual {v2, v6, v6}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 821
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/MapPlaceManager;->resetCurrentMarker()V

    .line 822
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearDetail()V

    .line 823
    return-void
.end method

.method public closeLayers(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 973
    const-string v0, "CitiBike"

    const-string v1, "closeLayers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->isShowingRoute()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->isShowingDetail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->clearDetail()V

    .line 979
    :cond_0
    const v0, 0x7f05008a

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 980
    return-void
.end method

.method public closeRoute()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonClear:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonLocation:Landroid/widget/ImageButton;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 953
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->clearRoute()V

    .line 954
    return-void
.end method

.method public disableIntroMode()V
    .locals 2

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->onEnableActionBar()V

    .line 192
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->supportInvalidateOptionsMenu()V

    .line 196
    return-void
.end method

.method public enableThreedMode(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 707
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    .line 708
    .local v1, oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v2, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget v3, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    const/4 v4, 0x0

    iget v5, v1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    .line 709
    .local v0, newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 712
    .end local v0           #newCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v1           #oldCamera:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 713
    return-void
.end method

.method public favoriteLocation(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x0

    .line 826
    const-string v5, "CitiBike"

    const-string v6, "favoriteLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v5}, Lcom/citibikenyc/citibike/MapPlaceManager;->getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v0

    .line 830
    .local v0, currentPlace:Lcom/citibikenyc/citibike/models/Place;
    const v5, 0x7f0a0027

    invoke-virtual {p0, v5}, Lcom/citibikenyc/citibike/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 831
    const v5, 0x7f0a0040

    const v6, 0x7f0a0041

    invoke-static {p0, v5, v6}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->showAlert(Landroid/app/Activity;II)V

    .line 866
    .end local p1
    :goto_0
    return-void

    .line 833
    .restart local p1
    :cond_0
    const v5, 0x7f050045

    invoke-virtual {p0, v5}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 834
    .local v4, loaderView:Landroid/view/View;
    const v5, 0x7f050046

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 835
    .local v3, loaderIcon:Landroid/widget/ImageView;
    const v5, 0x7f050047

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 836
    .local v2, loaderCopy:Landroid/widget/TextView;
    const/high16 v5, 0x7f04

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 837
    .local v1, fadeInAnimation:Landroid/view/animation/Animation;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 839
    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    invoke-interface {v5, v0}, Lcom/citibikenyc/citibike/interfaces/FavoriteListener;->isFavorite(Lcom/citibikenyc/citibike/models/Place;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 840
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 841
    const-string v5, "Favorited"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    invoke-interface {v5, v0}, Lcom/citibikenyc/citibike/interfaces/FavoriteListener;->addFavorite(Lcom/citibikenyc/citibike/models/Place;)J

    .line 845
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/citibikenyc/citibike/MainActivity$7;

    invoke-direct {v6, p0, v4}, Lcom/citibikenyc/citibike/MainActivity$7;-><init>(Lcom/citibikenyc/citibike/MainActivity;Landroid/view/View;)V

    .line 850
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x2

    mul-long/2addr v7, v9

    .line 845
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 852
    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 853
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v5, p1

    .line 855
    check-cast v5, Landroid/widget/Button;

    const-string v6, "Favorited"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 856
    check-cast p1, Landroid/widget/Button;

    .line 857
    .end local p1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 856
    invoke-virtual {p1, v5, v11, v11, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 859
    .restart local p1
    :cond_1
    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    invoke-interface {v5, v0}, Lcom/citibikenyc/citibike/interfaces/FavoriteListener;->removeFavorite(Lcom/citibikenyc/citibike/models/Place;)Z

    move-object v5, p1

    .line 861
    check-cast v5, Landroid/widget/Button;

    const-string v6, "Favorite"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 862
    check-cast p1, Landroid/widget/Button;

    .line 863
    .end local p1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 862
    invoke-virtual {p1, v5, v11, v11, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public getActionListener()Lcom/citibikenyc/citibike/interfaces/ActionListener;
    .locals 0

    .prologue
    .line 1055
    return-object p0
.end method

.method public getBikeTimerListener()Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Lcom/citibikenyc/citibike/BikeTimer;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/citibikenyc/citibike/BikeTimer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    .line 1061
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    invoke-virtual {v0, p0}, Lcom/citibikenyc/citibike/BikeTimer;->addUpdateListener(Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;)V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    return-object v0
.end method

.method public getFavoriteListener()Lcom/citibikenyc/citibike/interfaces/FavoriteListener;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    return-object v0
.end method

.method public getMapHelper()Lcom/citibikenyc/citibike/helpers/MapHelper;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    return-object v0
.end method

.method public getMapPlaceManager()Lcom/citibikenyc/citibike/MapPlaceManager;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    return-object v0
.end method

.method public getPlaceDataProvider()Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v0, v0, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    return-object v0
.end method

.method public initMap(Lcom/google/android/gms/maps/SupportMapFragment;)V
    .locals 13
    .parameter "mapFragment"

    .prologue
    const/4 v12, 0x0

    .line 349
    const v0, 0x7f05006b

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 351
    .local v9, mapView:Landroid/view/View;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 352
    check-cast v9, Landroid/view/ViewGroup;

    .end local v9           #mapView:Landroid/view/View;
    invoke-static {v9}, Lcom/citibikenyc/citibike/helpers/MapHelper;->setTransparent(Landroid/view/ViewGroup;)V

    .line 355
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 358
    new-instance v0, Lcom/citibikenyc/citibike/helpers/MapHelper;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {v0, v1}, Lcom/citibikenyc/citibike/helpers/MapHelper;-><init>(Lcom/google/android/gms/maps/GoogleMap;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    .line 359
    new-instance v0, Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-direct {v0, p0}, Lcom/citibikenyc/citibike/PlaceDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->placeDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    .line 360
    new-instance v0, Lcom/citibikenyc/citibike/FavoritesManager;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->placeDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-direct {v0, v1, v4}, Lcom/citibikenyc/citibike/FavoritesManager;-><init>(Landroid/content/Context;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    .line 362
    const v0, 0x7f050041

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 363
    .local v2, mapOverlay:Landroid/view/View;
    const v0, 0x7f05003d

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 365
    .local v3, buttonLayout:Landroid/view/View;
    new-instance v0, Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 366
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->placeDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    iget-object v7, p0, Lcom/citibikenyc/citibike/MainActivity;->favoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/citibikenyc/citibike/MapPlaceManager;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/GoogleMap;Lcom/citibikenyc/citibike/PlaceDataManager;Lcom/citibikenyc/citibike/interfaces/FavoriteListener;Lcom/citibikenyc/citibike/interfaces/ActionListener;)V

    .line 365
    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 367
    new-instance v0, Lcom/citibikenyc/citibike/RouteManager;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    iget-object v5, v5, Lcom/citibikenyc/citibike/MapPlaceManager;->mPlaceDataManager:Lcom/citibikenyc/citibike/PlaceDataManager;

    invoke-direct {v0, v1, v4, v5, p0}, Lcom/citibikenyc/citibike/RouteManager;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager;Lcom/citibikenyc/citibike/helpers/MapHelper;Lcom/citibikenyc/citibike/interfaces/PlaceDataProvider;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    .line 370
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v0, p0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->showStartView(Landroid/app/Activity;)V

    .line 372
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 373
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 374
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 380
    const-string v0, "SETTINGS_PREFS"

    invoke-virtual {p0, v0, v12}, Lcom/citibikenyc/citibike/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 381
    .local v10, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v0, "THREED_MODE_ON"

    sget-boolean v1, Lcom/citibikenyc/citibike/SettingsFragment;->THREED_ON:Z

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 382
    .local v11, threedOn:Z
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->gMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/android/gms/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 384
    const-string v0, "CitiBike"

    const-string v1, "Map initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void
.end method

.method public moveToCurrentLocation(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/MapHelper;->moveToCurrentLocation()Z

    .line 917
    return-void
.end method

.method public navigateBack()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 602
    const-string v6, "CitiBike"

    const-string v8, "DEBUG: Trying to clear results"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->searchEventReceiver:Lcom/citibikenyc/citibike/SearchEventReceiver;

    if-eqz v6, :cond_0

    .line 606
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->searchEventReceiver:Lcom/citibikenyc/citibike/SearchEventReceiver;

    invoke-virtual {v6}, Lcom/citibikenyc/citibike/SearchEventReceiver;->clearResults()V

    .line 610
    :cond_0
    const v6, 0x7f05007f

    invoke-virtual {p0, v6}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 612
    .local v5, mapRoute:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 613
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v6}, Lcom/citibikenyc/citibike/RouteManager;->closeRouteDirections()V

    move v6, v7

    .line 667
    :goto_0
    return v6

    .line 615
    :cond_1
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v6}, Lcom/citibikenyc/citibike/MapPlaceManager;->isShowingRoute()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 616
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->closeRoute()V

    move v6, v7

    .line 617
    goto :goto_0

    .line 618
    :cond_2
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v6}, Lcom/citibikenyc/citibike/MapPlaceManager;->isShowingDetail()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 619
    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->closeDetails(Landroid/view/View;)V

    move v6, v7

    .line 620
    goto :goto_0

    .line 621
    :cond_3
    iget v6, p0, Lcom/citibikenyc/citibike/MainActivity;->mCurrentFragmentIndex:I

    const v8, 0x7f05003e

    if-ne v6, v8, :cond_4

    .line 622
    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->closeLayers(Landroid/view/View;)V

    move v6, v7

    .line 623
    goto :goto_0

    .line 627
    :cond_4
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    instance-of v6, v6, Lcom/citibikenyc/citibike/FavoritesFragment;

    if-eqz v6, :cond_5

    .line 628
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v2, Lcom/citibikenyc/citibike/FavoritesFragment;

    .line 630
    .local v2, f:Lcom/citibikenyc/citibike/FavoritesFragment;
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/FavoritesFragment;->hasMarkedPlaceForDeletion()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 631
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/FavoritesFragment;->clearPlaceForDeletion()V

    move v6, v7

    .line 633
    goto :goto_0

    .line 638
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

    .line 639
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v6, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    invoke-interface {v6}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->closeSubview()V

    move v6, v7

    .line 640
    goto :goto_0

    .line 644
    :cond_6
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 645
    .local v3, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 647
    .local v1, count:I
    if-lez v1, :cond_8

    .line 648
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 649
    .local v0, backStackEntry:Landroid/support/v4/app/FragmentManager$BackStackEntry;
    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 651
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

    .line 652
    check-cast v4, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;

    .end local v4           #fragment:Landroid/support/v4/app/Fragment;
    invoke-interface {v4}, Lcom/citibikenyc/citibike/interfaces/BackButtonListener;->closeSubview()V

    :goto_1
    move v6, v7

    .line 657
    goto/16 :goto_0

    .line 654
    .restart local v4       #fragment:Landroid/support/v4/app/Fragment;
    :cond_7
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_1

    .line 661
    .end local v0           #backStackEntry:Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .end local v4           #fragment:Landroid/support/v4/app/Fragment;
    :cond_8
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v6}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v6

    if-nez v6, :cond_9

    .line 662
    iget-object v6, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v6}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu()V

    move v6, v7

    .line 663
    goto/16 :goto_0

    .line 667
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 898
    const-string v0, "CitiBike"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    if-eqz p3, :cond_0

    .line 900
    const-string v0, "CitiBike"

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 571
    const-string v2, "CitiBike"

    const-string v3, "onBackPressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->isSlidingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->navigateBack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 573
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 576
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 580
    const v2, 0x7f0a003b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 581
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 582
    const v3, 0x7f0a0039

    new-instance v4, Lcom/citibikenyc/citibike/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/citibikenyc/citibike/MainActivity$4;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 587
    const/high16 v3, 0x104

    new-instance v4, Lcom/citibikenyc/citibike/MainActivity$5;

    invoke-direct {v4, p0}, Lcom/citibikenyc/citibike/MainActivity$5;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 597
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 599
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method

.method public onBikeSmart(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 882
    const-string v1, "http://www.nyc.gov/html/dot/downloads/pdf/dot_bikesmart_brochure.pdf"

    .line 883
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 885
    .local v0, i:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 886
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 887
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f050043

    const v10, 0x7f05003c

    const/4 v12, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->onCreateActionBar()V

    .line 102
    const v9, 0x7f030018

    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0, v10}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 107
    .local v3, bkg:Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    const v9, 0xe6e7ea

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 112
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 117
    const v10, 0x7f0a003c

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 118
    const v10, 0x7f0a003d

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 119
    const v10, 0x104000a

    new-instance v11, Lcom/citibikenyc/citibike/MainActivity$1;

    invoke-direct {v11, p0}, Lcom/citibikenyc/citibike/MainActivity$1;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 129
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 180
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0, v10}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 136
    .local v7, main:Landroid/widget/FrameLayout;
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 137
    .local v6, layoutInflater:Landroid/view/LayoutInflater;
    const v9, 0x7f030027

    invoke-virtual {v6, v9, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7, v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 140
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 141
    .local v4, fm:Landroid/support/v4/app/FragmentManager;
    const v9, 0x7f05006b

    invoke-virtual {v4, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 142
    .local v5, fragment:Landroid/support/v4/app/Fragment;
    check-cast v5, Lcom/google/android/gms/maps/SupportMapFragment;

    .end local v5           #fragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {p0, v5}, Lcom/citibikenyc/citibike/MainActivity;->initMap(Lcom/google/android/gms/maps/SupportMapFragment;)V

    .line 145
    const v9, 0x7f050040

    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonClear:Landroid/widget/ImageButton;

    .line 146
    const v9, 0x7f05003f

    invoke-virtual {p0, v9}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonLocation:Landroid/widget/ImageButton;

    .line 149
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v9

    iput-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    .line 150
    new-instance v9, Lcom/citibikenyc/citibike/MainMenuFragment;

    invoke-direct {v9}, Lcom/citibikenyc/citibike/MainMenuFragment;-><init>()V

    iput-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->menuFragment:Lcom/citibikenyc/citibike/MainMenuFragment;

    .line 151
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    .line 152
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 153
    const v10, 0x7f050048

    iget-object v11, p0, Lcom/citibikenyc/citibike/MainActivity;->menuFragment:Lcom/citibikenyc/citibike/MainMenuFragment;

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 154
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 156
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->onCreateDetailsView()V

    .line 157
    const v9, 0x7f05008a

    iput v9, p0, Lcom/citibikenyc/citibike/MainActivity;->mCurrentFragmentIndex:I

    .line 160
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->showIntro()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 161
    iget-object v9, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v9, v12}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 164
    invoke-virtual {p0, v13}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 165
    .local v8, mainView:Landroid/view/View;
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 168
    new-instance v10, Lcom/citibikenyc/citibike/TermsFragment;

    invoke-direct {v10}, Lcom/citibikenyc/citibike/TermsFragment;-><init>()V

    const-string v11, "Terms"

    invoke-virtual {v9, v13, v10, v11}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 169
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 175
    .end local v8           #mainView:Landroid/view/View;
    :goto_1
    invoke-static {}, Lcom/citibikenyc/citibike/CitibikeApplication;->getInstance()Lcom/citibikenyc/citibike/CitibikeApplication;

    move-result-object v2

    .line 177
    .local v2, app:Lcom/citibikenyc/citibike/CitibikeApplication;
    invoke-virtual {v2}, Lcom/citibikenyc/citibike/CitibikeApplication;->isOnline()Z

    move-result v9

    if-nez v9, :cond_0

    .line 178
    const v9, 0x7f0a003e

    const v10, 0x7f0a003f

    invoke-static {p0, v9, v10}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->showAlert(Landroid/app/Activity;II)V

    goto/16 :goto_0

    .line 172
    .end local v2           #app:Lcom/citibikenyc/citibike/CitibikeApplication;
    :cond_2
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->onEnableActionBar()V

    goto :goto_1
.end method

.method public onCreateActionBar()V
    .locals 5

    .prologue
    const v4, 0x7f02007d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 314
    const v1, 0x7f0b0062

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/MainActivity;->setTheme(I)V

    .line 315
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 317
    .local v0, actionBar:Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 318
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(I)V

    .line 319
    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 320
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 321
    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 322
    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 323
    return-void
.end method

.method public onCreateDetailsView()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    .line 744
    const v7, 0x1020012

    invoke-virtual {p0, v7}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    .line 745
    .local v6, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 748
    const-string v7, "details"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 749
    .local v0, detailsTab:Landroid/widget/TabHost$TabSpec;
    const-string v7, "nearby"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 751
    .local v4, nearByTab:Landroid/widget/TabHost$TabSpec;
    const v7, 0x7f050073

    invoke-virtual {v0, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 752
    const v7, 0x7f05007e

    invoke-virtual {v4, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 754
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v9, :cond_1

    .line 756
    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    const v8, 0x7f02003c

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setDividerDrawable(I)V

    .line 759
    const-string v7, "Details"

    invoke-direct {p0, v7}, Lcom/citibikenyc/citibike/MainActivity;->customTabTextView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 760
    const-string v7, "Stations Nearby"

    invoke-direct {p0, v7}, Lcom/citibikenyc/citibike/MainActivity;->customTabTextView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 767
    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 768
    invoke-virtual {v6, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 770
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v9, :cond_0

    .line 771
    invoke-direct {p0, v6}, Lcom/citibikenyc/citibike/MainActivity;->setTabsBackground(Landroid/widget/TabHost;)V

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f05006b

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 776
    .local v1, mapFragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 777
    .local v2, mapView:Landroid/view/View;
    const/4 v7, 0x1

    const/high16 v8, 0x4316

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v3, v7

    .line 778
    .local v3, maxScroll:I
    const v7, 0x7f050041

    invoke-virtual {p0, v7}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 780
    .local v5, scrollView:Landroid/widget/ScrollView;
    new-instance v7, Lcom/citibikenyc/citibike/MainActivity$6;

    invoke-direct {v7, p0, v3, v2}, Lcom/citibikenyc/citibike/MainActivity$6;-><init>(Lcom/citibikenyc/citibike/MainActivity;ILandroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 792
    return-void

    .line 762
    .end local v1           #mapFragment:Landroid/support/v4/app/Fragment;
    .end local v2           #mapView:Landroid/view/View;
    .end local v3           #maxScroll:I
    .end local v5           #scrollView:Landroid/widget/ScrollView;
    :cond_1
    const-string v7, "Details"

    invoke-virtual {v0, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 764
    const-string v7, "Stations Nearby"

    invoke-virtual {v4, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->showIntro()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 298
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 299
    const v1, 0x7f0500c2

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    const v1, 0x7f050044

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-direct {p0, v2, v1}, Lcom/citibikenyc/citibike/MainActivity;->setupAutoComplete(Lcom/actionbarsherlock/view/MenuItem;Landroid/widget/ListView;)V

    .line 301
    const v1, 0x7f0500c1

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/citibikenyc/citibike/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/citibikenyc/citibike/MainActivity$2;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .end local v0           #inflater:Lcom/actionbarsherlock/view/MenuInflater;
    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity;->bikeTimer:Lcom/citibikenyc/citibike/BikeTimer;

    invoke-virtual {v1, p0}, Lcom/citibikenyc/citibike/BikeTimer;->removeUpdateListener(Lcom/citibikenyc/citibike/interfaces/BikeTimerUpdateListener;)V

    .line 254
    :cond_0
    invoke-static {}, Lcom/citibikenyc/citibike/PlaceDataManager;->getInstance()Lcom/citibikenyc/citibike/PlaceDataManager;

    move-result-object v0

    .line 255
    .local v0, manager:Lcom/citibikenyc/citibike/PlaceDataManager;
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/PlaceDataManager;->cancelUpdates()V

    .line 259
    :cond_1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 260
    return-void
.end method

.method public onMapRoutebarClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonClear:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonLocation:Landroid/widget/ImageButton;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 946
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->showDirections()V

    .line 947
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    const-string v0, "SHOW_TIMER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const v0, 0x7f05008c

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 548
    const-string v0, "CitiBike"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOptionsItemSelected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 565
    const-string v0, "CitiBike"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOptionsItemSelected Unknown ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 552
    :pswitch_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 562
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    iget v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mCurrentFragmentIndex:I

    const v1, 0x7f05008a

    if-ne v0, v1, :cond_1

    .line 556
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->cancelSearch()V

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu()V

    goto :goto_1

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/citibikenyc/citibike/CitibikeApplication;->getInstance()Lcom/citibikenyc/citibike/CitibikeApplication;

    move-result-object v0

    .line 230
    .local v0, app:Lcom/citibikenyc/citibike/CitibikeApplication;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/citibikenyc/citibike/CitibikeApplication;->setVisible(Z)V

    .line 234
    invoke-static {}, Lcom/citibikenyc/citibike/PlaceDataManager;->getInstance()Lcom/citibikenyc/citibike/PlaceDataManager;

    move-result-object v1

    .line 235
    .local v1, manager:Lcom/citibikenyc/citibike/PlaceDataManager;
    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->cancelUpdates()V

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 240
    return-void
.end method

.method public onPlaceRequest(Lcom/citibikenyc/citibike/models/Place;)V
    .locals 3
    .parameter "place"

    .prologue
    const v2, 0x7f05008a

    .line 906
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->closeRouteDirections()V

    .line 907
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->closeDetails(Landroid/view/View;)V

    .line 908
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->closeRoute()V

    .line 910
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->menuFragment:Lcom/citibikenyc/citibike/MainMenuFragment;

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/MainMenuFragment;->setSelected(Landroid/view/View;)V

    .line 911
    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 912
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->onPlaceSelection(Lcom/citibikenyc/citibike/models/Place;)V

    .line 913
    return-void
.end method

.method public onReroute(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 957
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonClear:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonLocation:Landroid/widget/ImageButton;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 960
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0, v2}, Lcom/citibikenyc/citibike/RouteManager;->onReroute(Z)V

    .line 961
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lcom/citibikenyc/citibike/CitibikeApplication;->getInstance()Lcom/citibikenyc/citibike/CitibikeApplication;

    move-result-object v0

    .line 216
    .local v0, app:Lcom/citibikenyc/citibike/CitibikeApplication;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/citibikenyc/citibike/CitibikeApplication;->setVisible(Z)V

    .line 219
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 220
    invoke-static {}, Lcom/citibikenyc/citibike/PlaceDataManager;->getInstance()Lcom/citibikenyc/citibike/PlaceDataManager;

    move-result-object v1

    .line 221
    .local v1, manager:Lcom/citibikenyc/citibike/PlaceDataManager;
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/PlaceDataManager;->scheduleUpdates()V

    .line 224
    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lcom/citibikenyc/citibike/MainActivity$CitiState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/citibikenyc/citibike/MainActivity$CitiState;-><init>(Lcom/citibikenyc/citibike/MainActivity;Lcom/citibikenyc/citibike/MainActivity$CitiState;)V

    .line 274
    .local v0, data:Lcom/citibikenyc/citibike/MainActivity$CitiState;
    return-object v0
.end method

.method public onSafetyDownload(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 890
    const-string v1, "http://www.nyc.gov/html/dot/downloads/pdf/bicyclerules_fy08_english.pdf"

    .line 891
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v0, i:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 894
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 895
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 209
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 210
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 245
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 246
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "tabId"

    .prologue
    .line 797
    const-string v0, "CitiBike"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clicked "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v0, "details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "map_details"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    const-string v0, "nearby"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    const-string v1, "map_stations_nearby"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTimerDone()V
    .locals 6

    .prologue
    .line 986
    const v3, 0x7f05008c

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 989
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 990
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0128

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 993
    .local v2, msg:Ljava/lang/String;
    const v3, 0x7f0a0127

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 997
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 998
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 999
    const v4, 0x104000a

    new-instance v5, Lcom/citibikenyc/citibike/MainActivity$8;

    invoke-direct {v5, p0}, Lcom/citibikenyc/citibike/MainActivity$8;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1005
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1008
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1009
    return-void
.end method

.method public onTimerMaxed()V
    .locals 5

    .prologue
    .line 1014
    const v2, 0x7f05008c

    invoke-virtual {p0, v2}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 1017
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1020
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0127

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1024
    const v2, 0x7f0a0129

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1025
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1026
    const v3, 0x104000a

    new-instance v4, Lcom/citibikenyc/citibike/MainActivity$9;

    invoke-direct {v4, p0}, Lcom/citibikenyc/citibike/MainActivity$9;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1032
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1035
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1036
    return-void
.end method

.method public reverseRoute(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0, p1}, Lcom/citibikenyc/citibike/RouteManager;->reverseRoute(Landroid/view/View;)V

    .line 925
    return-void
.end method

.method public routeFromMarker(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->routeFromMarker()V

    .line 940
    return-void
.end method

.method public routeToMarker(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonClear:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->mapButtonLocation:Landroid/widget/ImageButton;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 935
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/RouteManager;->routeToMarker()V

    .line 936
    return-void
.end method

.method public shareLocation(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 869
    const-string v2, "CitiBike"

    const-string v3, "shareLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->getSelectedLocation()Lcom/citibikenyc/citibike/models/Place;

    move-result-object v1

    .line 872
    .local v1, currentPlace:Lcom/citibikenyc/citibike/models/Place;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/citibikenyc/citibike/models/Place;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/citibikenyc/citibike/helpers/ShareHelper;->composeShare(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 874
    .local v0, chooserIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 875
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/citibikenyc/citibike/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    const-string v2, "CitiBike"

    const-string v3, "Invalid share intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showLayers(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 967
    const-string v0, "CitiBike"

    const-string v1, "showLayers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 970
    return-void
.end method

.method public switchContent(I)V
    .locals 9
    .parameter "fragmentIndex"

    .prologue
    const v8, 0x7f050043

    const/16 v7, 0x8

    .line 391
    const-string v4, "CitiBike"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "switchContent call "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sparse-switch p1, :sswitch_data_0

    .line 430
    :goto_0
    invoke-direct {p0}, Lcom/citibikenyc/citibike/MainActivity;->clearStack()V

    .line 433
    invoke-virtual {p0, v8}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 434
    .local v2, mainView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f05006b

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 436
    .local v3, mapFragment:Landroid/support/v4/app/Fragment;
    const v4, 0x7f05008a

    if-ne p1, v4, :cond_2

    .line 437
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->routeManager:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/RouteManager;->closeRouteDirections()V

    .line 439
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/MapPlaceManager;->isShowingDetail()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/MainActivity;->closeDetails(Landroid/view/View;)V

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 444
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 445
    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 446
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 447
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 491
    :cond_1
    :goto_1
    iput p1, p0, Lcom/citibikenyc/citibike/MainActivity;->mCurrentFragmentIndex:I

    .line 493
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;

    new-instance v5, Lcom/citibikenyc/citibike/MainActivity$3;

    invoke-direct {v5, p0}, Lcom/citibikenyc/citibike/MainActivity$3;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    .line 498
    const-wide/16 v6, 0xc8

    .line 493
    invoke-virtual {v4, v5, v6, v7}, Lcom/slidingmenu/lib/SlidingMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    return-void

    .line 401
    .end local v2           #mainView:Landroid/view/View;
    .end local v3           #mapFragment:Landroid/support/v4/app/Fragment;
    :sswitch_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "map_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :sswitch_1
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "stations_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :sswitch_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "timer_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :sswitch_3
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "favorites_all"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :sswitch_4
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "contact_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :sswitch_5
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "safety_info_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :sswitch_6
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "more_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :sswitch_7
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "layers_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    :sswitch_8
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "settings_main"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    .restart local v2       #mainView:Landroid/view/View;
    .restart local v3       #mapFragment:Landroid/support/v4/app/Fragment;
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, fragmentTag:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    .line 451
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    if-nez v4, :cond_3

    .line 452
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/MainActivity;->addFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    .line 455
    :cond_3
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_1

    .line 457
    packed-switch p1, :pswitch_data_0

    .line 472
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_5

    .line 473
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 474
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 475
    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 476
    iget-object v5, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v8, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 477
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 480
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 481
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 460
    :pswitch_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainActivity;->getBikeTimerListener()Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    move-result-object v0

    .line 462
    .local v0, bt:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;
    invoke-interface {v0}, Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;->getActionBarTextView()Landroid/widget/TextView;

    move-result-object v4

    if-nez v4, :cond_4

    .line 463
    const v4, 0x7f05003b

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-interface {v0, v4}, Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;->setActionBarTextView(Landroid/widget/TextView;)V

    goto :goto_2

    .line 468
    .end local v0           #bt:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;
    :pswitch_1
    iget-object v4, p0, Lcom/citibikenyc/citibike/MainActivity;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v4, Lcom/citibikenyc/citibike/FavoritesFragment;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/FavoritesFragment;->refresh()V

    goto :goto_2

    .line 399
    :sswitch_data_0
    .sparse-switch
        0x7f05003e -> :sswitch_7
        0x7f05008a -> :sswitch_0
        0x7f05008b -> :sswitch_1
        0x7f05008c -> :sswitch_2
        0x7f05008d -> :sswitch_3
        0x7f05008e -> :sswitch_4
        0x7f05008f -> :sswitch_5
        0x7f050090 -> :sswitch_8
        0x7f050091 -> :sswitch_6
    .end sparse-switch

    .line 457
    :pswitch_data_0
    .packed-switch 0x7f05008c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
