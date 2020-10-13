.class public Lq/rorbin/badgeview/BadgeAnimator;
.super Landroid/animation/ValueAnimator;
.source "BadgeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;,
        Lq/rorbin/badgeview/BadgeAnimator$100000000;,
        Lq/rorbin/badgeview/BadgeAnimator$100000001;
    }
.end annotation


# instance fields
.field private mFragments:[[Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;

.field private mWeakBadge:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lq/rorbin/badgeview/QBadgeView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lq/rorbin/badgeview/QBadgeView;)V
    .locals 11

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    .line 29
    move-object v5, v0

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Lq/rorbin/badgeview/BadgeAnimator;->mWeakBadge:Ljava/lang/ref/WeakReference;

    .line 30
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Lq/rorbin/badgeview/BadgeAnimator;->setFloatValues([F)V

    .line 31
    move-object v5, v0

    const/16 v6, 0x1f4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lq/rorbin/badgeview/BadgeAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 32
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lq/rorbin/badgeview/BadgeAnimator;->getFragments(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)[[Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;

    move-result-object v6

    iput-object v6, v5, Lq/rorbin/badgeview/BadgeAnimator;->mFragments:[[Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;

    .line 33
    move-object v5, v0

    new-instance v6, Lq/rorbin/badgeview/BadgeAnimator$100000000;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lq/rorbin/badgeview/BadgeAnimator$100000000;-><init>(Lq/rorbin/badgeview/BadgeAnimator;)V

    invoke-virtual {v5, v6}, Lq/rorbin/badgeview/BadgeAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    move-object v5, v0

    new-instance v6, Lq/rorbin/badgeview/BadgeAnimator$100000001;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lq/rorbin/badgeview/BadgeAnimator$100000001;-><init>(Lq/rorbin/badgeview/BadgeAnimator;)V

    invoke-virtual {v5, v6}, Lq/rorbin/badgeview/BadgeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 30
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$L1000001(Lq/rorbin/badgeview/BadgeAnimator;)Ljava/lang/ref/WeakReference;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/BadgeAnimator;->mWeakBadge:Ljava/lang/ref/WeakReference;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000001(Lq/rorbin/badgeview/BadgeAnimator;Ljava/lang/ref/WeakReference;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lq/rorbin/badgeview/BadgeAnimator;->mWeakBadge:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getFragments(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)[[Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;
    .locals 21

    .prologue
    .line 67
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move v5, v15

    .line 68
    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move v6, v15

    .line 69
    move v15, v5

    move/from16 v16, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40c00000    # 6.0f

    div-float v15, v15, v16

    move v7, v15

    .line 70
    move-object v15, v3

    iget v15, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v15, v15, v16

    move v8, v15

    .line 71
    move-object v15, v3

    iget v15, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v15, v15, v16

    move v9, v15

    .line 72
    move v15, v6

    int-to-float v15, v15

    move/from16 v16, v7

    div-float v15, v15, v16

    float-to-int v15, v15

    move/from16 v16, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v7

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v16

    const-class v15, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;

    invoke-static/range {v15 .. v16}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;

    move-object v10, v15

    .line 73
    const/4 v15, 0x0

    move v11, v15

    :goto_0
    move v15, v11

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 84
    move-object v15, v2

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    move-object v15, v10

    move-object v1, v15

    return-object v1

    .line 74
    :cond_0
    const/4 v15, 0x0

    move v12, v15

    :goto_1
    move v15, v12

    move-object/from16 v16, v10

    move/from16 v17, v11

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 73
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 75
    :cond_1
    new-instance v15, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v17}, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;-><init>(Lq/rorbin/badgeview/BadgeAnimator;)V

    move-object v13, v15

    .line 76
    move-object v15, v13

    move-object/from16 v16, v2

    move/from16 v17, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v7

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v7

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->color:I

    .line 77
    move-object v15, v13

    move/from16 v16, v8

    move/from16 v17, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v7

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->x:F

    .line 78
    move-object v15, v13

    move/from16 v16, v9

    move/from16 v17, v11

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v7

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->y:F

    .line 79
    move-object v15, v13

    move/from16 v16, v7

    move/from16 v0, v16

    iput v0, v15, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->size:F

    .line 80
    move-object v15, v13

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->maxSize:I

    .line 81
    move-object v15, v10

    move/from16 v16, v11

    aget-object v15, v15, v16

    move/from16 v16, v12

    move-object/from16 v17, v13

    aput-object v17, v15, v16

    .line 74
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    const/4 v8, 0x0

    move v3, v8

    :goto_0
    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/BadgeAnimator;->mFragments:[[Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;

    array-length v9, v9

    if-lt v8, v9, :cond_0

    return-void

    .line 57
    :cond_0
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Lq/rorbin/badgeview/BadgeAnimator;->mFragments:[[Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;

    move v10, v3

    aget-object v9, v9, v10

    array-length v9, v9

    if-lt v8, v9, :cond_1

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/BadgeAnimator;->mFragments:[[Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;

    move v9, v3

    aget-object v8, v8, v9

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    .line 59
    move-object v8, v0

    invoke-virtual {v8}, Lq/rorbin/badgeview/BadgeAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    move v6, v8

    .line 60
    move-object v8, v5

    move v9, v6

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->updata(FLandroid/graphics/Canvas;)V

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
