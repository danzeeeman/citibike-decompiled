.class public Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Lcom/actionbarsherlock/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;,
        Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$ItemInvoker;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 61
    aput v2, v0, v1

    .line 62
    aput v5, v0, v2

    .line 63
    const/4 v1, 0x5

    aput v1, v0, v3

    .line 64
    aput v4, v0, v4

    .line 65
    aput v3, v0, v5

    .line 60
    sput-object v0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 146
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 147
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 149
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 151
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 191
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 197
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 201
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 203
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 204
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 8
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 396
    invoke-static {p3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 398
    .local v5, ordering:I
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 399
    iget v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 398
    invoke-direct/range {v0 .. v7}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;-><init>(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 401
    .local v0, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 407
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 409
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .parameter "cleared"

    .prologue
    .line 240
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 243
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    .line 243
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 244
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 245
    .local v0, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v0, :cond_2

    .line 246
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_2
    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 294
    const-string v5, "android:menu:presenters"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 296
    .local v3, presenterStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    :cond_0
    return-void

    .line 298
    :cond_1
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 299
    .local v4, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 300
    .local v2, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_3

    .line 301
    iget-object v6, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_3
    invoke-interface {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->getId()I

    move-result v0

    .line 304
    .local v0, id:I
    if-lez v0, :cond_2

    .line 305
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 306
    .local v1, parcel:Landroid/os/Parcelable;
    if-eqz v1, :cond_2

    .line 307
    invoke-interface {v2, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 271
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 291
    :goto_0
    return-void

    .line 273
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 275
    .local v2, presenterStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 290
    const-string v5, "android:menu:presenters"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0

    .line 275
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 276
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 277
    .local v1, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_3

    .line 278
    iget-object v6, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_3
    invoke-interface {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->getId()I

    move-result v0

    .line 281
    .local v0, id:I
    if-lez v0, :cond_1

    .line 282
    invoke-interface {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    .line 283
    .local v4, state:Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private dispatchSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .parameter "subMenu"

    .prologue
    .line 255
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 267
    :cond_0
    return v2

    .line 257
    :cond_1
    const/4 v2, 0x0

    .line 259
    .local v2, result:Z
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 260
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 261
    .local v0, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v0, :cond_3

    .line 262
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_3
    if-nez v2, :cond_2

    .line 264
    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z

    move-result v2

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .parameter
    .parameter "ordering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 757
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 764
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 758
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 759
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_1

    .line 760
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    .line 757
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static getOrdering(I)I
    .locals 3
    .parameter "categoryOrder"

    .prologue
    .line 690
    const/high16 v1, -0x1

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 692
    .local v0, index:I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 693
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :cond_1
    sget-object v1, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .parameter "index"
    .parameter "updateChildrenOnMenuViews"

    .prologue
    .line 508
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 512
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .parameter "titleRes"
    .parameter "title"
    .parameter "iconRes"
    .parameter "icon"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1101
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1103
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1104
    iput-object p5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1107
    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1108
    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1127
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1128
    return-void

    .line 1110
    :cond_0
    if-lez p1, :cond_3

    .line 1111
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1116
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1117
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1123
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1112
    :cond_3
    if-eqz p2, :cond_1

    .line 1113
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1118
    :cond_4
    if-eqz p4, :cond_2

    .line 1119
    iput-object p4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .parameter "shortcutsVisible"

    .prologue
    const/4 v0, 0x1

    .line 722
    if-eqz p1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    .line 724
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 725
    sget v2, Lcom/actionbarsherlock/R$bool;->abs__config_showMenuShortcutsWhenKeyboardPresent:I

    .line 724
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    :goto_0
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 726
    return-void

    .line 724
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 421
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Lcom/actionbarsherlock/view/MenuItem;)I
    .locals 13
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 450
    iget-object v10, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 452
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 453
    .local v6, lri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 455
    .local v3, N:I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 456
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 459
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v3, :cond_2

    .line 474
    return v3

    .line 453
    .end local v3           #N:I
    .end local v4           #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 460
    .restart local v3       #N:I
    .restart local v4       #i:I
    :cond_2
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 461
    .local v8, ri:Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    .line 462
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_4

    move-object/from16 v10, p6

    .line 461
    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 463
    .local v9, rintent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    .line 464
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 465
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 466
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v10

    .line 467
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v10

    .line 468
    invoke-interface {v10, v9}, Lcom/actionbarsherlock/view/MenuItem;->setIntent(Landroid/content/Intent;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    .line 469
    .local v5, item:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz p8, :cond_3

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_3

    .line 470
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 459
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 462
    .end local v5           #item:Lcom/actionbarsherlock/view/MenuItem;
    .end local v9           #rintent:Landroid/content/Intent;
    :cond_4
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2
.end method

.method public addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V
    .locals 2
    .parameter "presenter"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 222
    return-void
.end method

.method public addSubMenu(I)Lcom/actionbarsherlock/view/SubMenu;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 3
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 437
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 438
    .local v0, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V

    .line 439
    .local v1, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)V

    .line 441
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public bindNativeOverflow(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;Ljava/util/HashMap;)Z
    .locals 15
    .parameter "menu"
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1278
    .local p3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/MenuItem;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 1279
    .local v5, nonActionItems:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 1280
    :cond_0
    const/4 v8, 0x0

    .line 1339
    :cond_1
    return v8

    .line 1283
    :cond_2
    const/4 v8, 0x0

    .line 1284
    .local v8, visible:Z
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    .line 1285
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 1286
    .local v4, nonActionItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1289
    const/4 v8, 0x1

    .line 1292
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1293
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v10

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v11

    .line 1294
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v12

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    .line 1293
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 1296
    .local v2, nativeSub:Landroid/view/SubMenu;
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .line 1297
    .local v7, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v7}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1318
    invoke-interface {v2}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 1323
    .end local v2           #nativeSub:Landroid/view/SubMenu;
    .end local v7           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    .local v1, nativeItem:Landroid/view/MenuItem;
    :goto_2
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1324
    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1325
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1326
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1327
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 1328
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1329
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1330
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1331
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v10

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1333
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1334
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 1337
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1297
    .end local v1           #nativeItem:Landroid/view/MenuItem;
    .restart local v2       #nativeSub:Landroid/view/SubMenu;
    .restart local v7       #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 1298
    .local v6, subItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v11

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v12

    .line 1299
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v13

    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    .line 1298
    invoke-interface {v2, v11, v12, v13, v14}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 1301
    .local v3, nativeSubItem:Landroid/view/MenuItem;
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1302
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1303
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1304
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1305
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 1306
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1307
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1308
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1309
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v11

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1311
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1312
    invoke-virtual {v6}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-interface {v2, v11, v12, v13}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 1315
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1320
    .end local v2           #nativeSub:Landroid/view/SubMenu;
    .end local v3           #nativeSubItem:Landroid/view/MenuItem;
    .end local v6           #subItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .end local v7           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_7
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v10

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v11

    .line 1321
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result v12

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    .line 1320
    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1       #nativeItem:Landroid/view/MenuItem;
    goto/16 :goto_2
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 754
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 534
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 535
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 520
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 521
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->clear()V

    .line 522
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 523
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 524
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 525
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 526
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1092
    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1093
    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1094
    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1096
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1097
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    .line 936
    return-void
.end method

.method final close(Z)V
    .locals 4
    .parameter "allMenusAreClosing"

    .prologue
    .line 919
    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v2, :cond_0

    .line 931
    :goto_0
    return-void

    .line 921
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 922
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 930
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_0

    .line 922
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 923
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 924
    .local v0, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v0, :cond_2

    .line 925
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 927
    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    goto :goto_1
.end method

.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 1252
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eq v3, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1270
    :cond_1
    :goto_0
    return v0

    .line 1254
    :cond_2
    const/4 v0, 0x0

    .line 1256
    .local v0, collapsed:Z
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1257
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1265
    :goto_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1267
    if-eqz v0, :cond_1

    .line 1268
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 1257
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1258
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 1259
    .local v1, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_5

    .line 1260
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1261
    :cond_5
    invoke-interface {v1, p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2
.end method

.method dispatchMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 1230
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 1248
    :cond_0
    :goto_0
    return v0

    .line 1232
    :cond_1
    const/4 v0, 0x0

    .line 1234
    .local v0, expanded:Z
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1235
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1243
    :goto_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1245
    if-eqz v0, :cond_0

    .line 1246
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 1235
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1236
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 1237
    .local v1, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_4

    .line 1238
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1239
    :cond_4
    invoke-interface {v1, p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2
.end method

.method public findGroupIndex(I)I
    .locals 1
    .parameter "group"

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .parameter "group"
    .parameter "start"

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 644
    .local v2, size:I
    if-gez p2, :cond_0

    .line 645
    const/4 p2, 0x0

    .line 648
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 656
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_1
    return v0

    .line 649
    .restart local v0       #i:I
    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 651
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 5
    .parameter "id"

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 608
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 621
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    .line 609
    :cond_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 610
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 612
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 613
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/actionbarsherlock/view/SubMenu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 615
    .local v2, possibleItem:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz v2, :cond_2

    move-object v1, v2

    .line 616
    goto :goto_1

    .line 608
    .end local v2           #possibleItem:Lcom/actionbarsherlock/view/MenuItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findItemIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 627
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 634
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 628
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 629
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 835
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 836
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 837
    invoke-virtual {p0, v2, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 839
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-object v8

    .line 843
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 844
    .local v3, metaState:I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 846
    .local v4, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 849
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 850
    .local v7, size:I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 851
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 854
    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 857
    .local v5, qwerty:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 858
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 859
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 861
    .local v6, shortcutChar:C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    .line 862
    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    .line 863
    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    .line 864
    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    .line 865
    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    .line 866
    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 867
    goto :goto_0

    .line 860
    .end local v6           #shortcutChar:C
    :cond_6
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 857
    .restart local v6       #shortcutChar:C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .parameter
    .parameter "keyCode"
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    const/16 v10, 0x43

    .line 791
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 792
    .local v6, qwerty:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 793
    .local v4, metaState:I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 795
    .local v5, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 797
    .local v2, isKeyCodeMapped:Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 819
    :cond_0
    return-void

    .line 802
    :cond_1
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 803
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 804
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 805
    .local v3, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 806
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 808
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 809
    .local v7, shortcutChar:C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    .line 810
    if-eqz v7, :cond_4

    .line 811
    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    .line 812
    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    .line 813
    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    .line 814
    if-ne p2, v10, :cond_4

    .line 815
    :cond_3
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 816
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    .end local v7           #shortcutChar:C
    :cond_5
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 9

    .prologue
    .line 1043
    iget-boolean v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v7, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1048
    :cond_0
    const/4 v0, 0x0

    .line 1049
    .local v0, flagged:Z
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1058
    if-eqz v0, :cond_5

    .line 1059
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1060
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1061
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 1062
    .local v6, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1063
    .local v3, itemsSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-lt v1, v3, :cond_3

    .line 1078
    .end local v1           #i:I
    .end local v3           #itemsSize:I
    .end local v6           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :goto_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0

    .line 1049
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1050
    .local v5, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 1051
    .local v4, presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-nez v4, :cond_2

    .line 1052
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1054
    :cond_2
    invoke-interface {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 1064
    .end local v4           #presenter:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    .end local v5           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    .restart local v1       #i:I
    .restart local v3       #itemsSize:I
    .restart local v6       #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_3
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 1065
    .local v2, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1066
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1068
    :cond_4
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1074
    .end local v1           #i:I
    .end local v2           #item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .end local v3           #itemsSize:I
    .end local v6           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_5
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1075
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1076
    iget-object v7, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1083
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1088
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1226
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1207
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1015
    :goto_0
    return-object v3

    .line 1003
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1005
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1007
    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_1

    .line 1012
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1013
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1015
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 1008
    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 1009
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 596
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 603
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 597
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 598
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    const/4 v3, 0x1

    goto :goto_1

    .line 596
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 669
    invoke-virtual {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 995
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 996
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 997
    return-void
.end method

.method onItemVisibleChanged(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 985
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 986
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 987
    return-void
.end method

.method onItemsChanged(Z)V
    .locals 2
    .parameter "structureChanged"

    .prologue
    const/4 v1, 0x1

    .line 946
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 947
    if-eqz p1, :cond_0

    .line 948
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 949
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 952
    :cond_0
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 956
    :goto_0
    return-void

    .line 954
    :cond_1
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z
    .locals 7
    .parameter "item"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 879
    move-object v1, p1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 881
    .local v1, itemImpl:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    .line 906
    :cond_1
    :goto_0
    return v0

    .line 885
    :cond_2
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v0

    .line 887
    .local v0, invoked:Z
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 888
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v4

    or-int/2addr v0, v4

    .line 889
    if-eqz v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 890
    :cond_3
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 891
    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    .line 893
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .line 894
    .local v3, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v2

    .line 895
    .local v2, provider:Lcom/actionbarsherlock/view/ActionProvider;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/actionbarsherlock/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 896
    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/view/ActionProvider;->onPrepareSubMenu(Lcom/actionbarsherlock/view/SubMenu;)V

    .line 898
    :cond_4
    invoke-direct {p0, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 899
    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 901
    .end local v2           #provider:Lcom/actionbarsherlock/view/ActionProvider;
    .end local v3           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_5
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_1

    .line 902
    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 768
    invoke-virtual {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 770
    .local v1, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 772
    .local v0, handled:Z
    if-eqz v1, :cond_0

    .line 773
    invoke-virtual {p0, v1, p3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    move-result v0

    .line 776
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 777
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    .line 780
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .parameter "group"

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 484
    .local v0, i:I
    if-ltz v0, :cond_1

    .line 485
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 486
    .local v1, maxRemovable:I
    const/4 v2, 0x0

    .local v2, numRemoved:I
    move v3, v2

    .line 487
    .end local v2           #numRemoved:I
    .local v3, numRemoved:I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-eq v4, p1, :cond_2

    .line 493
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 495
    .end local v1           #maxRemovable:I
    .end local v2           #numRemoved:I
    :cond_1
    return-void

    .line 489
    .restart local v1       #maxRemovable:I
    .restart local v2       #numRemoved:I
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2           #numRemoved:I
    .restart local v3       #numRemoved:I
    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 479
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 516
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 517
    return-void
.end method

.method public removeMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V
    .locals 4
    .parameter "presenter"

    .prologue
    .line 231
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    return-void

    .line 231
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 232
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;

    .line 233
    .local v0, item:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    .line 234
    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .parameter "states"

    .prologue
    .line 350
    if-nez p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    .line 354
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 357
    .local v7, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-ge v8, v9, :cond_2

    if-eqz v7, :cond_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 363
    .local v3, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_3

    .line 375
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 376
    .local v0, expandedId:I
    if-lez v0, :cond_0

    .line 377
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 378
    .local v4, itemToExpand:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz v4, :cond_0

    .line 379
    invoke-interface {v4}, Lcom/actionbarsherlock/view/MenuItem;->expandActionView()Z

    goto :goto_0

    .line 364
    .end local v0           #expandedId:I
    .end local v4           #itemToExpand:Lcom/actionbarsherlock/view/MenuItem;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 365
    .local v2, item:Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    .line 366
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 367
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 369
    :cond_4
    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 370
    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v5

    check-cast v5, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .line 371
    .local v5, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 363
    .end local v5           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 320
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .parameter "outStates"

    .prologue
    .line 323
    const/4 v5, 0x0

    .line 325
    .local v5, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 326
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 344
    if-eqz v5, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 347
    :cond_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 328
    .local v1, item:Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 329
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 330
    if-nez v5, :cond_2

    .line 331
    new-instance v5, Landroid/util/SparseArray;

    .end local v5           #viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 333
    .restart local v5       #viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_2
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 334
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->isActionViewExpanded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 335
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    :cond_3
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 339
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getSubMenu()Lcom/actionbarsherlock/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .line 340
    .local v3, subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v3, p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 326
    .end local v3           #subMenu:Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 316
    return-void
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    .line 390
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menuInfo"

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1219
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 0
    .parameter "defaultShowAsAction"

    .prologue
    .line 207
    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 208
    return-object p0
.end method

.method setExclusiveItemChecked(Lcom/actionbarsherlock/view/MenuItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 538
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getGroupId()I

    move-result v2

    .line 540
    .local v2, group:I
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 541
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 551
    return-void

    .line 542
    :cond_0
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 543
    .local v1, curItem:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 544
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 541
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 548
    if-ne v1, p1, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 554
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 556
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 563
    return-void

    .line 557
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 558
    .local v2, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 559
    invoke-virtual {v2, p3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 560
    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setCheckable(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 556
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 583
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 585
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 591
    return-void

    .line 586
    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 587
    .local v2, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 588
    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 585
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 566
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 571
    .local v0, N:I
    const/4 v1, 0x0

    .line 572
    .local v1, changedAtLeastOneItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 579
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 580
    :cond_0
    return-void

    .line 573
    :cond_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 574
    .local v3, item:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 575
    invoke-virtual {v3, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 572
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setHeaderIconInt(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "iconRes"

    .prologue
    const/4 v2, 0x0

    .line 1174
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1175
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1162
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1163
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "titleRes"

    .prologue
    const/4 v2, 0x0

    .line 1150
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1151
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1138
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1139
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1186
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1187
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1222
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1223
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter "isQwerty"

    .prologue
    .line 673
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 675
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 676
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .parameter "shortcutsVisible"

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 718
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 971
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 973
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 974
    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 975
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 977
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 964
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 968
    :cond_0
    return-void
.end method
