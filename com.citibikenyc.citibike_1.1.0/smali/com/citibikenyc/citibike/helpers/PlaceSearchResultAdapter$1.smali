.class Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;
.super Landroid/widget/Filter;
.source "PlaceSearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    .line 211
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 214
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 215
    .local v0, filterResults:Landroid/widget/Filter$FilterResults;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, values:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/Place;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 218
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    #getter for: Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->access$1(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, filterStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    #getter for: Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mExcludeCurrentLocation:Z
    invoke-static {v3}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->access$2(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    #getter for: Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mCurrentPlace:Lcom/citibikenyc/citibike/models/Place;
    invoke-static {v3}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->access$3(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Lcom/citibikenyc/citibike/models/Place;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v4, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    #getter for: Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mStations:Ljava/util/SortedSet;
    invoke-static {v4}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->access$4(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Ljava/util/SortedSet;

    move-result-object v4

    #calls: Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->copyFilteredItems(Ljava/lang/String;Ljava/util/Collection;Ljava/util/List;)V
    invoke-static {v3, v1, v4, v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->access$5(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;Ljava/lang/String;Ljava/util/Collection;Ljava/util/List;)V

    .line 225
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v4, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    #getter for: Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mGooglePlaces:Ljava/util/List;
    invoke-static {v4}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->access$6(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Ljava/util/List;

    move-result-object v4

    #calls: Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->copyFilteredItems(Ljava/lang/String;Ljava/util/Collection;Ljava/util/List;)V
    invoke-static {v3, v1, v4, v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->access$5(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;Ljava/lang/String;Ljava/util/Collection;Ljava/util/List;)V

    .line 226
    iget-object v3, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v4, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    #getter for: Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPois:Ljava/util/SortedSet;
    invoke-static {v4}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->access$7(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;)Ljava/util/SortedSet;

    move-result-object v4

    #calls: Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->copyFilteredItems(Ljava/lang/String;Ljava/util/Collection;Ljava/util/List;)V
    invoke-static {v3, v1, v4, v2}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->access$5(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;Ljava/lang/String;Ljava/util/Collection;Ljava/util/List;)V

    .line 230
    .end local v1           #filterStr:Ljava/lang/String;
    :cond_1
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 231
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 233
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->mPlaces:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->access$8(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;Ljava/util/List;)V

    .line 241
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$1;->this$0:Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;->notifyDataSetChanged()V

    .line 242
    return-void
.end method
