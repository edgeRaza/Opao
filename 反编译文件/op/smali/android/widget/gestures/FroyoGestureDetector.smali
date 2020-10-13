.class public Landroid/widget/gestures/FroyoGestureDetector;
.super Landroid/widget/gestures/EclairGestureDetector;
.source "FroyoGestureDetector.java"


# annotations
.annotation runtime Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/gestures/FroyoGestureDetector$100000000;
    }
.end annotation


# instance fields
.field protected final mDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/widget/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/gestures/FroyoGestureDetector$100000000;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/widget/gestures/FroyoGestureDetector$100000000;-><init>(Landroid/widget/gestures/FroyoGestureDetector;)V

    move-object v3, v5

    move-object v5, v0

    new-instance v6, Landroid/view/ScaleGestureDetector;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v6, v5, Landroid/widget/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public isScaling()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/widget/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/widget/gestures/EclairGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    :goto_0
    return v0

    :catch_0
    move-exception v5

    move-object v3, v5

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method
