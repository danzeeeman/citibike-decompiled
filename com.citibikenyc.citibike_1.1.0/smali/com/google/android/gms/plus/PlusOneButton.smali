.class public final Lcom/google/android/gms/plus/PlusOneButton;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;
    }
.end annotation


# static fields
.field public static final ANNOTATION_BUBBLE:I = 0x1

.field public static final ANNOTATION_INLINE:I = 0x2

.field public static final ANNOTATION_NONE:I = 0x0

.field public static final SIZE_MEDIUM:I = 0x1

.field public static final SIZE_SMALL:I = 0x0

.field public static final SIZE_STANDARD:I = 0x3

.field public static final SIZE_TALL:I = 0x2


# instance fields
.field private final ct:Lcom/google/android/gms/internal/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/plus/PlusOneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/internal/w;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->ct:Lcom/google/android/gms/internal/w;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->ct:Lcom/google/android/gms/internal/w;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/google/android/gms/plus/PlusClient;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    const-string v1, "To use this method, the PlusOneButton must be placed in an Activity. Use initialize(PlusClient, String, OnPlusOneClickListener)."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/at;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->ct:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/w;->initialize(Lcom/google/android/gms/plus/PlusClient;Ljava/lang/String;I)V

    return-void
.end method

.method public initialize(Lcom/google/android/gms/plus/PlusClient;Ljava/lang/String;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->ct:Lcom/google/android/gms/internal/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/w;->initialize(Lcom/google/android/gms/plus/PlusClient;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->ct:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/w;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->ct:Lcom/google/android/gms/internal/w;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/gms/internal/w;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->ct:Lcom/google/android/gms/internal/w;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/plus/PlusOneButton;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/plus/PlusOneButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnnotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->ct:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/w;->setAnnotation(I)V

    return-void
.end method

.method public setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->ct:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/w;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->ct:Lcom/google/android/gms/internal/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/w;->setSize(I)V

    return-void
.end method
