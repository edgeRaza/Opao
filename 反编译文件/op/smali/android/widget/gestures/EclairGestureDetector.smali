.class public Landroid/widget/gestures/EclairGestureDetector;
.super Landroid/widget/gestures/CupcakeGestureDetector;
.source "EclairGestureDetector.java"


# annotations
.annotation runtime Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerId:I

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerIndex:I

    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    move-object v6, v0

    :try_start_0
    iget v6, v6, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerIndex:I

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getX(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    :goto_0
    return v0

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    move-object v6, v0

    :try_start_0
    iget v6, v6, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerIndex:I

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    :goto_0
    return v0

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    move v3, v8

    move v8, v3

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    move-object v10, v0

    iget v10, v10, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerId:I

    :goto_1
    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    iput v9, v8, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerIndex:I

    move-object v8, v0

    move-object v9, v1

    :try_start_0
    invoke-super {v8, v9}, Landroid/widget/gestures/CupcakeGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    move v0, v8

    :goto_2
    return v0

    :pswitch_1
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v8, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerId:I

    goto :goto_0

    :pswitch_2
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerId:I

    goto :goto_0

    :pswitch_3
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-static {v8}, Landroid/widget/Compat;->getPointerIndex(I)I

    move-result v8

    move v4, v8

    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    move v5, v8

    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerId:I

    if-ne v8, v9, :cond_0

    move v8, v4

    const/4 v9, 0x0

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_3
    move v6, v8

    move-object v8, v0

    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v8, Landroid/widget/gestures/EclairGestureDetector;->mActivePointerId:I

    move-object v8, v0

    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchX:F

    move-object v8, v0

    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, v8, Landroid/widget/gestures/CupcakeGestureDetector;->mLastTouchY:F

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :catch_0
    move-exception v8

    move-object v4, v8

    const/4 v8, 0x1

    move v0, v8

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
