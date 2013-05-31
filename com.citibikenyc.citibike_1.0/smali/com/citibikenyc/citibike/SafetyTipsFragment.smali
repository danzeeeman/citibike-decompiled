.class public Lcom/citibikenyc/citibike/SafetyTipsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "SafetyTipsFragment.java"


# static fields
.field public static final INTRO_MODE:Ljava/lang/String; = "INTRO_MODE"


# instance fields
.field private detailsFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/citibikenyc/citibike/SafetyTipsFragment;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/citibikenyc/citibike/SafetyTipsFragment;->detailsFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "safety_tips"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 23
    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/citibikenyc/citibike/IntroDetailsFragment;

    invoke-direct {v1}, Lcom/citibikenyc/citibike/IntroDetailsFragment;-><init>()V

    iput-object v1, p0, Lcom/citibikenyc/citibike/SafetyTipsFragment;->detailsFragment:Landroid/support/v4/app/Fragment;

    .line 29
    const v1, 0x7f0500a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/citibikenyc/citibike/SafetyTipsFragment$1;

    invoke-direct {v2, p0}, Lcom/citibikenyc/citibike/SafetyTipsFragment$1;-><init>(Lcom/citibikenyc/citibike/SafetyTipsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-object v0
.end method
