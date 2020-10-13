.class Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;
.super Ljava/lang/Object;
.source "BadgeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/rorbin/badgeview/BadgeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "BitmapFragment"
.end annotation


# instance fields
.field color:I

.field maxSize:I

.field paint:Landroid/graphics/Paint;

.field random:Ljava/util/Random;

.field size:F

.field private final this$0:Lq/rorbin/badgeview/BadgeAnimator;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lq/rorbin/badgeview/BadgeAnimator;)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    .line 98
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->paint:Landroid/graphics/Paint;

    .line 99
    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    move-object v3, v0

    new-instance v4, Ljava/util/Random;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v4, v3, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->random:Ljava/util/Random;

    return-void
.end method

.method static access$0(Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;)Lq/rorbin/badgeview/BadgeAnimator;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->this$0:Lq/rorbin/badgeview/BadgeAnimator;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public updata(FLandroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->paint:Landroid/graphics/Paint;

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->x:F

    const v6, 0x3dcccccd    # 0.1f

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->random:Ljava/util/Random;

    move-object v8, v0

    iget v8, v8, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->maxSize:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->x:F

    .line 107
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->y:F

    const v6, 0x3dcccccd    # 0.1f

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->random:Ljava/util/Random;

    move-object v8, v0

    iget v8, v8, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->maxSize:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->y:F

    .line 108
    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->x:F

    move-object v6, v0

    iget v6, v6, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->y:F

    move-object v7, v0

    iget v7, v7, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->size:F

    move v8, v1

    move-object v9, v0

    iget v9, v9, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->size:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Lq/rorbin/badgeview/BadgeAnimator$BitmapFragment;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
