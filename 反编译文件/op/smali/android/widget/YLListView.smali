.class public Landroid/widget/YLListView;
.super Landroid/widget/ListView;
.source "YLListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/YLListView$100000000;,
        Landroid/widget/YLListView$100000001;,
        Landroid/widget/YLListView$100000002;
    }
.end annotation


# static fields
.field private static final OFFSET_RADIO:F = 5.0f

.field private static final SCROLLBACK_FOOTER:I = 0x1

.field private static final SCROLLBACK_HEADER:I = 0x0

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private finalBottomHeight:I

.field private finalTopHeight:I

.field private mFooterView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private mLastY:F

.field private mScrollBack:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    const/4 v4, -0x1

    int-to-float v4, v4

    iput v4, v3, Landroid/widget/YLListView;->mLastY:F

    .line 38
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/YLListView;->initWithContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const/4 v5, -0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/widget/YLListView;->mLastY:F

    .line 43
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/widget/YLListView;->initWithContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    const/4 v6, -0x1

    int-to-float v6, v6

    iput v6, v5, Landroid/widget/YLListView;->mLastY:F

    .line 48
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/widget/YLListView;->initWithContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000015(Landroid/widget/YLListView;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/widget/YLListView;->setHeaderHeight(I)V

    return-void
.end method

.method static synthetic access$1000016(Landroid/widget/YLListView;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/widget/YLListView;->setFooterViewHeight(I)V

    return-void
.end method

.method static synthetic access$L1000008(Landroid/widget/YLListView;)Landroid/view/View;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/YLListView;->mHeaderView:Landroid/view/View;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000009(Landroid/widget/YLListView;)Landroid/view/View;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/YLListView;->mFooterView:Landroid/view/View;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000010(Landroid/widget/YLListView;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/widget/YLListView;->finalTopHeight:I

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000011(Landroid/widget/YLListView;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/widget/YLListView;->finalBottomHeight:I

    move v0, v3

    return v0
.end method

.method static synthetic access$S1000008(Landroid/widget/YLListView;Landroid/view/View;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/YLListView;->mHeaderView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$S1000009(Landroid/widget/YLListView;Landroid/view/View;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/widget/YLListView;->mFooterView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$S1000010(Landroid/widget/YLListView;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/widget/YLListView;->finalTopHeight:I

    return-void
.end method

.method static synthetic access$S1000011(Landroid/widget/YLListView;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/widget/YLListView;->finalBottomHeight:I

    return-void
.end method

.method private initWithContext(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    new-instance v4, Landroid/widget/Scroller;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v5, v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, v3, Landroid/widget/YLListView;->mScroller:Landroid/widget/Scroller;

    .line 53
    move-object v3, v0

    move-object v4, v0

    invoke-super {v3, v4}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 55
    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/YLListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/widget/YLListView$100000000;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/widget/YLListView$100000000;-><init>(Landroid/widget/YLListView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private resetFooterHeight()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/YLListView;->getFootHeight()I

    move-result v4

    move v2, v4

    .line 114
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/widget/YLListView;->finalBottomHeight:I

    if-le v4, v5, :cond_0

    .line 115
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Landroid/widget/YLListView;->mScrollBack:I

    .line 116
    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x0

    move v8, v2

    neg-int v8, v8

    move-object v9, v0

    iget v9, v9, Landroid/widget/YLListView;->finalBottomHeight:I

    add-int/2addr v8, v9

    const/16 v9, 0x190

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 118
    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/YLListView;->invalidate()V

    :cond_0
    return-void
.end method

.method private resetHeaderHeight()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/YLListView;->getHeaderHeight()I

    move-result v4

    move v2, v4

    .line 162
    move v4, v2

    const/4 v5, 0x0

    if-ne v4, v5, :cond_0

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/YLListView;->mScrollBack:I

    .line 165
    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/widget/YLListView;->finalTopHeight:I

    move v9, v2

    sub-int/2addr v8, v9

    const/16 v9, 0x190

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 167
    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/YLListView;->invalidate()V

    goto :goto_0
.end method

.method private setFooterViewHeight(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/widget/YLListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    move-object v3, v5

    .line 144
    move-object v5, v3

    move v6, v1

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    move-object v5, v0

    iget-object v5, v5, Landroid/widget/YLListView;->mFooterView:Landroid/view/View;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setHeaderHeight(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/widget/YLListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    move-object v3, v5

    .line 137
    move-object v5, v3

    move v6, v1

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    move-object v5, v0

    iget-object v5, v5, Landroid/widget/YLListView;->mHeaderView:Landroid/view/View;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateFooterHeight(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/YLListView;->getFootHeight()I

    move-result v4

    int-to-float v4, v4

    move v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Landroid/widget/YLListView;->setFooterViewHeight(I)V

    return-void
.end method

.method private updateHeaderHeight(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/YLListView;->getHeaderHeight()I

    move-result v4

    int-to-float v4, v4

    move v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Landroid/widget/YLListView;->setHeaderHeight(I)V

    .line 248
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/YLListView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/YLListView;->mFooterView:Landroid/view/View;

    .line 205
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView;->mFooterView:Landroid/view/View;

    invoke-super {v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 207
    move-object v3, v0

    iget-object v3, v3, Landroid/widget/YLListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/widget/YLListView$100000002;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/widget/YLListView$100000002;-><init>(Landroid/widget/YLListView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/YLListView;->mHeaderView:Landroid/view/View;

    .line 187
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView;->mHeaderView:Landroid/view/View;

    invoke-super {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 188
    move-object v3, v0

    iget-object v3, v3, Landroid/widget/YLListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/widget/YLListView$100000001;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/widget/YLListView$100000001;-><init>(Landroid/widget/YLListView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public computeScroll()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/YLListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v0

    iget v2, v2, Landroid/widget/YLListView;->mScrollBack:I

    const/4 v3, 0x0

    if-ne v2, v3, :cond_1

    .line 126
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/YLListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/widget/YLListView;->setHeaderHeight(I)V

    .line 130
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/YLListView;->postInvalidate()V

    .line 132
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroid/view/View;->computeScroll()V

    return-void

    .line 128
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/YLListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/widget/YLListView;->setFooterViewHeight(I)V

    goto :goto_0
.end method

.method public getFootHeight()I
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    move-object v2, v4

    .line 157
    move-object v4, v2

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v0, v4

    return v0
.end method

.method public getHeaderHeight()I
    .locals 5

    .prologue
    .line 149
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    move-object v2, v4

    .line 151
    move-object v4, v2

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v0, v4

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/widget/YLListView;->mTotalItemCount:I

    .line 240
    move-object v6, v0

    iget-object v6, v6, Landroid/widget/YLListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_0

    .line 241
    move-object v6, v0

    iget-object v6, v6, Landroid/widget/YLListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v4, :cond_0

    .line 231
    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget v5, v5, Landroid/widget/YLListView;->mLastY:F

    const/4 v6, -0x1

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_0

    .line 76
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, v5, Landroid/widget/YLListView;->mLastY:F

    .line 78
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 95
    :pswitch_0
    move-object v5, v0

    const/4 v6, -0x1

    int-to-float v6, v6

    iput v6, v5, Landroid/widget/YLListView;->mLastY:F

    .line 96
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/YLListView;->getFirstVisiblePosition()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v6, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/YLListView;->getHeaderHeight()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/widget/YLListView;->finalTopHeight:I

    if-le v5, v6, :cond_1

    .line 97
    move-object v5, v0

    invoke-direct {v5}, Landroid/widget/YLListView;->resetHeaderHeight()V

    .line 99
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/YLListView;->getLastVisiblePosition()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/widget/YLListView;->mTotalItemCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_2

    .line 100
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/YLListView;->getFootHeight()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/widget/YLListView;->finalBottomHeight:I

    if-le v5, v6, :cond_2

    .line 101
    move-object v5, v0

    invoke-direct {v5}, Landroid/widget/YLListView;->resetFooterHeight()V

    .line 106
    :cond_2
    :goto_0
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    move v0, v5

    return v0

    .line 80
    :pswitch_1
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, v5, Landroid/widget/YLListView;->mLastY:F

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/widget/YLListView;->mLastY:F

    sub-float/2addr v5, v6

    move v3, v5

    .line 84
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, v5, Landroid/widget/YLListView;->mLastY:F

    .line 85
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/YLListView;->getFirstVisiblePosition()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v6, :cond_5

    move-object v5, v0

    iget-object v5, v5, Landroid/widget/YLListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/widget/YLListView;->finalTopHeight:I

    if-gt v5, v6, :cond_3

    move v5, v3

    const/4 v6, 0x0

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/widget/YLListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x0

    if-lt v5, v6, :cond_5

    .line 88
    move-object v5, v0

    move v6, v3

    const v7, 0x3fe66666    # 1.8f

    div-float/2addr v6, v7

    invoke-direct {v5, v6}, Landroid/widget/YLListView;->updateHeaderHeight(F)V

    .line 93
    :cond_4
    :goto_1
    goto :goto_0

    .line 89
    :cond_5
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/YLListView;->getLastVisiblePosition()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/widget/YLListView;->mTotalItemCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/YLListView;->getFootHeight()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/widget/YLListView;->finalBottomHeight:I

    if-gt v5, v6, :cond_6

    move v5, v3

    const/4 v6, 0x0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 91
    :cond_6
    move-object v5, v0

    move v6, v3

    neg-float v6, v6

    const v7, 0x3fe66666    # 1.8f

    div-float/2addr v6, v7

    invoke-direct {v5, v6}, Landroid/widget/YLListView;->updateFooterHeight(F)V

    goto :goto_1

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setFinalBottomHeight(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/widget/YLListView;->finalBottomHeight:I

    return-void
.end method

.method public setFinalTopHeight(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/widget/YLListView;->finalTopHeight:I

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/YLListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
