.class Lcom/citibikenyc/citibike/ViewServer$NoopViewServer;
.super Lcom/citibikenyc/citibike/ViewServer;
.source "ViewServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoopViewServer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/ViewServer;-><init>(Lcom/citibikenyc/citibike/ViewServer;)V

    .line 503
    return-void
.end method

.method synthetic constructor <init>(Lcom/citibikenyc/citibike/ViewServer$NoopViewServer;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/citibikenyc/citibike/ViewServer$NoopViewServer;-><init>()V

    return-void
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 522
    return-void
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "name"

    .prologue
    .line 530
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 526
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 534
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 538
    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 542
    return-void
.end method

.method public start()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method
