.class public Lcom/slidingmenu/lib/app/SlidingActivityHelper;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBroadcasting:Z

.field private mEnableSlide:Z

.field private mOnPostCreateCalled:Z

.field private mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

.field private mViewAbove:Landroid/view/View;

.field private mViewBehind:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mBroadcasting:Z

    .line 27
    iput-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mEnableSlide:Z

    .line 37
    iput-object p1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    .line 38
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, p1}, Lcom/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 118
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/slidingmenu/lib/R$layout;->slidingmenumain:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/slidingmenu/lib/SlidingMenu;

    iput-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    .line 47
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 215
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showContent()V

    .line 217
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 55
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    if-nez v5, :cond_1

    .line 56
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Both setBehindContentView must be called in onCreate in addition to setContentView."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    :cond_1
    iput-boolean v6, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    .line 63
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    new-array v6, v6, [I

    const v7, 0x1010054

    aput v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 65
    .local v1, background:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    iget-boolean v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mEnableSlide:Z

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 70
    .local v2, decor:Landroid/view/ViewGroup;
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 72
    .local v3, decorChild:Landroid/view/ViewGroup;
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 73
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v5, v3}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 75
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    .end local v2           #decor:Landroid/view/ViewGroup;
    .end local v3           #decorChild:Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->showContent()V

    .line 90
    return-void

    .line 78
    :cond_2
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 79
    .local v4, parent:Landroid/view/ViewGroup;
    if-eqz v4, :cond_3

    .line 80
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    :cond_3
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_4

    .line 84
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    :cond_4
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v6, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 87
    iget-object v5, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 129
    const-string v0, "menuOpen"

    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mBroadcasting:Z

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    .line 141
    :cond_0
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "layoutParams"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mBroadcasting:Z

    .line 154
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 2
    .parameter "slidingActionBarEnabled"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "enableSlidingActionBar must be called in onCreate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-boolean p1, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mEnableSlide:Z

    .line 103
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 190
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu()V

    .line 197
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->showSecondaryMenu()V

    .line 205
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->toggle()V

    .line 183
    return-void
.end method
