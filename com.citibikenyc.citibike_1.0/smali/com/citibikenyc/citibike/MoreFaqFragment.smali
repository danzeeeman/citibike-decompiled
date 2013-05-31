.class public Lcom/citibikenyc/citibike/MoreFaqFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "MoreFaqFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/citibikenyc/citibike/interfaces/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/citibikenyc/citibike/interfaces/BackButtonListener;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "FaqFragment"


# instance fields
.field faqContainer:Landroid/view/View;

.field private faqItemAdapter:Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;

.field private faqItemFile:Ljava/lang/String;

.field private faqItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/citibikenyc/citibike/models/FaqItem;",
            ">;"
        }
    .end annotation
.end field

.field public inFaq:Z

.field mContainer:Landroid/widget/ListView;

.field private safetyTipsFragment:Landroid/support/v4/app/Fragment;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItemFile:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->inFaq:Z

    .line 33
    return-void
.end method

.method private loadQuestions(Ljava/lang/String;)V
    .locals 10
    .parameter "questionFileName"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MoreFaqFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 116
    .local v0, assetManager:Landroid/content/res/AssetManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v6, items:Ljava/util/List;,"Ljava/util/List<Lcom/citibikenyc/citibike/models/FaqItem;>;"
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 120
    .local v5, is:Ljava/io/InputStream;
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {v5}, Lcom/citibikenyc/citibike/helpers/FileHelper;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, faqArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v4, v7, :cond_0

    .line 127
    iput-object v6, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItems:Ljava/util/List;

    .line 132
    .end local v2           #faqArray:Lorg/json/JSONArray;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    :goto_1
    return-void

    .line 123
    .restart local v2       #faqArray:Lorg/json/JSONArray;
    .restart local v4       #i:I
    .restart local v5       #is:Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 124
    .local v3, faqItemJson:Lorg/json/JSONObject;
    new-instance v7, Lcom/citibikenyc/citibike/models/FaqItem;

    const-string v8, "question"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "answer"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/citibikenyc/citibike/models/FaqItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    .end local v2           #faqArray:Lorg/json/JSONArray;
    .end local v3           #faqItemJson:Lorg/json/JSONObject;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 129
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public closeSubview()V
    .locals 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->inFaq:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MoreFaqFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->mContainer:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqContainer:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->swapViewOut(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 145
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->inFaq:Z

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 47
    const v0, 0x7f03002d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 48
    .local v9, v:Landroid/view/View;
    const v0, 0x7f050093

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->mContainer:Landroid/widget/ListView;

    .line 50
    const v0, 0x7f030030

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 51
    .local v7, moreHeader:Landroid/view/View;
    const v0, 0x7f03002f

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 53
    .local v6, moreFooter:Landroid/view/View;
    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MoreFaqFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->title:Ljava/lang/String;

    .line 54
    const-string v0, "faq.json"

    iput-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItemFile:Ljava/lang/String;

    .line 56
    const v0, 0x7f050099

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 57
    .local v8, titleView:Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 58
    iget-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->title:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->mContainer:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->mContainer:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItemFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItemFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/citibikenyc/citibike/MoreFaqFragment;->loadQuestions(Ljava/lang/String;)V

    .line 68
    :cond_1
    new-instance v0, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;

    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MoreFaqFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03002e

    iget-object v3, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItems:Ljava/util/List;

    .line 69
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MoreFaqFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 70
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MoreFaqFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0200c9

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 68
    iput-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItemAdapter:Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;

    .line 72
    iget-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->mContainer:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItemAdapter:Lcom/citibikenyc/citibike/helpers/FaqItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->mContainer:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    const v0, 0x7f050094

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqContainer:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/citibikenyc/citibike/SafetyTipsFragment;

    invoke-direct {v0}, Lcom/citibikenyc/citibike/SafetyTipsFragment;-><init>()V

    iput-object v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->safetyTipsFragment:Landroid/support/v4/app/Fragment;

    .line 80
    return-object v9
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "FaqFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onItemClick "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p3, v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MoreFaqFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 90
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f040002

    const v2, 0x7f040003

    const v3, 0x7f040005

    const v4, 0x7f040004

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 91
    const v2, 0x7f050043

    iget-object v3, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->safetyTipsFragment:Landroid/support/v4/app/Fragment;

    const-string v4, "SafetyTips"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 92
    const-string v2, "SafetyTips"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 103
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    if-lez p3, :cond_0

    iget-object v1, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqItems:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/citibikenyc/citibike/models/FaqItem;

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/MoreFaqFragment;->updateFaqView(Lcom/citibikenyc/citibike/models/FaqItem;)V

    .line 97
    iget-boolean v1, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->inFaq:Z

    if-nez v1, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/MoreFaqFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->mContainer:Landroid/widget/ListView;

    invoke-static {v1, v2, v3}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->swapViewIn(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 101
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->inFaq:Z

    goto :goto_0
.end method

.method public showingSubview()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->inFaq:Z

    return v0
.end method

.method public updateFaqView(Lcom/citibikenyc/citibike/models/FaqItem;)V
    .locals 4
    .parameter "faqItem"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqContainer:Landroid/view/View;

    const v3, 0x7f050095

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    .local v1, questionText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/citibikenyc/citibike/MoreFaqFragment;->faqContainer:Landroid/view/View;

    const v3, 0x7f050096

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, answerText:Landroid/widget/TextView;
    iget-object v2, p1, Lcom/citibikenyc/citibike/models/FaqItem;->question:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p1, Lcom/citibikenyc/citibike/models/FaqItem;->answer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 112
    return-void
.end method
