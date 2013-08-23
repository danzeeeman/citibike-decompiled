.class Lcom/citibikenyc/citibike/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V
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
    iput-object p1, p0, Lcom/citibikenyc/citibike/MainActivity$3;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$3;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    #getter for: Lcom/citibikenyc/citibike/MainActivity;->menu:Lcom/slidingmenu/lib/SlidingMenu;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MainActivity;->access$1(Lcom/citibikenyc/citibike/MainActivity;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 497
    return-void
.end method
