.class Lcom/tencent/open/b/g$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/g;Landroid/os/Looper;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/open/b/g$1;->a:Lcom/tencent/open/b/g;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/b/g$1;->a:Lcom/tencent/open/b/g;

    invoke-virtual {v2}, Lcom/tencent/open/b/g;->b()V

    goto :goto_0

    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/b/g$1;->a:Lcom/tencent/open/b/g;

    invoke-virtual {v2}, Lcom/tencent/open/b/g;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
