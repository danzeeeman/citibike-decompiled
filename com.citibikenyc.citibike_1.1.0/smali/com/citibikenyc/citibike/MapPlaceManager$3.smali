.class Lcom/citibikenyc/citibike/MapPlaceManager$3;
.super Ljava/lang/Object;
.source "MapPlaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/MapPlaceManager;->renderRoute(Lcom/citibikenyc/citibike/models/RouteResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/MapPlaceManager;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/MapPlaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$3;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 975
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/citibikenyc/citibike/MapPlaceManager$3;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    #getter for: Lcom/citibikenyc/citibike/MapPlaceManager;->mOverlay:Landroid/view/View;
    invoke-static {v2}, Lcom/citibikenyc/citibike/MapPlaceManager;->access$4(Lcom/citibikenyc/citibike/MapPlaceManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 979
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 980
    const v3, 0x7f0a00b2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 981
    const v3, 0x7f0a00b3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 982
    const v3, 0x104000a

    new-instance v4, Lcom/citibikenyc/citibike/MapPlaceManager$3$1;

    invoke-direct {v4, p0}, Lcom/citibikenyc/citibike/MapPlaceManager$3$1;-><init>(Lcom/citibikenyc/citibike/MapPlaceManager$3;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 989
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 992
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 993
    return-void
.end method
