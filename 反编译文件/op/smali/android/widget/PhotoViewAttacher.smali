.class public Landroid/widget/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/widget/IPhotoView;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/gestures/OnGestureListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PhotoViewAttacher$100000000;,
        Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;,
        Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;,
        Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;,
        Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;,
        Landroid/widget/PhotoViewAttacher$OnViewTapListener;,
        Landroid/widget/PhotoViewAttacher$FlingRunnable;,
        Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final EDGE_BOTH:I = 0x2

.field static final EDGE_LEFT:I = 0x0

.field static final EDGE_NONE:I = -0x1

.field static final EDGE_RIGHT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PhotoViewAttacher"

.field static SINGLE_TOUCH:I


# instance fields
.field ZOOM_DURATION:I

.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRotation:F

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Landroid/widget/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mPhotoTapListener:Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;

.field private mScaleChangeListener:Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;

.field private mScaleDragDetector:Landroid/widget/gestures/GestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private mSingleFlingListener:Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mViewTapListener:Landroid/widget/PhotoViewAttacher$OnViewTapListener;

.field private mZoomEnabled:Z


# direct methods
.method static final constructor <clinit>()V
    .locals 4

    const-string v2, "PhotoViewAttacher"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Landroid/widget/PhotoViewAttacher;->DEBUG:Z

    const/4 v2, 0x1

    sput v2, Landroid/widget/PhotoViewAttacher;->SINGLE_TOUCH:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v7, v6, Landroid/widget/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object v6, v0

    const/16 v7, 0xc8

    iput v7, v6, Landroid/widget/PhotoViewAttacher;->ZOOM_DURATION:I

    move-object v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Landroid/widget/PhotoViewAttacher;->mMinScale:F

    move-object v6, v0

    const/high16 v7, 0x3fe00000    # 1.75f

    iput v7, v6, Landroid/widget/PhotoViewAttacher;->mMidScale:F

    move-object v6, v0

    const/high16 v7, 0x40400000    # 3.0f

    iput v7, v6, Landroid/widget/PhotoViewAttacher;->mMaxScale:F

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/widget/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/widget/PhotoViewAttacher;->mBlockParentIntercept:Z

    move-object v6, v0

    new-instance v7, Landroid/graphics/Matrix;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, v6, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    new-instance v7, Landroid/graphics/Matrix;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, v6, Landroid/widget/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    new-instance v7, Landroid/graphics/Matrix;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, v6, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    new-instance v7, Landroid/graphics/RectF;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v6, Landroid/widget/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    move-object v6, v0

    const/16 v7, 0x9

    new-array v7, v7, [F

    iput-object v7, v6, Landroid/widget/PhotoViewAttacher;->mMatrixValues:[F

    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Landroid/widget/PhotoViewAttacher;->mScrollEdge:I

    move-object v6, v0

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v7, v6, Landroid/widget/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v6, v0

    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, v6, Landroid/widget/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v6, v1

    invoke-virtual {v6}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    move-object v6, v1

    invoke-static {v6}, Landroid/widget/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    move-object v6, v1

    invoke-virtual {v6}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    return-void

    :cond_1
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v0

    invoke-static {v7, v8}, Landroid/widget/gestures/VersionedGestureDetector;->newInstance(Landroid/content/Context;Landroid/widget/gestures/OnGestureListener;)Landroid/widget/gestures/GestureDetector;

    move-result-object v7

    iput-object v7, v6, Landroid/widget/PhotoViewAttacher;->mScaleDragDetector:Landroid/widget/gestures/GestureDetector;

    move-object v6, v0

    new-instance v7, Landroid/view/GestureDetector;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/widget/PhotoViewAttacher$100000000;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/widget/PhotoViewAttacher$100000000;-><init>(Landroid/widget/PhotoViewAttacher;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, v6, Landroid/widget/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v7, Landroid/widget/DefaultOnDoubleTapListener;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/widget/DefaultOnDoubleTapListener;-><init>(Landroid/widget/PhotoViewAttacher;)V

    invoke-virtual {v6, v7}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/PhotoViewAttacher;->mBaseRotation:F

    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/PhotoViewAttacher;->setZoomable(Z)V

    goto :goto_0
.end method

.method static synthetic access$1000037(Landroid/widget/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$1000045(Landroid/widget/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/widget/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .locals 3

    sget-object v2, Landroid/widget/PhotoViewAttacher;->LOG_TAG:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000001()Z
    .locals 3

    sget-boolean v2, Landroid/widget/PhotoViewAttacher;->DEBUG:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$L1000002(Landroid/widget/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000017(Landroid/widget/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000023(Landroid/widget/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000025(Landroid/widget/PhotoViewAttacher;)Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mSingleFlingListener:Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Landroid/widget/PhotoViewAttacher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000001(Z)V
    .locals 4

    move v0, p0

    move v3, v0

    sput-boolean v3, Landroid/widget/PhotoViewAttacher;->DEBUG:Z

    return-void
.end method

.method static synthetic access$S1000002(Landroid/widget/PhotoViewAttacher;Landroid/view/animation/Interpolator;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$S1000017(Landroid/widget/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static synthetic access$S1000023(Landroid/widget/PhotoViewAttacher;Landroid/view/View$OnLongClickListener;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$S1000025(Landroid/widget/PhotoViewAttacher;Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/PhotoViewAttacher;->mSingleFlingListener:Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;

    return-void
.end method

.method private cancelFling()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher;->mCurrentFlingRunnable:Landroid/widget/PhotoViewAttacher$FlingRunnable;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher;->mCurrentFlingRunnable:Landroid/widget/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v2}, Landroid/widget/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/PhotoViewAttacher$FlingRunnable;

    iput-object v3, v2, Landroid/widget/PhotoViewAttacher;->mCurrentFlingRunnable:Landroid/widget/PhotoViewAttacher$FlingRunnable;

    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/widget/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Landroid/widget/IPhotoView;

    if-nez v4, :cond_0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher. You should call setScaleType on the PhotoViewAttacher instead of on the ImageView"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 15

    move-object v0, p0

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v12

    move-object v2, v12

    move-object v12, v2

    if-nez v12, :cond_0

    const/4 v12, 0x0

    move v0, v12

    :goto_0
    return v0

    :cond_0
    move-object v12, v0

    move-object v13, v0

    invoke-direct {v13}, Landroid/widget/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v12

    move-object v3, v12

    move-object v12, v3

    if-nez v12, :cond_1

    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    :cond_1
    move-object v12, v3

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    move v4, v12

    move-object v12, v3

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    move v5, v12

    const/4 v12, 0x0

    int-to-float v12, v12

    move v6, v12

    const/4 v12, 0x0

    int-to-float v12, v12

    move v7, v12

    move-object v12, v0

    move-object v13, v2

    invoke-direct {v12, v13}, Landroid/widget/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v12

    move v8, v12

    move v12, v4

    move v13, v8

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_5

    move-object v12, v0

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v9, v12

    move-object v12, v9

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v12, v13, :cond_3

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    move v7, v12

    :cond_2
    :goto_1
    move-object v12, v0

    move-object v13, v2

    invoke-direct {v12, v13}, Landroid/widget/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v12

    move v9, v12

    move v12, v5

    move v13, v9

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_9

    move-object v12, v0

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v10, v12

    move-object v12, v10

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v12, v13, :cond_7

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->left:F

    neg-float v12, v12

    move v6, v12

    :goto_2
    move-object v12, v0

    const/4 v13, 0x2

    iput v13, v12, Landroid/widget/PhotoViewAttacher;->mScrollEdge:I

    :goto_3
    move-object v12, v0

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    move v13, v6

    move v14, v7

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v12

    const/4 v12, 0x1

    move v0, v12

    goto :goto_0

    :cond_3
    move-object v12, v9

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne v12, v13, :cond_4

    move v12, v8

    int-to-float v12, v12

    move v13, v4

    sub-float/2addr v12, v13

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v13

    move v7, v12

    goto :goto_1

    :cond_4
    move v12, v8

    int-to-float v12, v12

    move v13, v4

    sub-float/2addr v12, v13

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v13

    move v7, v12

    goto :goto_1

    :cond_5
    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->top:F

    const/4 v13, 0x0

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    move v7, v12

    goto :goto_1

    :cond_6
    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    move v13, v8

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    move v12, v8

    int-to-float v12, v12

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v13

    move v7, v12

    goto :goto_1

    :cond_7
    move-object v12, v10

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne v12, v13, :cond_8

    move v12, v9

    int-to-float v12, v12

    move v13, v5

    sub-float/2addr v12, v13

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    move v6, v12

    goto :goto_2

    :cond_8
    move v12, v9

    int-to-float v12, v12

    move v13, v5

    sub-float/2addr v12, v13

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    move v6, v12

    goto :goto_2

    :cond_9
    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->left:F

    const/4 v13, 0x0

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a

    move-object v12, v0

    const/4 v13, 0x0

    iput v13, v12, Landroid/widget/PhotoViewAttacher;->mScrollEdge:I

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->left:F

    neg-float v12, v12

    move v6, v12

    goto :goto_3

    :cond_a
    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->right:F

    move v13, v9

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_b

    move v12, v9

    int-to-float v12, v12

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v13

    move v6, v12

    move-object v12, v0

    const/4 v13, 0x1

    iput v13, v12, Landroid/widget/PhotoViewAttacher;->mScrollEdge:I

    goto/16 :goto_3

    :cond_b
    move-object v12, v0

    const/4 v13, -0x1

    iput v13, v12, Landroid/widget/PhotoViewAttacher;->mScrollEdge:I

    goto/16 :goto_3
.end method

.method private static checkZoomLevels(FFF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)V"
        }
    .end annotation

    move v0, p0

    move v1, p1

    move v2, p2

    move v5, v0

    move v6, v1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v1

    move v6, v2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    int-to-float v7, v7

    const/4 v8, 0x0

    int-to-float v8, v8

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v4

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v6

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/RectF;

    move-object v0, v6

    goto :goto_0
.end method

.method private getDrawMatrix()Landroid/graphics/Matrix;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-result v2

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object v0, v2

    return-object v0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    move v0, v3

    goto :goto_0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/PhotoViewAttacher;->mMatrixValues:[F

    move v5, v2

    aget v4, v4, v5

    move v0, v4

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .locals 9

    move-object v0, p0

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    move-object v2, v4

    move-object v4, v2

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " is not supported in PhotoView"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private resetMatrix()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/widget/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {v2, v3}, Landroid/widget/PhotoViewAttacher;->setRotationBy(F)V

    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    move-object v2, v0

    invoke-direct {v2}, Landroid/widget/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v2

    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-direct {v6}, Landroid/widget/PhotoViewAttacher;->checkImageViewScaleType()V

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher;->mMatrixChangeListener:Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/widget/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher;->mMatrixChangeListener:Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;

    move-object v7, v4

    invoke-interface {v6, v7}, Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    instance-of v3, v3, Landroid/widget/IPhotoView;

    if-nez v3, :cond_0

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v15, v1

    invoke-virtual {v15}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v15

    move-object v4, v15

    move-object v15, v4

    if-eqz v15, :cond_0

    move-object v15, v2

    if-nez v15, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v15, v1

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Landroid/widget/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v15

    int-to-float v15, v15

    move v5, v15

    move-object v15, v1

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Landroid/widget/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v15

    int-to-float v15, v15

    move v6, v15

    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    move v7, v15

    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    move v8, v15

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v15}, Landroid/graphics/Matrix;->reset()V

    move v15, v5

    move/from16 v16, v7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move v9, v15

    move v15, v6

    move/from16 v16, v8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move v10, v15

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v16, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v15

    :goto_1
    move-object v15, v1

    invoke-direct {v15}, Landroid/widget/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0

    :cond_2
    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v16, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    move v15, v9

    move/from16 v16, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v15

    move v11, v15

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move/from16 v16, v11

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v15

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v11

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v15

    goto :goto_1

    :cond_3
    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v16, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move v11, v15

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move/from16 v16, v11

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v15

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v11

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v15

    goto/16 :goto_1

    :cond_4
    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v11, v15

    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-direct/range {v16 .. v20}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v12, v15

    move-object v15, v1

    iget v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseRotation:F

    float-to-int v15, v15

    const/16 v16, 0xb4

    rem-int/lit16 v15, v15, 0xb4

    const/16 v16, 0x0

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v11, v15

    :cond_5
    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v13, v15

    move-object v15, v13

    sget-object v16, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    sget-object v18, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual/range {v15 .. v18}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v15

    goto/16 :goto_1

    :cond_6
    move-object v15, v13

    sget-object v16, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    sget-object v18, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual/range {v15 .. v18}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v15

    goto/16 :goto_1

    :cond_7
    move-object v15, v13

    sget-object v16, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_8

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    sget-object v18, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual/range {v15 .. v18}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v15

    goto/16 :goto_1

    :cond_8
    move-object v15, v13

    sget-object v16, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_9

    move-object v15, v1

    iget-object v15, v15, Landroid/widget/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    sget-object v18, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual/range {v15 .. v18}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v15

    goto/16 :goto_1

    :cond_9
    goto/16 :goto_1
.end method


# virtual methods
.method public canZoom()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/widget/PhotoViewAttacher;->mZoomEnabled:Z

    move v0, v2

    return v0
.end method

.method public cleanup()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "deprecation"
    .end annotation

    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v5, v0

    invoke-direct {v5}, Landroid/widget/PhotoViewAttacher;->cancelFling()V

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v6, 0x0

    check-cast v6, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {v5, v6}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_3
    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;

    iput-object v6, v5, Landroid/widget/PhotoViewAttacher;->mMatrixChangeListener:Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;

    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;

    iput-object v6, v5, Landroid/widget/PhotoViewAttacher;->mPhotoTapListener:Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;

    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Landroid/widget/PhotoViewAttacher$OnViewTapListener;

    iput-object v6, v5, Landroid/widget/PhotoViewAttacher;->mViewTapListener:Landroid/widget/PhotoViewAttacher$OnViewTapListener;

    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/ref/WeakReference;

    iput-object v6, v5, Landroid/widget/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    goto :goto_0
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

    move-object v3, v1

    move-object v4, v0

    invoke-direct {v4}, Landroid/widget/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/widget/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v2

    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

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

    move-object v0, v2

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object v0, v2

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 7

    move-object v0, p0

    const/4 v4, 0x0

    check-cast v4, Landroid/widget/ImageView;

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object v2, v4

    :cond_0
    move-object v4, v2

    if-nez v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/PhotoViewAttacher;->cleanup()V

    invoke-static {}, Landroid/widget/log/LogManager;->getLogger()Landroid/widget/log/Logger;

    move-result-object v4

    const-string v5, "PhotoViewAttacher"

    const-string v6, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-interface {v4, v5, v6}, Landroid/widget/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :cond_1
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/widget/PhotoViewAttacher;->mMaxScale:F

    move v0, v2

    return v0
.end method

.method public getMediumScale()F
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/widget/PhotoViewAttacher;->mMidScale:F

    move v0, v2

    return v0
.end method

.method public getMinimumScale()F
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/widget/PhotoViewAttacher;->mMinScale:F

    move v0, v2

    return v0
.end method

.method getOnPhotoTapListener()Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;
    .locals 3
    .annotation runtime Landroid/support/annotation/Nullable;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher;->mPhotoTapListener:Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;

    move-object v0, v2

    return-object v0
.end method

.method getOnViewTapListener()Landroid/widget/PhotoViewAttacher$OnViewTapListener;
    .locals 3
    .annotation runtime Landroid/support/annotation/Nullable;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher;->mViewTapListener:Landroid/widget/PhotoViewAttacher$OnViewTapListener;

    move-object v0, v2

    return-object v0
.end method

.method public getScale()F
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v2

    float-to-double v2, v2

    const/4 v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/widget/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v3

    float-to-double v3, v3

    const/4 v5, 0x2

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v0, v2

    return-object v0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 5

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Bitmap;

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method public onDrag(FF)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/PhotoViewAttacher;->mScaleDragDetector:Landroid/widget/gestures/GestureDetector;

    invoke-interface {v7}, Landroid/widget/gestures/GestureDetector;->isScaling()Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v7, Landroid/widget/PhotoViewAttacher;->DEBUG:Z

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/widget/log/LogManager;->getLogger()Landroid/widget/log/Logger;

    move-result-object v7

    const-string v8, "PhotoViewAttacher"

    const-string v9, "onDrag: dx: %.2f. dy: %.2f"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move v13, v1

    new-instance v14, Ljava/lang/Float;

    move/from16 v16, v13

    move-object/from16 v17, v14

    move-object/from16 v13, v17

    move/from16 v14, v16

    move-object/from16 v15, v17

    move/from16 v16, v14

    move-object/from16 v17, v15

    move-object/from16 v14, v17

    move/from16 v15, v16

    invoke-direct {v14, v15}, Ljava/lang/Float;-><init>(F)V

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    move v13, v2

    new-instance v14, Ljava/lang/Float;

    move/from16 v16, v13

    move-object/from16 v17, v14

    move-object/from16 v13, v17

    move/from16 v14, v16

    move-object/from16 v15, v17

    move/from16 v16, v14

    move-object/from16 v17, v15

    move-object/from16 v14, v17

    move/from16 v15, v16

    invoke-direct {v14, v15}, Ljava/lang/Float;-><init>(F)V

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/widget/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    move-object v4, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    move v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v7

    move-object v7, v0

    invoke-direct {v7}, Landroid/widget/PhotoViewAttacher;->checkAndDisplayMatrix()V

    move-object v7, v4

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v5, v7

    move-object v7, v0

    iget-boolean v7, v7, Landroid/widget/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/PhotoViewAttacher;->mScaleDragDetector:Landroid/widget/gestures/GestureDetector;

    invoke-interface {v7}, Landroid/widget/gestures/GestureDetector;->isScaling()Z

    move-result v7

    if-nez v7, :cond_5

    move-object v7, v0

    iget-boolean v7, v7, Landroid/widget/PhotoViewAttacher;->mBlockParentIntercept:Z

    if-nez v7, :cond_5

    move-object v7, v0

    iget v7, v7, Landroid/widget/PhotoViewAttacher;->mScrollEdge:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    move-object v7, v0

    iget v7, v7, Landroid/widget/PhotoViewAttacher;->mScrollEdge:I

    const/4 v8, 0x0

    if-ne v7, v8, :cond_2

    move v7, v1

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    :cond_2
    move-object v7, v0

    iget v7, v7, Landroid/widget/PhotoViewAttacher;->mScrollEdge:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    move v7, v1

    const/high16 v8, -0x40800000    # -1.0f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_4

    :cond_3
    move-object v7, v5

    if-eqz v7, :cond_4

    move-object v7, v5

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    :goto_1
    goto/16 :goto_0

    :cond_5
    move-object v7, v5

    if-eqz v7, :cond_4

    move-object v7, v5

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1
.end method

.method public onFling(FFFF)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sget-boolean v8, Landroid/widget/PhotoViewAttacher;->DEBUG:Z

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/widget/log/LogManager;->getLogger()Landroid/widget/log/Logger;

    move-result-object v8

    const-string v9, "PhotoViewAttacher"

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "onFling. sX: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move/from16 v17, v1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, " sY: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, " Vx: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " Vy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/widget/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v8

    move-object v6, v8

    move-object v8, v0

    new-instance v9, Landroid/widget/PhotoViewAttacher$FlingRunnable;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v12}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/widget/PhotoViewAttacher$FlingRunnable;-><init>(Landroid/widget/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v9, v8, Landroid/widget/PhotoViewAttacher;->mCurrentFlingRunnable:Landroid/widget/PhotoViewAttacher$FlingRunnable;

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/PhotoViewAttacher;->mCurrentFlingRunnable:Landroid/widget/PhotoViewAttacher$FlingRunnable;

    move-object v9, v0

    move-object v10, v6

    invoke-direct {v9, v10}, Landroid/widget/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v9

    move-object v10, v0

    move-object v11, v6

    invoke-direct {v10, v11}, Landroid/widget/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v10

    move v11, v3

    float-to-int v11, v11

    move v12, v4

    float-to-int v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/widget/PhotoViewAttacher;->mCurrentFlingRunnable:Landroid/widget/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    move-result v8

    return-void
.end method

.method public onGlobalLayout()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v8

    move-object v2, v8

    move-object v8, v2

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-boolean v8, v8, Landroid/widget/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v8, :cond_2

    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v8

    move v3, v8

    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v8

    move v4, v8

    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBottom()I

    move-result v8

    move v5, v8

    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v8

    move v6, v8

    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroid/widget/PhotoViewAttacher;->mIvTop:I

    if-ne v8, v9, :cond_0

    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroid/widget/PhotoViewAttacher;->mIvBottom:I

    if-ne v8, v9, :cond_0

    move v8, v6

    move-object v9, v0

    iget v9, v9, Landroid/widget/PhotoViewAttacher;->mIvLeft:I

    if-ne v8, v9, :cond_0

    move v8, v4

    move-object v9, v0

    iget v9, v9, Landroid/widget/PhotoViewAttacher;->mIvRight:I

    if-eq v8, v9, :cond_1

    :cond_0
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroid/widget/PhotoViewAttacher;->mIvTop:I

    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroid/widget/PhotoViewAttacher;->mIvRight:I

    move-object v8, v0

    move v9, v5

    iput v9, v8, Landroid/widget/PhotoViewAttacher;->mIvBottom:I

    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroid/widget/PhotoViewAttacher;->mIvLeft:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onScale(FFF)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-boolean v5, Landroid/widget/PhotoViewAttacher;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/widget/log/LogManager;->getLogger()Landroid/widget/log/Logger;

    move-result-object v5

    const-string v6, "PhotoViewAttacher"

    const-string v7, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    move v11, v1

    new-instance v12, Ljava/lang/Float;

    move v14, v11

    move-object v15, v12

    move-object v11, v15

    move v12, v14

    move-object v13, v15

    move v14, v12

    move-object v15, v13

    move-object v12, v15

    move v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Float;-><init>(F)V

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    move v11, v2

    new-instance v12, Ljava/lang/Float;

    move v14, v11

    move-object v15, v12

    move-object v11, v15

    move v12, v14

    move-object v13, v15

    move v14, v12

    move-object v15, v13

    move-object v12, v15

    move v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Float;-><init>(F)V

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x2

    move v11, v3

    new-instance v12, Ljava/lang/Float;

    move v14, v11

    move-object v15, v12

    move-object v11, v15

    move v12, v14

    move-object v13, v15

    move v14, v12

    move-object v15, v13

    move-object v12, v15

    move v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Float;-><init>(F)V

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/widget/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PhotoViewAttacher;->getScale()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/widget/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    move v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PhotoViewAttacher;->getScale()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/widget/PhotoViewAttacher;->mMinScale:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    move v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoViewAttacher;->mScaleChangeListener:Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoViewAttacher;->mScaleChangeListener:Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-interface {v5, v6, v7, v8}, Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;->onScaleChange(FFF)V

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    move v6, v1

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    move-result v5

    move-object v5, v0

    invoke-direct {v5}, Landroid/widget/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "ClickableViewAccessibility"
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v12, 0x0

    move v5, v12

    move-object v12, v1

    iget-boolean v12, v12, Landroid/widget/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v12, :cond_4

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    invoke-static {v12}, Landroid/widget/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v12, v2

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    move-object v6, v12

    move-object v12, v3

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object v12, v1

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mScaleDragDetector:Landroid/widget/gestures/GestureDetector;

    if-eqz v12, :cond_3

    move-object v12, v1

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mScaleDragDetector:Landroid/widget/gestures/GestureDetector;

    invoke-interface {v12}, Landroid/widget/gestures/GestureDetector;->isScaling()Z

    move-result v12

    move v7, v12

    move-object v12, v1

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mScaleDragDetector:Landroid/widget/gestures/GestureDetector;

    invoke-interface {v12}, Landroid/widget/gestures/GestureDetector;->isDragging()Z

    move-result v12

    move v8, v12

    move-object v12, v1

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mScaleDragDetector:Landroid/widget/gestures/GestureDetector;

    move-object v13, v3

    invoke-interface {v12, v13}, Landroid/widget/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    move v5, v12

    move v12, v7

    if-nez v12, :cond_0

    move-object v12, v1

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mScaleDragDetector:Landroid/widget/gestures/GestureDetector;

    invoke-interface {v12}, Landroid/widget/gestures/GestureDetector;->isScaling()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_0
    const/4 v12, 0x0

    :goto_1
    move v9, v12

    move v12, v8

    if-nez v12, :cond_1

    move-object v12, v1

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mScaleDragDetector:Landroid/widget/gestures/GestureDetector;

    invoke-interface {v12}, Landroid/widget/gestures/GestureDetector;->isDragging()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_1
    const/4 v12, 0x0

    :goto_2
    move v10, v12

    move-object v12, v1

    move v13, v9

    if-eqz v13, :cond_2

    move v13, v10

    if-nez v13, :cond_9

    :cond_2
    const/4 v13, 0x0

    :goto_3
    iput-boolean v13, v12, Landroid/widget/PhotoViewAttacher;->mBlockParentIntercept:Z

    :cond_3
    move-object v12, v1

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v12, :cond_4

    move-object v12, v1

    iget-object v12, v12, Landroid/widget/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    move v5, v12

    :cond_4
    move v12, v5

    move v1, v12

    return v1

    :pswitch_1
    move-object v12, v6

    if-eqz v12, :cond_5

    move-object v12, v6

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_4
    move-object v12, v1

    invoke-direct {v12}, Landroid/widget/PhotoViewAttacher;->cancelFling()V

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/widget/log/LogManager;->getLogger()Landroid/widget/log/Logger;

    move-result-object v12

    const-string v13, "PhotoViewAttacher"

    const-string v14, "onTouch getParent() returned null"

    invoke-interface {v12, v13, v14}, Landroid/widget/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    goto :goto_4

    :pswitch_2
    move-object v12, v1

    invoke-virtual {v12}, Landroid/widget/PhotoViewAttacher;->getScale()F

    move-result v12

    move-object v13, v1

    iget v13, v13, Landroid/widget/PhotoViewAttacher;->mMinScale:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    move-object v12, v1

    invoke-virtual {v12}, Landroid/widget/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v12

    move-object v7, v12

    move-object v12, v7

    if-eqz v12, :cond_6

    move-object v12, v2

    new-instance v13, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v1

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Landroid/widget/PhotoViewAttacher;->getScale()F

    move-result v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/PhotoViewAttacher;->mMinScale:F

    move/from16 v17, v0

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    invoke-direct/range {v14 .. v19}, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Landroid/widget/PhotoViewAttacher;FFFF)V

    invoke-virtual {v12, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v12

    const/4 v12, 0x1

    move v5, v12

    :cond_6
    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v13, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
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

    move v4, v1

    iput-boolean v4, v3, Landroid/widget/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return-void
.end method

.method public setBaseRotation(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    const/16 v5, 0x168

    int-to-float v5, v5

    rem-float/2addr v4, v5

    iput v4, v3, Landroid/widget/PhotoViewAttacher;->mBaseRotation:F

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/PhotoViewAttacher;->update()V

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/widget/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {v3, v4}, Landroid/widget/PhotoViewAttacher;->setRotationBy(F)V

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Matrix cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    move-object v5, v0

    move-object v6, v0

    invoke-direct {v6}, Landroid/widget/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    move-object v5, v0

    invoke-direct {v5}, Landroid/widget/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v5

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public setMaximumScale(F)V
    .locals 6
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

    iget v3, v3, Landroid/widget/PhotoViewAttacher;->mMinScale:F

    move-object v4, v0

    iget v4, v4, Landroid/widget/PhotoViewAttacher;->mMidScale:F

    move v5, v1

    invoke-static {v3, v4, v5}, Landroid/widget/PhotoViewAttacher;->checkZoomLevels(FFF)V

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/widget/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 6
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

    iget v3, v3, Landroid/widget/PhotoViewAttacher;->mMinScale:F

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/widget/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v3, v4, v5}, Landroid/widget/PhotoViewAttacher;->checkZoomLevels(FFF)V

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/widget/PhotoViewAttacher;->mMidScale:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/widget/PhotoViewAttacher;->mMidScale:F

    move-object v5, v0

    iget v5, v5, Landroid/widget/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v3, v4, v5}, Landroid/widget/PhotoViewAttacher;->checkZoomLevels(FFF)V

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/widget/PhotoViewAttacher;->mMinScale:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 8
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

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v4, Landroid/widget/DefaultOnDoubleTapListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/widget/DefaultOnDoubleTapListener;-><init>(Landroid/widget/PhotoViewAttacher;)V

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
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

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

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

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/PhotoViewAttacher;->mMatrixChangeListener:Landroid/widget/PhotoViewAttacher$OnMatrixChangedListener;

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

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/PhotoViewAttacher;->mPhotoTapListener:Landroid/widget/PhotoViewAttacher$OnPhotoTapListener;

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

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/PhotoViewAttacher;->mScaleChangeListener:Landroid/widget/PhotoViewAttacher$OnScaleChangeListener;

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

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/PhotoViewAttacher;->mSingleFlingListener:Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;

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

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/PhotoViewAttacher;->mViewTapListener:Landroid/widget/PhotoViewAttacher$OnViewTapListener;

    return-void
.end method

.method public setRotationBy(F)V
    .locals 6
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

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    move v4, v1

    const/16 v5, 0x168

    int-to-float v5, v5

    rem-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-result v3

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 6
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

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    move v4, v1

    const/16 v5, 0x168

    int-to-float v5, v5

    rem-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setScale(F)V
    .locals 6
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

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    if-eqz v8, :cond_2

    move v8, v1

    move-object v9, v0

    iget v9, v9, Landroid/widget/PhotoViewAttacher;->mMinScale:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    move v8, v1

    move-object v9, v0

    iget v9, v9, Landroid/widget/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    :cond_0
    invoke-static {}, Landroid/widget/log/LogManager;->getLogger()Landroid/widget/log/Logger;

    move-result-object v8

    const-string v9, "PhotoViewAttacher"

    const-string v10, "Scale must be within the range of minScale and maxScale"

    invoke-interface {v8, v9, v10}, Landroid/widget/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    :goto_0
    return-void

    :cond_1
    move v8, v4

    if-eqz v8, :cond_3

    move-object v8, v6

    new-instance v9, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/PhotoViewAttacher;->getScale()F

    move-result v12

    move v13, v1

    move v14, v2

    move v15, v3

    invoke-direct/range {v10 .. v15}, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Landroid/widget/PhotoViewAttacher;FFFF)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    move-result v8

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/widget/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    move v9, v1

    move v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Matrix;->setScale(FFFF)V

    move-object v8, v0

    invoke-direct {v8}, Landroid/widget/PhotoViewAttacher;->checkAndDisplayMatrix()V

    goto :goto_1
.end method

.method public setScale(FZ)V
    .locals 11
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

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    move v7, v1

    move-object v8, v4

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    move-object v9, v4

    invoke-virtual {v9}, Landroid/widget/ImageView;->getBottom()I

    move-result v9

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/PhotoViewAttacher;->setScale(FFFZ)V

    :cond_0
    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 8
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

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v5, v6, v7}, Landroid/widget/PhotoViewAttacher;->checkZoomLevels(FFF)V

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/widget/PhotoViewAttacher;->mMinScale:F

    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/widget/PhotoViewAttacher;->mMidScale:F

    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/widget/PhotoViewAttacher;->mMaxScale:F

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

    move-object v3, v1

    invoke-static {v3}, Landroid/widget/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setZoomInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
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

    move v3, v1

    const/4 v4, 0x0

    if-ge v3, v4, :cond_0

    const/16 v3, 0xc8

    move v1, v3

    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/widget/PhotoViewAttacher;->ZOOM_DURATION:I

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

    move v4, v1

    iput-boolean v4, v3, Landroid/widget/PhotoViewAttacher;->mZoomEnabled:Z

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/PhotoViewAttacher;->update()V

    return-void
.end method

.method public update()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/widget/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-static {v4}, Landroid/widget/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Landroid/widget/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0
.end method
