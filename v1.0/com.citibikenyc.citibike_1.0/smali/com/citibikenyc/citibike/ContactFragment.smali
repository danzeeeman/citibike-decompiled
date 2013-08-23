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
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 29
    const-string v0, "ContactFragment"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 32
    :pswitch_0
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/ContactFragment;->onClickCall()V

    goto :goto_0

    .line 35
    :pswitch_1
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/ContactFragment;->onClickEmail()V

    goto :goto_0

    .line 38
    :pswitch_2
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/ContactFragment;->onClickWeb()V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x7f05004b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClickCall()V
    .locals 3

    .prologue
    .line 44
    const-string v1, "ContactFragment"

    const-string v2, "onClickCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, callIntent:Landroid/content/Intent;
    const-string v1, "tel:18552453311"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/ContactFragment;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public onClickEmail()V
    .locals 5

    .prologue
    .line 51
    const-string v1, "ContactFragment"

    const-string v2, "onClickEmail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, emailIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.EMAIL"

    .line 55
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "customerservice@citibikenyc.com"

    aput-object v4, v2, v3

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "NYC Bike Share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "android.intent.extra.TEXT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/ContactFragment;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public onClickWeb()V
    .locals 4

    .prologue
    .line 63
    const-string v2, "ContactFragment"

    const-string v3, "onClickWeb"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v0, "http://www.citibikenyc.com"

    .line 66
    .local v0, url:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, webIntent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/ContactFragment;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 20
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, v:Landroid/view/View;
    const v1, 0x7f05004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/citibikenyc/citibike/helpers/ViewHelper;->setButtonClickHandler(Landroid/view/View$OnClickListener;Landroid/view/ViewGroup;)V

    .line 24
    return-object v0
.end method
