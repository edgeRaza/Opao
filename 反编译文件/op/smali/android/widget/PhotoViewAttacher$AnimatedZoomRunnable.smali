.class Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field private final this$0:Landroid/widget/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Landroid/widget/PhotoViewAttacher;FFFF)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    move-object v7, v0

    move v8, v4

    iput v8, v7, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    move-object v7, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    move-object v7, v0

    move v8, v3

    iput v8, v7, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    return-void
.end method

.method static access$0(Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;)Landroid/widget/PhotoViewAttacher;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    move-object v0, v3

    return-object v0
.end method

.method private interpolate()F
    .locals 9

    move-object v0, p0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v7, v0

    iget-wide v7, v7, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    mul-float/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    iget v5, v5, Landroid/widget/PhotoViewAttacher;->ZOOM_DURATION:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v2, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-static {v4}, Landroid/widget/PhotoViewAttacher;->access$L1000002(Landroid/widget/PhotoViewAttacher;)Landroid/view/animation/Interpolator;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    move v2, v4

    move v4, v2

    move v0, v4

    return v0
.end method


# virtual methods
.method public run()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v7}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    move-object v2, v7

    move-object v7, v2

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v7, v0

    invoke-direct {v7}, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->interpolate()F

    move-result v7

    move v3, v7

    move-object v7, v0

    iget v7, v7, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    move-object v10, v0

    iget v10, v10, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v4, v7

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v8}, Landroid/widget/PhotoViewAttacher;->getScale()F

    move-result v8

    div-float/2addr v7, v8

    move v5, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    move-object v10, v0

    iget v10, v10, Landroid/widget/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/PhotoViewAttacher;->onScale(FFF)V

    move v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    move-object v7, v2

    move-object v8, v0

    invoke-static {v7, v8}, Landroid/widget/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    goto :goto_0
.end method
