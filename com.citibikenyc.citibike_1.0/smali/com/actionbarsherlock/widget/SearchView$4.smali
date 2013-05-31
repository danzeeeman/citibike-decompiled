.class Lcom/actionbarsherlock/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$3(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onSearchClicked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$4(Lcom/actionbarsherlock/widget/SearchView;)V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$5(Lcom/actionbarsherlock/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onCloseClicked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$6(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_0

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$7(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 886
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onSubmitQuery()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$8(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_0

    .line 887
    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$9(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 888
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onVoiceClicked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$10(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_0

    .line 889
    :cond_4
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$11(Lcom/actionbarsherlock/widget/SearchView;)Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$12(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_0
.end method
