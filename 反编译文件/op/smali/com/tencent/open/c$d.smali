.class Lcom/tencent/open/c$d;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/c;

.field private b:Lcom/tencent/open/c$c;


# direct methods
.method public constructor <init>(Lcom/tencent/open/c;Lcom/tencent/open/c$c;Landroid/os/Looper;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tencent/open/c$d;->a:Lcom/tencent/open/c;

    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/tencent/open/c$d;->b:Lcom/tencent/open/c$c;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.PKDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c$d;->b:Lcom/tencent/open/c$c;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/open/c$c;->a(Lcom/tencent/open/c$c;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c$d;->b:Lcom/tencent/open/c$c;

    invoke-virtual {v2}, Lcom/tencent/open/c$c;->onCancel()V

    goto :goto_0

    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c$d;->a:Lcom/tencent/open/c;

    invoke-static {v2}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c$d;->a:Lcom/tencent/open/c;

    invoke-static {v2}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c$d;->a:Lcom/tencent/open/c;

    invoke-static {v2}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/open/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    goto :goto_0

    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c$d;->a:Lcom/tencent/open/c;

    invoke-static {v2}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c$d;->a:Lcom/tencent/open/c;

    invoke-static {v2}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/c$d;->a:Lcom/tencent/open/c;

    invoke-static {v2}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/open/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
