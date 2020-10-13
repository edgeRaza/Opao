.class Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/common/BaseApi;

.field final synthetic b:Lcom/tencent/connect/common/BaseApi$TempRequestListener;


# direct methods
.method constructor <init>(Lcom/tencent/connect/common/BaseApi$TempRequestListener;Landroid/os/Looper;Lcom/tencent/connect/common/BaseApi;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;->b:Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;->a:Lcom/tencent/connect/common/BaseApi;

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;->b:Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    invoke-static {v2}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->a(Lcom/tencent/connect/common/BaseApi$TempRequestListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v2

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;->b:Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    invoke-static {v2}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->a(Lcom/tencent/connect/common/BaseApi$TempRequestListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v2

    new-instance v3, Lcom/tencent/tauth/UiError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    iget v5, v5, Landroid/os/Message;->what:I

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_0
.end method
