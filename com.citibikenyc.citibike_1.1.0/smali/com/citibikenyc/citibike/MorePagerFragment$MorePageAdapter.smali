.class Lcom/citibikenyc/citibike/MorePagerFragment$MorePageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MorePagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/MorePagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MorePageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/MorePagerFragment;


# direct methods
.method private constructor <init>(Lcom/citibikenyc/citibike/MorePagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/citibikenyc/citibike/MorePagerFragment$MorePageAdapter;->this$0:Lcom/citibikenyc/citibike/MorePagerFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/citibikenyc/citibike/MorePagerFragment;Lcom/citibikenyc/citibike/MorePagerFragment$MorePageAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MorePagerFragment$MorePageAdapter;-><init>(Lcom/citibikenyc/citibike/MorePagerFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 161
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 166
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/citibikenyc/citibike/MorePagerFragment$MorePageAdapter;->this$0:Lcom/citibikenyc/citibike/MorePagerFragment;

    #getter for: Lcom/citibikenyc/citibike/MorePagerFragment;->moreItems:Ljava/util/List;
    invoke-static {v0}, Lcom/citibikenyc/citibike/MorePagerFragment;->access$0(Lcom/citibikenyc/citibike/MorePagerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 6
    .parameter "collection"
    .parameter "position"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 148
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment$MorePageAdapter;->this$0:Lcom/citibikenyc/citibike/MorePagerFragment;

    #getter for: Lcom/citibikenyc/citibike/MorePagerFragment;->moreItems:Ljava/util/List;
    invoke-static {v4}, Lcom/citibikenyc/citibike/MorePagerFragment;->access$0(Lcom/citibikenyc/citibike/MorePagerFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/MoreItem;

    .line 149
    .local v1, item:Lcom/citibikenyc/citibike/models/MoreItem;
    iget v2, v1, Lcom/citibikenyc/citibike/models/MoreItem;->layoutId:I

    .line 151
    .local v2, resId:I
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 153
    .local v3, view:Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 155
    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 170
    check-cast p2, Landroid/view/View;

    .end local p2
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 175
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 184
    return-void
.end method
