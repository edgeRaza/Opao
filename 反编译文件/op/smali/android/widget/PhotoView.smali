.class public Landroid/widget/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"

# interfaces
.implements Landroid/widget/IPhotoView;


# instance fields
.field private mAttacher:Landroid/widget/PhotoViewAttacher;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Landroid/widget/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PhotoView;->init()V

    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->canZoom()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->getDisplayMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getIPhotoViewImplementation()Landroid/widget/IPhotoView;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v0, v2

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->getMaximumScale()F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMediumScale()F
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->getMediumScale()F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMinimumScale()F
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->getMinimumScale()F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getScale()F
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->getScale()F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->getVisibleRectangleBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected init()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    new-instance v3, Landroid/widget/PhotoViewAttacher;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/widget/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v3, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v2, :cond_2

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/ImageView$ScaleType;

    iput-object v3, v2, Landroid/widget/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/PhotoView;->init()V

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher;->cleanup()V

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/PhotoViewAttacher;

    iput-object v3, v2, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 13
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    invoke-super {v8, v9, v10, v11, v12}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v8

    move v6, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->update()V

    :cond_0
    move v8, v6

    move v0, v8

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v3}, Landroid/widget/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v3}, Landroid/widget/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v3}, Landroid/widget/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/GestureDetector$OnDoubleTapListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnLongClickListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setOnMatrixChangeListener(Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setOnPhotoTapListener(Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setOnScaleChangeListener(Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;)V

    return-void
.end method

.method public setOnSingleFlingListener(Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setOnSingleFlingListener(Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;)V

    return-void
.end method

.method public setOnViewTapListener(Landroid/widget/PhotoViewAttacher$OnViewTapListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher$OnViewTapListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setOnViewTapListener(Landroid/widget/PhotoViewAttacher$OnViewTapListener;)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setRotationBy(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/widget/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/PhotoViewAttacher;->setScaleLevels(FFF)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView$ScaleType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoView;->mAttacher:Landroid/widget/PhotoViewAttacher;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setZoomable(Z)V

    return-void
.end method
