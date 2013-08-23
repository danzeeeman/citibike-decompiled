.class public Lcom/slidingmenu/lib/app/SlidingListActivity;
.super Landroid/app/ListActivity;
.source "SlidingListActivity.java"

# interfaces
.implements Lcom/slidingmenu/lib/app/SlidingActivityBase;


# instance fields
.field private mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 46
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v1, Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-direct {v1, p0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    .line 23
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, listView:Landroid/widget/ListView;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 153
    .local v0, b:Z
    if-eqz v0, :cond_0

    .line 154
    .end local v0           #b:Z
    :goto_0
    return v0

    .restart local v0       #b:Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public setBehindContentView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->setBehindContentView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, -0x1

    .line 94
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, -0x1

    .line 71
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->setSlidingActionBarEnabled(Z)V

    .line 145
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showContent()V

    .line 123
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showMenu()V

    .line 130
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showSecondaryMenu()V

    .line 138
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->toggle()V

    .line 116
    return-void
.end method
