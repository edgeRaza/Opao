.class Lq/rorbin/badgeview/QBadgeView$BadgeContainer;
.super Landroid/view/ViewGroup;
.source "QBadgeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/rorbin/badgeview/QBadgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "BadgeContainer"
.end annotation


# instance fields
.field private final this$0:Lq/rorbin/badgeview/QBadgeView;


# direct methods
.method public constructor <init>(Lq/rorbin/badgeview/QBadgeView;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 821
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->this$0:Lq/rorbin/badgeview/QBadgeView;

    return-void
.end method

.method static access$0(Lq/rorbin/badgeview/QBadgeView$BadgeContainer;)Lq/rorbin/badgeview/QBadgeView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->this$0:Lq/rorbin/badgeview/QBadgeView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 826
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const/4 v10, 0x0

    move v7, v10

    :goto_0
    move v10, v7

    move-object v11, v0

    invoke-virtual {v11}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->getChildCount()I

    move-result v11

    if-lt v10, v11, :cond_0

    return-void

    .line 827
    :cond_0
    move-object v10, v0

    move v11, v7

    invoke-virtual {v10, v11}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v8, v10

    .line 828
    move-object v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object v14, v8

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 826
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 834
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v9, 0x0

    check-cast v9, Landroid/view/View;

    move-object v4, v9

    const/4 v9, 0x0

    check-cast v9, Landroid/view/View;

    move-object v5, v9

    .line 835
    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move-object v10, v0

    invoke-virtual {v10}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->getChildCount()I

    move-result v10

    if-lt v9, v10, :cond_0

    .line 843
    move-object v9, v4

    if-nez v9, :cond_2

    .line 844
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/view/View;->onMeasure(II)V

    .line 851
    :goto_1
    return-void

    .line 836
    :cond_0
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 837
    move-object v9, v7

    instance-of v9, v9, Lq/rorbin/badgeview/QBadgeView;

    if-nez v9, :cond_1

    .line 838
    move-object v9, v7

    move-object v4, v9

    .line 835
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 840
    :cond_1
    move-object v9, v7

    move-object v5, v9

    goto :goto_2

    .line 846
    :cond_2
    move-object v9, v4

    move v10, v1

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 847
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 848
    move-object v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 851
    :cond_3
    move-object v9, v0

    move-object v10, v4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->setMeasuredDimension(II)V

    goto :goto_1
.end method
