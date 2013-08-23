.class public Lcom/citibikenyc/citibike/MainMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "MainMenuFragment"


# instance fields
.field private currentPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/citibikenyc/citibike/MainMenuFragment;->currentPosition:I

    .line 13
    return-void
.end method

.method private switchFragment(I)V
    .locals 2
    .parameter "fragmentIndex"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/MainActivity;

    .line 44
    .local v0, fca:Lcom/citibikenyc/citibike/MainActivity;
    invoke-virtual {v0, p1}, Lcom/citibikenyc/citibike/MainActivity;->switchContent(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/citibikenyc/citibike/MainMenuFragment;->setSelected(Landroid/view/View;)V

    .line 50
    iget v0, p0, Lcom/citibikenyc/citibike/MainMenuFragment;->currentPosition:I

    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/MainMenuFragment;->switchFragment(I)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 19
    const v4, 0x7f03002f

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 20
    .local v3, view:Landroid/view/View;
    const v4, 0x7f050092

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 21
    .local v2, layout:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 31
    return-object v3

    .line 22
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/citibikenyc/citibike/helpers/MenuButton;

    if-ne v4, v5, :cond_1

    .line 24
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget v4, p0, Lcom/citibikenyc/citibike/MainMenuFragment;->currentPosition:I

    if-nez v4, :cond_1

    move-object v4, v0

    .line 26
    check-cast v4, Lcom/citibikenyc/citibike/helpers/MenuButton;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/helpers/MenuButton;->setSelectedOn()V

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    iput v4, p0, Lcom/citibikenyc/citibike/MainMenuFragment;->currentPosition:I

    .line 21
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSelected(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 54
    move-object v0, p1

    check-cast v0, Lcom/citibikenyc/citibike/helpers/MenuButton;

    .line 55
    .local v0, b:Lcom/citibikenyc/citibike/helpers/MenuButton;
    iget v2, p0, Lcom/citibikenyc/citibike/MainMenuFragment;->currentPosition:I

    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/MenuButton;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MainMenuFragment;->getView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/citibikenyc/citibike/MainMenuFragment;->currentPosition:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/helpers/MenuButton;

    .line 57
    .local v1, oldButton:Lcom/citibikenyc/citibike/helpers/MenuButton;
    invoke-virtual {v1}, Lcom/citibikenyc/citibike/helpers/MenuButton;->setSelectedOff()V

    .line 58
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/MenuButton;->setSelectedOn()V

    .line 59
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/helpers/MenuButton;->getId()I

    move-result v2

    iput v2, p0, Lcom/citibikenyc/citibike/MainMenuFragment;->currentPosition:I

    .line 62
    .end local v1           #oldButton:Lcom/citibikenyc/citibike/helpers/MenuButton;
    :cond_0
    return-void
.end method
