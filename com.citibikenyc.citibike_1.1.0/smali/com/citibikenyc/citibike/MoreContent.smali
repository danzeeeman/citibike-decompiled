.class public Lcom/citibikenyc/citibike/MoreContent;
.super Ljava/lang/Object;
.source "MoreContent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHowItWorksItems(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/MoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/MoreItem;>;"
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00c3

    const v3, 0x7f03001f

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00c4

    const v3, 0x7f030023

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00c5

    const v3, 0x7f030022

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00c6

    const v3, 0x7f030021

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-object v0
.end method

.method public static getMoreItems(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/MoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v6, 0x7f0a00b9

    const v4, 0x7f0a00b8

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/MoreItem;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "TITLE_RESOURCE_ID"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    new-instance v1, Lcom/citibikenyc/citibike/MorePagerFragment;

    invoke-direct {v1}, Lcom/citibikenyc/citibike/MorePagerFragment;-><init>()V

    .line 55
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    new-instance v3, Lcom/citibikenyc/citibike/models/MoreItem;

    invoke-direct {v3, p0, v4, v1}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;ILandroid/support/v4/app/Fragment;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v3, Lcom/citibikenyc/citibike/models/MoreItem;

    const v4, 0x7f0a00ba

    new-instance v5, Lcom/citibikenyc/citibike/MoreFaqFragment;

    invoke-direct {v5}, Lcom/citibikenyc/citibike/MoreFaqFragment;-><init>()V

    invoke-direct {v3, p0, v4, v5}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;ILandroid/support/v4/app/Fragment;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v3, Lcom/citibikenyc/citibike/models/MoreItem;

    const v4, 0x7f0a00bb

    new-instance v5, Lcom/citibikenyc/citibike/AppHelpFragment;

    invoke-direct {v5}, Lcom/citibikenyc/citibike/AppHelpFragment;-><init>()V

    invoke-direct {v3, p0, v4, v5}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;ILandroid/support/v4/app/Fragment;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v3, "TITLE_RESOURCE_ID"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    new-instance v1, Lcom/citibikenyc/citibike/MorePagerFragment;

    .end local v1           #fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/citibikenyc/citibike/MorePagerFragment;-><init>()V

    .line 70
    .restart local v1       #fragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    new-instance v3, Lcom/citibikenyc/citibike/models/MoreItem;

    invoke-direct {v3, p0, v6, v1}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;ILandroid/support/v4/app/Fragment;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v2
.end method

.method public static getMoreItems(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .parameter "context"
    .parameter "titleResourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/MoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 80
    :pswitch_0
    invoke-static {p0}, Lcom/citibikenyc/citibike/MoreContent;->getSafetyItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-static {p0}, Lcom/citibikenyc/citibike/MoreContent;->getHowItWorksItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-static {p0}, Lcom/citibikenyc/citibike/MoreContent;->getPricingItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x7f0a00b7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getPricingItems(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/MoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/MoreItem;>;"
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00c7

    const v3, 0x7f030039

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00c8

    const v3, 0x7f03003a

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-object v0
.end method

.method public static getSafetyItems(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/MoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/MoreItem;>;"
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00bc

    const v3, 0x7f03003d

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00bd

    const v3, 0x7f03003f

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00be

    const v3, 0x7f03003b

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00bf

    const v3, 0x7f030042

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00c0

    const v3, 0x7f030040

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00c1

    const v3, 0x7f03003c

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/citibikenyc/citibike/models/MoreItem;

    const v2, 0x7f0a00c2

    const v3, 0x7f03003e

    invoke-direct {v1, p0, v2, v3}, Lcom/citibikenyc/citibike/models/MoreItem;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-object v0
.end method
