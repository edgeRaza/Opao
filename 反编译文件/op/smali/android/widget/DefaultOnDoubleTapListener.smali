.class public Landroid/widget/DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "DefaultOnDoubleTapListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private photoViewAttacher:Landroid/widget/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Landroid/widget/PhotoViewAttacher;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/DefaultOnDoubleTapListener;->setPhotoViewAttacher(Landroid/widget/PhotoViewAttacher;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v7}, Landroid/widget/PhotoViewAttacher;->getScale()F

    move-result v7

    move v3, v7

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    move v4, v7

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move v5, v7

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->getMediumScale()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->getMediumScale()F

    move-result v8

    move v9, v4

    move v10, v5

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/PhotoViewAttacher;->setScale(FFFZ)V

    :goto_1
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    :cond_1
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->getMediumScale()F

    move-result v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->getMaximumScale()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->getMaximumScale()F

    move-result v8

    move v9, v4

    move v10, v5

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_1

    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->getMinimumScale()F

    move-result v8

    move v9, v4

    move v10, v5

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/PhotoViewAttacher;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    move-object v3, v7

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 14
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v10, v0

    iget-object v10, v10, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v10}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v10

    move-object v3, v10

    move-object v10, v0

    iget-object v10, v10, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v10}, Landroid/widget/PhotoViewAttacher;->getOnPhotoTapListener()Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v10}, Landroid/widget/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    if-eqz v10, :cond_2

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    move v5, v10

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    move v6, v10

    move-object v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v5

    move-object v11, v4

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    move-object v11, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    move v7, v10

    move v10, v6

    move-object v11, v4

    iget v11, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    move-object v11, v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v10, v11

    move v8, v10

    move-object v10, v0

    iget-object v10, v10, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v10}, Landroid/widget/PhotoViewAttacher;->getOnPhotoTapListener()Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v10

    move-object v11, v3

    move v12, v7

    move v13, v8

    invoke-interface {v10, v11, v12, v13}, Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    :cond_1
    move-object v10, v0

    iget-object v10, v10, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v10}, Landroid/widget/PhotoViewAttacher;->getOnPhotoTapListener()Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;->onOutsidePhotoTap()V

    :cond_2
    move-object v10, v0

    iget-object v10, v10, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v10}, Landroid/widget/PhotoViewAttacher;->getOnViewTapListener()Landroid/widget/PhotoViewAttacher$OnViewTapListener;

    move-result-object v10

    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v10}, Landroid/widget/PhotoViewAttacher;->getOnViewTapListener()Landroid/widget/PhotoViewAttacher$OnViewTapListener;

    move-result-object v10

    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Landroid/widget/PhotoViewAttacher$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    :cond_3
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_0
.end method

.method public setPhotoViewAttacher(Landroid/widget/PhotoViewAttacher;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/DefaultOnDoubleTapListener;->photoViewAttacher:Landroid/widget/PhotoViewAttacher;

    return-void
.end method
