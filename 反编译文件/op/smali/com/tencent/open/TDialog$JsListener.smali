.class Lcom/tencent/open/TDialog$JsListener;
.super Lcom/tencent/open/a$b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/TDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/TDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/TDialog;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/TDialog$JsListener;->a:Lcom/tencent/open/TDialog;

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/open/a$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$1;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/tencent/open/TDialog$JsListener;-><init>(Lcom/tencent/open/TDialog;)V

    return-void
.end method


# virtual methods
.method public onAddShare(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.TDialog"

    const-string v3, "JsListener onAddShare"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/open/TDialog$JsListener;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.TDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JsListener onCancel --msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog$JsListener;->a:Lcom/tencent/open/TDialog;

    invoke-static {v2}, Lcom/tencent/open/TDialog;->b(Lcom/tencent/open/TDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog$JsListener;->a:Lcom/tencent/open/TDialog;

    invoke-virtual {v2}, Lcom/tencent/open/TDialog;->dismiss()V

    return-void
.end method

.method public onCancelAddShare(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.TDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JsListener onCancelAddShare"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Lcom/tencent/open/TDialog$JsListener;->onCancel(Ljava/lang/String;)V

    return-void
.end method

.method public onCancelInvite()V
    .locals 3

    move-object v0, p0

    const-string v1, "openSDK_LOG.TDialog"

    const-string v2, "JsListener onCancelInvite"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/open/TDialog$JsListener;->onCancel(Ljava/lang/String;)V

    return-void
.end method

.method public onCancelLogin()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/open/TDialog$JsListener;->onCancel(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog$JsListener;->a:Lcom/tencent/open/TDialog;

    invoke-static {v2}, Lcom/tencent/open/TDialog;->b(Lcom/tencent/open/TDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const-string v2, "openSDK_LOG.TDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JsListener onComplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog$JsListener;->a:Lcom/tencent/open/TDialog;

    invoke-virtual {v2}, Lcom/tencent/open/TDialog;->dismiss()V

    return-void
.end method

.method public onInvite(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/open/TDialog$JsListener;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onLoad(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog$JsListener;->a:Lcom/tencent/open/TDialog;

    invoke-static {v2}, Lcom/tencent/open/TDialog;->b(Lcom/tencent/open/TDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/TDialog$JsListener;->a:Lcom/tencent/open/TDialog;

    invoke-static {v2}, Lcom/tencent/open/TDialog;->b(Lcom/tencent/open/TDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
