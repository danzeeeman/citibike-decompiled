.class public final Lcom/google/analytics/tracking/android/Transaction$Item;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/Transaction$Item$Builder;
    }
.end annotation


# instance fields
.field private final mCategory:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPriceInMicros:J

.field private final mQuantity:J

.field private final mSKU:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mSKU:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->access$700(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mSKU:Ljava/lang/String;

    .line 198
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mPriceInMicros:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->access$800(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mPriceInMicros:J

    .line 199
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mQuantity:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->access$900(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mQuantity:J

    .line 200
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->access$1000(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mName:Ljava/lang/String;

    .line 201
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->mCategory:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->access$1100(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mCategory:Ljava/lang/String;

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;Lcom/google/analytics/tracking/android/Transaction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/Transaction$Item;-><init>(Lcom/google/analytics/tracking/android/Transaction$Item$Builder;)V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceInMicros()J
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mPriceInMicros:J

    return-wide v0
.end method

.method public getQuantity()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mQuantity:J

    return-wide v0
.end method

.method public getSKU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Item;->mSKU:Ljava/lang/String;

    return-object v0
.end method
