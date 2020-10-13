.class public Landroid/widget/scrollerproxy/GingerScroller;
.super Landroid/widget/scrollerproxy/ScrollerProxy;
.source "GingerScroller.java"


# annotations
.annotation runtime Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field protected final mScroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/scrollerproxy/ScrollerProxy;-><init>()V

    move-object v3, v0

    new-instance v4, Landroid/widget/OverScroller;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/widget/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public fling(IIIIIIIIII)V
    .locals 23
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

    iget-object v12, v12, Landroid/widget/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-virtual/range {v12 .. v22}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

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

    iget-object v3, v3, Landroid/widget/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public getCurrX()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

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

    iget-object v2, v2, Landroid/widget/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public isFinished()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/scrollerproxy/GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    move v0, v2

    return v0
.end method
