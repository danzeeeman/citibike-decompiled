.class public interface abstract Lcom/slidingmenu/lib/MenuInterface;
.super Ljava/lang/Object;
.source "MenuInterface.java"


# virtual methods
.method public abstract drawFade(Landroid/graphics/Canvas;ILcom/slidingmenu/lib/CustomViewBehind;Landroid/view/View;)V
.end method

.method public abstract drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
.end method

.method public abstract drawShadow(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V
.end method

.method public abstract getAbsLeftBound(Lcom/slidingmenu/lib/CustomViewBehind;Landroid/view/View;)I
.end method

.method public abstract getAbsRightBound(Lcom/slidingmenu/lib/CustomViewBehind;Landroid/view/View;)I
.end method

.method public abstract getMenuLeft(Lcom/slidingmenu/lib/CustomViewBehind;Landroid/view/View;)I
.end method

.method public abstract marginTouchAllowed(Landroid/view/View;II)Z
.end method

.method public abstract menuClosedSlideAllowed(I)Z
.end method

.method public abstract menuOpenSlideAllowed(I)Z
.end method

.method public abstract menuOpenTouchAllowed(Landroid/view/View;II)Z
.end method

.method public abstract menuTouchInQuickReturn(Landroid/view/View;II)Z
.end method

.method public abstract scrollBehindTo(IILcom/slidingmenu/lib/CustomViewBehind;F)V
.end method
