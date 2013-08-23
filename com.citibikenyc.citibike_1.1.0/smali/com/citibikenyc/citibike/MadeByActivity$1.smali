.class Lcom/citibikenyc/citibike/MadeByActivity$1;
.super Ljava/lang/Object;
.source "MadeByActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/MadeByActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/MadeByActivity;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/MadeByActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/MadeByActivity$1;->this$0:Lcom/citibikenyc/citibike/MadeByActivity;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/citibikenyc/citibike/MadeByActivity$1;->this$0:Lcom/citibikenyc/citibike/MadeByActivity;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MadeByActivity;->finish()V

    .line 23
    return-void
.end method
