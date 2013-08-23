.class Lcom/citibikenyc/citibike/FavoritesFragment$2;
.super Ljava/lang/Object;
.source "FavoritesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/FavoritesFragment;->onDeleteRequest(Lcom/citibikenyc/citibike/models/Place;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/FavoritesFragment;

.field private final synthetic val$place:Lcom/citibikenyc/citibike/models/Place;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/FavoritesFragment;Lcom/citibikenyc/citibike/models/Place;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/FavoritesFragment$2;->this$0:Lcom/citibikenyc/citibike/FavoritesFragment;

    iput-object p2, p0, Lcom/citibikenyc/citibike/FavoritesFragment$2;->val$place:Lcom/citibikenyc/citibike/models/Place;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment$2;->this$0:Lcom/citibikenyc/citibike/FavoritesFragment;

    #getter for: Lcom/citibikenyc/citibike/FavoritesFragment;->mFavoriteListener:Lcom/citibikenyc/citibike/interfaces/FavoriteListener;
    invoke-static {v0}, Lcom/citibikenyc/citibike/FavoritesFragment;->access$0(Lcom/citibikenyc/citibike/FavoritesFragment;)Lcom/citibikenyc/citibike/interfaces/FavoriteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment$2;->val$place:Lcom/citibikenyc/citibike/models/Place;

    invoke-interface {v0, v1}, Lcom/citibikenyc/citibike/interfaces/FavoriteListener;->removeFavorite(Lcom/citibikenyc/citibike/models/Place;)Z

    .line 266
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment$2;->this$0:Lcom/citibikenyc/citibike/FavoritesFragment;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/FavoritesFragment;->refresh()V

    .line 267
    iget-object v0, p0, Lcom/citibikenyc/citibike/FavoritesFragment$2;->this$0:Lcom/citibikenyc/citibike/FavoritesFragment;

    iget-object v1, p0, Lcom/citibikenyc/citibike/FavoritesFragment$2;->this$0:Lcom/citibikenyc/citibike/FavoritesFragment;

    #getter for: Lcom/citibikenyc/citibike/FavoritesFragment;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/citibikenyc/citibike/FavoritesFragment;->access$1(Lcom/citibikenyc/citibike/FavoritesFragment;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/FavoritesFragment;->onTabChanged(Ljava/lang/String;)V

    .line 268
    return-void
.end method
