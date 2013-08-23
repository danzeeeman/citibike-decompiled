.class public Lcom/actionbarsherlock/internal/view/ActionProviderWrapper;
.super Landroid/view/ActionProvider;
.source "ActionProviderWrapper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private final mProvider:Lcom/actionbarsherlock/view/ActionProvider;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/view/ActionProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/ActionProviderWrapper;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    .line 16
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/ActionProviderWrapper;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/ActionProviderWrapper;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/ActionProviderWrapper;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 2
    .parameter "subMenu"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/ActionProviderWrapper;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;

    invoke-direct {v1, p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuWrapper;-><init>(Landroid/view/SubMenu;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/view/ActionProvider;->onPrepareSubMenu(Lcom/actionbarsherlock/view/SubMenu;)V

    .line 41
    return-void
.end method

.method public unwrap()Lcom/actionbarsherlock/view/ActionProvider;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/ActionProviderWrapper;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    return-object v0
.end method
