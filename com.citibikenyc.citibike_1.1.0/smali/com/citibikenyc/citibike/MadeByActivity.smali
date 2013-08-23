.class public Lcom/citibikenyc/citibike/MadeByActivity;
.super Landroid/app/Activity;
.source "MadeByActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 31
    const/4 v0, 0x0

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/MadeByActivity;->overridePendingTransition(II)V

    .line 32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f040003

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/citibikenyc/citibike/MadeByActivity;->overridePendingTransition(II)V

    .line 16
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MadeByActivity;->setContentView(I)V

    .line 17
    const v0, 0x7f05007a

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MadeByActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/citibikenyc/citibike/MadeByActivity$1;

    invoke-direct {v1, p0}, Lcom/citibikenyc/citibike/MadeByActivity$1;-><init>(Lcom/citibikenyc/citibike/MadeByActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v0, 0x7f050079

    invoke-virtual {p0, v0}, Lcom/citibikenyc/citibike/MadeByActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a013e

    invoke-virtual {p0, v1}, Lcom/citibikenyc/citibike/MadeByActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method
