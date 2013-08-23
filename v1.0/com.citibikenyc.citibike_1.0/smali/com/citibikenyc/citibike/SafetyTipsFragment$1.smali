.class Lcom/citibikenyc/citibike/SafetyTipsFragment$1;
.super Ljava/lang/Object;
.source "SafetyTipsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/SafetyTipsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/SafetyTipsFragment;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/SafetyTipsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/SafetyTipsFragment$1;->this$0:Lcom/citibikenyc/citibike/SafetyTipsFragment;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f050043

    const v6, 0x7f040003

    const v5, 0x7f040002

    .line 32
    iget-object v3, p0, Lcom/citibikenyc/citibike/SafetyTipsFragment$1;->this$0:Lcom/citibikenyc/citibike/SafetyTipsFragment;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/SafetyTipsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 34
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "INTRO_MODE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "INTRO_MODE"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    iget-object v3, p0, Lcom/citibikenyc/citibike/SafetyTipsFragment$1;->this$0:Lcom/citibikenyc/citibike/SafetyTipsFragment;

    #getter for: Lcom/citibikenyc/citibike/SafetyTipsFragment;->detailsFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Lcom/citibikenyc/citibike/SafetyTipsFragment;->access$0(Lcom/citibikenyc/citibike/SafetyTipsFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    iget-object v3, p0, Lcom/citibikenyc/citibike/SafetyTipsFragment$1;->this$0:Lcom/citibikenyc/citibike/SafetyTipsFragment;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/SafetyTipsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 42
    invoke-virtual {v3, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 43
    iget-object v4, p0, Lcom/citibikenyc/citibike/SafetyTipsFragment$1;->this$0:Lcom/citibikenyc/citibike/SafetyTipsFragment;

    #getter for: Lcom/citibikenyc/citibike/SafetyTipsFragment;->detailsFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v4}, Lcom/citibikenyc/citibike/SafetyTipsFragment;->access$0(Lcom/citibikenyc/citibike/SafetyTipsFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    const-string v5, "Details"

    invoke-virtual {v3, v7, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 54
    .end local v0           #args:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/citibikenyc/citibike/SafetyTipsFragment$1;->this$0:Lcom/citibikenyc/citibike/SafetyTipsFragment;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/SafetyTipsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 49
    .local v2, ft:Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f040005

    const v4, 0x7f040004

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/citibikenyc/citibike/SafetyTipsFragment$1;->this$0:Lcom/citibikenyc/citibike/SafetyTipsFragment;

    #getter for: Lcom/citibikenyc/citibike/SafetyTipsFragment;->detailsFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v4}, Lcom/citibikenyc/citibike/SafetyTipsFragment;->access$0(Lcom/citibikenyc/citibike/SafetyTipsFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    const-string v5, "Details"

    invoke-virtual {v3, v7, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 51
    const-string v4, "Details"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
