.class public abstract Landroid/widget/scrollerproxy/ScrollerProxy;
.super Ljava/lang/Object;
.source "ScrollerProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScroller(Landroid/content/Context;)Landroid/widget/scrollerproxy/ScrollerProxy;
    .locals 7

    move-object v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    new-instance v3, Landroid/widget/scrollerproxy/PreGingerScroller;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/widget/scrollerproxy/PreGingerScroller;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    new-instance v3, Landroid/widget/scrollerproxy/GingerScroller;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/widget/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/widget/scrollerproxy/IcsScroller;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/widget/scrollerproxy/IcsScroller;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public abstract computeScrollOffset()Z
.end method

.method public abstract fling(IIIIIIIIII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIII)V"
        }
    .end annotation
.end method

.method public abstract forceFinished(Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation
.end method

.method public abstract getCurrX()I
.end method

.method public abstract getCurrY()I
.end method

.method public abstract isFinished()Z
.end method
