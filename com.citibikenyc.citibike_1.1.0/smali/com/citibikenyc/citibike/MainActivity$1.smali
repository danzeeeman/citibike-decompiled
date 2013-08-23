.class Lcom/citibikenyc/citibike/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/MainActivity;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/MainActivity$1;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .parameter "latLng"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$1;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    #getter for: Lcom/citibikenyc/citibike/MainActivity;->mapPlaceManager:Lcom/citibikenyc/citibike/MapPlaceManager;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MainActivity;->access$0(Lcom/citibikenyc/citibike/MainActivity;)Lcom/citibikenyc/citibike/MapPlaceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/citibikenyc/citibike/MapPlaceManager;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1188
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$1;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    #getter for: Lcom/citibikenyc/citibike/MainActivity;->mActionBarSearchItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MainActivity;->access$1(Lcom/citibikenyc/citibike/MainActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$1;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    #getter for: Lcom/citibikenyc/citibike/MainActivity;->mActionBarSearchItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MainActivity;->access$1(Lcom/citibikenyc/citibike/MainActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$1;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    #getter for: Lcom/citibikenyc/citibike/MainActivity;->mActionBarSearchItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MainActivity;->access$1(Lcom/citibikenyc/citibike/MainActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 1191
    :cond_0
    return-void
.end method
