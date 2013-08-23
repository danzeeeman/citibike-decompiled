.class public final Lcom/google/analytics/tracking/android/Transaction$Item$Builder;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/Transaction$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPriceInMicros:J

.field private final mQuantity:J

.field private final mSKU:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .parameter "SKU"
    .parameter "name"
    .parameter "priceInMicros"
    .parameter "quantity"

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mCategory:Ljava/lang/String;

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mSKU:Ljava/lang/String;

    .line 266
    iput-object p2, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mName:Ljava/lang/String;

    .line 267
    iput-wide p3, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mPriceInMicros:J

    .line 268
    iput-wide p5, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mQuantity:J

    .line 269
    return-void
.end method

.method static synthetic access$1000(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mSKU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mPriceInMicros:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mQuantity:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/google/analytics/tracking/android/Transaction$Item;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Lcom/google/analytics/tracking/android/Transaction$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/Transaction$Item;-><init>(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;Lcom/google/analytics/tracking/android/Transaction$1;)V

    return-object v0
.end method

.method public setProductCategory(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Item$Builder;
    .locals 0
    .parameter "productCategory"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mCategory:Ljava/lang/String;

    .line 280
    return-object p0
.end method
