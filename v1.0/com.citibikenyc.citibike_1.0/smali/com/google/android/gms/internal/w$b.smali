.class Lcom/google/android/gms/internal/w$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic Z:Lcom/google/android/gms/internal/w;

.field private final co:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/w;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/w$b;->Z:Lcom/google/android/gms/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/w$b;->co:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/w$b;->Z:Lcom/google/android/gms/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/internal/w;->bV:Landroid/widget/CompoundButton;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/w$b;->Z:Lcom/google/android/gms/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/internal/w;->bX:Lcom/google/android/gms/internal/k;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/w$b;->Z:Lcom/google/android/gms/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/internal/w;->cg:Lcom/google/android/gms/internal/au;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/w$b;->co:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/w$b;->co:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    invoke-interface {v1, v0}, Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;->onPlusOneClick(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/w$b;->Z:Lcom/google/android/gms/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/internal/w;->cg:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/w$b;->onPlusOneClick(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onPlusOneClick(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/w$b;->Z:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/w;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/w$b;->Z:Lcom/google/android/gms/internal/w;

    iget v1, v1, Lcom/google/android/gms/internal/w;->bS:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
