.class Landroid/widget/YLListView$100000002;
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
    name = "100000002"
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

    iput-object v4, v3, Landroid/widget/YLListView$100000002;->this$0:Landroid/widget/YLListView;

    return-void
.end method

.method static access$0(Landroid/widget/YLListView$100000002;)Landroid/widget/YLListView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/YLListView$100000002;->this$0:Landroid/widget/YLListView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/widget/YLListView$100000002;->this$0:Landroid/widget/YLListView;

    invoke-static {v2}, Landroid/widget/YLListView;->access$L1000011(Landroid/widget/YLListView;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v3, :cond_0

    .line 212
    move-object v2, v0

    iget-object v2, v2, Landroid/widget/YLListView$100000002;->this$0:Landroid/widget/YLListView;

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/YLListView$100000002;->this$0:Landroid/widget/YLListView;

    invoke-static {v3}, Landroid/widget/YLListView;->access$L1000009(Landroid/widget/YLListView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/YLListView;->access$S1000011(Landroid/widget/YLListView;I)V

    .line 214
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/widget/YLListView$100000002;->this$0:Landroid/widget/YLListView;

    move-object v3, v0

    iget-object v3, v3, Landroid/widget/YLListView$100000002;->this$0:Landroid/widget/YLListView;

    invoke-static {v3}, Landroid/widget/YLListView;->access$L1000011(Landroid/widget/YLListView;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/YLListView;->access$1000016(Landroid/widget/YLListView;I)V

    .line 215
    move-object v2, v0

    iget-object v2, v2, Landroid/widget/YLListView$100000002;->this$0:Landroid/widget/YLListView;

    invoke-virtual {v2}, Landroid/widget/YLListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
