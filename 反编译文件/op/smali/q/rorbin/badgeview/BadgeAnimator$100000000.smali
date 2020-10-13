.class Lq/rorbin/badgeview/BadgeAnimator$100000000;
.super Ljava/lang/Object;
.source "BadgeAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/rorbin/badgeview/BadgeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lq/rorbin/badgeview/BadgeAnimator;


# direct methods
.method constructor <init>(Lq/rorbin/badgeview/BadgeAnimator;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lq/rorbin/badgeview/BadgeAnimator$100000000;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    return-void
.end method

.method static access$0(Lq/rorbin/badgeview/BadgeAnimator$100000000;)Lq/rorbin/badgeview/BadgeAnimator;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/BadgeAnimator$100000000;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ValueAnimator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/BadgeAnimator$100000000;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-static {v5}, Lq/rorbin/badgeview/BadgeAnimator;->access$L1000001(Lq/rorbin/badgeview/BadgeAnimator;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/rorbin/badgeview/QBadgeView;

    move-object v3, v5

    .line 37
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Lq/rorbin/badgeview/QBadgeView;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 38
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/BadgeAnimator$100000000;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-virtual {v5}, Lq/rorbin/badgeview/BadgeAnimator;->cancel()V

    .line 40
    :goto_0
    return-void

    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    goto :goto_0
.end method
