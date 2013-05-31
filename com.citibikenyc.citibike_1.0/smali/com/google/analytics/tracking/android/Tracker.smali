.class public Lcom/google/analytics/tracking/android/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/Tracker$1;,
        Lcom/google/analytics/tracking/android/Tracker$SimpleModel;
    }
.end annotation


# static fields
.field private static final DF:Ljava/text/DecimalFormat; = null

.field static final MAX_TOKENS:J = 0x1d4c0L

.field static final TIME_PER_TOKEN_MILLIS:J = 0x7d0L


# instance fields
.field private volatile mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

.field private final mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

.field private mIsThrottlingEnabled:Z

.field private volatile mIsTrackerClosed:Z

.field private volatile mIsTrackingStarted:Z

.field private mLastTrackTime:J

.field private final mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

.field private mTokens:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/analytics/tracking/android/Tracker;->DF:Ljava/text/DecimalFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsTrackerClosed:Z

    .line 36
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsTrackingStarted:Z

    .line 44
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsThrottlingEnabled:Z

    .line 49
    iput-object v2, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    .line 50
    iput-object v2, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V
    .locals 4
    .parameter "trackingId"
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsTrackerClosed:Z

    .line 36
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsTrackingStarted:Z

    .line 44
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    .line 46
    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsThrottlingEnabled:Z

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    .line 58
    new-instance v0, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;-><init>(Lcom/google/analytics/tracking/android/Tracker$1;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    .line 60
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "trackingId"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "sampleRate"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "sessionControl"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "useSecure"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private assertTrackerOpen()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsTrackerClosed:Z

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tracker closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method private constructItem(Lcom/google/analytics/tracking/android/Transaction$Item;Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;
    .locals 4
    .parameter "item"
    .parameter "trans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/tracking/android/Transaction$Item;",
            "Lcom/google/analytics/tracking/android/Transaction;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 673
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "transactionId"

    invoke-virtual {p2}, Lcom/google/analytics/tracking/android/Transaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v1, "currencyCode"

    invoke-virtual {p2}, Lcom/google/analytics/tracking/android/Transaction;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v1, "itemCode"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction$Item;->getSKU()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v1, "itemName"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction$Item;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v1, "itemCategory"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction$Item;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v1, "itemPrice"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction$Item;->getPriceInMicros()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->microsToCurrencyString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string v1, "itemQuantity"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction$Item;->getQuantity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_ITEM:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 681
    return-object v0
.end method

.method private internalSend(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "hitType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 375
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsTrackingStarted:Z

    .line 376
    if-nez p2, :cond_0

    .line 377
    new-instance p2, Ljava/util/HashMap;

    .end local p2           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 379
    .restart local p2       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v0, "hitType"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->setAll(Ljava/util/Map;Ljava/lang/Boolean;)V

    .line 381
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/Tracker;->tokensAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    const-string v0, "Too many hits sent too quickly, throttling invoked."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->clearTemporaryValues()V

    .line 387
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->getKeysAndValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/TrackerHandler;->sendHit(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static microsToCurrencyString(J)Ljava/lang/String;
    .locals 5
    .parameter "currencyInMicros"

    .prologue
    .line 649
    sget-object v0, Lcom/google/analytics/tracking/android/Tracker;->DF:Ljava/text/DecimalFormat;

    long-to-double v1, p0

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsTrackerClosed:Z

    .line 357
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/TrackerHandler;->closeTracker(Lcom/google/analytics/tracking/android/Tracker;)V

    .line 358
    return-void
.end method

.method public constructEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;
    .locals 4
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 638
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "eventCategory"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string v1, "eventAction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v1, "eventLabel"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    if-eqz p4, :cond_0

    .line 642
    const-string v1, "eventValue"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_EVENT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 645
    return-object v0
.end method

.method public constructException(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 3
    .parameter "exceptionDescription"
    .parameter "fatal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 691
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "exDescription"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v1, "exFatal"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_EXCEPTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 694
    return-object v0
.end method

.method public constructRawException(Ljava/lang/String;Ljava/lang/Throwable;Z)Ljava/util/Map;
    .locals 5
    .parameter "threadName"
    .parameter "exception"
    .parameter "fatal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 704
    .local v1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 705
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 706
    .local v2, stream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 707
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 708
    const-string v3, "rawException"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Utils;->hexEncode([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    if-eqz p1, :cond_0

    .line 711
    const-string v3, "exceptionThreadName"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_0
    const-string v3, "exFatal"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v3

    sget-object v4, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_RAW_EXCEPTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 715
    return-object v1
.end method

.method public constructSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "network"
    .parameter "action"
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 739
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "socialNetwork"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v1, "socialAction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v1, "socialTarget"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_SOCIAL:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 743
    return-object v0
.end method

.method public constructTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "category"
    .parameter "intervalInMilliseconds"
    .parameter "name"
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 725
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "timingCategory"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v1, "timingValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string v1, "timingVar"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string v1, "timingLabel"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_TIMING:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 730
    return-object v0
.end method

.method public constructTransaction(Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;
    .locals 4
    .parameter "trans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/tracking/android/Transaction;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 659
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "transactionId"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v1, "transactionAffiliation"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getAffiliation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v1, "transactionShipping"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getShippingCostInMicros()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->microsToCurrencyString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v1, "transactionTax"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getTotalTaxInMicros()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->microsToCurrencyString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v1, "transactionTotal"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getTotalCostInMicros()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->microsToCurrencyString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v1, "currencyCode"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_TRANSACTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 667
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 393
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 394
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 540
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_APP_ID:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 541
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstallerId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_APP_INSTALLER_ID:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 557
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "appInstallerId"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionParser()Lcom/google/analytics/tracking/android/ExceptionParser;
    .locals 2

    .prologue
    .line 572
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_EXCEPTION_PARSER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 573
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    return-object v0
.end method

.method public getSampleRate()D
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_SAMPLE_RATE:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 464
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "sampleRate"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->safeParseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_TRACKING_ID:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 411
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "trackingId"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymizeIpEnabled()Z
    .locals 2

    .prologue
    .line 433
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_ANONYMIZE_IP:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 434
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "anonymizeIp"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->safeParseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUseSecure()Z
    .locals 2

    .prologue
    .line 482
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_USE_SECURE:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 483
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "useSecure"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "hitType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 370
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SEND:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/tracking/android/Tracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 372
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 214
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_EVENT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 215
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 216
    const-string v0, "event"

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/Tracker;->constructEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 218
    return-void
.end method

.method public sendException(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 6
    .parameter "threadName"
    .parameter "exception"
    .parameter "fatal"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 286
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_EXCEPTION_WITH_THROWABLE:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 287
    iget-object v2, p0, Lcom/google/analytics/tracking/android/Tracker;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/google/analytics/tracking/android/Tracker;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    invoke-interface {v2, p1, p2}, Lcom/google/analytics/tracking/android/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, description:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 301
    invoke-virtual {p0, v0, p3}, Lcom/google/analytics/tracking/android/Tracker;->sendException(Ljava/lang/String;Z)V

    .line 302
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 303
    .end local v0           #description:Ljava/lang/String;
    :goto_1
    return-void

    .line 291
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 292
    const-string v2, "exception"

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/analytics/tracking/android/Tracker;->constructRawException(Ljava/lang/String;Ljava/lang/Throwable;Z)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 293
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, e:Ljava/io/IOException;
    const-string v2, "trackException: couldn\'t serialize, sending \"Unknown Exception\""

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 297
    const-string v0, "Unknown Exception"

    .restart local v0       #description:Ljava/lang/String;
    goto :goto_0
.end method

.method public sendException(Ljava/lang/String;Z)V
    .locals 2
    .parameter "description"
    .parameter "fatal"

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 260
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_EXCEPTION_WITH_DESCRIPTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 261
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 262
    const-string v0, "exception"

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/tracking/android/Tracker;->constructException(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 263
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 264
    return-void
.end method

.method public sendSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "network"
    .parameter "action"
    .parameter "target"

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 346
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_SOCIAL:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 347
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 348
    const-string v0, "social"

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/analytics/tracking/android/Tracker;->constructSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 349
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 350
    return-void
.end method

.method public sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "category"
    .parameter "intervalInMilliseconds"
    .parameter "name"
    .parameter "label"

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 323
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_TIMING:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 324
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 325
    const-string v0, "timing"

    invoke-virtual/range {p0 .. p5}, Lcom/google/analytics/tracking/android/Tracker;->constructTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 327
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 328
    return-void
.end method

.method public sendTransaction(Lcom/google/analytics/tracking/android/Transaction;)V
    .locals 4
    .parameter "transaction"

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 233
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_TRANSACTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 234
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 235
    const-string v2, "tran"

    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/Tracker;->constructTransaction(Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 237
    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/tracking/android/Transaction$Item;

    .line 238
    .local v1, item:Lcom/google/analytics/tracking/android/Transaction$Item;
    const-string v2, "item"

    invoke-direct {p0, v1, p1}, Lcom/google/analytics/tracking/android/Tracker;->constructItem(Lcom/google/analytics/tracking/android/Transaction$Item;Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 240
    .end local v1           #item:Lcom/google/analytics/tracking/android/Transaction$Item;
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 241
    return-void
.end method

.method public sendView()V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 165
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trackView requires a appScreen to be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_VIEW:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 169
    const-string v0, "appview"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    return-void
.end method

.method public sendView(Ljava/lang/String;)V
    .locals 2
    .parameter "appScreen"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trackView requires a appScreen to be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_VIEW_WITH_APPSCREEN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 191
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "appview"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 402
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 403
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    invoke-virtual {v0, p1, p2}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public setAnonymizeIp(Z)V
    .locals 3
    .parameter "anonymizeIp"

    .prologue
    .line 425
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_ANONYMIZE_IP:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 426
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "anonymizeIp"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 535
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_ID:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 536
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .locals 2
    .parameter "appInstallerId"

    .prologue
    .line 551
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_INSTALLER_ID:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 552
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "appInstallerId"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2
    .parameter "appName"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsTrackingStarted:Z

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "Tracking already started, setAppName call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "setting appName to empty value not allowed, call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_NAME:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 121
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAppScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "appScreen"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 149
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_SCREEN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 150
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "appVersion"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsTrackingStarted:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "Tracking already started, setAppVersion call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_VERSION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 138
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCampaign(Ljava/lang/String;)V
    .locals 2
    .parameter "campaign"

    .prologue
    .line 523
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_CAMPAIGN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 524
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "campaign"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public setCustomDimension(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 583
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index must be > 0, ignoring setCustomDimension call for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "customDimension"

    invoke-static {v1, p1}, Lcom/google/analytics/tracking/android/Utils;->getSlottedModelField(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCustomDimensionsAndMetrics(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, dimensions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, metrics:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 619
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 620
    .local v1, key:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    goto :goto_0

    .line 623
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Integer;
    :cond_0
    if-eqz p2, :cond_1

    .line 624
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 625
    .restart local v1       #key:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v3, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomMetric(ILjava/lang/Long;)V

    goto :goto_1

    .line 628
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public setCustomMetric(ILjava/lang/Long;)V
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 598
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index must be > 0, ignoring setCustomMetric call for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 607
    :goto_0
    return-void

    .line 602
    :cond_0
    const/4 v0, 0x0

    .line 603
    .local v0, tmpValue:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 604
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v2, "customMetric"

    invoke-static {v2, p1}, Lcom/google/analytics/tracking/android/Utils;->getSlottedModelField(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V
    .locals 2
    .parameter "exceptionParser"

    .prologue
    .line 564
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_EXCEPTION_PARSER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 565
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mExceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    .line 566
    return-void
.end method

.method setLastTrackTime(J)V
    .locals 0
    .parameter "lastTrackTime"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 748
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mLastTrackTime:J

    .line 749
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 2
    .parameter "referrer"

    .prologue
    .line 493
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_REFERRER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 494
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "referrer"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public setSampleRate(D)V
    .locals 3
    .parameter "sampleRate"

    .prologue
    .line 455
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_SAMPLE_RATE:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 456
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "sampleRate"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public setStartSession(Z)V
    .locals 3
    .parameter "startSession"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->assertTrackerOpen()V

    .line 100
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_START_SESSION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 101
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v2, "sessionControl"

    if-eqz p1, :cond_0

    const-string v0, "start"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThrottlingEnabled(Z)V
    .locals 0
    .parameter "throttlingEnabled"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 787
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsThrottlingEnabled:Z

    .line 788
    return-void
.end method

.method setTokens(J)V
    .locals 0
    .parameter "tokens"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 753
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    .line 754
    return-void
.end method

.method public setUseSecure(Z)V
    .locals 3
    .parameter "useSecure"

    .prologue
    .line 474
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_USE_SECURE:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 475
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mModel:Lcom/google/analytics/tracking/android/Tracker$SimpleModel;

    const-string v1, "useSecure"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method declared-synchronized tokensAvailable()Z
    .locals 11
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/32 v7, 0x1d4c0

    const-wide/16 v9, 0x7d0

    const/4 v4, 0x1

    .line 766
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/google/analytics/tracking/android/Tracker;->mIsThrottlingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 782
    :goto_0
    monitor-exit p0

    return v4

    .line 769
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 770
    .local v2, timeNow:J
    iget-wide v5, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 771
    iget-wide v5, p0, Lcom/google/analytics/tracking/android/Tracker;->mLastTrackTime:J

    sub-long v0, v2, v5

    .line 772
    .local v0, timeElapsed:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    .line 773
    const-wide/32 v5, 0x1d4c0

    iget-wide v7, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    add-long/2addr v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    .line 776
    .end local v0           #timeElapsed:J
    :cond_1
    iput-wide v2, p0, Lcom/google/analytics/tracking/android/Tracker;->mLastTrackTime:J

    .line 777
    iget-wide v5, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    cmp-long v5, v5, v9

    if-ltz v5, :cond_2

    .line 778
    iget-wide v5, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J

    sub-long/2addr v5, v9

    iput-wide v5, p0, Lcom/google/analytics/tracking/android/Tracker;->mTokens:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 766
    .end local v2           #timeNow:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 781
    .restart local v2       #timeNow:J
    :cond_2
    :try_start_2
    const-string v4, "Excessive tracking detected.  Tracking call ignored."

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 782
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    return-void
.end method

.method public trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 0
    .parameter "threadName"
    .parameter "exception"
    .parameter "fatal"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/analytics/tracking/android/Tracker;->sendException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 272
    return-void
.end method

.method public trackException(Ljava/lang/String;Z)V
    .locals 0
    .parameter "description"
    .parameter "fatal"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/tracking/android/Tracker;->sendException(Ljava/lang/String;Z)V

    .line 249
    return-void
.end method

.method public trackSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "network"
    .parameter "action"
    .parameter "target"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/analytics/tracking/android/Tracker;->sendSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "category"
    .parameter "intervalInMilliseconds"
    .parameter "name"
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 310
    invoke-virtual/range {p0 .. p5}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public trackTransaction(Lcom/google/analytics/tracking/android/Transaction;)V
    .locals 0
    .parameter "transaction"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/Tracker;->sendTransaction(Lcom/google/analytics/tracking/android/Transaction;)V

    .line 226
    return-void
.end method

.method public trackView()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/Tracker;->sendView()V

    .line 159
    return-void
.end method

.method public trackView(Ljava/lang/String;)V
    .locals 0
    .parameter "appScreen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 178
    return-void
.end method
