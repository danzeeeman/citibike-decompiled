.class public Lcom/slidingmenu/lib/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;,
        Lcom/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final TAG:Ljava/lang/String; = "CustomViewAbove"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected mActivePointerId:I

.field private mClosedListener:Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;

.field private mContent:Landroid/view/View;

.field private mCurItem:I

.field private mEnabled:Z

.field private mFlingDistance:I

.field private mIgnoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

.field private mOpenedListener:Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;

.field private mQuickReturn:Z

.field private mScrollX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field protected mTouchMode:I

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/slidingmenu/lib/CustomViewAbove$1;

    invoke-direct {v0}, Lcom/slidingmenu/lib/CustomViewAbove$1;-><init>()V

    sput-object v0, Lcom/slidingmenu/lib/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    .line 564
    iput v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    .line 610
    iput-boolean v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    .line 850
    const/4 v0, 0x0

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    .line 156
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->initCustomViewAbove()V

    .line 157
    return-void
.end method

.method static synthetic access$0(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    return-object v0
.end method

.method private completeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 541
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    .line 542
    .local v0, needPopulate:Z
    if-eqz v0, :cond_2

    .line 544
    invoke-direct {p0, v6}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 545
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 546
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 547
    .local v1, oldX:I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 548
    .local v2, oldY:I
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 549
    .local v3, x:I
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 550
    .local v4, y:I
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 551
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 554
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    if-eqz v5, :cond_2

    .line 555
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    invoke-interface {v5}, Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;->onOpened()V

    .line 561
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    .line 562
    return-void

    .line 557
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_3
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;

    if-eqz v5, :cond_2

    .line 558
    iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;

    invoke-interface {v5}, Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0
.end method

.method private determineTargetPage(FII)I
    .locals 3
    .parameter "pageOffset"
    .parameter "velocity"
    .parameter "deltaX"

    .prologue
    .line 822
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    .line 823
    .local v0, targetPage:I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFlingDistance:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_2

    .line 824
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 825
    add-int/lit8 v0, v0, -0x1

    .line 832
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    :cond_2
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 874
    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    .line 875
    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 876
    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    .line 877
    const/4 v0, -0x1

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 879
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 883
    :cond_0
    return-void
.end method

.method private getLeftBound()I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->getAbsLeftBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2
    .parameter "ev"
    .parameter "id"

    .prologue
    const/4 v1, -0x1

    .line 604
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 605
    .local v0, activePointerIndex:I
    if-ne v0, v1, :cond_0

    .line 606
    iput v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 607
    :cond_0
    return v0
.end method

.method private getRightBound()I
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->getAbsRightBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 333
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 334
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 338
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 334
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 335
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 854
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 855
    .local v2, pointerIndex:I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 856
    .local v1, pointerId:I
    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 859
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 860
    .local v0, newPointerIndex:I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 861
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 862
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 863
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 866
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 859
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)V
    .locals 6
    .parameter "xpos"

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getWidth()I

    move-result v3

    .line 512
    .local v3, widthWithMargin:I
    div-int v2, p1, v3

    .line 513
    .local v2, position:I
    rem-int v1, p1, v3

    .line 514
    .local v1, offsetPixels:I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 516
    .local v0, offset:F
    invoke-virtual {p0, v2, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->onPageScrolled(IFI)V

    .line 517
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 887
    iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollingCacheEnabled:Z

    .line 898
    :cond_0
    return-void
.end method

.method private startDrag()V
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    .line 871
    return-void
.end method

.method private thisSlideAllowed(F)Z
    .locals 2
    .parameter "dx"

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, allowed:Z
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->menuOpenSlideAllowed(F)Z

    move-result v0

    .line 600
    :goto_0
    return v0

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->menuClosedSlideAllowed(F)Z

    move-result v0

    goto :goto_0
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 576
    .local v0, x:I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    int-to-float v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/slidingmenu/lib/CustomViewBehind;->menuOpenTouchAllowed(Landroid/view/View;IF)Z

    move-result v1

    .line 588
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 579
    :cond_1
    iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 585
    :pswitch_1
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->marginTouchAllowed(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0

    .line 581
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 974
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 975
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 977
    :cond_0
    const/4 v1, 0x0

    .line 979
    .local v1, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 981
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 982
    if-ne p1, v4, :cond_3

    .line 983
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 1000
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1001
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->playSoundEffect(I)V

    .line 1003
    :cond_2
    return v1

    .line 984
    :cond_3
    if-ne p1, v5, :cond_1

    .line 987
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 988
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0

    .line 990
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 993
    :cond_5
    if-eq p1, v4, :cond_6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 995
    :cond_6
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->pageLeft()Z

    move-result v1

    goto :goto_0

    .line 996
    :cond_7
    if-eq p1, v5, :cond_8

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 998
    :cond_8
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 912
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 913
    check-cast v7, Landroid/view/ViewGroup;

    .line 914
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 915
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 916
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 918
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-gez v8, :cond_1

    .line 929
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_0
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 919
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_1
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 920
    .local v1, child:Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 921
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 922
    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    .line 923
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 922
    invoke-virtual/range {v0 .. v5}, Lcom/slidingmenu/lib/CustomViewAbove;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 924
    const/4 v0, 0x1

    goto :goto_1

    .line 918
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 929
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 488
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 489
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 491
    .local v0, oldX:I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 492
    .local v1, oldY:I
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 493
    .local v2, x:I
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 495
    .local v3, y:I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 496
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 497
    invoke-direct {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->pageScrolled(I)V

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->invalidate()V

    .line 508
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_0
    return-void

    .line 507
    :cond_2
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 842
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 844
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 845
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/slidingmenu/lib/CustomViewBehind;->drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 846
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/slidingmenu/lib/CustomViewBehind;->drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 847
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 936
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 300
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 301
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 302
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 948
    const/4 v0, 0x0

    .line 949
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 950
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 970
    :cond_0
    :goto_0
    return v0

    .line 952
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 953
    goto :goto_0

    .line 955
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 956
    goto :goto_0

    .line 958
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 961
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 963
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 950
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getChildWidth(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 350
    packed-switch p1, :pswitch_data_0

    .line 356
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 352
    :pswitch_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v0

    goto :goto_0

    .line 354
    :pswitch_1
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    return v0
.end method

.method public getDestScrollX(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 306
    packed-switch p1, :pswitch_data_0

    .line 313
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 309
    :pswitch_0
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->getMenuLeft(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 837
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    return v0
.end method

.method initCustomViewAbove()V
    .locals 5

    .prologue
    .line 160
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->setWillNotDraw(Z)V

    .line 161
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->setDescendantFocusability(I)V

    .line 162
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->setFocusable(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 164
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/slidingmenu/lib/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    .line 165
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 166
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    .line 167
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mMinimumVelocity:I

    .line 168
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mMaximumVelocity:I

    .line 169
    new-instance v3, Lcom/slidingmenu/lib/CustomViewAbove$2;

    invoke-direct {v3, p0}, Lcom/slidingmenu/lib/CustomViewAbove$2;-><init>(Lcom/slidingmenu/lib/CustomViewAbove;)V

    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->setInternalPageChangeListener(Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 185
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 186
    .local v2, density:F
    const/high16 v3, 0x41c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mFlingDistance:I

    .line 187
    return-void
.end method

.method public isMenuOpen()Z
    .locals 2

    .prologue
    .line 329
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 616
    iget-boolean v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    if-nez v8, :cond_0

    .line 617
    const/4 v8, 0x0

    .line 678
    :goto_0
    return v8

    .line 619
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 624
    .local v0, action:I
    const/4 v8, 0x3

    if-eq v0, v8, :cond_1

    const/4 v8, 0x1

    if-eq v0, v8, :cond_1

    .line 625
    if-eqz v0, :cond_2

    iget-boolean v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    if-eqz v8, :cond_2

    .line 626
    :cond_1
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->endDrag()V

    .line 627
    const/4 v8, 0x0

    goto :goto_0

    .line 630
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 672
    :cond_3
    :goto_1
    iget-boolean v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v8, :cond_5

    .line 673
    iget-object v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_4

    .line 674
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 676
    :cond_4
    iget-object v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 678
    :cond_5
    iget-boolean v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    if-nez v8, :cond_9

    const/4 v8, 0x0

    goto :goto_0

    .line 632
    :sswitch_0
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 633
    .local v1, activePointerId:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_3

    .line 635
    invoke-direct {p0, p1, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 636
    .local v3, pointerIndex:I
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 637
    .local v4, x:F
    iget v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    sub-float v2, v4, v8

    .line 638
    .local v2, dx:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 639
    .local v5, xDiff:F
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 640
    .local v6, y:F
    iget v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 642
    .local v7, yDiff:F
    iget v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_6

    cmpl-float v8, v5, v7

    if-lez v8, :cond_6

    invoke-direct {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 644
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->startDrag()V

    .line 645
    iput v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 646
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 647
    :cond_6
    iget v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_3

    .line 648
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_1

    .line 653
    .end local v1           #activePointerId:I
    .end local v2           #dx:F
    .end local v3           #pointerIndex:I
    .end local v4           #x:F
    .end local v5           #xDiff:F
    .end local v6           #y:F
    .end local v7           #yDiff:F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x8

    if-lt v8, v10, :cond_7

    const v8, 0xff00

    .line 654
    :goto_2
    and-int/2addr v8, v9

    .line 653
    iput v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 655
    iget v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    iput v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    iput v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 656
    iget v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    iput v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    .line 657
    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 658
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    .line 659
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    .line 660
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    iget-object v9, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    iget v10, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget v12, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    add-float/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/slidingmenu/lib/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 661
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    goto/16 :goto_1

    .line 654
    :cond_7
    const v8, 0xff00

    goto :goto_2

    .line 664
    :cond_8
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 668
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 678
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 630
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 473
    sub-int v1, p4, p2

    .line 474
    .local v1, width:I
    sub-int v0, p5, p3

    .line 475
    .local v0, height:I
    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 476
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x0

    .line 449
    invoke-static {v4, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v3

    .line 450
    .local v3, width:I
    invoke-static {v4, p2}, Lcom/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v2

    .line 451
    .local v2, height:I
    invoke-virtual {p0, v3, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->setMeasuredDimension(II)V

    .line 453
    invoke-static {p1, v4, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 454
    .local v1, contentWidth:I
    invoke-static {p2, v4, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 455
    .local v0, contentHeight:I
    iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 456
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "offsetPixels"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 538
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 462
    if-eq p1, p3, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 467
    iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 469
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "ev"

    .prologue
    .line 685
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 686
    const/16 v23, 0x0

    .line 808
    :goto_0
    return v23

    .line 691
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 692
    const/16 v23, 0x0

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 696
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 697
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 699
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 701
    and-int/lit16 v0, v4, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 808
    :cond_3
    :goto_1
    :pswitch_0
    const/16 v23, 0x1

    goto :goto_0

    .line 707
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 710
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 711
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    goto :goto_1

    .line 714
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-nez v23, :cond_5

    .line 715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 717
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 718
    .local v14, pointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 719
    .local v19, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v7, v19, v23

    .line 720
    .local v7, dx:F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 721
    .local v20, xDiff:F
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v21

    .line 722
    .local v21, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionY:F

    move/from16 v23, v0

    sub-float v23, v21, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 724
    .local v22, yDiff:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v20, v23

    if-gtz v23, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    :cond_4
    cmpl-float v23, v20, v22

    if-lez v23, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/slidingmenu/lib/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->startDrag()V

    .line 727
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 728
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 734
    .end local v7           #dx:F
    .end local v14           #pointerIndex:I
    .end local v19           #x:F
    .end local v20           #xDiff:F
    .end local v21           #y:F
    .end local v22           #yDiff:F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 736
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 737
    .local v5, activePointerIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 740
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 741
    .restart local v19       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v6, v23, v19

    .line 742
    .local v6, deltaX:F
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v12, v0

    .line 744
    .local v12, oldScrollX:F
    add-float v16, v12, v6

    .line 745
    .local v16, scrollX:F
    invoke-direct/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getLeftBound()I

    move-result v23

    move/from16 v0, v23

    int-to-float v10, v0

    .line 746
    .local v10, leftBound:F
    invoke-direct/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getRightBound()I

    move-result v23

    move/from16 v0, v23

    int-to-float v15, v0

    .line 747
    .local v15, rightBound:F
    cmpg-float v23, v16, v10

    if-gez v23, :cond_8

    .line 748
    move/from16 v16, v10

    .line 753
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v16, v24

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 754
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 755
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_1

    .line 731
    .end local v5           #activePointerIndex:I
    .end local v6           #deltaX:F
    .end local v10           #leftBound:F
    .end local v12           #oldScrollX:F
    .end local v15           #rightBound:F
    .end local v16           #scrollX:F
    .restart local v7       #dx:F
    .restart local v14       #pointerIndex:I
    .restart local v20       #xDiff:F
    .restart local v21       #y:F
    .restart local v22       #yDiff:F
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 749
    .end local v7           #dx:F
    .end local v14           #pointerIndex:I
    .end local v20           #xDiff:F
    .end local v21           #y:F
    .end local v22           #yDiff:F
    .restart local v5       #activePointerIndex:I
    .restart local v6       #deltaX:F
    .restart local v10       #leftBound:F
    .restart local v12       #oldScrollX:F
    .restart local v15       #rightBound:F
    .restart local v16       #scrollX:F
    :cond_8
    cmpl-float v23, v16, v15

    if-lez v23, :cond_6

    .line 750
    move/from16 v16, v15

    goto :goto_2

    .line 759
    .end local v5           #activePointerIndex:I
    .end local v6           #deltaX:F
    .end local v10           #leftBound:F
    .end local v12           #oldScrollX:F
    .end local v15           #rightBound:F
    .end local v16           #scrollX:F
    .end local v19           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 761
    .local v18, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v23, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    .line 762
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v9, v0

    .line 764
    .local v9, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v16

    .line 768
    .local v16, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getDestScrollX(I)I

    move-result v23

    sub-int v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v13, v23, v24

    .line 769
    .local v13, pageOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 770
    .restart local v5       #activePointerIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 771
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 772
    .restart local v19       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mInitialMotionX:F

    move/from16 v23, v0

    sub-float v23, v19, v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 773
    .local v17, totalDelta:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v9, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->determineTargetPage(FII)I

    move-result v11

    .line 774
    .local v11, nextPage:I
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 778
    .end local v11           #nextPage:I
    .end local v17           #totalDelta:I
    .end local v19           #x:F
    :goto_3
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 779
    invoke-direct/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 776
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_3

    .line 780
    .end local v5           #activePointerIndex:I
    .end local v9           #initialVelocity:I
    .end local v13           #pageOffset:F
    .end local v16           #scrollX:I
    .end local v18           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mQuickReturn:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    move/from16 v27, v0

    add-float v26, v26, v27

    invoke-virtual/range {v23 .. v26}, Lcom/slidingmenu/lib/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 782
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 783
    invoke-direct/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 787
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 788
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 789
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    .line 790
    invoke-direct/range {p0 .. p0}, Lcom/slidingmenu/lib/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 794
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 795
    .local v8, index:I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 796
    .restart local v19       #x:F
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    .line 797
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    goto/16 :goto_1

    .line 801
    .end local v8           #index:I
    .end local v19           #x:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/slidingmenu/lib/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 802
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 803
    .restart local v14       #pointerIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 805
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slidingmenu/lib/CustomViewAbove;->mLastMotionX:F

    goto/16 :goto_1

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1007
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-lez v1, :cond_0

    .line 1008
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1011
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1015
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ge v1, v0, :cond_0

    .line 1016
    iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1019
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 813
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 814
    int-to-float v0, p1

    iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrollX:F

    .line 815
    iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/slidingmenu/lib/CustomViewBehind;->scrollBehindTo(Landroid/view/View;II)V

    .line 819
    :cond_0
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 482
    iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 481
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 483
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 434
    :cond_0
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    .line 435
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->addView(Landroid/view/View;)V

    .line 436
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 197
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 198
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 208
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 216
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 219
    if-nez p3, :cond_0

    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-ne v3, p1, :cond_0

    .line 220
    invoke-direct {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 241
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v3, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->getMenuPage(I)I

    move-result p1

    .line 226
    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    if-eq v3, p1, :cond_3

    const/4 v1, 0x1

    .line 227
    .local v1, dispatchSelected:Z
    :goto_1
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    .line 228
    iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    .line 229
    .local v0, destX:I
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 232
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 233
    iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 235
    :cond_2
    if-eqz p2, :cond_4

    .line 236
    invoke-virtual {p0, v0, v2, p4}, Lcom/slidingmenu/lib/CustomViewAbove;->smoothScrollTo(III)V

    goto :goto_0

    .end local v0           #destX:I
    .end local v1           #dispatchSelected:Z
    :cond_3
    move v1, v2

    .line 226
    goto :goto_1

    .line 238
    .restart local v0       #destX:I
    .restart local v1       #dispatchSelected:Z
    :cond_4
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 239
    invoke-virtual {p0, v0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCustomViewBehind(Lcom/slidingmenu/lib/CustomViewBehind;)V
    .locals 0
    .parameter "cvb"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    .line 444
    return-void
.end method

.method setInternalPageChangeListener(Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 277
    .local v0, oldListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mInternalPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 278
    return-object v0
.end method

.method public setOnClosedListener(Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;

    .line 267
    return-void
.end method

.method public setOnOpenedListener(Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    .line 263
    return-void
.end method

.method public setOnPageChangeListener(Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOnPageChangeListener:Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

    .line 251
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mEnabled:Z

    .line 366
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 567
    iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mTouchMode:I

    .line 568
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->smoothScrollTo(III)V

    .line 376
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "velocity"

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 388
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v2

    .line 392
    .local v2, sx:I
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v3

    .line 393
    .local v3, sy:I
    sub-int v4, p1, v2

    .line 394
    .local v4, dx:I
    sub-int v5, p2, v3

    .line 395
    .local v5, dy:I
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 396
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->completeScroll()V

    .line 397
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mOpenedListener:Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    invoke-interface {v1}, Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;->onOpened()V

    goto :goto_0

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mClosedListener:Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;

    invoke-interface {v1}, Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0

    .line 407
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 408
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScrolling:Z

    .line 410
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I

    move-result v11

    .line 411
    .local v11, width:I
    div-int/lit8 v9, v11, 0x2

    .line 412
    .local v9, halfWidth:I
    const/high16 v1, 0x3f80

    const/high16 v12, 0x3f80

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 413
    .local v8, distanceRatio:F
    int-to-float v1, v9

    int-to-float v12, v9

    .line 414
    invoke-virtual {p0, v8}, Lcom/slidingmenu/lib/CustomViewAbove;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    .line 413
    add-float v7, v1, v12

    .line 416
    .local v7, distance:F
    const/4 v6, 0x0

    .line 417
    .local v6, duration:I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 418
    if-lez p3, :cond_4

    .line 419
    const/high16 v1, 0x447a

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 425
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 427
    iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 428
    invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->invalidate()V

    goto :goto_0

    .line 421
    :cond_4
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v12, v11

    div-float v10, v1, v12

    .line 422
    .local v10, pageDelta:F
    const/high16 v1, 0x3f80

    add-float/2addr v1, v10

    const/high16 v12, 0x42c8

    mul-float/2addr v1, v12

    float-to-int v6, v1

    .line 423
    const/16 v6, 0x258

    goto :goto_1
.end method
