.class Lcom/citibikenyc/citibike/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/MainActivity;->favoriteLocation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/MainActivity;

.field private final synthetic val$loaderView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/MainActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/MainActivity$7;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    iput-object p2, p0, Lcom/citibikenyc/citibike/MainActivity$7;->val$loaderView:Landroid/view/View;

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$7;->val$loaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$7;->val$loaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 849
    return-void
.end method
