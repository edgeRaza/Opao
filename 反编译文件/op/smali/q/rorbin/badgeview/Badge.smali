.class public interface Lq/rorbin/badgeview/Badge;
.super Ljava/lang/Object;
.source "Badge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;
    }
.end annotation


# virtual methods
.method public abstract bindTarget(Landroid/view/View;)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract getBadgeBackground()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getBadgeBackgroundColor()I
.end method

.method public abstract getBadgeGravity()I
.end method

.method public abstract getBadgeNumber()I
.end method

.method public abstract getBadgePadding(Z)F
.end method

.method public abstract getBadgeText()Ljava/lang/String;
.end method

.method public abstract getBadgeTextColor()I
.end method

.method public abstract getBadgeTextSize(Z)F
.end method

.method public abstract getDragCenter()Landroid/graphics/PointF;
.end method

.method public abstract getGravityOffsetX(Z)F
.end method

.method public abstract getGravityOffsetY(Z)F
.end method

.method public abstract getTargetView()Landroid/view/View;
.end method

.method public abstract hide(Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation
.end method

.method public abstract isDraggable()Z
.end method

.method public abstract isExactMode()Z
.end method

.method public abstract isShowShadow()Z
.end method

.method public abstract setBadgeBackground(Landroid/graphics/drawable/Drawable;)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setBadgeBackground(Landroid/graphics/drawable/Drawable;Z)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setBadgeBackgroundColor(I)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setBadgeGravity(I)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setBadgeNumber(I)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setBadgePadding(FZ)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setBadgeText(Ljava/lang/String;)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setBadgeTextColor(I)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setBadgeTextSize(FZ)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setExactMode(Z)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setGravityOffset(FFZ)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setGravityOffset(FZ)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setOnDragStateChangedListener(Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract setShowShadow(Z)Lq/rorbin/badgeview/Badge;
.end method

.method public abstract stroke(IFZ)Lq/rorbin/badgeview/Badge;
.end method
