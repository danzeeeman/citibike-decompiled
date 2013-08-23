.class public Lcom/slidingmenu/lib/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;,
        Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;,
        Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;,
        Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;,
        Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;,
        Lcom/slidingmenu/lib/SlidingMenu$SavedState;
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final LEFT_RIGHT:I = 0x2

.field public static final RIGHT:I = 0x1

.field public static final SLIDING_CONTENT:I = 0x1

.field public static final SLIDING_WINDOW:I = 0x0

.field public static final TOUCHMODE_FULLSCREEN:I = 0x1

.field public static final TOUCHMODE_MARGIN:I = 0x0

.field public static final TOUCHMODE_NONE:I = 0x2


# instance fields
.field private mActionbarOverlay:Z

.field private mCloseListener:Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;

.field private mOpenListener:Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;

.field private mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

.field private mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "slideStyle"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 195
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    .line 197
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    .local v4, behindParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v20, Lcom/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v3, aboveParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v20, Lcom/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/slidingmenu/lib/CustomViewBehind;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/slidingmenu/lib/CustomViewBehind;->setCustomViewAbove(Lcom/slidingmenu/lib/CustomViewAbove;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    move-object/from16 v20, v0

    new-instance v21, Lcom/slidingmenu/lib/SlidingMenu$1;

    invoke-direct/range {v21 .. v22}, Lcom/slidingmenu/lib/SlidingMenu$1;-><init>(Lcom/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual/range {v20 .. v21}, Lcom/slidingmenu/lib/CustomViewAbove;->setOnPageChangeListener(Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)V

    .line 223
    sget-object v20, Lcom/slidingmenu/lib/R$styleable;->SlidingMenu:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 225
    .local v14, ta:Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 226
    .local v7, mode:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 227
    const/16 v20, 0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 228
    .local v17, viewAbove:I
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(I)V

    .line 233
    :goto_0
    const/16 v20, 0x2

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 234
    .local v18, viewBehind:I
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 235
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 239
    :goto_1
    const/16 v20, 0x6

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 240
    .local v15, touchModeAbove:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 241
    const/16 v20, 0x7

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 242
    .local v16, touchModeBehind:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeBehind(I)V

    .line 244
    const/16 v20, 0x3

    const/high16 v21, -0x4080

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    .line 245
    .local v8, offsetBehind:I
    const/16 v20, 0x4

    const/high16 v21, -0x4080

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 246
    .local v19, widthBehind:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_2

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 247
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "Cannot set both behindOffset and behindWidth for a SlidingMenu"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 231
    .end local v8           #offsetBehind:I
    .end local v15           #touchModeAbove:I
    .end local v16           #touchModeBehind:I
    .end local v18           #viewBehind:I
    .end local v19           #widthBehind:I
    :cond_0
    new-instance v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    goto/16 :goto_0

    .line 237
    .restart local v18       #viewBehind:I
    :cond_1
    new-instance v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    goto :goto_1

    .line 248
    .restart local v8       #offsetBehind:I
    .restart local v15       #touchModeAbove:I
    .restart local v16       #touchModeBehind:I
    .restart local v19       #widthBehind:I
    :cond_2
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_5

    .line 249
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 254
    :goto_2
    const/16 v20, 0x5

    const v21, 0x3ea8f5c3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 255
    .local v9, scrollOffsetBehind:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindScrollScale(F)V

    .line 256
    const/16 v20, 0x8

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 257
    .local v12, shadowRes:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_3

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 260
    :cond_3
    const/16 v20, 0x9

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 261
    .local v13, shadowWidth:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 262
    const/16 v20, 0xa

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 263
    .local v6, fadeEnabled:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeEnabled(Z)V

    .line 264
    const/16 v20, 0xb

    const v21, 0x3ea8f5c3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 265
    .local v5, fadeDeg:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 266
    const/16 v20, 0xc

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 267
    .local v10, selectorEnabled:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/slidingmenu/lib/SlidingMenu;->setSelectorEnabled(Z)V

    .line 268
    const/16 v20, 0xd

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 269
    .local v11, selectorRes:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_4

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/slidingmenu/lib/SlidingMenu;->setSelectorDrawable(I)V

    .line 271
    :cond_4
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    return-void

    .line 250
    .end local v5           #fadeDeg:F
    .end local v6           #fadeEnabled:Z
    .end local v9           #scrollOffsetBehind:F
    .end local v10           #selectorEnabled:Z
    .end local v11           #selectorRes:I
    .end local v12           #shadowRes:I
    .end local v13           #shadowWidth:I
    :cond_5
    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 251
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    goto/16 :goto_2

    .line 253
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mCloseListener:Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;

    return-object v0
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->addIgnoredView(Landroid/view/View;)V

    .line 828
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "slideStyle"

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;IZ)V

    .line 282
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;IZ)V
    .locals 11
    .parameter "activity"
    .parameter "slideStyle"
    .parameter "actionbarOverlay"

    .prologue
    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 292
    if-eqz p2, :cond_0

    if-eq p2, v7, :cond_0

    .line 293
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 296
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "This SlidingMenu appears to already be attached"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 299
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v7, v7, [I

    const v8, 0x1010054

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 300
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 301
    .local v1, background:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    packed-switch p2, :pswitch_data_0

    .line 327
    :cond_2
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iput-boolean v9, p0, Lcom/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    .line 306
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 307
    .local v4, decor:Landroid/view/ViewGroup;
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 309
    .local v5, decorChild:Landroid/view/ViewGroup;
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 310
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 311
    invoke-virtual {p0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 312
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 315
    .end local v4           #decor:Landroid/view/ViewGroup;
    .end local v5           #decorChild:Landroid/view/ViewGroup;
    :pswitch_1
    iput-boolean p3, p0, Lcom/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    .line 317
    const v6, 0x1020002

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 318
    .local v3, contentParent:Landroid/view/ViewGroup;
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 319
    .local v2, content:Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 320
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p0, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 321
    invoke-virtual {p0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_2

    .line 324
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->clearIgnoredViews()V

    .line 844
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 949
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 950
    .local v1, leftPadding:I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 951
    .local v2, rightPadding:I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 952
    .local v3, topPadding:I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 953
    .local v0, bottomPadding:I
    iget-boolean v4, p0, Lcom/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z

    if-nez v4, :cond_0

    .line 954
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setPadding(IIII)V

    .line 955
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getMode()I

    move-result v0

    return v0
.end method

.method public getSecondaryMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getSecondaryContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v0

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
    .line 427
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->isSlidingEnabled()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 938
    move-object v0, p1

    check-cast v0, Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    .line 939
    .local v0, ss:Lcom/slidingmenu/lib/SlidingMenu$SavedState;
    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 940
    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu$SavedState;->getItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 941
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 928
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 929
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/slidingmenu/lib/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v2}, Lcom/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 930
    .local v0, ss:Lcom/slidingmenu/lib/SlidingMenu$SavedState;
    return-object v0
.end method

.method public pushOffScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 469
    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getContent()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 471
    .local v0, destX:I
    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v1, v3}, Lcom/slidingmenu/lib/CustomViewBehind;->setWidthOffset(I)V

    .line 472
    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    neg-int v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->smoothScrollTo(II)V

    .line 473
    return-void
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->removeIgnoredView(Landroid/view/View;)V

    .line 837
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setAboveOffset(I)V

    .line 595
    return-void
.end method

.method public setAboveOffsetRes(I)V
    .locals 2
    .parameter "resID"

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 604
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setAboveOffset(I)V

    .line 605
    return-void
.end method

.method public setBehindCanvasTransformer(Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setCanvasTransformer(Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V

    .line 669
    return-void
.end method

.method public setBehindOffset(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setWidthOffset(I)V

    .line 575
    return-void
.end method

.method public setBehindOffsetRes(I)V
    .locals 2
    .parameter "resID"

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 585
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 586
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 657
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setScrollScale(F)V

    .line 660
    return-void
.end method

.method public setBehindWidth(I)V
    .locals 9
    .parameter "i"

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 616
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 618
    .local v1, display:Landroid/view/Display;
    :try_start_0
    const-class v0, Landroid/view/Display;

    .line 619
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v5, v7

    .line 620
    .local v5, parameterTypes:[Ljava/lang/Class;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 621
    .local v4, parameter:Landroid/graphics/Point;
    const-string v7, "getSize"

    invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 622
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget v6, v4, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #parameter:Landroid/graphics/Point;
    .end local v5           #parameterTypes:[Ljava/lang/Class;
    .local v6, width:I
    :goto_0
    sub-int v7, v6, p1

    invoke-virtual {p0, v7}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 628
    return-void

    .line 624
    .end local v6           #width:I
    :catch_0
    move-exception v2

    .line 625
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    .restart local v6       #width:I
    goto :goto_0
.end method

.method public setBehindWidthRes(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 638
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    .line 639
    return-void
.end method

.method public setContent(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 337
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 346
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 347
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1
    .parameter "f"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setFadeDegree(F)V

    .line 783
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setFadeEnabled(Z)V

    .line 773
    return-void
.end method

.method public setMenu(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 365
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 374
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 435
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setMode(I)V

    .line 439
    return-void
.end method

.method public setOnCloseListener(Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/slidingmenu/lib/SlidingMenu;->mCloseListener:Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;

    .line 864
    return-void
.end method

.method public setOnClosedListener(Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setOnClosedListener(Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;)V

    .line 882
    return-void
.end method

.method public setOnOpenListener(Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 853
    iput-object p1, p0, Lcom/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;

    .line 854
    return-void
.end method

.method public setOnOpenedListener(Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setOnOpenedListener(Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V

    .line 873
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 391
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setSecondaryContent(Landroid/view/View;)V

    .line 401
    return-void
.end method

.method public setSecondaryShadowDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setSelectedView(Landroid/view/View;)V

    .line 801
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 819
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 810
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->setSelectorEnabled(Z)V

    .line 792
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 719
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 728
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1
    .parameter "pixels"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setShadowWidth(I)V

    .line 764
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 755
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setSlidingEnabled(Z)V

    .line 419
    return-void
.end method

.method public setStatic(Z)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    .line 455
    if-eqz p1, :cond_0

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/slidingmenu/lib/CustomViewBehind;)V

    .line 458
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 466
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V

    .line 463
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    iget-object v1, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/slidingmenu/lib/CustomViewBehind;)V

    .line 464
    invoke-virtual {p0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 688
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 689
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setTouchMode(I)V

    .line 694
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 704
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 705
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->setTouchMode(I)V

    .line 710
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->showContent(Z)V

    .line 514
    return-void
.end method

.method public showContent(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 523
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu(Z)V

    .line 480
    return-void
.end method

.method public showMenu(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 489
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->showSecondaryMenu(Z)V

    .line 497
    return-void
.end method

.method public showSecondaryMenu(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V

    .line 507
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/SlidingMenu;->toggle(Z)V

    .line 530
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/SlidingMenu;->showContent(Z)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu(Z)V

    goto :goto_0
.end method
