.class public Lcom/citibikenyc/citibike/MapFragment;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "MapFragment.java"


# instance fields
.field mContext:Landroid/content/Context;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/citibikenyc/citibike/MapFragment;->view:Landroid/view/View;

    .line 15
    iput-object v0, p0, Lcom/citibikenyc/citibike/MapFragment;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method

.method private setMapTransparent(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 37
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 45
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 40
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/MapFragment;->setMapTransparent(Landroid/view/ViewGroup;)V

    .line 37
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    instance-of v3, v0, Landroid/view/SurfaceView;

    if-eqz v3, :cond_1

    .line 42
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .local v0, view:Landroid/view/View;
    move-object v1, v0

    .line 25
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/citibikenyc/citibike/MapFragment;->setMapTransparent(Landroid/view/ViewGroup;)V

    .line 26
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/maps/SupportMapFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 20
    return-void
.end method
