.class public interface Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;
.super Ljava/lang/Object;
.source "Badge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/rorbin/badgeview/Badge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x209
    name = "OnDragStateChangedListener"
.end annotation


# static fields
.field public static final STATE_CANCELED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x2

.field public static final STATE_DRAGGING_OUT_OF_RANGE:I = 0x3

.field public static final STATE_START:I = 0x1

.field public static final STATE_SUCCEED:I = 0x5


# virtual methods
.method public abstract onDragStateChanged(ILq/rorbin/badgeview/Badge;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lq/rorbin/badgeview/Badge;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation
.end method
