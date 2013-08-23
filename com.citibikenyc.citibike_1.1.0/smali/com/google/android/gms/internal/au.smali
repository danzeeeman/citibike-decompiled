.class public Lcom/google/android/gms/internal/au;
.super Ljava/lang/Object;


# instance fields
.field cL:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/au;->cL:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public ad()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->cL:Landroid/os/Bundle;

    const-string v1, "has_plus_one"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ae()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->cL:Landroid/os/Bundle;

    const-string v1, "bubble_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public af()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->cL:Landroid/os/Bundle;

    const-string v1, "inline_annotations"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ag()[Landroid/net/Uri;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->cL:Landroid/os/Bundle;

    const-string v1, "profile_photo_uris"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, v1

    new-array v0, v0, [Landroid/net/Uri;

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/au;->cL:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method
