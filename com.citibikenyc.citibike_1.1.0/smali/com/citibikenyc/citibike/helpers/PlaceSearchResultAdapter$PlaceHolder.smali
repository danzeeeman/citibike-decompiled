.class Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;
.super Ljava/lang/Object;
.source "PlaceSearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceHolder"
.end annotation


# instance fields
.field bikeInfoContainer:Landroid/view/View;

.field bikes:Landroid/widget/TextView;

.field description:Landroid/widget/TextView;

.field distance:Landroid/widget/TextView;

.field distanceUnits:Landroid/widget/TextView;

.field docks:Landroid/widget/TextView;

.field iconHolder:Landroid/widget/ImageView;

.field label:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/citibikenyc/citibike/helpers/PlaceSearchResultAdapter$PlaceHolder;-><init>()V

    return-void
.end method
