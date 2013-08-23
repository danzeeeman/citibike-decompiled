.class Lcom/citibikenyc/citibike/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/MainActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
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
    iput-object p1, p0, Lcom/citibikenyc/citibike/MainActivity$4;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v2, 0x7f050095

    .line 335
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$4;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    #getter for: Lcom/citibikenyc/citibike/MainActivity;->menuFragment:Lcom/citibikenyc/citibike/MainMenuFragment;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MainActivity;->access$3(Lcom/citibikenyc/citibike/MainActivity;)Lcom/citibikenyc/citibike/MainMenuFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity$4;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    invoke-virtual {v1, v2}, Lcom/citibikenyc/citibike/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/MainMenuFragment;->setSelected(Landroid/view/View;)V

    .line 336
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$4;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    invoke-virtual {v0, v2}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    .line 337
    return-void
.end method
