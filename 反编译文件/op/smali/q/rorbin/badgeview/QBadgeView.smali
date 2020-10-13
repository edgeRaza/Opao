.class public Lq/rorbin/badgeview/QBadgeView;
.super Landroid/view/View;
.source "QBadgeView.java"

# interfaces
.implements Lq/rorbin/badgeview/Badge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/rorbin/badgeview/QBadgeView$BadgeContainer;
    }
.end annotation


# instance fields
.field protected mActivityRoot:Landroid/view/ViewGroup;

.field protected mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

.field protected mBackgroundBorderWidth:F

.field protected mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

.field protected mBadgeBackgroundPaint:Landroid/graphics/Paint;

.field protected mBadgeBackgroundRect:Landroid/graphics/RectF;

.field protected mBadgeCenter:Landroid/graphics/PointF;

.field protected mBadgeGravity:I

.field protected mBadgeNumber:I

.field protected mBadgePadding:F

.field protected mBadgeText:Ljava/lang/String;

.field protected mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field protected mBadgeTextPaint:Landroid/text/TextPaint;

.field protected mBadgeTextRect:Landroid/graphics/RectF;

.field protected mBadgeTextSize:F

.field protected mBitmapClip:Landroid/graphics/Bitmap;

.field protected mColorBackground:I

.field protected mColorBackgroundBorder:I

.field protected mColorBadgeText:I

.field protected mControlPoint:Landroid/graphics/PointF;

.field protected mDefalutRadius:F

.field protected mDragCenter:Landroid/graphics/PointF;

.field protected mDragOutOfRange:Z

.field protected mDragPath:Landroid/graphics/Path;

.field protected mDragQuadrant:I

.field protected mDragStateChangedListener:Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;

.field protected mDraggable:Z

.field protected mDragging:Z

.field protected mDrawableBackground:Landroid/graphics/drawable/Drawable;

.field protected mDrawableBackgroundClip:Z

.field protected mExact:Z

.field protected mFinalDragDistance:F

.field protected mGravityOffsetX:F

.field protected mGravityOffsetY:F

.field protected mHeight:I

.field protected mInnertangentPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field protected mRowBadgeCenter:Landroid/graphics/PointF;

.field protected mShowShadow:Z

.field protected mTargetView:Landroid/view/View;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    move-object v5, v0

    invoke-direct {v5}, Lq/rorbin/badgeview/QBadgeView;->init()V

    return-void
.end method

