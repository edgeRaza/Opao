.class public Lcom/lua/views/MarTextView;
.super Landroid/widget/TextView;
.source "MarTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private currentScrollX:I

.field private isMeasure:Z

.field private isStop:Z

.field private stime:J

.field private textWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/lua/views/MarTextView;->currentScrollX:I

    iput-boolean v0, p0, Lcom/lua/views/MarTextView;->isStop:Z

    iput-boolean v0, p0, Lcom/lua/views/MarTextView;->isMeasure:Z

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lua/views/MarTextView;->stime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/lua/views/MarTextView;->currentScrollX:I

    iput-boolean v0, p0, Lcom/lua/views/MarTextView;->isStop:Z

    iput-boolean v0, p0, Lcom/lua/views/MarTextView;->isMeasure:Z

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lua/views/MarTextView;->stime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/lua/views/MarTextView;->currentScrollX:I

    iput-boolean v0, p0, Lcom/lua/views/MarTextView;->isStop:Z

    iput-boolean v0, p0, Lcom/lua/views/MarTextView;->isMeasure:Z

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lua/views/MarTextView;->stime:J

    return-void
.end method

.method private getTextWidth()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lua/views/MarTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lua/views/MarTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lua/views/MarTextView;->textWidth:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/lua/views/MarTextView;->isMeasure:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lua/views/MarTextView;->getTextWidth()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lua/views/MarTextView;->isMeasure:Z

    :cond_0
    return-void
.end method

.method public restartScroll()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/lua/views/MarTextView;->currentScrollX:I

    invoke-virtual {p0}, Lcom/lua/views/MarTextView;->startScroll()V

    return-void
.end method

.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v5, 0x14

    const/4 v4, 0x0

    iget v0, p0, Lcom/lua/views/MarTextView;->textWidth:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lua/views/MarTextView;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, 0xc8

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/lua/views/MarTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/lua/views/MarTextView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/lua/views/MarTextView;->textWidth:I

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/lua/views/MarTextView;->isStop:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/lua/views/MarTextView;->stime:J

    int-to-long v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lua/views/MarTextView;->stime:J

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lua/views/MarTextView;->stime:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    int-to-double v2, v5

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lua/views/MarTextView;->currentScrollX:I

    iget v0, p0, Lcom/lua/views/MarTextView;->currentScrollX:I

    invoke-virtual {p0, v0, v4}, Lcom/lua/views/MarTextView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/lua/views/MarTextView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/lua/views/MarTextView;->textWidth:I

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/lua/views/MarTextView;->getWidth()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/lua/views/MarTextView;->currentScrollX:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/lua/views/MarTextView;->currentScrollX:I

    mul-int/lit8 v2, v2, 0xa

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lua/views/MarTextView;->stime:J

    iget v0, p0, Lcom/lua/views/MarTextView;->currentScrollX:I

    invoke-virtual {p0, v0, v4}, Lcom/lua/views/MarTextView;->scrollTo(II)V

    :cond_4
    int-to-long v0, v5

    invoke-virtual {p0, p0, v0, v1}, Lcom/lua/views/MarTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/TextView$BufferType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcom/lua/views/MarTextView;->startScroll()V

    return-void
.end method

.method public startScroll()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lua/views/MarTextView;->isStop:Z

    invoke-virtual {p0, p0}, Lcom/lua/views/MarTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p0}, Lcom/lua/views/MarTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopScroll()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lua/views/MarTextView;->isStop:Z

    return-void
.end method
