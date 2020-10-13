.class public interface Landroid/widget/IPhotoView;
.super Ljava/lang/Object;
.source "IPhotoView.java"


# static fields
.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field public static final DEFAULT_ZOOM_DURATION:I = 0xc8


# virtual methods
.method public abstract canZoom()Z
.end method

.method public abstract getDisplayMatrix(Landroid/graphics/Matrix;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getDisplayRect()Landroid/graphics/RectF;
.end method

.method public abstract getIPhotoViewImplementation()Landroid/widget/IPhotoView;
.end method

.method public abstract getMaximumScale()F
.end method

.method public abstract getMediumScale()F
.end method

.method public abstract getMinimumScale()F
.end method

.method public abstract getScale()F
.end method

.method public abstract getScaleType()Landroid/widget/ImageView$ScaleType;
.end method

.method public abstract getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract setAllowParentInterceptOnEdge(Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation
.end method

.method public abstract setDisplayMatrix(Landroid/graphics/Matrix;)Z
.end method

.method public abstract setMaximumScale(F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation
.end method

.method public abstract setMediumScale(F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation
.end method

.method public abstract setMinimumScale(F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation
.end method

.method public abstract setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/GestureDetector$OnDoubleTapListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnLongClickListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setOnMatrixChangeListener(Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setOnPhotoTapListener(Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setOnScaleChangeListener(Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setOnSingleFlingListener(Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setOnViewTapListener(Landroid/widget/PhotoViewAttacher$OnViewTapListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PhotoViewAttacher$OnViewTapListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setRotationBy(F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation
.end method

.method public abstract setRotationTo(F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation
.end method

.method public abstract setScale(F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation
.end method

.method public abstract setScale(FFFZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFZ)V"
        }
    .end annotation
.end method

.method public abstract setScale(FZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)V"
        }
    .end annotation
.end method

.method public abstract setScaleLevels(FFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)V"
        }
    .end annotation
.end method

.method public abstract setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView$ScaleType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setZoomTransitionDuration(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation
.end method

.method public abstract setZoomable(Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation
.end method