.method private createClipLayer()V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 477
    :goto_0
    return-void

    .line 456
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackgroundClip:Z

    if-nez v5, :cond_1

    .line 457
    goto :goto_0

    .line 459
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 460
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 462
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lq/rorbin/badgeview/QBadgeView;->getBadgeCircleRadius()F

    move-result v5

    move v2, v5

    .line 463
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 464
    :cond_3
    move-object v5, v0

    move v6, v2

    float-to-int v6, v6

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    move v7, v2

    float-to-int v7, v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    .line 466
    new-instance v5, Landroid/graphics/Canvas;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v5

    .line 467
    move-object v5, v3

    move-object v6, v3

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 477
    :goto_1
    goto :goto_0

    .line 470
    :cond_4
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    const/4 v8, 0x2

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v8, v0

    iget v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    .line 472
    new-instance v5, Landroid/graphics/Canvas;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v5

    .line 473
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_5

    .line 474
    move-object v5, v3

    const/4 v6, 0x0

    int-to-float v6, v6

    const/4 v7, 0x0

    int-to-float v7, v7

    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v3

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 477
    :cond_5
    move-object v5, v3

    new-instance v6, Landroid/graphics/RectF;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    int-to-float v8, v8

    const/4 v9, 0x0

    int-to-float v9, v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v3

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private drawBadge(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/PointF;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v2

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/16 v6, -0x3e8

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_0

    move-object v5, v2

    iget v5, v5, Landroid/graphics/PointF;->y:F

    const/16 v6, -0x3e8

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_0

    .line 414
    :goto_0
    return-void

    .line 385
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 386
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move v7, v3

    float-to-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 387
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move v7, v3

    float-to-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 388
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move v7, v3

    float-to-int v7, v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 389
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move v7, v3

    float-to-int v7, v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 390
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    .line 391
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lq/rorbin/badgeview/QBadgeView;->drawBadgeBackground(Landroid/graphics/Canvas;)V

    .line 413
    :cond_2
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 414
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    move-object v7, v2

    iget v7, v7, Landroid/graphics/PointF;->x:F

    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    goto :goto_0

    .line 393
    :cond_4
    move-object v5, v1

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object v7, v2

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 394
    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mColorBackgroundBorder:I

    const/4 v6, 0x0

    if-eq v5, v6, :cond_2

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBackgroundBorderWidth:F

    const/4 v6, 0x0

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 395
    move-object v5, v1

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object v7, v2

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 399
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 400
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 401
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->x:F

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 402
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move-object v6, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 403
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move v3, v5

    .line 404
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    .line 405
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lq/rorbin/badgeview/QBadgeView;->drawBadgeBackground(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 407
    :cond_6
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move v7, v3

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 408
    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mColorBackgroundBorder:I

    const/4 v6, 0x0

    if-eq v5, v6, :cond_2

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBackgroundBorderWidth:F

    const/4 v6, 0x0

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 409
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move v7, v3

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private drawBadgeBackground(Landroid/graphics/Canvas;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    int-to-float v9, v9

    const/4 v10, 0x0

    int-to-float v10, v10

    const/4 v11, 0x0

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 423
    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    move v3, v8

    .line 424
    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    move v4, v8

    .line 425
    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    move v5, v8

    .line 426
    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    move v6, v8

    .line 427
    move-object v8, v0

    iget-boolean v8, v8, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackgroundClip:Z

    if-eqz v8, :cond_0

    .line 428
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    move v5, v8

    .line 429
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 430
    move-object v8, v1

    move v9, v3

    int-to-float v9, v9

    move v10, v4

    int-to-float v10, v10

    move v11, v5

    int-to-float v11, v11

    move v12, v6

    int-to-float v12, v12

    const/4 v13, 0x0

    check-cast v13, Landroid/graphics/Paint;

    const/16 v14, 0x1f

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v8

    .line 432
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 433
    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    move-object v8, v0

    iget-boolean v8, v8, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackgroundClip:Z

    if-eqz v8, :cond_3

    .line 435
    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v8

    .line 436
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    move v10, v3

    int-to-float v10, v10

    move v11, v4

    int-to-float v11, v11

    move-object v12, v0

    iget-object v12, v12, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 437
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 438
    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    check-cast v9, Landroid/graphics/Xfermode;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v8

    .line 439
    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 440
    :cond_1
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 448
    :goto_0
    return-void

    .line 443
    :cond_2
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move-object v10, v0

    iget-object v10, v10, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/4 v11, 0x2

    int-to-float v11, v11

    div-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/4 v12, 0x2

    int-to-float v12, v12

    div-float/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 448
    :cond_3
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    move-object v10, v0

    iget-object v10, v10, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawDragging(Landroid/graphics/Canvas;FF)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FF)V"
        }
    .end annotation

    .prologue
    .line 326
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    move v7, v14

    .line 327
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    move v8, v14

    .line 328
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 329
    move v14, v8

    const/4 v15, 0x0

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_3

    .line 330
    move v14, v7

    move v15, v8

    div-float/2addr v14, v15

    float-to-double v14, v14

    move-wide v9, v14

    .line 331
    const/4 v14, -0x1

    int-to-double v14, v14

    move-wide/from16 v16, v9

    div-double v14, v14, v16

    move-wide v11, v14

    .line 332
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move v15, v5

    move-wide/from16 v16, v11

    new-instance v18, Ljava/lang/Double;

    move-wide/from16 v24, v16

    move-object/from16 v26, v18

    move-object/from16 v16, v26

    move-wide/from16 v17, v24

    move-object/from16 v19, v26

    move-wide/from16 v24, v17

    move-object/from16 v26, v19

    move-object/from16 v17, v26

    move-wide/from16 v18, v24

    move-object/from16 v20, v26

    invoke-direct/range {v17 .. v19}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lq/rorbin/badgeview/MathUtil;->getInnertangentPoints(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    .line 333
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move v15, v4

    move-wide/from16 v16, v11

    new-instance v18, Ljava/lang/Double;

    move-wide/from16 v24, v16

    move-object/from16 v26, v18

    move-object/from16 v16, v26

    move-wide/from16 v17, v24

    move-object/from16 v19, v26

    move-wide/from16 v24, v17

    move-object/from16 v26, v19

    move-object/from16 v17, v26

    move-wide/from16 v18, v24

    move-object/from16 v20, v26

    invoke-direct/range {v17 .. v19}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lq/rorbin/badgeview/MathUtil;->getInnertangentPoints(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    .line 338
    :goto_0
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 339
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :cond_0
    sget-object v18, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    :goto_1
    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 341
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    iput v15, v14, Landroid/graphics/PointF;->x:F

    .line 342
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    iput v15, v14, Landroid/graphics/PointF;->y:F

    .line 343
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/PointF;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->moveTo(FF)V

    .line 344
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/PointF;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/PointF;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 345
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/PointF;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->lineTo(FF)V

    .line 346
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/PointF;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/PointF;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 347
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/PointF;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->lineTo(FF)V

    .line 348
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 349
    move-object v14, v3

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 352
    move-object v14, v2

    iget v14, v14, Lq/rorbin/badgeview/QBadgeView;->mColorBackgroundBorder:I

    const/4 v15, 0x0

    if-eq v14, v15, :cond_2

    move-object v14, v2

    iget v14, v14, Lq/rorbin/badgeview/QBadgeView;->mBackgroundBorderWidth:F

    const/4 v15, 0x0

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    .line 353
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 354
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/PointF;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->moveTo(FF)V

    .line 355
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/PointF;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/PointF;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 356
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/PointF;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->moveTo(FF)V

    .line 357
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/PointF;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/PointF;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 358
    move-object v14, v2

    iget v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    move-object v14, v2

    iget v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 361
    :cond_1
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/4 v15, 0x2

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    move v10, v14

    .line 362
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    move v9, v14

    .line 367
    :goto_2
    const/16 v14, 0x168

    int-to-float v14, v14

    move v15, v9

    move/from16 v16, v10

    div-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->atan(D)D

    move-result-wide v15

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x4

    :goto_3
    invoke-static/range {v15 .. v17}, Lq/rorbin/badgeview/MathUtil;->getTanRadian(DI)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lq/rorbin/badgeview/MathUtil;->radianToAngle(D)D

    move-result-wide v15

    double-to-float v15, v15

    sub-float/2addr v14, v15

    move v11, v14

    .line 369
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v14, v15, :cond_7

    .line 370
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move/from16 v16, v4

    sub-float v15, v15, v16

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move/from16 v17, v4

    sub-float v16, v16, v17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v18, v4

    add-float v17, v17, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    move/from16 v19, v4

    add-float v18, v18, v19

    move/from16 v19, v11

    const/16 v20, 0xb4

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 377
    :goto_4
    move-object v14, v3

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void

    .line 335
    :cond_3
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move v15, v5

    const-wide/16 v16, 0x0

    new-instance v18, Ljava/lang/Double;

    move-wide/from16 v24, v16

    move-object/from16 v26, v18

    move-object/from16 v16, v26

    move-wide/from16 v17, v24

    move-object/from16 v19, v26

    move-wide/from16 v24, v17

    move-object/from16 v26, v19

    move-object/from16 v17, v26

    move-wide/from16 v18, v24

    move-object/from16 v20, v26

    invoke-direct/range {v17 .. v19}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lq/rorbin/badgeview/MathUtil;->getInnertangentPoints(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    .line 336
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move v15, v4

    const-wide/16 v16, 0x0

    new-instance v18, Ljava/lang/Double;

    move-wide/from16 v24, v16

    move-object/from16 v26, v18

    move-object/from16 v16, v26

    move-wide/from16 v17, v24

    move-object/from16 v19, v26

    move-wide/from16 v24, v17

    move-object/from16 v26, v19

    move-object/from16 v17, v26

    move-wide/from16 v18, v24

    move-object/from16 v20, v26

    invoke-direct/range {v17 .. v19}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static/range {v14 .. v17}, Lq/rorbin/badgeview/MathUtil;->getInnertangentPoints(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    goto/16 :goto_0

    .line 339
    :cond_4
    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto/16 :goto_1

    .line 364
    :cond_5
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    move v10, v14

    .line 365
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move-object v15, v2

    iget-object v15, v15, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/16 v16, 0x3

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    move v9, v14

    goto/16 :goto_2

    .line 367
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_3

    .line 374
    :cond_7
    move-object v14, v2

    iget-object v14, v14, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v18, v4

    sub-float v17, v17, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    move/from16 v19, v4

    sub-float v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move/from16 v20, v4

    add-float v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move/from16 v21, v4

    add-float v20, v20, v21

    invoke-direct/range {v16 .. v20}, Landroid/graphics/RectF;-><init>(FFFF)V

    move/from16 v16, v11

    const/16 v17, 0xb4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    goto/16 :goto_4
.end method

.method private findActivityRoot(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 179
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {v3, v4}, Lq/rorbin/badgeview/QBadgeView;->findActivityRoot(Landroid/view/View;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 181
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v3, Lq/rorbin/badgeview/QBadgeView;->mActivityRoot:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private findBadgeCenter()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    :goto_0
    move v2, v4

    .line 498
    move-object v4, v0

    iget v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 536
    :goto_1
    move-object v4, v0

    invoke-direct {v4}, Lq/rorbin/badgeview/QBadgeView;->initRowBadgeCenter()V

    return-void

    .line 496
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    goto :goto_0

    .line 500
    :sswitch_0
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v5, v6

    move v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 501
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 502
    goto :goto_1

    .line 504
    :sswitch_1
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v5, v6

    move v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 505
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    move-object v7, v0

    iget v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 506
    goto :goto_1

    .line 508
    :sswitch_2
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    move-object v7, v0

    iget v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v6, v7

    move v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 509
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 510
    goto/16 :goto_1

    .line 512
    :sswitch_3
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    move-object v7, v0

    iget v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v6, v7

    move v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 513
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    move-object v7, v0

    iget v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 514
    goto/16 :goto_1

    .line 516
    :sswitch_4
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 517
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 518
    goto/16 :goto_1

    .line 520
    :sswitch_5
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 521
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 522
    goto/16 :goto_1

    .line 524
    :sswitch_6
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 525
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    move-object v7, v0

    iget v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 526
    goto/16 :goto_1

    .line 528
    :sswitch_7
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v5, v6

    move v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 529
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 530
    goto/16 :goto_1

    .line 532
    :sswitch_8
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    move-object v7, v0

    iget v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v6, v7

    move v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 533
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 534
    goto/16 :goto_1

    .line 498
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_4
        0x31 -> :sswitch_5
        0x51 -> :sswitch_6
        0x800013 -> :sswitch_7
        0x800015 -> :sswitch_8
        0x800033 -> :sswitch_0
        0x800035 -> :sswitch_2
        0x800053 -> :sswitch_1
        0x800055 -> :sswitch_3
    .end sparse-switch
.end method

.method private getBadgeCircleRadius()F
    .locals 5

    .prologue
    .line 484
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    move-object v2, v0

    iget v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    move v0, v2

    .line 491
    :goto_0
    return v0

    .line 486
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 487
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    goto :goto_1

    .line 491
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method private init()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Lq/rorbin/badgeview/QBadgeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 101
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    .line 102
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    .line 103
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    .line 104
    move-object v2, v0

    new-instance v3, Landroid/graphics/PointF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    .line 105
    move-object v2, v0

    new-instance v3, Landroid/graphics/PointF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    .line 106
    move-object v2, v0

    new-instance v3, Landroid/graphics/PointF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    .line 107
    move-object v2, v0

    new-instance v3, Landroid/graphics/PointF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    .line 108
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    .line 109
    move-object v2, v0

    new-instance v3, Landroid/text/TextPaint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    .line 110
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 113
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v2

    .line 114
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    .line 118
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    move-object v2, v0

    const v3, -0x17b1c0

    iput v3, v2, Lq/rorbin/badgeview/QBadgeView;->mColorBackground:I

    .line 121
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lq/rorbin/badgeview/QBadgeView;->mColorBadgeText:I

    .line 122
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xb

    int-to-float v4, v4

    invoke-static {v3, v4}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextSize:F

    .line 123
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    int-to-float v4, v4

    invoke-static {v3, v4}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    .line 124
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    .line 125
    move-object v2, v0

    const v3, 0x800035

    iput v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeGravity:I

    .line 126
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    int-to-float v4, v4

    invoke-static {v3, v4}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    .line 127
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    int-to-float v4, v4

    invoke-static {v3, v4}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    .line 128
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x5a

    int-to-float v4, v4

    invoke-static {v3, v4}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lq/rorbin/badgeview/QBadgeView;->mFinalDragDistance:F

    .line 129
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lq/rorbin/badgeview/QBadgeView;->mShowShadow:Z

    .line 130
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackgroundClip:Z

    .line 131
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 132
    move-object v2, v0

    const/16 v3, 0x3e8

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lq/rorbin/badgeview/QBadgeView;->setTranslationZ(F)V

    :cond_0
    return-void
.end method

.method private initPaints()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-boolean v3, v3, Lq/rorbin/badgeview/QBadgeView;->mShowShadow:Z

    invoke-direct {v2, v3}, Lq/rorbin/badgeview/QBadgeView;->showShadowImpl(Z)V

    .line 318
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mColorBackground:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mColorBackgroundBorder:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBackgroundBorderWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 321
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mColorBadgeText:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 322
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private initRowBadgeCenter()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 555
    move-object v0, p0

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v2, v4

    .line 556
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lq/rorbin/badgeview/QBadgeView;->getLocationOnScreen([I)V

    .line 557
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 558
    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    move-object v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private measureText()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 540
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 541
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 542
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 544
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 551
    :goto_0
    move-object v2, v0

    invoke-direct {v2}, Lq/rorbin/badgeview/QBadgeView;->createClipLayer()V

    return-void

    .line 546
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextSize:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 547
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 548
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iput-object v3, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 549
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private onPointerUp()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lq/rorbin/badgeview/QBadgeView;->mDragOutOfRange:Z

    if-eqz v2, :cond_0

    .line 227
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Lq/rorbin/badgeview/QBadgeView;->animateHide(Landroid/graphics/PointF;)V

    .line 228
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lq/rorbin/badgeview/QBadgeView;->updataListener(I)V

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lq/rorbin/badgeview/QBadgeView;->reset()V

    .line 231
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lq/rorbin/badgeview/QBadgeView;->updataListener(I)V

    goto :goto_0
.end method

.method private showShadowImpl(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    int-to-float v7, v7

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    move v3, v6

    .line 257
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    move v4, v6

    .line 258
    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    packed-switch v6, :pswitch_data_0

    .line 276
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    move v7, v1

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v7

    :goto_1
    int-to-float v7, v7

    move v8, v3

    int-to-float v8, v8

    move v9, v4

    int-to-float v9, v9

    const/high16 v10, 0x33000000

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void

    .line 260
    :pswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    int-to-float v7, v7

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    move v3, v6

    .line 261
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, -0x40400000    # -1.5f

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    move v4, v6

    .line 262
    goto :goto_0

    .line 264
    :pswitch_1
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, -0x1

    int-to-float v7, v7

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    move v3, v6

    .line 265
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, -0x40400000    # -1.5f

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    move v4, v6

    .line 266
    goto :goto_0

    .line 268
    :pswitch_2
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, -0x1

    int-to-float v7, v7

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    move v3, v6

    .line 269
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    move v4, v6

    .line 270
    goto :goto_0

    .line 272
    :pswitch_3
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    int-to-float v7, v7

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    move v3, v6

    .line 273
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    move v4, v6

    .line 274
    goto :goto_0

    .line 276
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updataListener(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 801
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mDragStateChangedListener:Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;

    if-eqz v3, :cond_0

    .line 802
    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mDragStateChangedListener:Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;

    move v4, v1

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mTargetView:Landroid/view/View;

    invoke-interface {v3, v4, v5, v6}, Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;->onDragStateChanged(ILq/rorbin/badgeview/Badge;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected animateHide(Landroid/graphics/PointF;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 569
    :goto_0
    return-void

    .line 565
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-virtual {v3}, Lq/rorbin/badgeview/BadgeAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    .line 566
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lq/rorbin/badgeview/QBadgeView;->screenFromWindow(Z)V

    .line 567
    move-object v3, v0

    new-instance v4, Lq/rorbin/badgeview/BadgeAnimator;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->createBadgeBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v7, v1

    move-object v8, v0

    invoke-direct {v5, v6, v7, v8}, Lq/rorbin/badgeview/BadgeAnimator;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lq/rorbin/badgeview/QBadgeView;)V

    iput-object v4, v3, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    .line 568
    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-virtual {v3}, Lq/rorbin/badgeview/BadgeAnimator;->start()V

    .line 569
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lq/rorbin/badgeview/QBadgeView;->setBadgeNumber(I)Lq/rorbin/badgeview/Badge;

    move-result-object v3

    :cond_2
    goto :goto_0
.end method

.method public bindTarget(Landroid/view/View;)Lq/rorbin/badgeview/Badge;
    .locals 14
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v9, v1

    if-nez v9, :cond_0

    .line 139
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "targetView can not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 141
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 142
    move-object v9, v0

    invoke-virtual {v9}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    move-object v10, v0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 144
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    move-object v3, v9

    .line 145
    move-object v9, v3

    if-eqz v9, :cond_3

    move-object v9, v3

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_3

    .line 146
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lq/rorbin/badgeview/QBadgeView;->mTargetView:Landroid/view/View;

    .line 147
    move-object v9, v3

    instance-of v9, v9, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;

    if-eqz v9, :cond_2

    .line 148
    move-object v9, v3

    check-cast v9, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->addView(Landroid/view/View;)V

    .line 163
    :goto_0
    move-object v9, v0

    move-object v0, v9

    return-object v0

    .line 150
    :cond_2
    move-object v9, v3

    check-cast v9, Landroid/view/ViewGroup;

    move-object v4, v9

    .line 151
    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    move v5, v9

    .line 152
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v6, v9

    .line 153
    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    new-instance v9, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v12}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;-><init>(Lq/rorbin/badgeview/QBadgeView;Landroid/content/Context;)V

    move-object v7, v9

    .line 155
    move-object v9, v7

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->setId(I)V

    .line 156
    move-object v9, v4

    move-object v10, v7

    move v11, v5

    move-object v12, v6

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 157
    move-object v9, v7

    move-object v10, v1

    invoke-virtual {v9, v10}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->addView(Landroid/view/View;)V

    .line 158
    move-object v9, v7

    move-object v10, v0

    invoke-virtual {v9, v10}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 161
    :cond_3
    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "targetView must have a parent"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected createBadgeBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    .line 236
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x3

    int-to-float v7, v7

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    move-object v7, v0

    invoke-virtual {v7}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x3

    int-to-float v8, v8

    invoke-static {v7, v8}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v2, v5

    .line 238
    new-instance v5, Landroid/graphics/Canvas;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v5

    .line 239
    move-object v5, v0

    move-object v6, v3

    new-instance v7, Landroid/graphics/PointF;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v3

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v8, v0

    invoke-direct {v8}, Lq/rorbin/badgeview/QBadgeView;->getBadgeCircleRadius()F

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lq/rorbin/badgeview/QBadgeView;->drawBadge(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    .line 240
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public getBadgeBackground()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 697
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    return-object v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 678
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lq/rorbin/badgeview/QBadgeView;->mColorBackground:I

    move v0, v2

    return v0
.end method

.method public getBadgeGravity()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 773
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeGravity:I

    move v0, v2

    return v0
.end method

.method public getBadgeNumber()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 613
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    move v0, v2

    return v0
.end method

.method public getBadgePadding(Z)F
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 735
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    invoke-static {v3, v4}, Lq/rorbin/badgeview/DisplayUtil;->px2dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    goto :goto_0
.end method

.method public getBadgeText()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public getBadgeTextColor()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 709
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lq/rorbin/badgeview/QBadgeView;->mColorBadgeText:I

    move v0, v2

    return v0
.end method

.method public getBadgeTextSize(Z)F
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 722
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextSize:F

    invoke-static {v3, v4}, Lq/rorbin/badgeview/DisplayUtil;->px2dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextSize:F

    goto :goto_0
.end method

.method public getDragCenter()Landroid/graphics/PointF;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 814
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lq/rorbin/badgeview/QBadgeView;->mDraggable:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move-object v0, v2

    .line 815
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    check-cast v2, Landroid/graphics/PointF;

    move-object v0, v2

    goto :goto_0
.end method

.method public getGravityOffsetX(Z)F
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 791
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    invoke-static {v3, v4}, Lq/rorbin/badgeview/DisplayUtil;->px2dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    goto :goto_0
.end method

.method public getGravityOffsetY(Z)F
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 796
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    invoke-static {v3, v4}, Lq/rorbin/badgeview/DisplayUtil;->px2dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    goto :goto_0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mTargetView:Landroid/view/View;

    move-object v0, v2

    return-object v0
.end method

.method public hide(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 584
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mActivityRoot:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 585
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Lq/rorbin/badgeview/QBadgeView;->animateHide(Landroid/graphics/PointF;)V

    .line 587
    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lq/rorbin/badgeview/QBadgeView;->setBadgeNumber(I)Lq/rorbin/badgeview/Badge;

    move-result-object v3

    goto :goto_0
.end method

.method public isDraggable()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 740
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lq/rorbin/badgeview/QBadgeView;->mDraggable:Z

    move v0, v2

    return v0
.end method

.method public isExactMode()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 641
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lq/rorbin/badgeview/QBadgeView;->mExact:Z

    move v0, v2

    return v0
.end method

.method public isShowShadow()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 653
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lq/rorbin/badgeview/QBadgeView;->mShowShadow:Z

    move v0, v2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/View;->onAttachedToWindow()V

    .line 174
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mActivityRoot:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mTargetView:Landroid/view/View;

    invoke-direct {v2, v3}, Lq/rorbin/badgeview/QBadgeView;->findActivityRoot(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-virtual {v6}, Lq/rorbin/badgeview/BadgeAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 290
    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lq/rorbin/badgeview/BadgeAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 311
    :goto_0
    return-void

    .line 293
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 294
    move-object v6, v0

    invoke-direct {v6}, Lq/rorbin/badgeview/QBadgeView;->initPaints()V

    .line 295
    move-object v6, v0

    invoke-direct {v6}, Lq/rorbin/badgeview/QBadgeView;->getBadgeCircleRadius()F

    move-result v6

    move v3, v6

    .line 296
    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDefalutRadius:F

    const/4 v7, 0x1

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-static {v8, v9}, Lq/rorbin/badgeview/MathUtil;->getPointDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v8

    move-object v9, v0

    iget v9, v9, Lq/rorbin/badgeview/QBadgeView;->mFinalDragDistance:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    move v4, v6

    .line 298
    move-object v6, v0

    iget-boolean v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDraggable:Z

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-boolean v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    if-eqz v6, :cond_4

    .line 299
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lq/rorbin/badgeview/MathUtil;->getQuadrant(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result v7

    iput v7, v6, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    .line 300
    move-object v6, v0

    move-object v7, v0

    iget-boolean v7, v7, Lq/rorbin/badgeview/QBadgeView;->mShowShadow:Z

    invoke-direct {v6, v7}, Lq/rorbin/badgeview/QBadgeView;->showShadowImpl(Z)V

    .line 301
    move-object v6, v0

    move v7, v4

    move-object v8, v0

    invoke-virtual {v8}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-static {v8, v9}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    const/4 v7, 0x0

    :goto_1
    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput-boolean v8, v7, Lq/rorbin/badgeview/QBadgeView;->mDragOutOfRange:Z

    if-eqz v6, :cond_3

    .line 302
    move-object v6, v0

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lq/rorbin/badgeview/QBadgeView;->updataListener(I)V

    .line 303
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lq/rorbin/badgeview/QBadgeView;->drawBadge(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    .line 311
    :cond_1
    :goto_2
    goto :goto_0

    .line 301
    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    .line 305
    :cond_3
    move-object v6, v0

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lq/rorbin/badgeview/QBadgeView;->updataListener(I)V

    .line 306
    move-object v6, v0

    move-object v7, v1

    move v8, v4

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lq/rorbin/badgeview/QBadgeView;->drawDragging(Landroid/graphics/Canvas;FF)V

    .line 307
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lq/rorbin/badgeview/QBadgeView;->drawBadge(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    goto :goto_2

    .line 310
    :cond_4
    move-object v6, v0

    invoke-direct {v6}, Lq/rorbin/badgeview/QBadgeView;->findBadgeCenter()V

    .line 311
    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lq/rorbin/badgeview/QBadgeView;->drawBadge(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 283
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    .line 284
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 222
    :goto_0
    :pswitch_0
    move-object v6, v0

    iget-boolean v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    if-nez v6, :cond_3

    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    :goto_1
    move v0, v6

    return v0

    .line 190
    :pswitch_1
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move v3, v6

    .line 191
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move v4, v6

    .line 192
    move-object v6, v0

    iget-boolean v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDraggable:Z

    if-eqz v6, :cond_0

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 196
    move-object v6, v0

    invoke-direct {v6}, Lq/rorbin/badgeview/QBadgeView;->initRowBadgeCenter()V

    .line 197
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    .line 198
    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lq/rorbin/badgeview/QBadgeView;->updataListener(I)V

    .line 199
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x7

    int-to-float v8, v8

    invoke-static {v7, v8}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lq/rorbin/badgeview/QBadgeView;->mDefalutRadius:F

    .line 200
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 201
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lq/rorbin/badgeview/QBadgeView;->screenFromWindow(Z)V

    .line 202
    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 203
    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, v6, Landroid/graphics/PointF;->y:F

    .line 205
    :cond_0
    goto/16 :goto_0

    .line 207
    :pswitch_2
    move-object v6, v0

    iget-boolean v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    if-eqz v6, :cond_1

    .line 208
    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 209
    move-object v6, v0

    iget-object v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, v6, Landroid/graphics/PointF;->y:F

    .line 210
    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 212
    :cond_1
    goto/16 :goto_0

    .line 216
    :pswitch_3
    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_2

    move-object v6, v0

    iget-boolean v6, v6, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    if-eqz v6, :cond_2

    .line 217
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    .line 218
    move-object v6, v0

    invoke-direct {v6}, Lq/rorbin/badgeview/QBadgeView;->onPointerUp()V

    .line 220
    :cond_2
    goto/16 :goto_0

    .line 222
    :cond_3
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 574
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    const/16 v3, -0x3e8

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 575
    move-object v2, v0

    iget-object v2, v2, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    const/16 v3, -0x3e8

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 576
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    .line 577
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lq/rorbin/badgeview/QBadgeView;->screenFromWindow(Z)V

    .line 578
    move-object v2, v0

    invoke-virtual {v2}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 579
    move-object v2, v0

    invoke-virtual {v2}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-void
.end method

.method protected screenFromWindow(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 245
    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 247
    :cond_0
    move v3, v1

    if-eqz v3, :cond_1

    .line 248
    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mActivityRoot:Landroid/view/ViewGroup;

    move-object v4, v0

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/QBadgeView;->mTargetView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lq/rorbin/badgeview/QBadgeView;->bindTarget(Landroid/view/View;)Lq/rorbin/badgeview/Badge;

    move-result-object v3

    goto :goto_0
.end method

.method public setBadgeBackground(Landroid/graphics/drawable/Drawable;)Lq/rorbin/badgeview/Badge;
    .locals 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 683
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lq/rorbin/badgeview/QBadgeView;->setBadgeBackground(Landroid/graphics/drawable/Drawable;Z)Lq/rorbin/badgeview/Badge;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public setBadgeBackground(Landroid/graphics/drawable/Drawable;Z)Lq/rorbin/badgeview/Badge;
    .locals 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackgroundClip:Z

    .line 689
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    .line 690
    move-object v4, v0

    invoke-direct {v4}, Lq/rorbin/badgeview/QBadgeView;->createClipLayer()V

    .line 691
    move-object v4, v0

    invoke-virtual {v4}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 692
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public setBadgeBackgroundColor(I)Lq/rorbin/badgeview/Badge;
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 658
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lq/rorbin/badgeview/QBadgeView;->mColorBackground:I

    .line 659
    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mColorBackground:I

    const/4 v4, 0x0

    if-ne v3, v4, :cond_0

    .line 660
    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Xfermode;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v3

    .line 664
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 665
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 662
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v3

    goto :goto_0
.end method

.method public setBadgeGravity(I)Lq/rorbin/badgeview/Badge;
    .locals 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 751
    move-object v0, p0

    move v1, p1

    move v3, v1

    const v4, 0x800033

    if-eq v3, v4, :cond_0

    move v3, v1

    const v4, 0x800035

    if-eq v3, v4, :cond_0

    move v3, v1

    const v4, 0x800053

    if-eq v3, v4, :cond_0

    move v3, v1

    const v4, 0x800055

    if-eq v3, v4, :cond_0

    move v3, v1

    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    move v3, v1

    const/16 v4, 0x31

    if-eq v3, v4, :cond_0

    move v3, v1

    const/16 v4, 0x51

    if-eq v3, v4, :cond_0

    move v3, v1

    const v4, 0x800013

    if-eq v3, v4, :cond_0

    move v3, v1

    const v4, 0x800015

    if-ne v3, v4, :cond_1

    .line 760
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeGravity:I

    .line 761
    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 768
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 763
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "only support Gravity.START | Gravity.TOP , Gravity.END | Gravity.TOP , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "Gravity.START | Gravity.BOTTOM , Gravity.END | Gravity.BOTTOM , Gravity.CENTER"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " , Gravity.CENTER | Gravity.TOP , Gravity.CENTER | Gravity.BOTTOM ,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "Gravity.CENTER | Gravity.START , Gravity.CENTER | Gravity.END"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setBadgeNumber(I)Lq/rorbin/badgeview/Badge;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 596
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    .line 597
    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    const/4 v4, 0x0

    if-ge v3, v4, :cond_1

    .line 598
    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    .line 606
    :cond_0
    :goto_0
    move-object v3, v0

    invoke-direct {v3}, Lq/rorbin/badgeview/QBadgeView;->measureText()V

    .line 607
    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 608
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 599
    :cond_1
    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    const/16 v4, 0x63

    if-le v3, v4, :cond_3

    .line 600
    move-object v3, v0

    move-object v4, v0

    iget-boolean v4, v4, Lq/rorbin/badgeview/QBadgeView;->mExact:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    iget v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v4, "99+"

    goto :goto_1

    .line 601
    :cond_3
    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    const/4 v4, 0x0

    if-le v3, v4, :cond_4

    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_4

    .line 602
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    goto :goto_0

    .line 603
    :cond_4
    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    const/4 v4, 0x0

    if-ne v3, v4, :cond_0

    .line 604
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBadgePadding(FZ)Lq/rorbin/badgeview/Badge;
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 727
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v2

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-static {v5, v6}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    :goto_0
    iput v5, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    .line 728
    move-object v4, v0

    invoke-direct {v4}, Lq/rorbin/badgeview/QBadgeView;->createClipLayer()V

    .line 729
    move-object v4, v0

    invoke-virtual {v4}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 730
    move-object v4, v0

    move-object v0, v4

    return-object v0

    .line 727
    :cond_0
    move v5, v1

    goto :goto_0
.end method

.method public setBadgeText(Ljava/lang/String;)Lq/rorbin/badgeview/Badge;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 618
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    .line 619
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    .line 620
    move-object v3, v0

    invoke-direct {v3}, Lq/rorbin/badgeview/QBadgeView;->measureText()V

    .line 621
    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 622
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setBadgeTextColor(I)Lq/rorbin/badgeview/Badge;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 702
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lq/rorbin/badgeview/QBadgeView;->mColorBadgeText:I

    .line 703
    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 704
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setBadgeTextSize(FZ)Lq/rorbin/badgeview/Badge;
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 714
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v2

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-static {v5, v6}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    :goto_0
    iput v5, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextSize:F

    .line 715
    move-object v4, v0

    invoke-direct {v4}, Lq/rorbin/badgeview/QBadgeView;->measureText()V

    .line 716
    move-object v4, v0

    invoke-virtual {v4}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 717
    move-object v4, v0

    move-object v0, v4

    return-object v0

    .line 714
    :cond_0
    move v5, v1

    goto :goto_0
.end method

.method public setExactMode(Z)Lq/rorbin/badgeview/Badge;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 632
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lq/rorbin/badgeview/QBadgeView;->mExact:Z

    .line 633
    move-object v3, v0

    iget v3, v3, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    const/16 v4, 0x63

    if-le v3, v4, :cond_0

    .line 634
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    invoke-virtual {v3, v4}, Lq/rorbin/badgeview/QBadgeView;->setBadgeNumber(I)Lq/rorbin/badgeview/Badge;

    move-result-object v3

    .line 636
    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setGravityOffset(FFZ)Lq/rorbin/badgeview/Badge;
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 783
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    move v7, v1

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    :goto_0
    iput v6, v5, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    .line 784
    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    move v7, v2

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    :goto_1
    iput v6, v5, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    .line 785
    move-object v5, v0

    invoke-virtual {v5}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 786
    move-object v5, v0

    move-object v0, v5

    return-object v0

    .line 783
    :cond_0
    move v6, v1

    goto :goto_0

    .line 784
    :cond_1
    move v6, v2

    goto :goto_1
.end method

.method public setGravityOffset(FZ)Lq/rorbin/badgeview/Badge;
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 778
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    move v6, v1

    move v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lq/rorbin/badgeview/QBadgeView;->setGravityOffset(FFZ)Lq/rorbin/badgeview/Badge;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public setOnDragStateChangedListener(Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;)Lq/rorbin/badgeview/Badge;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 807
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v3, Lq/rorbin/badgeview/QBadgeView;->mDraggable:Z

    .line 808
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lq/rorbin/badgeview/QBadgeView;->mDragStateChangedListener:Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;

    .line 809
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 807
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setShowShadow(Z)Lq/rorbin/badgeview/Badge;
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 646
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lq/rorbin/badgeview/QBadgeView;->mShowShadow:Z

    .line 647
    move-object v3, v0

    invoke-virtual {v3}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 648
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public stroke(IFZ)Lq/rorbin/badgeview/Badge;
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 670
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move v6, v1

    iput v6, v5, Lq/rorbin/badgeview/QBadgeView;->mColorBackgroundBorder:I

    .line 671
    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    move v7, v2

    invoke-static {v6, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    :goto_0
    iput v6, v5, Lq/rorbin/badgeview/QBadgeView;->mBackgroundBorderWidth:F

    .line 672
    move-object v5, v0

    invoke-virtual {v5}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    .line 673
    move-object v5, v0

    move-object v0, v5

    return-object v0

    .line 671
    :cond_0
    move v6, v2

    goto :goto_0
.end method
