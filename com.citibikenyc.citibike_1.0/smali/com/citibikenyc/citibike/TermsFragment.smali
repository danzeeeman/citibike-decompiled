.class public Lcom/citibikenyc/citibike/TermsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TermsFragment.java"


# static fields
.field public static final TERMS_DATE:Ljava/lang/String; = "TERMS_DATE"

.field public static final TERMS_PREFS:Ljava/lang/String; = "TERMS_PREFS"


# instance fields
.field private safetyTipsFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/TermsFragment;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/citibikenyc/citibike/TermsFragment;->safetyTipsFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v7

    const-string v8, "terms"

    invoke-virtual {v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 35
    const v7, 0x7f03004a

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 40
    .local v6, v:Landroid/view/View;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v1, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/TermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 42
    .local v0, assetManager:Landroid/content/res/AssetManager;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "terms.html"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .local v4, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 49
    const v7, 0x7f0500b6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 50
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #textView:Landroid/widget/TextView;
    :goto_1
    new-instance v7, Lcom/citibikenyc/citibike/SafetyTipsFragment;

    invoke-direct {v7}, Lcom/citibikenyc/citibike/SafetyTipsFragment;-><init>()V

    iput-object v7, p0, Lcom/citibikenyc/citibike/TermsFragment;->safetyTipsFragment:Landroid/support/v4/app/Fragment;

    .line 59
    const v7, 0x7f0500b7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/citibikenyc/citibike/TermsFragment$1;

    invoke-direct {v8, p0}, Lcom/citibikenyc/citibike/TermsFragment$1;-><init>(Lcom/citibikenyc/citibike/TermsFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-object v6

    .line 45
    .restart local v0       #assetManager:Landroid/content/res/AssetManager;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 52
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 53
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
