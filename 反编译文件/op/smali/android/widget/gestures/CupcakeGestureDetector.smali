.class public Landroid/widget/gestures/CupcakeGestureDetector;
.super Ljava/lang/Object;
.source "CupcakeGestureDetector.java"

# interfaces
.implements Landroid/widget/gestures/GestureDetector;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CupcakeGestureDetector"


# instance fields
.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field protected mListener:Landroid/widget/gestures/OnGestureListener;

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v1

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/widget/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/widget/gestures/CupcakeGestureDetector;->mTouchSlop:F

    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move v0, v3

    return v0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move v0, v3

    return v0
.end method

.method public isDragging()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/widget/gestures/CupcakeGestureDetector;->mIsDragging:Z

    move v0, v2

    return v0
.end method

.method public isScaling()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_0
    const/4 v8, 0x1

    move v0, v8

    return v0

    :pswitch_0
    move-object v8, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_1
    move-object v8, v0

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/widget/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchX:F

    move-object v8, v0

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/widget/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchY:F

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mIsDragging:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/widget/log/LogManager;->getLogger()Landroid/widget/log/Logger;

    move-result-object v8

    const-string v9, "CupcakeGestureDetector"

    const-string v10, "Velocity tracker is null"

    invoke-interface {v8, v9, v10}, Landroid/widget/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :pswitch_1
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v8

    move v3, v8

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/widget/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v8

    move v4, v8

    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchX:F

    sub-float/2addr v8, v9

    move v5, v8

    move v8, v4

    move-object v9, v0

    iget v9, v9, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchY:F

    sub-float/2addr v8, v9

    move v6, v8

    move-object v8, v0

    iget-boolean v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-nez v8, :cond_1

    move-object v8, v0

    move v9, v5

    move v10, v5

    mul-float/2addr v9, v10

    move v10, v6

    move v11, v6

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    move-object v11, v0

    iget v11, v11, Landroid/widget/gestures/CupcakeGestureDetector;->mTouchSlop:F

    float-to-double v11, v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_3

    const/4 v9, 0x0

    :goto_2
    iput-boolean v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mIsDragging:Z

    :cond_1
    move-object v8, v0

    iget-boolean v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mListener:Landroid/widget/gestures/OnGestureListener;

    move v9, v5

    move v10, v6

    invoke-interface {v8, v9, v10}, Landroid/widget/gestures/OnGestureListener;->onDrag(FF)V

    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchX:F

    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchY:F

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x1

    goto :goto_2

    :pswitch_2
    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    move-object v8, v0

    const/4 v9, 0x0

    check-cast v9, Landroid/view/VelocityTracker;

    iput-object v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    goto/16 :goto_0

    :pswitch_3
    move-object v8, v0

    iget-boolean v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    move-object v8, v0

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/widget/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchX:F

    move-object v8, v0

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/widget/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v9

    iput v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchY:F

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    move v3, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    move v4, v8

    move v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/widget/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mListener:Landroid/widget/gestures/OnGestureListener;

    move-object v9, v0

    iget v9, v9, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchX:F

    move-object v10, v0

    iget v10, v10, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchY:F

    move v11, v3

    neg-float v11, v11

    move v12, v4

    neg-float v12, v12

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/widget/gestures/OnGestureListener;->onFling(FFFF)V

    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    move-object v8, v0

    const/4 v9, 0x0

    check-cast v9, Landroid/view/VelocityTracker;

    iput-object v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_6
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnGestureListener(Landroid/widget/gestures/OnGestureListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/gestures/OnGestureListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/gestures/CupcakeGestureDetector;->mListener:Landroid/widget/gestures/OnGestureListener;

    return-void
.end method
