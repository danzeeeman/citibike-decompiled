.class Landroid/support/v4/view/KeyEventCompatEclair;
.super Ljava/lang/Object;
.source "KeyEventCompatEclair.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTracking(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    return v0
.end method

.method public static startTracking(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/view/KeyEvent;->startTracking()V

    .line 25
    return-void
.end method
