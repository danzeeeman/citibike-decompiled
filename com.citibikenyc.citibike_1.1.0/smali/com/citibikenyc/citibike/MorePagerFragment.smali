.class public Lcom/citibikenyc/citibike/MorePagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "MorePagerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/citibikenyc/citibike/interfaces/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/citibikenyc/citibike/MorePagerFragment$MorePageAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/citibikenyc/citibike/interfaces/BackButtonListener;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MoreFragment"

.field public static final TITLE_RESOURCE_ID:Ljava/lang/String; = "TITLE_RESOURCE_ID"


# instance fields
.field public inPager:Z

.field mContainer:Landroid/widget/ListView;

.field mPager:Landroid/support/v4/view/ViewPager;

.field private mTitleResourceId:I

.field private moreItemAdapter:Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;

.field private moreItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/MoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->inPager:Z

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/MorePagerFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->moreItems:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public closeSubview()V
    .locals 3

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->inPager:Z

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->inPager:Z

    .line 196
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MorePagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mContainer:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1, v2}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->swapViewOut(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 41
    const v4, 0x7f030035

    invoke-virtual {p1, v4, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 42
    .local v3, v:Landroid/view/View;
    const v4, 0x7f05009c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mContainer:Landroid/widget/ListView;

    .line 44
    const v4, 0x7f030033

    invoke-virtual {p1, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, moreHeader:Landroid/view/View;
    const v4, 0x7f030032

    invoke-virtual {p1, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, moreFooter:Landroid/view/View;
    if-eqz p3, :cond_1

    const-string v4, "TITLE_RESOURCE_ID"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    const-string v4, "TITLE_RESOURCE_ID"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mTitleResourceId:I

    .line 53
    :goto_0
    iget v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mTitleResourceId:I

    invoke-virtual {p0, v4}, Lcom/citibikenyc/citibike/MorePagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->title:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MorePagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mTitleResourceId:I

    invoke-static {v4, v5}, Lcom/citibikenyc/citibike/MoreContent;->getMoreItems(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->moreItems:Ljava/util/List;

    .line 56
    const v4, 0x7f0500a2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, titleView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 58
    iget-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mContainer:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 62
    iget-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mContainer:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 64
    new-instance v4, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MorePagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f030034

    iget-object v7, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->moreItems:Ljava/util/List;

    invoke-direct {v4, v5, v6, v7}, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->moreItemAdapter:Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;

    .line 65
    iget-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mContainer:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->moreItemAdapter:Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mContainer:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    const v4, 0x7f0500a3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 69
    iget-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/citibikenyc/citibike/MorePagerFragment$MorePageAdapter;

    invoke-direct {v5, p0, v8}, Lcom/citibikenyc/citibike/MorePagerFragment$MorePageAdapter;-><init>(Lcom/citibikenyc/citibike/MorePagerFragment;Lcom/citibikenyc/citibike/MorePagerFragment$MorePageAdapter;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 70
    iget-object v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 72
    return-object v3

    .line 50
    .end local v2           #titleView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MorePagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "TITLE_RESOURCE_ID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mTitleResourceId:I

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->moreItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p3, v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->moreItemAdapter:Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/citibikenyc/citibike/helpers/MoreItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/models/MoreItem;

    .line 89
    .local v0, moreItem:Lcom/citibikenyc/citibike/models/MoreItem;
    iget v1, v0, Lcom/citibikenyc/citibike/models/MoreItem;->resourceId:I

    packed-switch v1, :pswitch_data_0

    .line 131
    :goto_1
    iget-object v1, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 133
    iget-boolean v1, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->inPager:Z

    if-nez v1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MorePagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mContainer:Landroid/widget/ListView;

    invoke-static {v1, v2, v3}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->swapViewIn(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 137
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->inPager:Z

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "safety_info_follow_the_rules"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :pswitch_1
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "safety_info_do_a_preride_check"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :pswitch_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "safety_info_be_predictable"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :pswitch_3
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "safety_info_wear_a_helmet"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :pswitch_4
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "safety_info_report_problems"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :pswitch_5
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "safety_info_bike_smart"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :pswitch_6
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "nyc_cycling_map"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 111
    :pswitch_7
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "more_about"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :pswitch_8
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "more_unlock"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :pswitch_9
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "more_ride"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :pswitch_a
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "more_return"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 123
    :pswitch_b
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "more_pricing_24x7"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 126
    :pswitch_c
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "more_pricing_annual"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f0a00bc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "TITLE_RESOURCE_ID"

    iget v1, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->mTitleResourceId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public showingSubview()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/MorePagerFragment;->inPager:Z

    return v0
.end method
