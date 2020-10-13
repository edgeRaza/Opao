.class public Lcom/tencent/open/c/a;
.super Landroid/widget/RelativeLayout;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/c/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/Rect;

.field private c:Z

.field private d:Lcom/tencent/open/c/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/open/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/tencent/open/c/a;->b:Landroid/graphics/Rect;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/tencent/open/c/a;->c:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/tencent/open/c/a;->d:Lcom/tencent/open/c/a$a;

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c/a;->b:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Lcom/tencent/open/c/a;->b:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/open/c/a$a;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/c/a;->d:Lcom/tencent/open/c/a$a;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v8, v2

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    move v3, v8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/tencent/open/c/a;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    move-object v4, v8

    move-object v8, v4

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/open/c/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/c/a;->b:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move v5, v8

    move-object v8, v4

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v8

    move v6, v8

    move v8, v6

    move v9, v5

    sub-int/2addr v8, v9

    move v9, v3

    sub-int/2addr v8, v9

    move v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/c/a;->d:Lcom/tencent/open/c/a$a;

    if-eqz v8, :cond_0

    move v8, v3

    if-eqz v8, :cond_0

    move v8, v7

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/c/a;->d:Lcom/tencent/open/c/a$a;

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/open/c/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/tencent/open/c/a;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/tencent/open/c/a;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-interface {v8, v9}, Lcom/tencent/open/c/a$a;->a(I)V

    :cond_0
    :goto_0
    move-object v8, v0

    move v9, v1

    move v10, v2

    invoke-super {v8, v9, v10}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/c/a;->d:Lcom/tencent/open/c/a$a;

    invoke-interface {v8}, Lcom/tencent/open/c/a$a;->a()V

    goto :goto_0
.end method
