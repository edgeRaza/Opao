.class final Lcom/tencent/connect/share/a$3;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tencent/open/utils/c;)V
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

    iput-object v4, v3, Lcom/tencent/connect/share/a$3;->a:Lcom/tencent/open/utils/c;

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "images"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/share/a$3;->a:Lcom/tencent/open/utils/c;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/tencent/open/utils/c;->a(ILjava/util/ArrayList;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
