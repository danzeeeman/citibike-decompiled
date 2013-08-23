.class public final Lcom/google/analytics/tracking/android/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/Transaction$1;,
        Lcom/google/analytics/tracking/android/Transaction$Item;,
        Lcom/google/analytics/tracking/android/Transaction$Builder;
    }
.end annotation


# instance fields
.field private final mAffiliation:Ljava/lang/String;

.field private final mCurrencyCode:Ljava/lang/String;

.field private final mItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/Transaction$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mShippingCostInMicros:J

.field private final mTotalCostInMicros:J

.field private final mTotalTaxInMicros:J

.field private final mTransactionId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/Transaction$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->mTransactionId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$000(Lcom/google/analytics/tracking/android/Transaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mTransactionId:Ljava/lang/String;

    .line 30
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->mTotalCostInMicros:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$100(Lcom/google/analytics/tracking/android/Transaction$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mTotalCostInMicros:J

    .line 31
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->mAffiliation:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$200(Lcom/google/analytics/tracking/android/Transaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mAffiliation:Ljava/lang/String;

    .line 32
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->mTotalTaxInMicros:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$300(Lcom/google/analytics/tracking/android/Transaction$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mTotalTaxInMicros:J

    .line 33
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->mShippingCostInMicros:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$400(Lcom/google/analytics/tracking/android/Transaction$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mShippingCostInMicros:J

    .line 34
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->mCurrencyCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$500(Lcom/google/analytics/tracking/android/Transaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mCurrencyCode:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mItems:Ljava/util/Map;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/Transaction$Builder;Lcom/google/analytics/tracking/android/Transaction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/Transaction;-><init>(Lcom/google/analytics/tracking/android/Transaction$Builder;)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/google/analytics/tracking/android/Transaction$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction$Item;->getSKU()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public getAffiliation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mAffiliation:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/tracking/android/Transaction$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Transaction;->mItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getShippingCostInMicros()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mShippingCostInMicros:J

    return-wide v0
.end method

.method public getTotalCostInMicros()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mTotalCostInMicros:J

    return-wide v0
.end method

.method public getTotalTaxInMicros()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mTotalTaxInMicros:J

    return-wide v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method
