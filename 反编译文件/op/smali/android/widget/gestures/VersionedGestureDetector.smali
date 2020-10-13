.class public final Landroid/widget/gestures/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Landroid/widget/gestures/OnGestureListener;)Landroid/widget/gestures/GestureDetector;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    move v3, v6

    move v6, v3

    const/4 v7, 0x5

    if-ge v6, v7, :cond_0

    new-instance v6, Landroid/widget/gestures/CupcakeGestureDetector;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/widget/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    :goto_0
    move-object v6, v4

    move-object v7, v1

    invoke-interface {v6, v7}, Landroid/widget/gestures/GestureDetector;->setOnGestureListener(Landroid/widget/gestures/OnGestureListener;)V

    move-object v6, v4

    move-object v0, v6

    return-object v0

    :cond_0
    move v6, v3

    const/16 v7, 0x8

    if-ge v6, v7, :cond_1

    new-instance v6, Landroid/widget/gestures/EclairGestureDetector;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/widget/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    goto :goto_0

    :cond_1
    new-instance v6, Landroid/widget/gestures/FroyoGestureDetector;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/widget/gestures/FroyoGestureDetector;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    goto :goto_0
.end method
