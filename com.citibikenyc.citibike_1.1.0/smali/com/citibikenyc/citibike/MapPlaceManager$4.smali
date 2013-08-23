.class Lcom/citibikenyc/citibike/MapPlaceManager$4;
.super Ljava/lang/Object;
.source "MapPlaceManager.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/MapPlaceManager;->clearRoute()V
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
    iput-object p1, p0, Lcom/citibikenyc/citibike/MapPlaceManager$4;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager$4;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeRouteItems()V

    .line 1034
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/citibikenyc/citibike/MapPlaceManager$4;->this$0:Lcom/citibikenyc/citibike/MapPlaceManager;

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MapPlaceManager;->removeRouteItems()V

    .line 1039
    return-void
.end method
