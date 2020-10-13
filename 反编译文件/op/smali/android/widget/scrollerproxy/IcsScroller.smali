.class public Landroid/widget/scrollerproxy/IcsScroller;
.super Landroid/widget/scrollerproxy/GingerScroller;
.source "IcsScroller.java"


# annotations
.annotation runtime Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;)V

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
