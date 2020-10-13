.class public Landroid/widget/GifView;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:Landroid/graphics/Movie;

.field private c:J

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private volatile j:Z

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GifView;->k:Z

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GifView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/widget/GifView;->k:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/GifView;->postInvalidateOnAnimation()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GifView;->invalidate()V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/GifView;->a:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/widget/GifView;->j:Z

    iget p2, p0, Landroid/widget/GifView;->a:I

    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Landroid/widget/GifView;->a:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/GifView;->b:Landroid/graphics/Movie;

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/GifView;->b:Landroid/graphics/Movie;

    iget v1, p0, Landroid/widget/GifView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Landroid/widget/GifView;->g:F

    iget v1, p0, Landroid/widget/GifView;->g:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/widget/GifView;->b:Landroid/graphics/Movie;

    iget v1, p0, Landroid/widget/GifView;->e:F

    iget v2, p0, Landroid/widget/GifView;->g:F

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/GifView;->f:F

    iget v3, p0, Landroid/widget/GifView;->g:F

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/GifView;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iput-wide v0, p0, Landroid/widget/GifView;->c:J

    :cond_0
    iget-object v2, p0, Landroid/widget/GifView;->b:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    :cond_1
    iget-wide v3, p0, Landroid/widget/GifView;->c:J

    sub-long v5, v0, v3

    int-to-long v0, v2

    rem-long/2addr v5, v0

    long-to-int v0, v5

    iput v0, p0, Landroid/widget/GifView;->d:I

    return-void
.end method


# virtual methods
.method public getGifPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/GifView;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getGifResource()I
    .locals 1

    iget v0, p0, Landroid/widget/GifView;->a:I

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GifView;->j:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GifView;->j:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GifView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/GifView;->j:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/GifView;->b()V

    invoke-direct {p0, p1}, Landroid/widget/GifView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/widget/GifView;->a()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/GifView;->a(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/GifView;->getWidth()I

    move-result p1

    iget p2, p0, Landroid/widget/GifView;->h:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Landroid/widget/GifView;->e:F

    invoke-virtual {p0}, Landroid/widget/GifView;->getHeight()I

    move-result p1

    iget p3, p0, Landroid/widget/GifView;->i:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Landroid/widget/GifView;->f:F

    invoke-virtual {p0}, Landroid/widget/GifView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/widget/GifView;->k:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Landroid/widget/GifView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/GifView;->b:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Landroid/widget/GifView;->b:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v0, p1, :cond_0

    int-to-float v2, v0

    int-to-float p1, p1

    div-float p1, v2, p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-le v1, p2, :cond_1

    int-to-float v2, v1

    int-to-float p2, p2

    div-float p2, v2, p2

    goto :goto_1

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v3, p1

    iput v3, p0, Landroid/widget/GifView;->g:F

    int-to-float p1, v0

    iget p2, p0, Landroid/widget/GifView;->g:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/GifView;->h:I

    int-to-float p1, v1

    iget p2, p0, Landroid/widget/GifView;->g:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/GifView;->i:I

    iget p1, p0, Landroid/widget/GifView;->h:I

    iget p2, p0, Landroid/widget/GifView;->i:I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/GifView;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/GifView;->getSuggestedMinimumHeight()I

    move-result p2

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/GifView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/GifView;->k:Z

    invoke-direct {p0}, Landroid/widget/GifView;->a()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/widget/GifView;->k:Z

    invoke-direct {p0}, Landroid/widget/GifView;->a()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/widget/GifView;->k:Z

    invoke-direct {p0}, Landroid/widget/GifView;->a()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GifView;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GifView;->j:Z

    invoke-virtual {p0}, Landroid/widget/GifView;->invalidate()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 6

    iget-boolean v0, p0, Landroid/widget/GifView;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GifView;->j:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Landroid/widget/GifView;->d:I

    int-to-long v2, v2

    sub-long v4, v0, v2

    iput-wide v4, p0, Landroid/widget/GifView;->c:J

    invoke-virtual {p0}, Landroid/widget/GifView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGifPath(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/GifView;->l:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/GifView;->b:Landroid/graphics/Movie;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GifView;->requestLayout()V

    return-void
.end method

.method public setGifResource(I)V
    .locals 1

    iput p1, p0, Landroid/widget/GifView;->a:I

    invoke-virtual {p0}, Landroid/widget/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Landroid/widget/GifView;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/GifView;->b:Landroid/graphics/Movie;

    invoke-virtual {p0}, Landroid/widget/GifView;->requestLayout()V

    return-void
.end method
