.class public Lcom/citibikenyc/citibike/ContactFragment;
.super Landroid/support/v4/app/Fragment;
.source "ContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ContactFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 30
    :pswitch_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/ContactFragment;->onClickCall()V

    goto :goto_0

    .line 33
    :pswitch_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/ContactFragment;->onClickEmail()V

    goto :goto_0

    .line 36
    :pswitch_2
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/ContactFragment;->onClickWeb()V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x7f05004b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClickCall()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, callIntent:Landroid/content/Intent;
    const-string v1, "tel:18552453311"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/ContactFragment;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public onClickEmail()V
    .locals 5

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, emailIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.EMAIL"

    .line 51
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "customerservice@citibikenyc.com"

    aput-object v4, v2, v3

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "NYC Bike Share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "android.intent.extra.TEXT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/ContactFragment;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public onClickWeb()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "http://www.citibikenyc.com"

    .line 60
    .local v0, url:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, webIntent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/ContactFragment;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 19
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 22
    .local v0, v:Landroid/view/View;
    const v1, 0x7f05004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setButtonClickHandler(Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;)V

    .line 23
    return-object v0
.end method
