.class Lcom/tencent/open/b/g$6;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tencent/open/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/g;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/tencent/open/b/g$6;->e:Lcom/tencent/open/b/g;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/tencent/open/b/g$6;->a:Landroid/os/Bundle;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Lcom/tencent/open/b/g$6;->c:Z

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/tencent/open/b/g$6;->d:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    move-object v0, p0

    const/4 v10, 0x0

    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Lcom/tencent/open/b/g$6;->a:Landroid/os/Bundle;

    if-ne v10, v11, :cond_0

    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->httpRequest, params is null!"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v10, 0x0

    move v1, v10

    invoke-static {}, Lcom/tencent/open/b/e;->a()I

    move-result v10

    move v2, v10

    move v10, v2

    if-nez v10, :cond_3

    const/4 v10, 0x3

    :goto_1
    move v2, v10

    const-string v10, "openSDK_LOG.ReportManager"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-->httpRequest, retryCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    move v3, v10

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/tencent/open/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v10

    move-object v4, v10

    const/4 v10, 0x0

    move-object v5, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/b/g$6;->a:Landroid/os/Bundle;

    invoke-static {v10}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    move-object v10, v0

    iget-boolean v10, v10, Lcom/tencent/open/b/g$6;->c:Z

    if-eqz v10, :cond_1

    move-object v10, v6

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/b/g$6;->d:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v7, v10

    move-object v10, v7

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    :goto_2
    move-object v10, v5

    const-string v11, "Accept-Encoding"

    const-string v12, "gzip"

    invoke-interface {v10, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v5

    const-string v11, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded"

    invoke-interface {v10, v11, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object v10, v4

    move-object v11, v5

    :try_start_1
    invoke-interface {v10, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    move-object v7, v10

    move-object v10, v7

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    move-object v8, v10

    move-object v10, v8

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    move v9, v10

    const-string v10, "openSDK_LOG.ReportManager"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-->httpRequest, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v9

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_6

    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->ReportCenter httpRequest : HttpStatuscode != 200"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    move v10, v3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    :try_start_2
    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->ReportCenter httpRequest Thread request success"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    goto/16 :goto_0

    :cond_3
    move v10, v2

    goto/16 :goto_1

    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/b/g$6;->d:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object v7, v10

    move-object v10, v6

    invoke-static {v10}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v10

    move-object v8, v10

    new-instance v10, Lorg/apache/http/entity/ByteArrayEntity;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v8

    invoke-direct {v11, v12}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object v9, v10

    move-object v10, v7

    move-object v11, v9

    invoke-virtual {v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v10, v7

    move-object v5, v10

    goto/16 :goto_2

    :cond_5
    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->httpRequest unkonw request method return."

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x1

    move v3, v10

    :try_start_3
    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->ReportCenter httpRequest Thread success"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_0
    move-exception v10

    move-object v7, v10

    :try_start_4
    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->ReportCenter httpRequest ConnectTimeoutException"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move v10, v1

    move v11, v2

    if-lt v10, v11, :cond_2

    goto :goto_3

    :catch_1
    move-exception v10

    move-object v7, v10

    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->ReportCenter httpRequest SocketTimeoutException"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_2
    move-exception v10

    move-object v7, v10

    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->ReportCenter httpRequest Exception"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->ReportCenter httpRequest Thread request failed"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v10

    move-object v1, v10

    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->httpRequest, exception in serial executor."

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
