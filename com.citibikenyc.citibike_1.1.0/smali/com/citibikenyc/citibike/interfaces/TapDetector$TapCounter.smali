.class Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;
.super Landroid/os/CountDownTimer;
.source "TapDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/interfaces/TapDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TapCounter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/interfaces/TapDetector;


# direct methods
.method public constructor <init>(Lcom/citibikenyc/citibike/interfaces/TapDetector;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->this$0:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    .line 89
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 90
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->this$0:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    #getter for: Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->access$0(Lcom/citibikenyc/citibike/interfaces/TapDetector;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->this$0:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    #getter for: Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I
    invoke-static {v0}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->access$1(Lcom/citibikenyc/citibike/interfaces/TapDetector;)I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->this$0:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    iget-object v1, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->this$0:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    #getter for: Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->access$0(Lcom/citibikenyc/citibike/interfaces/TapDetector;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->this$0:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    #getter for: Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->access$0(Lcom/citibikenyc/citibike/interfaces/TapDetector;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->this$0:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    #getter for: Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I
    invoke-static {v3}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->access$1(Lcom/citibikenyc/citibike/interfaces/TapDetector;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->addPoint(FFI)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->this$0:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    const/4 v1, 0x0

    #setter for: Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapCount:I
    invoke-static {v0, v1}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->access$2(Lcom/citibikenyc/citibike/interfaces/TapDetector;I)V

    .line 99
    iget-object v0, p0, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->this$0:Lcom/citibikenyc/citibike/interfaces/TapDetector;

    const/4 v1, 0x0

    #setter for: Lcom/citibikenyc/citibike/interfaces/TapDetector;->mLastTapArea:Landroid/graphics/RectF;
    invoke-static {v0, v1}, Lcom/citibikenyc/citibike/interfaces/TapDetector;->access$3(Lcom/citibikenyc/citibike/interfaces/TapDetector;Landroid/graphics/RectF;)V

    .line 101
    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 105
    return-void
.end method

.method public resetCounter()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/interfaces/TapDetector$TapCounter;->start()Landroid/os/CountDownTimer;

    .line 109
    return-void
.end method
