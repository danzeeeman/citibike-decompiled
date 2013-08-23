.class Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/widget/PopupWindow$OnDismissListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserView;Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V

    return-void
.end method

.method private notifyOnDismissListener()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$9(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$9(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 622
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 580
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$5(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 581
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->dismissPopup()Z

    .line 582
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 583
    .local v0, defaultActivity:Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    .line 584
    .local v1, index:I
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 585
    .local v2, launchIntent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 586
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$4(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 594
    .end local v0           #defaultActivity:Landroid/content/pm/ResolveInfo;
    .end local v1           #index:I
    .end local v2           #launchIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$6(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 589
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    const/4 v4, 0x0

    #setter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v3, v4}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$7(Lcom/actionbarsherlock/widget/ActivityChooserView;Z)V

    .line 590
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mInitialActivityCount:I
    invoke-static {v4}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$8(Lcom/actionbarsherlock/widget/ActivityChooserView;)I

    move-result v4

    #calls: Lcom/actionbarsherlock/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v3, v4}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$2(Lcom/actionbarsherlock/widget/ActivityChooserView;I)V

    goto :goto_0

    .line 592
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    .line 613
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 616
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 550
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 551
    .local v0, adapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v1

    .line 552
    .local v1, itemViewType:I
    packed-switch v1, :pswitch_data_0

    .line 574
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 554
    :pswitch_0
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    const v4, 0x7fffffff

    #calls: Lcom/actionbarsherlock/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v3, v4}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$2(Lcom/actionbarsherlock/widget/ActivityChooserView;I)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 557
    :pswitch_1
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->dismissPopup()Z

    .line 558
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$3(Lcom/actionbarsherlock/widget/ActivityChooserView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    if-lez p3, :cond_0

    .line 561
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_0

    .line 566
    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    :goto_1
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v2

    .line 568
    .local v2, launchIntent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 569
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$4(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 566
    .end local v2           #launchIntent:Landroid/content/Intent;
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 552
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 599
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$5(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #setter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v0, v2}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$7(Lcom/actionbarsherlock/widget/ActivityChooserView;Z)V

    .line 602
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mInitialActivityCount:I
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$8(Lcom/actionbarsherlock/widget/ActivityChooserView;)I

    move-result v1

    #calls: Lcom/actionbarsherlock/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$2(Lcom/actionbarsherlock/widget/ActivityChooserView;I)V

    .line 607
    :cond_0
    return v2

    .line 605
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
