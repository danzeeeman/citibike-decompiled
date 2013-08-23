.class Lcom/citibikenyc/citibike/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/citibikenyc/citibike/interfaces/TapDetector$OnTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/MainActivity;
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
    iput-object p1, p0, Lcom/citibikenyc/citibike/MainActivity$2;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 1210
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTap()Z
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$2;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    #calls: Lcom/citibikenyc/citibike/MainActivity;->handleHomeSingleTap()V
    invoke-static {v0}, Lcom/citibikenyc/citibike/MainActivity;->access$2(Lcom/citibikenyc/citibike/MainActivity;)V

    .line 1205
    const/4 v0, 0x1

    return v0
.end method

.method public onTripleTap()Z
    .locals 4

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/citibikenyc/citibike/MainActivity$2;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/citibikenyc/citibike/MainActivity$2;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    const-class v3, Lcom/citibikenyc/citibike/MadeByActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/citibikenyc/citibike/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1199
    const/4 v0, 0x1

    return v0
.end method
