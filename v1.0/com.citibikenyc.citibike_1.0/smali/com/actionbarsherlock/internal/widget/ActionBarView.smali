.class public Lcom/actionbarsherlock/internal/widget/ActionBarView;
.super Lcom/actionbarsherlock/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;,
        Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x13

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mCallback:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

.field private mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

.field private mIsCollapsable:Z

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

.field private final mNavItemSelectedListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

.field private mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleUpView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserTitle:Z

.field mWindowCallback:Lcom/actionbarsherlock/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 174
    invoke-direct/range {p0 .. p2}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 146
    new-instance v2, Lcom/actionbarsherlock/internal/widget/ActionBarView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView$1;-><init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavItemSelectedListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;

    .line 157
    new-instance v2, Lcom/actionbarsherlock/internal/widget/ActionBarView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView$2;-><init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v2, Lcom/actionbarsherlock/internal/widget/ActionBarView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView$3;-><init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 177
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 179
    sget-object v2, Lcom/actionbarsherlock/R$styleable;->SherlockActionBar:[I

    .line 180
    sget v3, Lcom/actionbarsherlock/R$attr;->actionBarStyle:I

    const/4 v4, 0x0

    .line 179
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 182
    .local v9, a:Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 183
    .local v10, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 184
    .local v15, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x6

    .line 185
    const/4 v3, 0x0

    .line 184
    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I

    .line 186
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 187
    const/16 v2, 0x9

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 189
    const/16 v2, 0xb

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_4

    .line 192
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object/from16 v2, p1

    .line 195
    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->loadLogoFromManifest(Landroid/app/Activity;)I

    move-result v16

    .line 196
    .local v16, resId:I
    if-eqz v16, :cond_0

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 214
    .end local v16           #resId:I
    :cond_0
    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 216
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 218
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 224
    invoke-virtual {v10, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 228
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 231
    .local v14, inflater:Landroid/view/LayoutInflater;
    const/16 v2, 0xe

    .line 232
    sget v3, Lcom/actionbarsherlock/R$layout;->abs__action_bar_home:I

    .line 230
    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 234
    .local v13, homeResId:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    .line 236
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 240
    sget v4, Lcom/actionbarsherlock/R$string;->abs__action_bar_up_description:I

    .line 239
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 243
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 244
    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressStyle:I

    .line 246
    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 245
    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 248
    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 249
    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mItemPadding:I

    .line 251
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 253
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 254
    .local v11, customNavId:I
    if-eqz v11, :cond_3

    .line 255
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v11, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 256
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I

    .line 257
    move-object/from16 v0, p0

    iget v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 260
    :cond_3
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContentHeight:I

    .line 262
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    const/4 v4, 0x0

    const v5, 0x102002c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogoNavItem:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 268
    return-void

    .line 201
    .end local v11           #customNavId:I
    .end local v13           #homeResId:I
    .end local v14           #inflater:Landroid/view/LayoutInflater;
    :cond_4
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_5

    .line 203
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 209
    invoke-virtual {v10, v15}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 204
    :catch_0
    move-exception v12

    .line 205
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 219
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v12

    .line 220
    .restart local v12       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCallback:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$11(Lcom/actionbarsherlock/internal/widget/ActionBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$12(Lcom/actionbarsherlock/internal/widget/ActionBarView;)I
    .locals 1
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogoNavItem:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Lcom/actionbarsherlock/internal/widget/IcsSpinner;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    return-object v0
.end method

.method static synthetic access$9(Lcom/actionbarsherlock/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method private configPresenters(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 527
    if-eqz p1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 529
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 536
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 532
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 533
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 534
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 824
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_4

    .line 825
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 826
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget v3, Lcom/actionbarsherlock/R$layout;->abs__action_bar_title_item:I

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 828
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/actionbarsherlock/R$id;->abs__action_bar_title:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 829
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/actionbarsherlock/R$id;->abs__action_bar_subtitle:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 830
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/actionbarsherlock/R$id;->abs__up:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 832
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 835
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 837
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 838
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    :cond_1
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_2

    .line 842
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 844
    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 845
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    :cond_3
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    move v0, v4

    .line 850
    .local v0, homeAsUp:Z
    :goto_0
    iget v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    move v2, v4

    .line 851
    .local v2, showHome:Z
    :goto_1
    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v2, :cond_a

    if-eqz v0, :cond_9

    move v3, v5

    :goto_2
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    if-nez v2, :cond_b

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 855
    .end local v0           #homeAsUp:Z
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #showHome:Z
    :cond_4
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 856
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_5

    .line 857
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 859
    :cond_5
    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 861
    :cond_6
    return-void

    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_7
    move v0, v5

    .line 849
    goto :goto_0

    .restart local v0       #homeAsUp:Z
    :cond_8
    move v2, v5

    .line 850
    goto :goto_1

    .line 851
    .restart local v2       #showHome:Z
    :cond_9
    const/4 v3, 0x4

    goto :goto_2

    :cond_a
    move v3, v6

    goto :goto_2

    :cond_b
    move v4, v5

    .line 852
    goto :goto_3
.end method

.method private static loadLogoFromManifest(Landroid/app/Activity;)I
    .locals 15
    .parameter "activity"

    .prologue
    .line 279
    const/4 v8, 0x0

    .line 281
    .local v8, logo:I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 284
    .local v11, thisPackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v10, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 285
    .local v10, packageName:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {p0, v10, v13}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 286
    .local v2, am:Landroid/content/res/AssetManager;
    const-string v13, "AndroidManifest.xml"

    invoke-virtual {v2, v13}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 288
    .local v12, xml:Landroid/content/res/XmlResourceParser;
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    .line 289
    .local v5, eventType:I
    :goto_0
    const/4 v13, 0x1

    if-ne v5, v13, :cond_0

    .line 346
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v5           #eventType:I
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #thisPackage:Ljava/lang/String;
    .end local v12           #xml:Landroid/content/res/XmlResourceParser;
    :goto_1
    return v8

    .line 290
    .restart local v2       #am:Landroid/content/res/AssetManager;
    .restart local v5       #eventType:I
    .restart local v10       #packageName:Ljava/lang/String;
    .restart local v11       #thisPackage:Ljava/lang/String;
    .restart local v12       #xml:Landroid/content/res/XmlResourceParser;
    :cond_0
    const/4 v13, 0x2

    if-ne v5, v13, :cond_1

    .line 291
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, name:Ljava/lang/String;
    const-string v13, "application"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 297
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .local v6, i:I
    :goto_2
    if-gez v6, :cond_2

    .line 340
    .end local v6           #i:I
    .end local v9           #name:Ljava/lang/String;
    :cond_1
    :goto_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->nextToken()I

    move-result v5

    goto :goto_0

    .line 300
    .restart local v6       #i:I
    .restart local v9       #name:Ljava/lang/String;
    :cond_2
    const-string v13, "logo"

    invoke-interface {v12, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 301
    const/4 v13, 0x0

    invoke-interface {v12, v6, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v8

    .line 302
    goto :goto_3

    .line 297
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 305
    .end local v6           #i:I
    :cond_4
    const-string v13, "activity"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, activityLogo:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 310
    .local v1, activityPackage:Ljava/lang/String;
    const/4 v7, 0x0

    .line 312
    .local v7, isOurActivity:Z
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .restart local v6       #i:I
    :goto_4
    if-gez v6, :cond_6

    .line 333
    :cond_5
    if-eqz v7, :cond_1

    goto :goto_1

    .line 316
    :cond_6
    invoke-interface {v12, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, attrName:Ljava/lang/String;
    const-string v13, "logo"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 318
    const/4 v13, 0x0

    invoke-interface {v12, v6, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 328
    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 330
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 312
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 319
    :cond_9
    const-string v13, "name"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 320
    invoke-interface {v12, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->cleanActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_5

    .line 324
    const/4 v7, 0x1

    goto :goto_5

    .line 342
    .end local v0           #activityLogo:Ljava/lang/Integer;
    .end local v1           #activityPackage:Ljava/lang/String;
    .end local v2           #am:Landroid/content/res/AssetManager;
    .end local v3           #attrName:Ljava/lang/String;
    .end local v5           #eventType:I
    .end local v6           #i:I
    .end local v7           #isOurActivity:Z
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #thisPackage:Ljava/lang/String;
    .end local v12           #xml:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 343
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 590
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 591
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    .line 594
    iget v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 595
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 596
    .local v0, visible:Z
    :goto_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 598
    .end local v0           #visible:Z
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogoNavItem:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 599
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogoNavItem:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    .line 601
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 595
    goto :goto_0

    .line 596
    .restart local v0       #visible:Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public collapseActionView()V
    .locals 2

    .prologue
    .line 544
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 546
    .local v0, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 549
    :cond_0
    return-void

    .line 545
    .end local v0           #item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 803
    new-instance v0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1213
    new-instance v0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "lp"

    .prologue
    .line 1218
    if-nez p1, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1221
    :cond_0
    return-object p1
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 539
    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 408
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    .line 409
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    sget v1, Lcom/actionbarsherlock/R$id;->abs__progress_circular:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setId(I)V

    .line 410
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 411
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 401
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    .line 402
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    sget v1, Lcom/actionbarsherlock/R$id;->abs__progress_horizontal:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setId(I)V

    .line 403
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setMax(I)V

    .line 404
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 405
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 357
    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 358
    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 359
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 362
    :cond_0
    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 363
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->initTitle()V

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_3

    .line 368
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 369
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_2

    .line 370
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 371
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 375
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 389
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 391
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 393
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 808
    invoke-super {p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 810
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 812
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 813
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 814
    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 815
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 816
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 821
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v23

    .line 1075
    .local v23, x:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v25

    .line 1076
    .local v25, y:I
    sub-int v27, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v28

    sub-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v28

    sub-int v7, v27, v28

    .line 1078
    .local v7, contentHeight:I
    if-gtz v7, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    .line 1084
    .local v13, homeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    :goto_1
    invoke-virtual {v13}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 1085
    invoke-virtual {v13}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v14

    .line 1086
    .local v14, leftOffset:I
    add-int v27, v23, v14

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v27

    add-int v27, v27, v14

    add-int v23, v23, v27

    .line 1089
    .end local v14           #leftOffset:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_4

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_d

    .line 1091
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x8

    if-eqz v27, :cond_d

    const/16 v20, 0x1

    .line 1092
    .local v20, showTitle:Z
    :goto_2
    if-eqz v20, :cond_3

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v27

    add-int v23, v23, v27

    .line 1096
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    .line 1114
    .end local v20           #showTitle:Z
    :cond_4
    :goto_3
    :pswitch_0
    sub-int v27, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v28

    sub-int v16, v27, v28

    .line 1115
    .local v16, menuLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_5

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v16

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v27

    sub-int v16, v16, v27

    .line 1120
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v16

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getMeasuredWidth()I

    move-result v27

    sub-int v16, v16, v27

    .line 1126
    :cond_6
    const/4 v8, 0x0

    .line 1127
    .local v8, customView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 1128
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1133
    :cond_7
    :goto_4
    if-eqz v8, :cond_b

    .line 1134
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 1135
    .local v15, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v15, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 1136
    check-cast v15, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;

    .end local v15           #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object v4, v15

    .line 1138
    .local v4, ablp:Lcom/actionbarsherlock/app/ActionBar$LayoutParams;
    :goto_5
    if-eqz v4, :cond_12

    iget v10, v4, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    .line 1139
    .local v10, gravity:I
    :goto_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1141
    .local v17, navWidth:I
    const/16 v21, 0x0

    .line 1142
    .local v21, topMargin:I
    const/4 v5, 0x0

    .line 1143
    .local v5, bottomMargin:I
    if-eqz v4, :cond_8

    .line 1144
    iget v0, v4, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v23, v23, v27

    .line 1145
    iget v0, v4, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v16, v16, v27

    .line 1146
    iget v0, v4, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v21, v0

    .line 1147
    iget v5, v4, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->bottomMargin:I

    .line 1150
    :cond_8
    and-int/lit8 v12, v10, 0x7

    .line 1152
    .local v12, hgravity:I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v12, v0, :cond_14

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getRight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    sub-int v27, v27, v17

    div-int/lit8 v6, v27, 0x2

    .line 1154
    .local v6, centeredLeft:I
    move/from16 v0, v23

    if-ge v6, v0, :cond_13

    .line 1155
    const/4 v12, 0x3

    .line 1163
    .end local v6           #centeredLeft:I
    :cond_9
    :goto_7
    const/16 v24, 0x0

    .line 1164
    .local v24, xpos:I
    packed-switch v12, :pswitch_data_1

    .line 1176
    :goto_8
    :pswitch_1
    and-int/lit8 v22, v10, 0x70

    .line 1178
    .local v22, vgravity:I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_a

    .line 1179
    const/16 v22, 0x10

    .line 1182
    :cond_a
    const/16 v26, 0x0

    .line 1183
    .local v26, ypos:I
    sparse-switch v22, :sswitch_data_0

    .line 1197
    :goto_9
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1198
    .local v9, customWidth:I
    add-int v27, v24, v9

    .line 1199
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v26

    .line 1198
    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1200
    add-int v23, v23, v9

    .line 1203
    .end local v4           #ablp:Lcom/actionbarsherlock/app/ActionBar$LayoutParams;
    .end local v5           #bottomMargin:I
    .end local v9           #customWidth:I
    .end local v10           #gravity:I
    .end local v12           #hgravity:I
    .end local v17           #navWidth:I
    .end local v21           #topMargin:I
    .end local v22           #vgravity:I
    .end local v24           #xpos:I
    .end local v26           #ypos:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->bringToFront()V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getMeasuredHeight()I

    move-result v27

    div-int/lit8 v11, v27, 0x2

    .line 1206
    .local v11, halfProgressHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v28, v0

    neg-int v0, v11

    move/from16 v29, v0

    .line 1207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getMeasuredWidth()I

    move-result v31

    add-int v30, v30, v31

    .line 1206
    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1083
    .end local v8           #customView:Landroid/view/View;
    .end local v11           #halfProgressHeight:I
    .end local v13           #homeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    .end local v16           #menuLeft:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_1

    .line 1091
    .restart local v13       #homeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1100
    .restart local v20       #showTitle:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 1101
    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    add-int v23, v23, v27

    .line 1102
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v23, v23, v27

    .line 1104
    goto/16 :goto_3

    .line 1106
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 1107
    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    add-int v23, v23, v27

    .line 1108
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v23, v23, v27

    goto/16 :goto_3

    .line 1129
    .end local v20           #showTitle:Z
    .restart local v8       #customView:Landroid/view/View;
    .restart local v16       #menuLeft:I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x10

    if-eqz v27, :cond_7

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1131
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_4

    .line 1136
    .restart local v15       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1138
    .end local v15           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #ablp:Lcom/actionbarsherlock/app/ActionBar$LayoutParams;
    :cond_12
    const/16 v10, 0x13

    goto/16 :goto_6

    .line 1156
    .restart local v5       #bottomMargin:I
    .restart local v6       #centeredLeft:I
    .restart local v10       #gravity:I
    .restart local v12       #hgravity:I
    .restart local v17       #navWidth:I
    .restart local v21       #topMargin:I
    :cond_13
    add-int v27, v6, v17

    move/from16 v0, v27

    move/from16 v1, v16

    if-le v0, v1, :cond_9

    .line 1157
    const/4 v12, 0x5

    goto/16 :goto_7

    .line 1159
    .end local v6           #centeredLeft:I
    :cond_14
    const/16 v27, -0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_9

    .line 1160
    const/4 v12, 0x3

    goto/16 :goto_7

    .line 1166
    .restart local v24       #xpos:I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getRight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    sub-int v27, v27, v17

    div-int/lit8 v24, v27, 0x2

    .line 1167
    goto/16 :goto_8

    .line 1169
    :pswitch_5
    move/from16 v24, v23

    .line 1170
    goto/16 :goto_8

    .line 1172
    :pswitch_6
    sub-int v24, v16, v17

    goto/16 :goto_8

    .line 1185
    .restart local v22       #vgravity:I
    .restart local v26       #ypos:I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v19

    .line 1186
    .local v19, paddedTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getBottom()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getTop()I

    move-result v28

    sub-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v28

    sub-int v18, v27, v28

    .line 1187
    .local v18, paddedBottom:I
    sub-int v27, v18, v19

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v27, v27, v28

    div-int/lit8 v26, v27, 0x2

    .line 1188
    goto/16 :goto_9

    .line 1190
    .end local v18           #paddedBottom:I
    .end local v19           #paddedTop:I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v27

    add-int v26, v27, v21

    .line 1191
    goto/16 :goto_9

    .line 1193
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getHeight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v28

    sub-int v27, v27, v28

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v27, v27, v28

    sub-int v26, v27, v5

    goto/16 :goto_9

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1164
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1183
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 44
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getChildCount()I

    move-result v7

    .line 878
    .local v7, childCount:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIsCollapsable:Z

    move/from16 v40, v0

    if-eqz v40, :cond_4

    .line 879
    const/16 v38, 0x0

    .line 880
    .local v38, visibleChildren:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move/from16 v0, v22

    if-lt v0, v7, :cond_1

    .line 888
    if-nez v38, :cond_4

    .line 890
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 891
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1070
    .end local v22           #i:I
    .end local v38           #visibleChildren:I
    :cond_0
    :goto_1
    return-void

    .line 881
    .restart local v22       #i:I
    .restart local v38       #visibleChildren:I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 882
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_3

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    if-ne v6, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v40

    if-eqz v40, :cond_3

    .line 884
    :cond_2
    add-int/lit8 v38, v38, 0x1

    .line 880
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 895
    .end local v6           #child:Landroid/view/View;
    .end local v22           #i:I
    .end local v38           #visibleChildren:I
    :cond_4
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 897
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v39

    .line 898
    .local v39, widthMode:I
    const/high16 v40, 0x4000

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_5

    .line 899
    new-instance v40, Ljava/lang/IllegalStateException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, " can only be used "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 900
    const-string v42, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 899
    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 903
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 904
    .local v16, heightMode:I
    const/high16 v40, -0x8000

    move/from16 v0, v16

    move/from16 v1, v40

    if-eq v0, v1, :cond_6

    .line 905
    new-instance v40, Ljava/lang/IllegalStateException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, " can only be used "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 906
    const-string v42, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 905
    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 909
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 911
    .local v9, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v40, v0

    if-lez v40, :cond_12

    .line 912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v27, v0

    .line 914
    .local v27, maxHeight:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v40

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v41

    add-int v37, v40, v41

    .line 915
    .local v37, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v30

    .line 916
    .local v30, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v31

    .line 917
    .local v31, paddingRight:I
    sub-int v15, v27, v37

    .line 918
    .local v15, height:I
    const/high16 v40, -0x8000

    move/from16 v0, v40

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 920
    .local v8, childSpecHeight:I
    sub-int v40, v9, v30

    sub-int v5, v40, v31

    .line 921
    .local v5, availableWidth:I
    div-int/lit8 v24, v5, 0x2

    .line 922
    .local v24, leftOfCenter:I
    move/from16 v32, v24

    .line 924
    .local v32, rightOfCenter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-object/from16 v18, v0

    .line 926
    .local v18, homeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_7

    .line 927
    invoke-virtual/range {v18 .. v18}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 929
    .local v26, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    if-gez v40, :cond_14

    .line 930
    const/high16 v40, -0x8000

    move/from16 v0, v40

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 935
    .local v20, homeWidthSpec:I
    :goto_4
    const/high16 v40, 0x4000

    move/from16 v0, v40

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    .line 934
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 936
    invoke-virtual/range {v18 .. v18}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v40

    invoke-virtual/range {v18 .. v18}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v41

    add-int v19, v40, v41

    .line 937
    .local v19, homeWidth:I
    const/16 v40, 0x0

    sub-int v41, v5, v19

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 938
    const/16 v40, 0x0

    sub-int v41, v5, v19

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 941
    .end local v19           #homeWidth:I
    .end local v20           #homeWidthSpec:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    if-eqz v40, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v40, v0

    .line 943
    const/16 v41, 0x0

    .line 942
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 944
    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v32, v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 947
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v40, v0

    if-eqz v40, :cond_9

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_9

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v40, v0

    .line 950
    const/16 v41, 0x0

    .line 949
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 951
    const/16 v40, 0x0

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIndeterminateProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v32, v41

    .line 951
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 955
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    if-eqz v40, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_15

    .line 956
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v40, v0

    and-int/lit8 v40, v40, 0x8

    if-eqz v40, :cond_15

    const/16 v33, 0x1

    .line 958
    .local v33, showTitle:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-nez v40, :cond_a

    .line 959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v40, v0

    packed-switch v40, :pswitch_data_0

    .line 989
    :cond_a
    :goto_6
    const/4 v14, 0x0

    .line 990
    .local v14, customView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_18

    .line 991
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 997
    :cond_b
    :goto_7
    if-eqz v14, :cond_f

    .line 998
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 999
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;

    move/from16 v40, v0

    if-eqz v40, :cond_19

    move-object/from16 v40, v26

    .line 1000
    check-cast v40, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;

    move-object/from16 v4, v40

    .line 1002
    .local v4, ablp:Lcom/actionbarsherlock/app/ActionBar$LayoutParams;
    :goto_8
    const/16 v21, 0x0

    .line 1003
    .local v21, horizontalMargin:I
    const/16 v36, 0x0

    .line 1004
    .local v36, verticalMargin:I
    if-eqz v4, :cond_c

    .line 1005
    iget v0, v4, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v40, v0

    iget v0, v4, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v41, v0

    add-int v21, v40, v41

    .line 1006
    iget v0, v4, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v40, v0

    iget v0, v4, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v41, v0

    add-int v36, v40, v41

    .line 1012
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v40, v0

    if-gtz v40, :cond_1a

    .line 1013
    const/high16 v11, -0x8000

    .line 1018
    .local v11, customNavHeightMode:I
    :goto_9
    const/16 v40, 0x0

    .line 1019
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v41, v0

    if-ltz v41, :cond_d

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .end local v15           #height:I
    :cond_d
    sub-int v41, v15, v36

    .line 1018
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1021
    .local v10, customNavHeight:I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    const/16 v41, -0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1c

    .line 1022
    const/high16 v13, 0x4000

    .line 1023
    .local v13, customNavWidthMode:I
    :goto_a
    const/16 v41, 0x0

    .line 1024
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    if-ltz v40, :cond_1d

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v40

    :goto_b
    sub-int v40, v40, v21

    .line 1023
    move/from16 v0, v41

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1026
    .local v12, customNavWidth:I
    if-eqz v4, :cond_1e

    iget v0, v4, Lcom/actionbarsherlock/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v40, v0

    :goto_c
    and-int/lit8 v17, v40, 0x7

    .line 1031
    .local v17, hgrav:I
    const/16 v40, 0x1

    move/from16 v0, v17

    move/from16 v1, v40

    if-ne v0, v1, :cond_e

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_e

    .line 1032
    move/from16 v0, v24

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v40

    mul-int/lit8 v12, v40, 0x2

    .line 1036
    :cond_e
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v40

    .line 1037
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    .line 1035
    move/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1038
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v40

    add-int v40, v40, v21

    sub-int v5, v5, v40

    .line 1041
    .end local v4           #ablp:Lcom/actionbarsherlock/app/ActionBar$LayoutParams;
    .end local v10           #customNavHeight:I
    .end local v11           #customNavHeightMode:I
    .end local v12           #customNavWidth:I
    .end local v13           #customNavWidthMode:I
    .end local v17           #hgrav:I
    .end local v21           #horizontalMargin:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v36           #verticalMargin:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v40, v0

    if-nez v40, :cond_10

    if-eqz v33, :cond_10

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    .line 1043
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v41, v0

    const/high16 v42, 0x4000

    invoke-static/range {v41 .. v42}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    const/16 v42, 0x0

    .line 1042
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 1044
    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v41

    sub-int v41, v24, v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1047
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v40, v0

    if-gtz v40, :cond_21

    .line 1048
    const/16 v28, 0x0

    .line 1049
    .local v28, measuredHeight:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_d
    move/from16 v0, v22

    if-lt v0, v7, :cond_1f

    .line 1056
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1061
    .end local v22           #i:I
    .end local v28           #measuredHeight:I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    move-object/from16 v40, v0

    if-eqz v40, :cond_11

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1065
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_0

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressView:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-object/from16 v40, v0

    .line 1067
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x2

    sub-int v41, v9, v41

    const/high16 v42, 0x4000

    .line 1066
    invoke-static/range {v41 .. v42}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v42

    const/high16 v43, -0x8000

    invoke-static/range {v42 .. v43}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    .line 1066
    invoke-virtual/range {v40 .. v42}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->measure(II)V

    goto/16 :goto_1

    .line 912
    .end local v5           #availableWidth:I
    .end local v8           #childSpecHeight:I
    .end local v14           #customView:Landroid/view/View;
    .end local v18           #homeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    .end local v24           #leftOfCenter:I
    .end local v27           #maxHeight:I
    .end local v30           #paddingLeft:I
    .end local v31           #paddingRight:I
    .end local v32           #rightOfCenter:I
    .end local v33           #showTitle:Z
    .end local v37           #verticalPadding:I
    :cond_12
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 924
    .restart local v5       #availableWidth:I
    .restart local v8       #childSpecHeight:I
    .restart local v15       #height:I
    .restart local v24       #leftOfCenter:I
    .restart local v27       #maxHeight:I
    .restart local v30       #paddingLeft:I
    .restart local v31       #paddingRight:I
    .restart local v32       #rightOfCenter:I
    .restart local v37       #verticalPadding:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    move-object/from16 v18, v0

    goto/16 :goto_3

    .line 932
    .restart local v18       #homeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v40, v0

    const/high16 v41, 0x4000

    invoke-static/range {v40 .. v41}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .restart local v20       #homeWidthSpec:I
    goto/16 :goto_4

    .line 956
    .end local v20           #homeWidthSpec:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_15
    const/16 v33, 0x0

    goto/16 :goto_5

    .line 961
    .restart local v33       #showTitle:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    move-object/from16 v40, v0

    if-eqz v40, :cond_a

    .line 962
    if-eqz v33, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v40, v0

    mul-int/lit8 v23, v40, 0x2

    .line 963
    .local v23, itemPaddingSize:I
    :goto_f
    const/16 v40, 0x0

    sub-int v41, v5, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 964
    const/16 v40, 0x0

    sub-int v41, v24, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    move-object/from16 v40, v0

    .line 966
    const/high16 v41, -0x8000

    move/from16 v0, v41

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    .line 967
    const/high16 v42, 0x4000

    move/from16 v0, v42

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    .line 965
    invoke-virtual/range {v40 .. v42}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->measure(II)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getMeasuredWidth()I

    move-result v25

    .line 969
    .local v25, listNavWidth:I
    const/16 v40, 0x0

    sub-int v41, v5, v25

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 970
    const/16 v40, 0x0

    sub-int v41, v24, v25

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 972
    goto/16 :goto_6

    .line 962
    .end local v23           #itemPaddingSize:I
    .end local v25           #listNavWidth:I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v23, v0

    goto :goto_f

    .line 974
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-object/from16 v40, v0

    if-eqz v40, :cond_a

    .line 975
    if-eqz v33, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v40, v0

    mul-int/lit8 v23, v40, 0x2

    .line 976
    .restart local v23       #itemPaddingSize:I
    :goto_10
    const/16 v40, 0x0

    sub-int v41, v5, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 977
    const/16 v40, 0x0

    sub-int v41, v24, v23

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-object/from16 v40, v0

    .line 979
    const/high16 v41, -0x8000

    move/from16 v0, v41

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v41

    .line 980
    const/high16 v42, 0x4000

    move/from16 v0, v42

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    .line 978
    invoke-virtual/range {v40 .. v42}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v34

    .line 982
    .local v34, tabWidth:I
    const/16 v40, 0x0

    sub-int v41, v5, v34

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 983
    const/16 v40, 0x0

    sub-int v41, v24, v34

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto/16 :goto_6

    .line 975
    .end local v23           #itemPaddingSize:I
    .end local v34           #tabWidth:I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v23, v0

    goto :goto_10

    .line 992
    .restart local v14       #customView:Landroid/view/View;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v40, v0

    and-int/lit8 v40, v40, 0x10

    if-eqz v40, :cond_b

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v40, v0

    if-eqz v40, :cond_b

    .line 994
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_7

    .line 1000
    .restart local v26       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1015
    .restart local v4       #ablp:Lcom/actionbarsherlock/app/ActionBar$LayoutParams;
    .restart local v21       #horizontalMargin:I
    .restart local v36       #verticalMargin:I
    :cond_1a
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v40, v0

    const/16 v41, -0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1b

    .line 1016
    const/high16 v11, 0x4000

    .line 1015
    .restart local v11       #customNavHeightMode:I
    :goto_11
    goto/16 :goto_9

    .line 1016
    .end local v11           #customNavHeightMode:I
    :cond_1b
    const/high16 v11, -0x8000

    goto :goto_11

    .line 1022
    .end local v15           #height:I
    .restart local v10       #customNavHeight:I
    .restart local v11       #customNavHeightMode:I
    :cond_1c
    const/high16 v13, -0x8000

    goto/16 :goto_a

    .restart local v13       #customNavWidthMode:I
    :cond_1d
    move/from16 v40, v5

    .line 1024
    goto/16 :goto_b

    .line 1026
    .restart local v12       #customNavWidth:I
    :cond_1e
    const/16 v40, 0x13

    goto/16 :goto_c

    .line 1050
    .end local v4           #ablp:Lcom/actionbarsherlock/app/ActionBar$LayoutParams;
    .end local v10           #customNavHeight:I
    .end local v11           #customNavHeightMode:I
    .end local v12           #customNavWidth:I
    .end local v13           #customNavWidthMode:I
    .end local v21           #horizontalMargin:I
    .end local v26           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v36           #verticalMargin:I
    .restart local v22       #i:I
    .restart local v28       #measuredHeight:I
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    .line 1051
    .local v35, v:Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    add-int v29, v40, v37

    .line 1052
    .local v29, paddedViewHeight:I
    move/from16 v0, v29

    move/from16 v1, v28

    if-le v0, v1, :cond_20

    .line 1053
    move/from16 v28, v29

    .line 1049
    :cond_20
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_d

    .line 1058
    .end local v22           #i:I
    .end local v28           #measuredHeight:I
    .end local v29           #paddedViewHeight:I
    .end local v35           #v:Landroid/view/View;
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto/16 :goto_e

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 1240
    move-object v1, p1

    check-cast v1, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;

    .line 1242
    .local v1, state:Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1244
    iget v2, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    .line 1245
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mOptionsMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1246
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mOptionsMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 1247
    .local v0, item:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1248
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->expandActionView()Z

    .line 1252
    .end local v0           #item:Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1253
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1255
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1226
    invoke-super {p0}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1227
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1229
    .local v0, state:Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1230
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1233
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/actionbarsherlock/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1235
    return-object v0
.end method

.method public setCallback(Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCallback:Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;

    .line 461
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0
    .parameter "collapsable"

    .prologue
    .line 868
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 869
    return-void
.end method

.method public setContextView(Lcom/actionbarsherlock/internal/widget/ActionBarContextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    .line 865
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 552
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 553
    .local v0, showCustom:Z
    :goto_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 554
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 556
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 557
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 558
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 560
    :cond_1
    return-void

    .line 552
    .end local v0           #showCustom:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 11
    .parameter "options"

    .prologue
    const/16 v7, 0x8

    const/4 v0, -0x1

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 635
    iget v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_6

    .line 636
    .local v0, flagsChanged:I
    :goto_0
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 638
    and-int/lit8 v9, v0, 0x1f

    if-eqz v9, :cond_11

    .line 639
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_7

    move v4, v8

    .line 640
    .local v4, showHome:Z
    :goto_1
    if-eqz v4, :cond_8

    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_8

    move v5, v6

    .line 641
    .local v5, vis:I
    :goto_2
    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v5}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 643
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_0

    .line 644
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_9

    move v3, v8

    .line 645
    .local v3, setUp:Z
    :goto_3
    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 651
    if-eqz v3, :cond_0

    .line 652
    invoke-virtual {p0, v8}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 656
    .end local v3           #setUp:Z
    :cond_0
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_1

    .line 657
    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_a

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_a

    move v2, v8

    .line 658
    .local v2, logoVis:Z
    :goto_4
    iget-object v10, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    if-eqz v2, :cond_b

    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v10, v9}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 661
    .end local v2           #logoVis:Z
    :cond_1
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_2

    .line 662
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_c

    .line 663
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->initTitle()V

    .line 669
    :cond_2
    :goto_6
    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_4

    .line 670
    and-int/lit8 v9, v0, 0x6

    if-eqz v9, :cond_4

    .line 671
    iget v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_d

    move v1, v8

    .line 672
    .local v1, homeAsUp:Z
    :goto_7
    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_3

    if-eqz v1, :cond_e

    move v7, v6

    :cond_3
    :goto_8
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_f

    if-eqz v1, :cond_f

    :goto_9
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 676
    .end local v1           #homeAsUp:Z
    :cond_4
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 677
    and-int/lit8 v6, p1, 0x10

    if-eqz v6, :cond_10

    .line 678
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 684
    :cond_5
    :goto_a
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->requestLayout()V

    .line 690
    .end local v4           #showHome:Z
    .end local v5           #vis:I
    :goto_b
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_12

    .line 691
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 699
    :goto_c
    return-void

    .line 635
    .end local v0           #flagsChanged:I
    :cond_6
    iget v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_0

    .restart local v0       #flagsChanged:I
    :cond_7
    move v4, v6

    .line 639
    goto/16 :goto_1

    .restart local v4       #showHome:Z
    :cond_8
    move v5, v7

    .line 640
    goto/16 :goto_2

    .restart local v5       #vis:I
    :cond_9
    move v3, v6

    .line 644
    goto :goto_3

    :cond_a
    move v2, v6

    .line 657
    goto :goto_4

    .line 658
    .restart local v2       #logoVis:Z
    :cond_b
    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 665
    .end local v2           #logoVis:Z
    :cond_c
    iget-object v9, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v9}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_6

    :cond_d
    move v1, v6

    .line 671
    goto :goto_7

    .line 672
    .restart local v1       #homeAsUp:Z
    :cond_e
    const/4 v7, 0x4

    goto :goto_8

    :cond_f
    move v8, v6

    .line 673
    goto :goto_9

    .line 680
    .end local v1           #homeAsUp:Z
    :cond_10
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_a

    .line 686
    .end local v4           #showHome:Z
    .end local v5           #vis:I
    :cond_11
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->invalidate()V

    goto :goto_b

    .line 692
    :cond_12
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_13

    .line 693
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 694
    sget v8, Lcom/actionbarsherlock/R$string;->abs__action_bar_up_description:I

    .line 693
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 696
    :cond_13
    iget-object v6, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 697
    sget v8, Lcom/actionbarsherlock/R$string;->abs__action_bar_home_description:I

    .line 696
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 769
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 770
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 773
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setSelection(I)V

    .line 781
    return-void
.end method

.method public setEmbeddedTabView(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .parameter "tabs"

    .prologue
    const/4 v2, 0x1

    .line 445
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 448
    :cond_0
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    .line 449
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 450
    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 451
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 452
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 453
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 454
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 455
    invoke-virtual {p1, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 457
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 449
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 621
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 623
    if-nez p1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 632
    :goto_0
    return-void

    .line 625
    :cond_0
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 627
    sget v2, Lcom/actionbarsherlock/R$string;->abs__action_bar_up_description:I

    .line 626
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 630
    sget v2, Lcom/actionbarsherlock/R$string;->abs__action_bar_home_description:I

    .line 629
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 711
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 702
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 703
    if-eqz p1, :cond_1

    .line 704
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 707
    :cond_1
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 722
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "logo"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 715
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mHomeLayout:Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 718
    :cond_0
    return-void
.end method

.method public setMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V
    .locals 8
    .parameter "menu"
    .parameter "cb"

    .prologue
    const/4 v7, -0x1

    .line 464
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mOptionsMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    .line 524
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mOptionsMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 467
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mOptionsMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 468
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mOptionsMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 471
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 472
    .local v0, builder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mOptionsMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 473
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_2

    .line 474
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 475
    .local v3, oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 476
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    if-nez v4, :cond_3

    .line 480
    new-instance v4, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 481
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    .line 482
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    sget v5, Lcom/actionbarsherlock/R$id;->abs__action_menu_presenter:I

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 483
    new-instance v4, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/actionbarsherlock/internal/widget/ActionBarView;Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;)V

    iput-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/actionbarsherlock/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 487
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 489
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_5

    .line 490
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 491
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 492
    sget v6, Lcom/actionbarsherlock/R$bool;->abs__action_bar_expanded_action_views_exclusive:I

    .line 491
    invoke-static {v5, v6}, Lcom/actionbarsherlock/internal/ResourcesCompat;->getResources_getBoolean(Landroid/content/Context;I)Z

    move-result v5

    .line 490
    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 493
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->configPresenters(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 494
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 495
    .local v2, menuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 496
    .restart local v3       #oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    if-eq v3, p0, :cond_4

    .line 497
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 499
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :goto_1
    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    goto/16 :goto_0

    .line 501
    .end local v2           #menuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    :cond_5
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 503
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 504
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    .line 503
    invoke-virtual {v4, v5, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 506
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 508
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 509
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->configPresenters(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 510
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 511
    .restart local v2       #menuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_7

    .line 512
    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 513
    .restart local v3       #oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eq v3, v4, :cond_6

    .line 514
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 516
    :cond_6
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 517
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v2, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 520
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setNavigationMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    .line 725
    iget v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I

    .line 726
    .local v0, oldMode:I
    if-eq p1, v0, :cond_2

    .line 727
    packed-switch v0, :pswitch_data_0

    .line 739
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 763
    :cond_1
    :goto_1
    iput p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavigationMode:I

    .line 764
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->requestLayout()V

    .line 766
    :cond_2
    return-void

    .line 729
    :pswitch_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    if-eqz v2, :cond_0

    .line 730
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 734
    :pswitch_1
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 735
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 741
    :pswitch_2
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    if-nez v2, :cond_3

    .line 742
    new-instance v2, Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 743
    sget v4, Lcom/actionbarsherlock/R$attr;->actionDropDownStyle:I

    invoke-direct {v2, v3, v5, v4}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 742
    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    .line 744
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 745
    sget v3, Lcom/actionbarsherlock/R$layout;->abs__action_bar_tab_bar_view:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    .line 744
    iput-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    .line 746
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 747
    const/4 v2, -0x2

    const/4 v3, -0x1

    .line 746
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 748
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 749
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v2, v3, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 752
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 754
    :cond_4
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSpinner:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mNavItemSelectedListener:Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setOnItemSelectedListener(Lcom/actionbarsherlock/internal/widget/IcsAdapterView$OnItemSelectedListener;)V

    .line 755
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mListNavLayout:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 758
    :pswitch_3
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 759
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 727
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 739
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSplitActionBar(Z)V
    .locals 3
    .parameter "splitActionBar"

    .prologue
    .line 415
    iget-boolean v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_3

    .line 416
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 418
    .local v0, oldParent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 421
    :cond_0
    if-eqz p1, :cond_4

    .line 422
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 429
    .end local v0           #oldParent:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    .line 430
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 432
    :cond_2
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 434
    :cond_3
    return-void

    .line 426
    .restart local v0       #oldParent:Landroid/view/ViewGroup;
    :cond_4
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 430
    .end local v0           #oldParent:Landroid/view/ViewGroup;
    :cond_5
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "subtitle"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 608
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 609
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 613
    iget v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 614
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 615
    .local v0, visible:Z
    :goto_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 617
    .end local v0           #visible:Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 611
    goto :goto_0

    :cond_3
    move v0, v2

    .line 614
    goto :goto_1

    .restart local v0       #visible:Z
    :cond_4
    move v2, v3

    .line 615
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mUserTitle:Z

    .line 574
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 575
    return-void
.end method

.method public setWindowCallback(Lcom/actionbarsherlock/view/Window$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mWindowCallback:Lcom/actionbarsherlock/view/Window$Callback;

    .line 383
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 585
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 587
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method
