.class Lq/rorbin/badgeview/BadgeAnimator$100000001;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BadgeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/rorbin/badgeview/BadgeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lq/rorbin/badgeview/BadgeAnimator;


# direct methods
.method constructor <init>(Lq/rorbin/badgeview/BadgeAnimator;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lq/rorbin/badgeview/BadgeAnimator$100000001;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    return-void
.end method

.method static access$0(Lq/rorbin/badgeview/BadgeAnimator$100000001;)Lq/rorbin/badgeview/BadgeAnimator;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/BadgeAnimator$100000001;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lq/rorbin/badgeview/BadgeAnimator$100000001;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-static {v5}, Lq/rorbin/badgeview/BadgeAnimator;->access$L1000001(Lq/rorbin/badgeview/BadgeAnimator;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/rorbin/badgeview/QBadgeView;

    move-object v3, v5

    .line 48
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 49
    move-object v5, v3

    invoke-virtual {v5}, Lq/rorbin/badgeview/QBadgeView;->reset()V

    :cond_0
    return-void
.end method
