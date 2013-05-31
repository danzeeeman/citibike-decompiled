.class Lcom/citibikenyc/citibike/FavoritesFragment$1;
.super Ljava/lang/Object;
.source "FavoritesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/FavoritesFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/FavoritesFragment;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/FavoritesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/FavoritesFragment$1;->this$0:Lcom/citibikenyc/citibike/FavoritesFragment;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment$1;->this$0:Lcom/citibikenyc/citibike/FavoritesFragment;

    iget-object v0, v0, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment$1;->this$0:Lcom/citibikenyc/citibike/FavoritesFragment;

    iget-object v1, v1, Lcom/citibikenyc/citibike/FavoritesFragment;->favoritesAdapter:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->getItem(I)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->markPlaceForDeletion(Lcom/citibikenyc/citibike/models/Place;)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method
