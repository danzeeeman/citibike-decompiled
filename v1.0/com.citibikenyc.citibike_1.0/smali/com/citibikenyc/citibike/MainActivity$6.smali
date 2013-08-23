.class Lcom/citibikenyc/citibike/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/MainActivity;->onCreateDetailsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/MainActivity;

.field private final synthetic val$mapView:Landroid/view/View;

.field private final synthetic val$maxScroll:I


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/MainActivity;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/MainActivity$6;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    iput p2, p0, Lcom/citibikenyc/citibike/MainActivity$6;->val$maxScroll:I

    iput-object p3, p0, Lcom/citibikenyc/citibike/MainActivity$6;->val$mapView:Landroid/view/View;

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 785
    .local v0, scrollY:I
    iget v1, p0, Lcom/citibikenyc/citibike/MainActivity$6;->val$maxScroll:I

    if-gt v0, v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/citibikenyc/citibike/MainActivity$6;->val$mapView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollTo(II)V

    .line 789
    :cond_0
    return v2
.end method
