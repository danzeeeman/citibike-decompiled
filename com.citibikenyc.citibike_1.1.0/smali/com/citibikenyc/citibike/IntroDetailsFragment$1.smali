.class Lcom/citibikenyc/citibike/IntroDetailsFragment$1;
.super Ljava/lang/Object;
.source "IntroDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/IntroDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/IntroDetailsFragment;

.field private final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/IntroDetailsFragment;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/IntroDetailsFragment$1;->this$0:Lcom/citibikenyc/citibike/IntroDetailsFragment;

    iput-object p2, p0, Lcom/citibikenyc/citibike/IntroDetailsFragment$1;->val$bundle:Landroid/os/Bundle;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 31
    iget-object v3, p0, Lcom/citibikenyc/citibike/IntroDetailsFragment$1;->this$0:Lcom/citibikenyc/citibike/IntroDetailsFragment;

    invoke-virtual {v3}, Lcom/citibikenyc/citibike/IntroDetailsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/MainActivity;

    .line 33
    .local v0, activity:Lcom/citibikenyc/citibike/MainActivity;
    iget-object v3, p0, Lcom/citibikenyc/citibike/IntroDetailsFragment$1;->val$bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/citibikenyc/citibike/IntroDetailsFragment$1;->val$bundle:Landroid/os/Bundle;

    const-string v4, "INTRO_MODE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MainActivity;->disableIntroMode()V

    .line 38
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 39
    .local v1, fm:Landroid/support/v4/app/FragmentManager;
    const-string v3, "Details"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 41
    .local v2, termsFragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 42
    const v4, 0x7f040004

    const v5, 0x7f040001

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 43
    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 52
    .end local v2           #termsFragment:Landroid/support/v4/app/Fragment;
    :goto_0
    return-void

    .line 47
    .end local v1           #fm:Landroid/support/v4/app/FragmentManager;
    :cond_0
    invoke-virtual {v0}, Lcom/citibikenyc/citibike/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 49
    .restart local v1       #fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 50
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method
