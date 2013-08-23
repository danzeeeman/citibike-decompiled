.class final enum Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;
.super Ljava/lang/Enum;
.source "AdMobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/AdMobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AdMobKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

.field public static final enum CLIENT_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

.field public static final enum HIT_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

.field public static final enum PROPERTY_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

.field public static final enum VISITOR_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;


# instance fields
.field private mBowParameter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    const-string v1, "CLIENT_ID_KEY"

    const-string v2, "ga_cid"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->CLIENT_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    new-instance v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    const-string v1, "HIT_ID_KEY"

    const-string v2, "ga_hid"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->HIT_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    new-instance v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    const-string v1, "PROPERTY_ID_KEY"

    const-string v2, "ga_wpids"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->PROPERTY_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    new-instance v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    const-string v1, "VISITOR_ID_KEY"

    const-string v2, "ga_uid"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->VISITOR_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    sget-object v1, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->CLIENT_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->HIT_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->PROPERTY_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->VISITOR_ID_KEY:Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->$VALUES:[Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "bowParameter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->mBowParameter:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;
    .locals 1
    .parameter "name"

    .prologue
    .line 65
    const-class v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    return-object v0
.end method

.method public static values()[Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->$VALUES:[Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    invoke-virtual {v0}, [Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;

    return-object v0
.end method


# virtual methods
.method getBowParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;->mBowParameter:Ljava/lang/String;

    return-object v0
.end method
