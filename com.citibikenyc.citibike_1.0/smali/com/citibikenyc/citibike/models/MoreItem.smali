.class public Lcom/citibikenyc/citibike/models/MoreItem;
.super Ljava/lang/Object;
.source "MoreItem.java"


# instance fields
.field public fragment:Landroid/support/v4/app/Fragment;

.field public label:Ljava/lang/String;

.field public layoutId:I

.field public resourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "resourceId"
    .parameter "layoutId"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p2, p0, Lcom/citibikenyc/citibike/models/MoreItem;->resourceId:I

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/MoreItem;->label:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/citibikenyc/citibike/models/MoreItem;->layoutId:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "context"
    .parameter "resourceId"
    .parameter "fragment"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p2, p0, Lcom/citibikenyc/citibike/models/MoreItem;->resourceId:I

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/models/MoreItem;->label:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/citibikenyc/citibike/models/MoreItem;->fragment:Landroid/support/v4/app/Fragment;

    .line 22
    return-void
.end method
