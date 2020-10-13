.class public Landroid/widget/scrollerproxy/PreGingerScroller;
.super Landroid/widget/scrollerproxy/ScrollerProxy;
.source "PreGingerScroller.java"


# instance fields
.field private final mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/scrollerproxy/ScrollerProxy;-><init>()V

    move-object v3, v0

    new-instance v4, Landroid/widget/Scroller;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/widget/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public fling(IIIIIIIIII)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object v12, v0

    iget-object v12, v12, Landroid/widget/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual/range {v12 .. v20}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return-void
.end method

.method public forceFinished(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method public getCurrX()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getCurrY()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public isFinished()Z
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/scrollerproxy/PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    move v0, v2

    return v0
.end method
