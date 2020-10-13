.class Landroid/widget/YLListView$100000000;
.super Ljava/lang/Object;
.source "YLListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YLListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/widget/YLListView;


# direct methods
.method constructor <init>(Landroid/widget/YLListView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/widget/YLListView$100000000;->this$0:Landroid/widget/YLListView;

    return-void
.end method

.method static access$0(Landroid/widget/YLListView$100000000;)Landroid/widget/YLListView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/YLListView$100000000;->this$0:Landroid/widget/YLListView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView$100000000;->this$0:Landroid/widget/YLListView;

    invoke-static {v4}, Landroid/widget/YLListView;->access$L1000008(Landroid/widget/YLListView;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 60
    new-instance v4, Landroid/view/View;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/YLListView$100000000;->this$0:Landroid/widget/YLListView;

    invoke-virtual {v6}, Landroid/widget/YLListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    .line 61
    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView$100000000;->this$0:Landroid/widget/YLListView;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/YLListView;->addHeaderView(Landroid/view/View;)V

    .line 63
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView$100000000;->this$0:Landroid/widget/YLListView;

    invoke-static {v4}, Landroid/widget/YLListView;->access$L1000009(Landroid/widget/YLListView;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 64
    new-instance v4, Landroid/view/View;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroid/widget/YLListView$100000000;->this$0:Landroid/widget/YLListView;

    invoke-virtual {v6}, Landroid/widget/YLListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    .line 65
    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView$100000000;->this$0:Landroid/widget/YLListView;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/YLListView;->addFooterView(Landroid/view/View;)V

    .line 67
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/widget/YLListView$100000000;->this$0:Landroid/widget/YLListView;

    invoke-virtual {v4}, Landroid/widget/YLListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
