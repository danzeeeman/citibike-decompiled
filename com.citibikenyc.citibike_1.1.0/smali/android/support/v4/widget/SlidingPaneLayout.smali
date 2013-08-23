.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$1;,
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl; = null

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedOpenState:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 195
    .local v0, deviceVersion:I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 196
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 198
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0

    .line 200
    :cond_1
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    .line 254
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    const v2, -0x33333334

    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 184
    iput-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 186
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 257
    .local v0, density:F
    const/high16 v2, 0x4200

    mul-float/2addr v2, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 259
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 261
    .local v1, viewConfig:Landroid/view/ViewConfiguration;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 263
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 264
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 266
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 267
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 268
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 v3, 0x43c8

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 269
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SlidingPaneLayout;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SlidingPaneLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2
    .parameter "pane"
    .parameter "initialVelocity"

    .prologue
    const/4 v0, 0x0

    .line 795
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 797
    const/4 v0, 0x1

    .line 799
    :cond_1
    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 9
    .parameter "v"
    .parameter "mag"
    .parameter "fadeColor"

    .prologue
    const/4 v8, 0x2

    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 894
    .local v4, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_3

    if-eqz p3, :cond_3

    .line 895
    const/high16 v5, -0x100

    and-int/2addr v5, p3

    ushr-int/lit8 v0, v5, 0x18

    .line 896
    .local v0, baseAlpha:I
    int-to-float v5, v0

    mul-float/2addr v5, p2

    float-to-int v3, v5

    .line 897
    .local v3, imag:I
    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    and-int/2addr v6, p3

    or-int v1, v5, v6

    .line 898
    .local v1, color:I
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_0

    .line 899
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 901
    :cond_0
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 902
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 903
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {p1, v8, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 905
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 914
    .end local v0           #baseAlpha:I
    .end local v1           #color:I
    .end local v3           #imag:I
    :cond_2
    :goto_0
    return-void

    .line 906
    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 907
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_4

    .line 908
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 910
    :cond_4
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 911
    .local v2, dlr:Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 401
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 404
    :cond_0
    return v1
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 958
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 959
    return-void
.end method

.method private onPanelDragged(I)V
    .locals 5
    .parameter "newLeft"

    .prologue
    .line 876
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 877
    .local v1, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v0, v2, v3

    .line 879
    .local v0, leftBound:I
    sub-int v2, p1, v0

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 881
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v2, :cond_0

    .line 882
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 885
    :cond_0
    iget-boolean v2, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_1

    .line 886
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 888
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 889
    return-void
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 2
    .parameter "pane"
    .parameter "initialVelocity"

    .prologue
    const/4 v0, 0x1

    .line 803
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 807
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parallaxOtherViews(F)V
    .locals 11
    .parameter "slideOffset"

    .prologue
    const/high16 v10, 0x3f80

    .line 1038
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1039
    .local v6, slideLp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v8, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v8, :cond_1

    iget v8, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    if-gtz v8, :cond_1

    const/4 v1, 0x1

    .line 1040
    .local v1, dimViews:Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    .line 1041
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1042
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1043
    .local v7, v:Landroid/view/View;
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v7, v8, :cond_2

    .line 1041
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1039
    .end local v0           #childCount:I
    .end local v1           #dimViews:Z
    .end local v3           #i:I
    .end local v7           #v:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1045
    .restart local v0       #childCount:I
    .restart local v1       #dimViews:Z
    .restart local v3       #i:I
    .restart local v7       #v:Landroid/view/View;
    :cond_2
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v8, v10, v8

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v5, v8

    .line 1046
    .local v5, oldOffset:I
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1047
    sub-float v8, v10, p1

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v4, v8

    .line 1048
    .local v4, newOffset:I
    sub-int v2, v5, v4

    .line 1050
    .local v2, dx:I
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1052
    if-eqz v1, :cond_0

    .line 1053
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v8, v10, v8

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v7, v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_2

    .line 1056
    .end local v2           #dx:I
    .end local v4           #newOffset:I
    .end local v5           #oldOffset:I
    .end local v7           #v:Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1070
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1071
    check-cast v7, Landroid/view/ViewGroup;

    .line 1072
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1073
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1074
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1076
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 1079
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1080
    .local v1, child:Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    const/4 v0, 0x1

    .line 1089
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :goto_1
    return v0

    .line 1076
    .restart local v1       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1089
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canSlide()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 862
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1114
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closePane()Z
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 990
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 343
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 346
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 347
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 339
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 340
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .parameter "panel"

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 333
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    .line 1020
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1022
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    if-le v6, v7, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1023
    .local v3, shadowView:Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_0

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 1035
    :cond_0
    :goto_1
    return-void

    .line 1022
    .end local v3           #shadowView:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1028
    .restart local v3       #shadowView:Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1029
    .local v4, shadowWidth:I
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1030
    .local v2, right:I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1031
    .local v5, top:I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1032
    .local v0, bottom:I
    sub-int v1, v2, v4

    .line 1033
    .local v1, left:I
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1034
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 918
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 920
    .local v1, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    move-result v3

    .line 922
    .local v3, save:I
    iget-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 924
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 925
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 926
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 929
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 930
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 952
    .local v2, result:Z
    :goto_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 954
    return v2

    .line 932
    .end local v2           #result:Z
    :cond_1
    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 933
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 934
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 936
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 937
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 938
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 939
    const/4 v2, 0x0

    .restart local v2       #result:Z
    goto :goto_0

    .line 941
    .end local v2           #result:Z
    :cond_3
    const-string v4, "SlidingPaneLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawChild: child view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned null drawing cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .restart local v2       #result:Z
    goto :goto_0

    .line 945
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v2           #result:Z
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 946
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 948
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .restart local v2       #result:Z
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1102
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1119
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1107
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 4
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 1093
    if-nez p1, :cond_1

    .line 1097
    :cond_0
    :goto_0
    return v1

    .line 1096
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1097
    .local v0, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 853
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 411
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 415
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 416
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 418
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 419
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 420
    .local v1, dlr:Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v1           #dlr:Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 423
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 695
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 698
    .local v0, action:I
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v9, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 700
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 701
    .local v5, secondChild:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 702
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v9, v5, v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 707
    .end local v5           #secondChild:Landroid/view/View;
    :cond_0
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    .line 708
    :cond_1
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 709
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 750
    :goto_1
    return v9

    .line 702
    .restart local v5       #secondChild:Landroid/view/View;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 712
    .end local v5           #secondChild:Landroid/view/View;
    :cond_3
    const/4 v9, 0x3

    if-eq v0, v9, :cond_4

    const/4 v9, 0x1

    if-ne v0, v9, :cond_5

    .line 713
    :cond_4
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 714
    const/4 v9, 0x0

    goto :goto_1

    .line 717
    :cond_5
    const/4 v4, 0x0

    .line 719
    .local v4, interceptTap:Z
    packed-switch v0, :pswitch_data_0

    .line 748
    :cond_6
    :goto_2
    :pswitch_0
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 750
    .local v3, interceptForDrag:Z
    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    const/4 v9, 0x1

    goto :goto_1

    .line 721
    .end local v3           #interceptForDrag:Z
    :pswitch_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 723
    .local v7, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 724
    .local v8, y:F
    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 725
    iput v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 727
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v11, v7

    float-to-int v12, v8

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 729
    const/4 v4, 0x1

    goto :goto_2

    .line 735
    .end local v7           #x:F
    .end local v8           #y:F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 736
    .restart local v7       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 737
    .restart local v8       #y:F
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 738
    .local v1, adx:F
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 739
    .local v2, ady:F
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v6

    .line 740
    .local v6, slop:I
    int-to-float v9, v6

    cmpl-float v9, v1, v9

    if-lez v9, :cond_6

    cmpl-float v9, v2, v1

    if-lez v9, :cond_6

    .line 741
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 742
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 743
    const/4 v9, 0x0

    goto :goto_1

    .line 750
    .end local v1           #adx:F
    .end local v2           #ady:F
    .end local v6           #slop:I
    .end local v7           #x:F
    .end local v8           #y:F
    .restart local v3       #interceptForDrag:Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 607
    sub-int v20, p4, p2

    .line 608
    .local v20, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v16

    .line 609
    .local v16, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v17

    .line 610
    .local v17, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v18

    .line 612
    .local v18, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    .line 613
    .local v6, childCount:I
    move/from16 v21, v16

    .line 614
    .local v21, xStart:I
    move/from16 v14, v21

    .line 616
    .local v14, nextXStart:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 617
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    const/high16 v22, 0x3f80

    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 620
    :cond_0
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v6, :cond_6

    .line 621
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 623
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 620
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 617
    .end local v4           #child:Landroid/view/View;
    .end local v11           #i:I
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 627
    .restart local v4       #child:Landroid/view/View;
    .restart local v11       #i:I
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 629
    .local v12, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 630
    .local v10, childWidth:I
    const/4 v15, 0x0

    .line 632
    .local v15, offset:I
    iget-boolean v0, v12, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 633
    iget v0, v12, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    iget v0, v12, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v13, v22, v23

    .line 634
    .local v13, margin:I
    sub-int v22, v20, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    sub-int v22, v22, v21

    sub-int v19, v22, v13

    .line 636
    .local v19, range:I
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    .line 637
    iget v0, v12, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v22, v22, v21

    add-int v22, v22, v19

    div-int/lit8 v23, v10, 0x2

    add-int v22, v22, v23

    sub-int v23, v20, v17

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    const/16 v22, 0x1

    :goto_3
    move/from16 v0, v22

    iput-boolean v0, v12, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 639
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    iget v0, v12, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v21, v21, v22

    .line 647
    .end local v13           #margin:I
    .end local v19           #range:I
    :goto_4
    sub-int v7, v21, v15

    .line 648
    .local v7, childLeft:I
    add-int v8, v7, v10

    .line 649
    .local v8, childRight:I
    move/from16 v9, v18

    .line 650
    .local v9, childTop:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v5, v9, v22

    .line 651
    .local v5, childBottom:I
    move/from16 v0, v18

    invoke-virtual {v4, v7, v0, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 653
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v22

    add-int v14, v14, v22

    goto/16 :goto_2

    .line 637
    .end local v5           #childBottom:I
    .end local v7           #childLeft:I
    .end local v8           #childRight:I
    .end local v9           #childTop:I
    .restart local v13       #margin:I
    .restart local v19       #range:I
    :cond_3
    const/16 v22, 0x0

    goto :goto_3

    .line 640
    .end local v13           #margin:I
    .end local v19           #range:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 641
    const/high16 v22, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v15, v0

    .line 642
    move/from16 v21, v14

    goto :goto_4

    .line 644
    :cond_5
    move/from16 v21, v14

    goto :goto_4

    .line 656
    .end local v4           #child:Landroid/view/View;
    .end local v10           #childWidth:I
    .end local v12           #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v15           #offset:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 659
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 661
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 670
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 673
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 674
    return-void

    .line 666
    :cond_a
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v6, :cond_8

    .line 667
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 666
    add-int/lit8 v11, v11, 0x1

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 28
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 427
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 428
    .local v22, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    .line 429
    .local v24, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 430
    .local v11, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 432
    .local v12, heightSize:I
    const/high16 v26, 0x4000

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 433
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 434
    :cond_0
    if-nez v11, :cond_1

    .line 435
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "Height must not be UNSPECIFIED"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 438
    :cond_1
    const/4 v15, 0x0

    .line 439
    .local v15, layoutHeight:I
    const/16 v17, -0x1

    .line 440
    .local v17, maxLayoutHeight:I
    sparse-switch v11, :sswitch_data_0

    .line 449
    :goto_0
    const/16 v21, 0x0

    .line 450
    .local v21, weightSum:F
    const/4 v3, 0x0

    .line 451
    .local v3, canSlide:Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v26

    sub-int v26, v24, v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v27

    sub-int v23, v26, v27

    .line 452
    .local v23, widthRemaining:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v5

    .line 454
    .local v5, childCount:I
    const/16 v26, 0x2

    move/from16 v0, v26

    if-le v5, v0, :cond_2

    .line 455
    const-string v26, "SlidingPaneLayout"

    const-string v27, "onMeasure: More than two child views are not supported."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_2
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 463
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v5, :cond_c

    .line 464
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 465
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 467
    .local v16, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 468
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 463
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 442
    .end local v3           #canSlide:Z
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childCount:I
    .end local v14           #i:I
    .end local v16           #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v21           #weightSum:F
    .end local v23           #widthRemaining:I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v26

    sub-int v26, v12, v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    sub-int v17, v26, v27

    move/from16 v15, v17

    .line 443
    goto :goto_0

    .line 445
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v26

    sub-int v26, v12, v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    sub-int v17, v26, v27

    goto :goto_0

    .line 472
    .restart local v3       #canSlide:Z
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #childCount:I
    .restart local v14       #i:I
    .restart local v16       #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .restart local v21       #weightSum:F
    .restart local v23       #widthRemaining:I
    :cond_4
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_5

    .line 473
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    add-float v21, v21, v26

    .line 477
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 481
    :cond_5
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v13, v26, v27

    .line 482
    .local v13, horizontalMargin:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 483
    sub-int v26, v24, v13

    const/high16 v27, -0x8000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 493
    .local v9, childWidthSpec:I
    :goto_3
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 494
    const/high16 v26, -0x8000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 501
    .local v7, childHeightSpec:I
    :goto_4
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    .line 502
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 503
    .local v8, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 505
    .local v6, childHeight:I
    const/high16 v26, -0x8000

    move/from16 v0, v26

    if-ne v11, v0, :cond_6

    if-le v6, v15, :cond_6

    .line 506
    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 509
    :cond_6
    sub-int v23, v23, v8

    .line 510
    if-gez v23, :cond_b

    const/16 v26, 0x1

    :goto_5
    move/from16 v0, v26

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v3, v3, v26

    .line 511
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 512
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_2

    .line 485
    .end local v6           #childHeight:I
    .end local v7           #childHeightSpec:I
    .end local v8           #childWidth:I
    .end local v9           #childWidthSpec:I
    :cond_7
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 486
    sub-int v26, v24, v13

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9       #childWidthSpec:I
    goto :goto_3

    .line 489
    .end local v9           #childWidthSpec:I
    :cond_8
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9       #childWidthSpec:I
    goto :goto_3

    .line 495
    :cond_9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 496
    const/high16 v26, 0x4000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    goto :goto_4

    .line 498
    .end local v7           #childHeightSpec:I
    :cond_a
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    goto :goto_4

    .line 510
    .restart local v6       #childHeight:I
    .restart local v8       #childWidth:I
    :cond_b
    const/16 v26, 0x0

    goto :goto_5

    .line 517
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeight:I
    .end local v7           #childHeightSpec:I
    .end local v8           #childWidth:I
    .end local v9           #childWidthSpec:I
    .end local v13           #horizontalMargin:I
    .end local v16           #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_c
    if-nez v3, :cond_d

    const/16 v26, 0x0

    cmpl-float v26, v21, v26

    if-lez v26, :cond_1b

    .line 518
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v26, v0

    sub-int v10, v24, v26

    .line 520
    .local v10, fixedPanelWidthLimit:I
    const/4 v14, 0x0

    :goto_6
    if-ge v14, v5, :cond_1b

    .line 521
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 523
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 520
    :cond_e
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 527
    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 529
    .restart local v16       #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-nez v26, :cond_11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_11

    const/16 v20, 0x1

    .line 530
    .local v20, skippedFirstPass:Z
    :goto_8
    if-eqz v20, :cond_12

    const/16 v18, 0x0

    .line 531
    .local v18, measuredWidth:I
    :goto_9
    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    if-eq v4, v0, :cond_16

    .line 532
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-gez v26, :cond_e

    move/from16 v0, v18

    if-gt v0, v10, :cond_10

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_e

    .line 536
    :cond_10
    if-eqz v20, :cond_15

    .line 539
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 540
    const/high16 v26, -0x8000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 553
    .restart local v7       #childHeightSpec:I
    :goto_a
    const/high16 v26, 0x4000

    move/from16 v0, v26

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 555
    .restart local v9       #childWidthSpec:I
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 529
    .end local v7           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v18           #measuredWidth:I
    .end local v20           #skippedFirstPass:Z
    :cond_11
    const/16 v20, 0x0

    goto :goto_8

    .line 530
    .restart local v20       #skippedFirstPass:Z
    :cond_12
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    goto :goto_9

    .line 542
    .restart local v18       #measuredWidth:I
    :cond_13
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 543
    const/high16 v26, 0x4000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    goto :goto_a

    .line 546
    .end local v7           #childHeightSpec:I
    :cond_14
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    goto :goto_a

    .line 550
    .end local v7           #childHeightSpec:I
    :cond_15
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    goto :goto_a

    .line 557
    .end local v7           #childHeightSpec:I
    :cond_16
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_e

    .line 559
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-nez v26, :cond_19

    .line 561
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 562
    const/high16 v26, -0x8000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 576
    .restart local v7       #childHeightSpec:I
    :goto_b
    if-eqz v3, :cond_1a

    .line 578
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v13, v26, v27

    .line 579
    .restart local v13       #horizontalMargin:I
    sub-int v19, v24, v13

    .line 580
    .local v19, newWidth:I
    const/high16 v26, 0x4000

    move/from16 v0, v19

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 582
    .restart local v9       #childWidthSpec:I
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 583
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    goto/16 :goto_7

    .line 564
    .end local v7           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #horizontalMargin:I
    .end local v19           #newWidth:I
    :cond_17
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 565
    const/high16 v26, 0x4000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    goto :goto_b

    .line 568
    .end local v7           #childHeightSpec:I
    :cond_18
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    goto :goto_b

    .line 572
    .end local v7           #childHeightSpec:I
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7       #childHeightSpec:I
    goto :goto_b

    .line 587
    :cond_1a
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 588
    .local v25, widthToDistribute:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    div-float v26, v26, v21

    move/from16 v0, v26

    float-to-int v2, v0

    .line 589
    .local v2, addedWidth:I
    add-int v26, v18, v2

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 591
    .restart local v9       #childWidthSpec:I
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    goto/16 :goto_7

    .line 597
    .end local v2           #addedWidth:I
    .end local v4           #child:Landroid/view/View;
    .end local v7           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v10           #fixedPanelWidthLimit:I
    .end local v16           #lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v18           #measuredWidth:I
    .end local v20           #skippedFirstPass:Z
    .end local v25           #widthToDistribute:I
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 598
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v26

    if-eqz v26, :cond_1c

    if-nez v3, :cond_1c

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 603
    :cond_1c
    return-void

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1134
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .line 1135
    .local v0, ss:Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1137
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 1138
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 1142
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1143
    return-void

    .line 1140
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1124
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1126
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1127
    .local v0, ss:Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v2

    :goto_0
    iput-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1129
    return-object v0

    .line 1127
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 678
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 680
    if-eq p1, p3, :cond_0

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 683
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    .line 755
    iget-boolean v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v7, :cond_1

    .line 756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 791
    :cond_0
    :goto_0
    return v4

    .line 759
    :cond_1
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v7, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 762
    .local v0, action:I
    const/4 v4, 0x1

    .line 764
    .local v4, wantTouchEvents:Z
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 766
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 767
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 768
    .local v6, y:F
    iput v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 769
    iput v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    goto :goto_0

    .line 774
    .end local v5           #x:F
    .end local v6           #y:F
    :pswitch_1
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 776
    .restart local v5       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 777
    .restart local v6       #y:F
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v1, v5, v7

    .line 778
    .local v1, dx:F
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v2, v6, v7

    .line 779
    .local v2, dy:F
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v7}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    .line 780
    .local v3, slop:I
    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    mul-int v8, v3, v3

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 783
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    goto :goto_0

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openPane()Z
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 687
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 688
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 691
    :cond_0
    return-void

    .line 689
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 391
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .local v1, childCount:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 392
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 394
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 315
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 316
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 326
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    .line 327
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0
    .parameter "parallaxBy"

    .prologue
    .line 279
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 280
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    .line 281
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 1005
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1006
    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1015
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 298
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 299
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    .line 834
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 816
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 7
    .parameter "slideOffset"
    .parameter "velocity"

    .prologue
    const/4 v3, 0x0

    .line 968
    iget-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v4, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v3

    .line 973
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 975
    .local v1, lp:Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v0, v4, v5

    .line 976
    .local v0, leftBound:I
    int-to-float v4, v0

    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 978
    .local v2, x:I
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 979
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 980
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 981
    const/4 v3, 0x1

    goto :goto_0
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 19
    .parameter "panel"

    .prologue
    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v11

    .line 351
    .local v11, leftBound:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v18

    sub-int v13, v17, v18

    .line 352
    .local v13, rightBound:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v15

    .line 353
    .local v15, topBound:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v18

    sub-int v2, v17, v18

    .line 358
    .local v2, bottomBound:I
    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 360
    .local v10, left:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v12

    .line 361
    .local v12, right:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    .line 362
    .local v14, top:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 367
    .local v1, bottom:I
    :goto_0
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    .local v4, childCount:I
    :goto_1
    if-ge v9, v4, :cond_0

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 370
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p1

    if-ne v3, v0, :cond_2

    .line 388
    .end local v3           #child:Landroid/view/View;
    :cond_0
    return-void

    .line 364
    .end local v1           #bottom:I
    .end local v4           #childCount:I
    .end local v9           #i:I
    .end local v10           #left:I
    .end local v12           #right:I
    .end local v14           #top:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #bottom:I
    move v14, v1

    .restart local v14       #top:I
    move v12, v1

    .restart local v12       #right:I
    move v10, v1

    .restart local v10       #left:I
    goto :goto_0

    .line 375
    .restart local v3       #child:Landroid/view/View;
    .restart local v4       #childCount:I
    .restart local v9       #i:I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 376
    .local v6, clampedChildLeft:I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 377
    .local v8, clampedChildTop:I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 378
    .local v7, clampedChildRight:I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 380
    .local v5, clampedChildBottom:I
    if-lt v6, v10, :cond_3

    if-lt v8, v14, :cond_3

    if-gt v7, v12, :cond_3

    if-gt v5, v1, :cond_3

    .line 382
    const/16 v16, 0x4

    .line 386
    .local v16, vis:I
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 367
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 384
    .end local v16           #vis:I
    :cond_3
    const/16 v16, 0x0

    .restart local v16       #vis:I
    goto :goto_2
.end method
