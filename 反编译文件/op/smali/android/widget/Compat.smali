.class public Landroid/widget/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# static fields
.field private static final SIXTY_FPS_INTERVAL:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPointerIndex(I)I
    .locals 5

    move v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    move v3, v0

    invoke-static {v3}, Landroid/widget/Compat;->getPointerIndexHoneyComb(I)I

    move-result v3

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v3, v0

    invoke-static {v3}, Landroid/widget/Compat;->getPointerIndexEclair(I)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method private static getPointerIndexEclair(I)I
    .locals 5
    .annotation runtime Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "deprecation"
    .end annotation

    move v0, p0

    move v3, v0

    const v4, 0xff00

    and-int/2addr v3, v4

    const/16 v4, 0x8

    shr-int/lit8 v3, v3, 0x8

    move v0, v3

    return v0
.end method

.method private static getPointerIndexHoneyComb(I)I
    .locals 5
    .annotation runtime Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move v0, p0

    move v3, v0

    const v4, 0xff00

    and-int/2addr v3, v4

    const/16 v4, 0x8

    shr-int/lit8 v3, v3, 0x8

    move v0, v3

    return v0
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/widget/Compat;->postOnAnimationJellyBean(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    move-object v5, v1

    const/16 v6, 0x10

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    goto :goto_0
.end method

.method private static postOnAnimationJellyBean(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6
    .annotation runtime Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
