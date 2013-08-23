.class Lcom/citibikenyc/citibike/helpers/ViewHelper$1;
.super Ljava/lang/Object;
.source "ViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/helpers/ViewHelper;->swapViewIn(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$inView:Landroid/view/View;

.field private final synthetic val$outView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/helpers/ViewHelper$1;->val$outView:Landroid/view/View;

    iput-object p2, p0, Lcom/citibikenyc/citibike/helpers/ViewHelper$1;->val$inView:Landroid/view/View;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/ViewHelper$1;->val$outView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/ViewHelper$1;->val$outView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 81
    iget-object v0, p0, Lcom/citibikenyc/citibike/helpers/ViewHelper$1;->val$inView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 82
    return-void
.end method
