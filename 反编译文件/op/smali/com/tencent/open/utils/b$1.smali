.class Lcom/tencent/open/utils/b$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/utils/b;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/utils/b;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/b;Landroid/os/Looper;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/open/utils/b$1;->a:Lcom/tencent/open/utils/b;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const-string v2, "AsynLoadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/b$1;->a:Lcom/tencent/open/utils/b;

    invoke-static {v2}, Lcom/tencent/open/utils/b;->a(Lcom/tencent/open/utils/b;)Lcom/tencent/open/utils/c;

    move-result-object v2

    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->arg1:I

    move-object v4, v1

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/tencent/open/utils/c;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/b$1;->a:Lcom/tencent/open/utils/b;

    invoke-static {v2}, Lcom/tencent/open/utils/b;->a(Lcom/tencent/open/utils/b;)Lcom/tencent/open/utils/c;

    move-result-object v2

    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/tencent/open/utils/c;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
