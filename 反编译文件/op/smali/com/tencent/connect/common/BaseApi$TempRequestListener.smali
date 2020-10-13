.class public Lcom/tencent/connect/common/BaseApi$TempRequestListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/common/BaseApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TempRequestListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/common/BaseApi;

.field private final b:Lcom/tencent/tauth/IUiListener;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->a:Lcom/tencent/connect/common/BaseApi;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->b:Lcom/tencent/tauth/IUiListener;

    move-object v3, v0

    new-instance v4, Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;-><init>(Lcom/tencent/connect/common/BaseApi$TempRequestListener;Landroid/os/Looper;Lcom/tencent/connect/common/BaseApi;)V

    iput-object v4, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/common/BaseApi$TempRequestListener;)Lcom/tencent/tauth/IUiListener;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->b:Lcom/tencent/tauth/IUiListener;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method

.method public onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v2

    const/4 v4, -0x7

    iput v4, v3, Landroid/os/Message;->what:I

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method

.method public onHttpStatusException(Lcom/tencent/open/utils/HttpUtils$HttpStatusException;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v2

    const/16 v4, -0x9

    iput v4, v3, Landroid/os/Message;->what:I

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v2

    const/4 v4, -0x2

    iput v4, v3, Landroid/os/Message;->what:I

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method

.method public onJSONException(Lorg/json/JSONException;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v2

    const/4 v4, -0x4

    iput v4, v3, Landroid/os/Message;->what:I

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v2

    const/4 v4, -0x3

    iput v4, v3, Landroid/os/Message;->what:I

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method

.method public onNetworkUnavailableException(Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v2

    const/16 v4, -0xa

    iput v4, v3, Landroid/os/Message;->what:I

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method

.method public onSocketTimeoutException(Ljava/net/SocketTimeoutException;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v2

    const/4 v4, -0x8

    iput v4, v3, Landroid/os/Message;->what:I

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method

.method public onUnknowException(Ljava/lang/Exception;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v2

    const/4 v4, -0x6

    iput v4, v3, Landroid/os/Message;->what:I

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->c:Landroid/os/Handler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    return-void
.end method
