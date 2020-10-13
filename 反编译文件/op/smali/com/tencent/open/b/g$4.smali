.class Lcom/tencent/open/b/g$4;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/g;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/b/g$4;->a:Lcom/tencent/open/b/g;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const/4 v15, 0x0

    move-object v2, v15

    move-object v15, v1

    :try_start_0
    iget-object v15, v15, Lcom/tencent/open/b/g$4;->a:Lcom/tencent/open/b/g;

    invoke-virtual {v15}, Lcom/tencent/open/b/g;->c()Landroid/os/Bundle;

    move-result-object v15

    move-object v2, v15

    move-object v15, v2

    if-nez v15, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v15, 0x0

    move v3, v15

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v15

    const-string v16, "Common_HttpRetryCount"

    invoke-virtual/range {v15 .. v16}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v15

    move v4, v15

    move v15, v4

    if-nez v15, :cond_4

    const/4 v15, 0x3

    :goto_1
    move v4, v15

    const-string v15, "openSDK_LOG.ReportManager"

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "-->doReportCgi, retryCount: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v15, 0x0

    move v5, v15

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :try_start_1
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const-string v17, "https://wspeed.qq.com/w.cgi"

    invoke-static/range {v15 .. v17}, Lcom/tencent/open/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v15

    move-object v6, v15

    const/4 v15, 0x0

    move-object v7, v15

    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string v17, "https://wspeed.qq.com/w.cgi"

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object v8, v15

    move-object v15, v8

    const-string v16, "Accept-Encoding"

    const-string v17, "gzip"

    invoke-virtual/range {v15 .. v17}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v8

    const-string v16, "Content-Type"

    const-string v17, "application/x-www-form-urlencoded"

    invoke-virtual/range {v15 .. v17}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v2

    invoke-static {v15}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    move-object v15, v9

    invoke-static {v15}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v15

    move-object v10, v15

    new-instance v15, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object v11, v15

    move-object v15, v8

    move-object/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v15, v8

    move-object v7, v15

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-interface/range {v15 .. v16}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    move-object v12, v15

    move-object v15, v12

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    move-object v13, v15

    move-object v15, v13

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    move v14, v15

    const-string v15, "openSDK_LOG.ReportManager"

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "-->doReportCgi, statusCode: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v14

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v14

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    invoke-static {}, Lcom/tencent/open/b/f;->a()Lcom/tencent/open/b/f;

    move-result-object v15

    const-string v16, "report_cgi"

    invoke-virtual/range {v15 .. v16}, Lcom/tencent/open/b/f;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v15, 0x1

    move v5, v15

    :cond_2
    :goto_2
    move v15, v5

    if-nez v15, :cond_3

    :try_start_2
    invoke-static {}, Lcom/tencent/open/b/f;->a()Lcom/tencent/open/b/f;

    move-result-object v15

    const-string v16, "report_cgi"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/b/g$4;->a:Lcom/tencent/open/b/g;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/tencent/open/b/f;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    move-object v15, v1

    iget-object v15, v15, Lcom/tencent/open/b/g$4;->a:Lcom/tencent/open/b/g;

    iget-object v15, v15, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    :goto_3
    goto/16 :goto_0

    :cond_4
    move v15, v4

    goto/16 :goto_1

    :catch_0
    move-exception v15

    move-object v6, v15

    const-string v15, "openSDK_LOG.ReportManager"

    const-string v16, "-->doReportCgi, doupload exception"

    move-object/from16 v17, v6

    invoke-static/range {v15 .. v17}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    move v15, v3

    move/from16 v16, v4

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    goto :goto_2

    :catch_1
    move-exception v15

    move-object v6, v15

    const-string v15, "openSDK_LOG.ReportManager"

    const-string v16, "-->doReportCgi, doupload exception"

    move-object/from16 v17, v6

    invoke-static/range {v15 .. v17}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception v15

    move-object v6, v15

    const-string v15, "openSDK_LOG.ReportManager"

    const-string v16, "-->doReportCgi, doupload exception"

    move-object/from16 v17, v6

    invoke-static/range {v15 .. v17}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v15

    move-object v2, v15

    const-string v15, "openSDK_LOG.ReportManager"

    const-string v16, "-->doReportCgi, doupload exception out."

    move-object/from16 v17, v2

    invoke-static/range {v15 .. v17}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
