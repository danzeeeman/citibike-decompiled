.class public Lcom/citibikenyc/citibike/IntroDetailsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "IntroDetailsFragment.java"


# static fields
.field public static final INTRO_MODE:Ljava/lang/String; = "INTRO_MODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    const-string v3, "intro_details"

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 21
    const v2, 0x7f030024

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 22
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/citibikenyc/citibike/IntroDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    .local v0, bundle:Landroid/os/Bundle;
    const v2, 0x7f050064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/citibikenyc/citibike/IntroDetailsFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/citibikenyc/citibike/IntroDetailsFragment$1;-><init>(Lcom/citibikenyc/citibike/IntroDetailsFragment;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-object v1
.end method
