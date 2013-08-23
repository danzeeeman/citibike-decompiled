.class public Lcom/google/android/gms/plus/PlusShare$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final bo:Landroid/content/Intent;

.field private cm:Landroid/app/Activity;

.field private cn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cm:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v1, "android.support.v4.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v1, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public static from(Landroid/app/Activity;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/plus/PlusShare$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/plus/PlusShare$Builder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public addStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusShare$Builder;->setStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v5, "android.intent.extra.STREAM"

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    :cond_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setContent(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cm:Landroid/app/Activity;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must include the launching activity with PlusShare.Builder.from() before setting deep links"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/at;->b(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    :goto_1
    const-string v0, "The deepLinkUri parameter is required."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/at;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cm:Landroid/app/Activity;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Must include the launching activity with PlusShare.Builder.from() before setting deep links"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/at;->b(ZLjava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "The deepLinkId parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/at;->b(ZLjava/lang/Object;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    const-string v3, "The title parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/at;->b(ZLjava/lang/Object;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    const-string v0, "The description parameter is required."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/at;->b(ZLjava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v1, "thumbnailUrl"

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method public setStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->cn:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->bo:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
