.class final Lcom/tencent/open/utils/HttpUtils$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/QQToken;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/tencent/tauth/IRequestListener;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/tencent/open/utils/HttpUtils$1;->a:Lcom/tencent/connect/auth/QQToken;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/tencent/open/utils/HttpUtils$1;->b:Landroid/content/Context;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/tencent/open/utils/HttpUtils$1;->c:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/tencent/open/utils/HttpUtils$1;->d:Landroid/os/Bundle;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/tencent/open/utils/HttpUtils$1;->e:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->a:Lcom/tencent/connect/auth/QQToken;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/utils/HttpUtils$1;->b:Landroid/content/Context;

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/utils/HttpUtils$1;->c:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/utils/HttpUtils$1;->d:Landroid/os/Bundle;

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/utils/HttpUtils$1;->e:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/open/utils/HttpUtils;->request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IRequestListener;->onComplete(Lorg/json/JSONObject;)V

    const-string v2, "openSDK_LOG.HttpUtils"

    const-string v3, "OpenApi onComplete"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IRequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;)V

    const-string v2, "openSDK_LOG.HttpUtils"

    const-string v3, "OpenApi requestAsync MalformedURLException"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IRequestListener;->onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;)V

    const-string v2, "openSDK_LOG.HttpUtils"

    const-string v3, "OpenApi requestAsync onConnectTimeoutException"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    goto :goto_0

    :catch_2
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IRequestListener;->onSocketTimeoutException(Ljava/net/SocketTimeoutException;)V

    const-string v2, "openSDK_LOG.HttpUtils"

    const-string v3, "OpenApi requestAsync onSocketTimeoutException"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    goto :goto_0

    :catch_3
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IRequestListener;->onNetworkUnavailableException(Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;)V

    const-string v2, "openSDK_LOG.HttpUtils"

    const-string v3, "OpenApi requestAsync onNetworkUnavailableException"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    goto :goto_0

    :catch_4
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IRequestListener;->onHttpStatusException(Lcom/tencent/open/utils/HttpUtils$HttpStatusException;)V

    const-string v2, "openSDK_LOG.HttpUtils"

    const-string v3, "OpenApi requestAsync onHttpStatusException"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    goto :goto_0

    :catch_5
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v2, :cond_6

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IRequestListener;->onIOException(Ljava/io/IOException;)V

    const-string v2, "openSDK_LOG.HttpUtils"

    const-string v3, "OpenApi requestAsync IOException"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    goto/16 :goto_0

    :catch_6
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v2, :cond_7

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IRequestListener;->onJSONException(Lorg/json/JSONException;)V

    const-string v2, "openSDK_LOG.HttpUtils"

    const-string v3, "OpenApi requestAsync JSONException"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    goto/16 :goto_0

    :catch_7
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IRequestListener;->onUnknowException(Ljava/lang/Exception;)V

    const-string v2, "openSDK_LOG.HttpUtils"

    const-string v3, "OpenApi requestAsync onUnknowException"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
