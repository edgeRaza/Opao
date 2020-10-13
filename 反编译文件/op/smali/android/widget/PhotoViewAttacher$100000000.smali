.class Landroid/widget/PhotoViewAttacher$100000000;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/widget/PhotoViewAttacher;


# direct methods
.method constructor <init>(Landroid/widget/PhotoViewAttacher;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/PhotoViewAttacher$100000000;->this$0:Landroid/widget/PhotoViewAttacher;

    return-void
.end method

.method static access$0(Landroid/widget/PhotoViewAttacher$100000000;)Landroid/widget/PhotoViewAttacher;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher$100000000;->this$0:Landroid/widget/PhotoViewAttacher;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher$100000000;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-static {v6}, Landroid/widget/PhotoViewAttacher;->access$L1000025(Landroid/widget/PhotoViewAttacher;)Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;

    move-result-object v6

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher$100000000;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v6}, Landroid/widget/PhotoViewAttacher;->getScale()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v6

    sget v7, Landroid/widget/PhotoViewAttacher;->SINGLE_TOUCH:I

    if-gt v6, v7, :cond_1

    move-object v6, v2

    invoke-static {v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v6

    sget v7, Landroid/widget/PhotoViewAttacher;->SINGLE_TOUCH:I

    if-le v6, v7, :cond_2

    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher$100000000;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-static {v6}, Landroid/widget/PhotoViewAttacher;->access$L1000025(Landroid/widget/PhotoViewAttacher;)Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;

    move-result-object v6

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/widget/PhotoViewAttacher$OnSingleFlingListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v6

    move v0, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher$100000000;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-static {v3}, Landroid/widget/PhotoViewAttacher;->access$L1000023(Landroid/widget/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher$100000000;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-static {v3}, Landroid/widget/PhotoViewAttacher;->access$L1000023(Landroid/widget/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/PhotoViewAttacher$100000000;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v4}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v3

    :cond_0
    return-void
.end method
