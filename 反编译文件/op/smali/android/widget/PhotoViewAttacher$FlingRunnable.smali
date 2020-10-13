.class Landroid/widget/PhotoViewAttacher$FlingRunnable;
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
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field private final mScroller:Landroid/widget/scrollerproxy/ScrollerProxy;

.field private final this$0:Landroid/widget/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Landroid/widget/PhotoViewAttacher;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/PhotoViewAttacher$FlingRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Landroid/widget/scrollerproxy/ScrollerProxy;->getScroller(Landroid/content/Context;)Landroid/widget/scrollerproxy/ScrollerProxy;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/scrollerproxy/ScrollerProxy;

    return-void
.end method

.method static access$0(Landroid/widget/PhotoViewAttacher$FlingRunnable;)Landroid/widget/PhotoViewAttacher;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/PhotoViewAttacher$FlingRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public cancelFling()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    invoke-static {}, Landroid/widget/PhotoViewAttacher;->access$L1000001()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/widget/log/LogManager;->getLogger()Landroid/widget/log/Logger;

    move-result-object v2

    const-string v3, "PhotoViewAttacher"

    const-string v4, "Cancel Fling"

    invoke-interface {v2, v3, v4}, Landroid/widget/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/scrollerproxy/ScrollerProxy;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/scrollerproxy/ScrollerProxy;->forceFinished(Z)V

    return-void
.end method

.method public fling(IIII)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v14, v0

    iget-object v14, v14, Landroid/widget/PhotoViewAttacher$FlingRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v14}, Landroid/widget/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v14

    move-object v6, v14

    move-object v14, v6

    if-nez v14, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v14, v6

    iget v14, v14, Landroid/graphics/RectF;->left:F

    neg-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v7, v14

    move v14, v1

    int-to-float v14, v14

    move-object v15, v6

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_4

    const/4 v14, 0x0

    move v8, v14

    move-object v14, v6

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    move v15, v1

    int-to-float v15, v15

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v9, v14

    :goto_1
    move-object v14, v6

    iget v14, v14, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v12, v14

    move v14, v2

    int-to-float v14, v14

    move-object v15, v6

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_5

    const/4 v14, 0x0

    move v10, v14

    move-object v14, v6

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    move v15, v2

    int-to-float v15, v15

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move v11, v14

    :goto_2
    move-object v14, v0

    move v15, v7

    iput v15, v14, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    move-object v14, v0

    move v15, v12

    iput v15, v14, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    invoke-static {}, Landroid/widget/PhotoViewAttacher;->access$L1000001()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {}, Landroid/widget/log/LogManager;->getLogger()Landroid/widget/log/Logger;

    move-result-object v14

    const-string v15, "PhotoViewAttacher"

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v25, v16

    move-object/from16 v16, v25

    move-object/from16 v17, v25

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v25, v17

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "fling. StartX:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, " StartY:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, " MaxX:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, " MaxY:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Landroid/widget/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    :cond_1
    move v14, v7

    move v15, v9

    if-ne v14, v15, :cond_2

    move v14, v12

    move v15, v11

    if-eq v14, v15, :cond_3

    :cond_2
    move-object v14, v0

    iget-object v14, v14, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/scrollerproxy/ScrollerProxy;

    move v15, v7

    move/from16 v16, v12

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v14 .. v24}, Landroid/widget/scrollerproxy/ScrollerProxy;->fling(IIIIIIIIII)V

    :cond_3
    goto/16 :goto_0

    :cond_4
    move v14, v7

    move/from16 v25, v14

    move/from16 v14, v25

    move/from16 v15, v25

    move v9, v15

    move v8, v14

    goto/16 :goto_1

    :cond_5
    move v14, v12

    move/from16 v25, v14

    move/from16 v14, v25

    move/from16 v15, v25

    move v11, v15

    move v10, v14

    goto/16 :goto_2
.end method

.method public run()V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/scrollerproxy/ScrollerProxy;

    invoke-virtual {v6}, Landroid/widget/scrollerproxy/ScrollerProxy;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher$FlingRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-virtual {v6}, Landroid/widget/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/scrollerproxy/ScrollerProxy;

    invoke-virtual {v6}, Landroid/widget/scrollerproxy/ScrollerProxy;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/scrollerproxy/ScrollerProxy;

    invoke-virtual {v6}, Landroid/widget/scrollerproxy/ScrollerProxy;->getCurrX()I

    move-result v6

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/scrollerproxy/ScrollerProxy;

    invoke-virtual {v6}, Landroid/widget/scrollerproxy/ScrollerProxy;->getCurrY()I

    move-result v6

    move v4, v6

    invoke-static {}, Landroid/widget/PhotoViewAttacher;->access$L1000001()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/widget/log/LogManager;->getLogger()Landroid/widget/log/Logger;

    move-result-object v6

    const-string v7, "PhotoViewAttacher"

    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "fling run(). CurrentX:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v0

    iget v15, v15, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, " CurrentY:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " NewX:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " NewY:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/widget/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher$FlingRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-static {v6}, Landroid/widget/PhotoViewAttacher;->access$L1000017(Landroid/widget/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    move v8, v3

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    move v9, v4

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v6

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/PhotoViewAttacher$FlingRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    move-object v7, v0

    iget-object v7, v7, Landroid/widget/PhotoViewAttacher$FlingRunnable;->this$0:Landroid/widget/PhotoViewAttacher;

    invoke-static {v7}, Landroid/widget/PhotoViewAttacher;->access$1000037(Landroid/widget/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/widget/PhotoViewAttacher;->access$1000045(Landroid/widget/PhotoViewAttacher;Landroid/graphics/Matrix;)V

    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/widget/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    move-object v6, v2

    move-object v7, v0

    invoke-static {v6, v7}, Landroid/widget/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_2
    goto/16 :goto_0
.end method
