.class public Lcom/google/analytics/tracking/android/EasyTracker;
.super Ljava/lang/Object;
.source "EasyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;,
        Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;
    }
.end annotation


# static fields
.field static final NUM_MILLISECONDS_TO_WAIT_FOR_OPEN_ACTIVITY:I = 0x3e8

.field private static sInstance:Lcom/google/analytics/tracking/android/EasyTracker;


# instance fields
.field private mActivitiesActive:I

.field private final mActivityNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalyticsInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mAppName:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mClock:Lcom/google/analytics/tracking/android/Clock;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDispatchPeriod:I

.field private mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mIsAnonymizeIpEnabled:Z

.field private mIsAutoActivityTracking:Z

.field private mIsEnabled:Z

.field private mIsInForeground:Z

.field private mIsReportUncaughtExceptionsEnabled:Z

.field private mLastOnStopTime:J

.field private mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

.field private mSampleRate:Ljava/lang/Double;

.field private mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

.field private mSessionTimeout:J

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mTrackingId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsEnabled:Z

    .line 149
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mDispatchPeriod:I

    .line 176
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsAutoActivityTracking:Z

    .line 181
    iput v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivityNameMap:Ljava/util/Map;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 217
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsInForeground:Z

    .line 96
    new-instance v0, Lcom/google/analytics/tracking/android/EasyTracker$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker$1;-><init>(Lcom/google/analytics/tracking/android/EasyTracker;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mClock:Lcom/google/analytics/tracking/android/Clock;

    .line 102
    return-void
.end method

.method static synthetic access$102(Lcom/google/analytics/tracking/android/EasyTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsInForeground:Z

    return p1
.end method

.method private declared-synchronized clearExistingTimer()V
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_0
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static clearTracker()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/tracking/android/EasyTracker;->sInstance:Lcom/google/analytics/tracking/android/EasyTracker;

    .line 438
    return-void
.end method

.method private getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .parameter "activity"

    .prologue
    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, canonicalName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivityNameMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivityNameMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 431
    :goto_0
    return-object v2

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    invoke-interface {v2, v0}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 428
    move-object v1, v0

    .line 430
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivityNameMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 431
    goto :goto_0
.end method

.method public static getInstance()Lcom/google/analytics/tracking/android/EasyTracker;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/analytics/tracking/android/EasyTracker;->sInstance:Lcom/google/analytics/tracking/android/EasyTracker;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/EasyTracker;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/EasyTracker;->sInstance:Lcom/google/analytics/tracking/android/EasyTracker;

    .line 113
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/EasyTracker;->sInstance:Lcom/google/analytics/tracking/android/EasyTracker;

    return-object v0
.end method

.method public static getTracker()Lcom/google/analytics/tracking/android/Tracker;
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/EasyTracker;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call EasyTracker.getInstance().setContext(context) or startActivity(activity) before calling getTracker()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method private loadParameters()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_trackingId"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTrackingId:Ljava/lang/String;

    .line 233
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTrackingId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_api_key"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTrackingId:Ljava/lang/String;

    .line 237
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTrackingId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    const-string v2, "EasyTracker requested, but missing required ga_trackingId"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 239
    new-instance v2, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;-><init>(Lcom/google/analytics/tracking/android/EasyTracker;)V

    iput-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsEnabled:Z

    .line 244
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_appName"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mAppName:Ljava/lang/String;

    .line 245
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_appVersion"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mAppVersion:Ljava/lang/String;

    .line 246
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_debug"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mDebug:Z

    .line 248
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_sampleFrequency"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSampleRate:Ljava/lang/Double;

    .line 249
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSampleRate:Ljava/lang/Double;

    if-nez v3, :cond_2

    .line 250
    new-instance v3, Ljava/lang/Double;

    iget-object v4, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v5, "ga_sampleRate"

    const/16 v6, 0x64

    invoke-interface {v4, v5, v6}, Lcom/google/analytics/tracking/android/ParameterLoader;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-double v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSampleRate:Ljava/lang/Double;

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_dispatchPeriod"

    const/16 v5, 0x708

    invoke-interface {v3, v4, v5}, Lcom/google/analytics/tracking/android/ParameterLoader;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mDispatchPeriod:I

    .line 253
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_sessionTimeout"

    const/16 v5, 0x1e

    invoke-interface {v3, v4, v5}, Lcom/google/analytics/tracking/android/ParameterLoader;->getInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSessionTimeout:J

    .line 254
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_autoActivityTracking"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_auto_activity_tracking"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsAutoActivityTracking:Z

    .line 257
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v3, "ga_anonymizeIp"

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsAnonymizeIpEnabled:Z

    .line 258
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v3, "ga_reportUncaughtExceptions"

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsReportUncaughtExceptionsEnabled:Z

    .line 260
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mAnalyticsInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTrackingId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 261
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mAppName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting appName to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I

    .line 263
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->setAppName(Ljava/lang/String;)V

    .line 269
    :cond_4
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mAppVersion:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 270
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->setAppVersion(Ljava/lang/String;)V

    .line 272
    :cond_5
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsAnonymizeIpEnabled:Z

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->setAnonymizeIp(Z)V

    .line 273
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSampleRate:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->setSampleRate(D)V

    .line 274
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mAnalyticsInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mDebug:Z

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setDebug(Z)V

    .line 275
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    iget v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mDispatchPeriod:I

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/ServiceManager;->setDispatchPeriod(I)V

    .line 277
    iget-boolean v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsReportUncaughtExceptionsEnabled:Z

    if-eqz v2, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 279
    .local v0, newHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    if-nez v0, :cond_6

    .line 280
    new-instance v1, Lcom/google/analytics/tracking/android/ExceptionReporter;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/ExceptionReporter;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 282
    .local v1, reporter:Lcom/google/analytics/tracking/android/ExceptionReporter;
    move-object v0, v1

    .line 284
    .end local v1           #reporter:Lcom/google/analytics/tracking/android/ExceptionReporter;
    :cond_6
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto/16 :goto_0

    .line 254
    .end local v0           #newHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public activityStart(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 344
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 345
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsEnabled:Z

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->clearExistingTimer()V

    .line 353
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsInForeground:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->checkForNewSession()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->setStartSession(Z)V

    .line 355
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsAutoActivityTracking:Z

    if-nez v0, :cond_2

    .line 360
    :cond_2
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsInForeground:Z

    .line 361
    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    .line 362
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsAutoActivityTracking:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/EasyTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public activityStop(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 376
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsEnabled:Z

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    .line 382
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    .line 384
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mLastOnStopTime:J

    .line 386
    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->clearExistingTimer()V

    .line 390
    new-instance v0, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;-><init>(Lcom/google/analytics/tracking/android/EasyTracker;Lcom/google/analytics/tracking/android/EasyTracker$1;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimerTask:Ljava/util/TimerTask;

    .line 391
    new-instance v0, Ljava/util/Timer;

    const-string v1, "waitForActivityStart"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimer:Ljava/util/Timer;

    .line 392
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method checkForNewSession()Z
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 223
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSessionTimeout:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSessionTimeout:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mLastOnStopTime:J

    iget-wide v4, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mSessionTimeout:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatch()V
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ServiceManager;->dispatch()V

    .line 403
    :cond_0
    return-void
.end method

.method getActivitiesActive()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 447
    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mActivitiesActive:I

    return v0
.end method

.method setClock(Lcom/google/analytics/tracking/android/Clock;)V
    .locals 0
    .parameter "clock"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mClock:Lcom/google/analytics/tracking/android/Clock;

    .line 443
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    const-string v1, "Context cannot be null"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 313
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v0

    .line 308
    .local v0, sm:Lcom/google/analytics/tracking/android/ServiceManager;
    new-instance v1, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/GoogleAnalytics;Lcom/google/analytics/tracking/android/ServiceManager;)V

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/GoogleAnalytics;Lcom/google/analytics/tracking/android/ServiceManager;)V
    .locals 1
    .parameter "ctx"
    .parameter "parameterLoader"
    .parameter "ga"
    .parameter "serviceManager"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    const-string v0, "Context cannot be null"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mContext:Landroid/content/Context;

    .line 327
    iput-object p3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mAnalyticsInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 328
    iput-object p4, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mServiceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    .line 329
    iput-object p2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mParameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    .line 330
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->loadParameters()V

    .line 332
    :cond_1
    return-void
.end method

.method setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .parameter "handler"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 292
    return-void
.end method
