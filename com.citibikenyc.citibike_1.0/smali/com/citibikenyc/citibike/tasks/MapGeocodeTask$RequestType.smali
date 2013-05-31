.class public final enum Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;
.super Ljava/lang/Enum;
.source "MapGeocodeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/tasks/MapGeocodeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADDRESS:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

.field private static final synthetic ENUM$VALUES:[Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

.field public static final enum GOOGLEPLACE:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

.field public static final enum STATION:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    const-string v1, "STATION"

    invoke-direct {v0, v1, v2}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->STATION:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    .line 177
    new-instance v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    const-string v1, "GOOGLEPLACE"

    invoke-direct {v0, v1, v3}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->GOOGLEPLACE:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    .line 178
    new-instance v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    const-string v1, "ADDRESS"

    invoke-direct {v0, v1, v4}, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->ADDRESS:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    sget-object v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->STATION:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->GOOGLEPLACE:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->ADDRESS:Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->ENUM$VALUES:[Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;->ENUM$VALUES:[Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    array-length v1, v0

    new-array v2, v1, [Lcom/citibikenyc/citibike/tasks/MapGeocodeTask$RequestType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
