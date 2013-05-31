.class public Lcom/citibikenyc/citibike/CitibikeApplication;
.super Landroid/app/Application;
.source "CitibikeApplication.java"


# static fields
.field public static final PROD_MODE:Z = true

.field private static mInstance:Lcom/citibikenyc/citibike/CitibikeApplication;


# instance fields
.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/citibikenyc/citibike/CitibikeApplication;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/citibikenyc/citibike/CitibikeApplication;->mInstance:Lcom/citibikenyc/citibike/CitibikeApplication;

    return-object v0
.end method


# virtual methods
.method public isOnline()Z
    .locals 5

    .prologue
    .line 55
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/citibikenyc/citibike/CitibikeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 57
    .local v0, conMgr:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 60
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 61
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 69
    .end local v1           #i:I
    .end local v2           #info:[Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 62
    .restart local v1       #i:I
    .restart local v2       #info:[Landroid/net/NetworkInfo;
    :cond_1
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 63
    const/4 v3, 0x1

    goto :goto_1

    .line 61
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/citibikenyc/citibike/CitibikeApplication;->mVisible:Z

    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 27
    sput-object p0, Lcom/citibikenyc/citibike/CitibikeApplication;->mInstance:Lcom/citibikenyc/citibike/CitibikeApplication;

    .line 30
    invoke-static {p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    .line 34
    .local v0, gaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;
    const-string v2, "UA-17974252-7"

    invoke-virtual {v0, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    .line 40
    .local v1, tracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setDefaultTracker(Lcom/google/analytics/tracking/android/Tracker;)V

    .line 43
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/citibikenyc/citibike/CitibikeApplication;->mVisible:Z

    .line 48
    return-void
.end method
