.class final Lcom/tencent/connect/share/a$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/open/utils/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/utils/c;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/open/utils/c;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/connect/share/a$1;->a:Lcom/tencent/open/utils/c;

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    move-object v4, v1

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/share/a$1;->a:Lcom/tencent/open/utils/c;

    const/4 v5, 0x0

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lcom/tencent/open/utils/c;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->arg1:I

    move v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/share/a$1;->a:Lcom/tencent/open/utils/c;

    move v5, v3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/tencent/open/utils/c;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
