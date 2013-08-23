.class public Lcom/google/android/gms/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final bo:Landroid/content/Intent;

.field private final bp:I

.field private final g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->g:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ak;->bo:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/gms/internal/ak;->bp:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->bo:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/internal/ak;->bp:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SettingsRedirect"

    const-string v1, "Can\'t redirect to app settings for Google Play services"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
