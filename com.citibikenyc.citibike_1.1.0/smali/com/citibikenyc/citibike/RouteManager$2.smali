.class Lcom/citibikenyc/citibike/RouteManager$2;
.super Ljava/lang/Object;
.source "RouteManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/RouteManager;->showDirections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/RouteManager;

.field private final synthetic val$mapRoute:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/RouteManager;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/RouteManager$2;->this$0:Lcom/citibikenyc/citibike/RouteManager;

    iput-object p2, p0, Lcom/citibikenyc/citibike/RouteManager$2;->val$mapRoute:Landroid/view/View;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 107
    if-nez p3, :cond_2

    .line 108
    iget-object v2, p0, Lcom/citibikenyc/citibike/RouteManager$2;->this$0:Lcom/citibikenyc/citibike/RouteManager;

    iget-object v2, v2, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/citibikenyc/citibike/RouteManager$2;->this$0:Lcom/citibikenyc/citibike/RouteManager;

    iget-object v3, p0, Lcom/citibikenyc/citibike/RouteManager$2;->this$0:Lcom/citibikenyc/citibike/RouteManager;

    iget-object v3, v3, Lcom/citibikenyc/citibike/RouteManager;->currentRoute:Lcom/citibikenyc/citibike/models/RouteResult;

    iget-boolean v3, v3, Lcom/citibikenyc/citibike/models/RouteResult;->mOnBike:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2, v1}, Lcom/citibikenyc/citibike/RouteManager;->onReroute(Z)V

    .line 119
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/citibikenyc/citibike/RouteManager$2;->this$0:Lcom/citibikenyc/citibike/RouteManager;

    invoke-virtual {v2, v1}, Lcom/citibikenyc/citibike/RouteManager;->onReroute(Z)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/RouteStep;

    .line 116
    .local v0, step:Lcom/citibikenyc/citibike/models/RouteStep;
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager$2;->this$0:Lcom/citibikenyc/citibike/RouteManager;

    iget-object v1, v1, Lcom/citibikenyc/citibike/RouteManager;->mMapHelper:Lcom/citibikenyc/citibike/helpers/MapHelper;

    iget-object v2, v0, Lcom/citibikenyc/citibike/models/RouteStep;->start:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/citibikenyc/citibike/helpers/MapHelper;->animateTo(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 117
    iget-object v1, p0, Lcom/citibikenyc/citibike/RouteManager$2;->val$mapRoute:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
