.class Lcom/citibikenyc/citibike/TermsFragment$1;
.super Ljava/lang/Object;
.source "TermsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/citibikenyc/citibike/TermsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/citibikenyc/citibike/TermsFragment;


# direct methods
.method constructor <init>(Lcom/citibikenyc/citibike/TermsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/citibikenyc/citibike/TermsFragment$1;->this$0:Lcom/citibikenyc/citibike/TermsFragment;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    .line 62
    iget-object v4, p0, Lcom/citibikenyc/citibike/TermsFragment$1;->this$0:Lcom/citibikenyc/citibike/TermsFragment;

    invoke-virtual {v4}, Lcom/citibikenyc/citibike/TermsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    .line 65
    .local v0, activity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    const-string v4, "TERMS_PREFS"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 66
    .local v3, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 67
    .local v2, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "TERMS_DATE"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v1, args:Landroid/os/Bundle;
    const-string v4, "INTRO_MODE"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    iget-object v4, p0, Lcom/citibikenyc/citibike/TermsFragment$1;->this$0:Lcom/citibikenyc/citibike/TermsFragment;

    #getter for: Lcom/citibikenyc/citibike/TermsFragment;->safetyTipsFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v4}, Lcom/citibikenyc/citibike/TermsFragment;->access$0(Lcom/citibikenyc/citibike/TermsFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 77
    const v5, 0x7f040002

    const v6, 0x7f040003

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 78
    const v5, 0x7f050043

    iget-object v6, p0, Lcom/citibikenyc/citibike/TermsFragment$1;->this$0:Lcom/citibikenyc/citibike/TermsFragment;

    #getter for: Lcom/citibikenyc/citibike/TermsFragment;->safetyTipsFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v6}, Lcom/citibikenyc/citibike/TermsFragment;->access$0(Lcom/citibikenyc/citibike/TermsFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    const-string v7, "SafetyTips"

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 80
    return-void
.end method
