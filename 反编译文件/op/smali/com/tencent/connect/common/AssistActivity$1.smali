.class Lcom/tencent/connect/common/AssistActivity$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/common/AssistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/common/AssistActivity;


# direct methods
.method constructor <init>(Lcom/tencent/connect/common/AssistActivity;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/connect/common/AssistActivity$1;->a:Lcom/tencent/connect/common/AssistActivity;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

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

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/common/AssistActivity$1;->a:Lcom/tencent/connect/common/AssistActivity;

    invoke-virtual {v2}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "openSDK_LOG.AssistActivity"

    const-string v3, "-->finish by timeout"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/common/AssistActivity$1;->a:Lcom/tencent/connect/common/AssistActivity;

    invoke-virtual {v2}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
