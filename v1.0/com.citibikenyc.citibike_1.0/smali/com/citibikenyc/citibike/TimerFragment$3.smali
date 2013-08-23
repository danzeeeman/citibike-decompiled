.class Lcom/citibikenyc/citibike/TimerFragment$3;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/TimerFragment;->setTimerStartAction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/TimerFragment;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/TimerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/TimerFragment$3;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 224
    const-string v0, "TimerFragment"

    const-string v1, "onTimerStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/citibikenyc/citibike/TimerFragment$3;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v0, v0, Lcom/citibikenyc/citibike/TimerFragment;->mBikeTimer:Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;

    invoke-interface {v0}, Lcom/citibikenyc/citibike/interfaces/BikeTimerActionListener;->start()V

    .line 226
    iget-object v0, p0, Lcom/citibikenyc/citibike/TimerFragment$3;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v0, v0, Lcom/citibikenyc/citibike/TimerFragment;->startButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/citibikenyc/citibike/TimerFragment$3;->this$0:Lcom/citibikenyc/citibike/TimerFragment;

    iget-object v0, v0, Lcom/citibikenyc/citibike/TimerFragment;->stopButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    return-void
.end method
