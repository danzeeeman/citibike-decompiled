.class Lcom/citibikenyc/citibike/MainActivity$CitiState;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/citibikenyc/citibike/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CitiState"
.end annotation


# instance fields
.field public showSplashScreen:Z

.field final synthetic this$0:Lcom/citibikenyc/citibike/MainActivity;


# direct methods
.method private constructor <init>(Lcom/citibikenyc/citibike/MainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/citibikenyc/citibike/MainActivity$CitiState;->this$0:Lcom/citibikenyc/citibike/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/citibikenyc/citibike/MainActivity$CitiState;->showSplashScreen:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/citibikenyc/citibike/MainActivity;Lcom/citibikenyc/citibike/MainActivity$CitiState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/citibikenyc/citibike/MainActivity$CitiState;-><init>(Lcom/citibikenyc/citibike/MainActivity;)V

    return-void
.end method
