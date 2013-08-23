.class public Lcom/citibikenyc/citibike/models/transport/TScoopPlace;
.super Ljava/lang/Object;
.source "TScoopPlace.java"


# instance fields
.field public address:Lcom/citibikenyc/citibike/models/transport/TAddress;

.field public category:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public price:Ljava/lang/Double;

.field public review:Ljava/lang/String;

.field public reviewer:Ljava/lang/String;

.field public stars:Ljava/lang/Float;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedID()I
    .locals 4

    .prologue
    .line 16
    iget-object v1, p0, Lcom/citibikenyc/citibike/models/transport/TScoopPlace;->id:Ljava/lang/String;

    const-string v2, "[^\\d]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, ID:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
