.class public Lq/rorbin/badgeview/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field public static final CIRCLE_RADIAN:D = 6.283185307179586


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInnertangentPoints(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "F",
            "Ljava/lang/Double;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v2

    if-eqz v9, :cond_0

    .line 58
    move-object v9, v2

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    double-to-float v9, v9

    move v5, v9

    .line 59
    move v9, v5

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    move v11, v1

    float-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-float v9, v9

    move v6, v9

    .line 60
    move v9, v5

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    move v11, v1

    float-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-float v9, v9

    move v7, v9

    .line 65
    :goto_0
    move-object v9, v3

    new-instance v10, Landroid/graphics/PointF;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    iget v12, v12, Landroid/graphics/PointF;->x:F

    move v13, v6

    add-float/2addr v12, v13

    move-object v13, v0

    iget v13, v13, Landroid/graphics/PointF;->y:F

    move v14, v7

    add-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 66
    move-object v9, v3

    new-instance v10, Landroid/graphics/PointF;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    iget v12, v12, Landroid/graphics/PointF;->x:F

    move v13, v6

    sub-float/2addr v12, v13

    move-object v13, v0

    iget v13, v13, Landroid/graphics/PointF;->y:F

    move v14, v7

    sub-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    return-void

    .line 62
    :cond_0
    move v9, v1

    move v6, v9

    .line 63
    const/4 v9, 0x0

    int-to-float v9, v9

    move v7, v9

    goto :goto_0
.end method

.method public static getPointDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x2

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    move-object v6, v0

    iget v6, v6, Landroid/graphics/PointF;->y:F

    move-object v7, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const/4 v8, 0x2

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v0, v4

    return v0
.end method

.method public static getQuadrant(Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 28
    move-object v4, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 29
    const/4 v4, 0x4

    move v0, v4

    .line 40
    :goto_0
    return v0

    .line 30
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 31
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 40
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 33
    :cond_2
    move-object v4, v0

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 34
    move-object v4, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 35
    const/4 v4, 0x3

    move v0, v4

    goto :goto_0

    .line 36
    :cond_3
    move-object v4, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object v5, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 37
    const/4 v4, 0x2

    move v0, v4

    goto :goto_0
.end method

.method public static getTanRadian(DI)D
    .locals 11

    .prologue
    .line 15
    move-wide v0, p0

    move v2, p2

    move-wide v5, v0

    const/4 v7, 0x0

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 16
    move-wide v5, v0

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v5, v7

    move-wide v0, v5

    .line 18
    :cond_0
    move-wide v5, v0

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    int-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    move-wide v0, v5

    .line 19
    move-wide v5, v0

    move-wide v0, v5

    return-wide v0
.end method

.method public static radianToAngle(D)D
    .locals 10

    .prologue
    .line 23
    move-wide v0, p0

    const/16 v4, 0x168

    int-to-double v4, v4

    move-wide v6, v0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    move-wide v0, v4

    return-wide v0
.end method
