.class Landroid/widget/gestures/FroyoGestureDetector$100000000;
.super Ljava/lang/Object;
.source "FroyoGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/gestures/FroyoGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/widget/gestures/FroyoGestureDetector;


# direct methods
.method constructor <init>(Landroid/widget/gestures/FroyoGestureDetector;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/gestures/FroyoGestureDetector$100000000;->this$0:Landroid/widget/gestures/FroyoGestureDetector;

    return-void
.end method

.method static access$0(Landroid/widget/gestures/FroyoGestureDetector$100000000;)Landroid/widget/gestures/FroyoGestureDetector;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/gestures/FroyoGestureDetector$100000000;->this$0:Landroid/widget/gestures/FroyoGestureDetector;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    move v3, v5

    move v5, v3

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v3

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/widget/gestures/FroyoGestureDetector$100000000;->this$0:Landroid/widget/gestures/FroyoGestureDetector;

    iget-object v5, v5, Landroid/widget/gestures/CupcakeGestureDetector;->mListener:Landroid/widget/gestures/OnGestureListener;

    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Landroid/widget/gestures/OnGestureListener;->onScale(FFF)V

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ScaleGestureDetector;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
