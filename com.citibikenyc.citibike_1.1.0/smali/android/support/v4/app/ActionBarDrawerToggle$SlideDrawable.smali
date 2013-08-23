.class Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlideDrawable"
.end annotation


# instance fields
.field private mOffset:F

.field private mOffsetBy:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWrapped:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "wrapped"

    .prologue
    .line 323
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 321
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 324
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    .line 325
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 388
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 343
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 345
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffsetBy:F

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 347
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 348
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 464
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 469
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 470
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 472
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 434
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 435
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 428
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 477
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 479
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 373
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .parameter "configs"

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 353
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 383
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 378
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 363
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 368
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 328
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    .line 329
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 330
    return-void
.end method

.method public setOffsetBy(F)V
    .locals 0
    .parameter "offsetBy"

    .prologue
    .line 337
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffsetBy:F

    .line 338
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 339
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .parameter "stateSet"

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 412
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 483
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 484
    invoke-virtual {p0, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 486
    :cond_0
    return-void
.end method
