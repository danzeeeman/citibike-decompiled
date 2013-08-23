.class Lcom/citibikenyc/citibike/helpers/PlaceAdapter$1;
.super Ljava/lang/Object;
.source "PlaceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/helpers/PlaceAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    #getter for: Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mListener:Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;
    invoke-static {v0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->access$4(Lcom/citibikenyc/citibike/helpers/PlaceAdapter;)Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    #getter for: Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mListener:Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;
    invoke-static {v0}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->access$4(Lcom/citibikenyc/citibike/helpers/PlaceAdapter;)Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;

    move-result-object v0

    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceAdapter;

    #getter for: Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->mDeletePlace:Lcom/citibikenyc/citibike/models/Place;
    invoke-static {v1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter;->access$5(Lcom/citibikenyc/citibike/helpers/PlaceAdapter;)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/citibikenyc/citibike/helpers/PlaceAdapter$OnDeleteRequestListener;->onDeleteRequest(Lcom/citibikenyc/citibike/models/Place;)V

    .line 119
    :cond_0
    return-void
.end method
