.class public final Lcom/google/android/gms/plus/PlusShare;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusShare$Builder;
    }
.end annotation


# static fields
.field public static final EXTRA_CONTENT_DEEP_LINK_ID:Ljava/lang/String; = "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

.field public static final EXTRA_CONTENT_DEEP_LINK_METADATA:Ljava/lang/String; = "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA"

.field public static final KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL:Ljava/lang/String; = "thumbnailUrl"

.field public static final KEY_CONTENT_DEEP_LINK_METADATA_TITLE:Ljava/lang/String; = "title"

.field public static final PARAM_CONTENT_DEEP_LINK_ID:Ljava/lang/String; = "deep_link_id"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getDeepLinkId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "deep_link_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
