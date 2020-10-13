.class Lcom/tencent/open/b/g$5;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;->e()V
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

    iput-object v3, v2, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    move-object/from16 v2, p0

    move-object/from16 v18, v2

    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/open/b/g;->d()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v3, v18

    move-object/from16 v18, v3

    if-nez v18, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v18, "openSDK_LOG.ReportManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v29, v19

    move-object/from16 v19, v29

    move-object/from16 v20, v29

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "-->doReportVia, params: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/e;->a()I

    move-result v18

    move/from16 v4, v18

    const/16 v18, 0x0

    move/from16 v5, v18

    const/16 v18, 0x0

    move/from16 v6, v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result-wide v18

    move-wide/from16 v7, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v9, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v11, v18

    const/16 v18, 0x0

    move/from16 v13, v18

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :try_start_1
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v18

    const-string v19, "https://appsupport.qq.com/cgi-bin/appstage/mstats_batch_report"

    const-string v20, "POST"

    move-object/from16 v21, v3

    invoke-static/range {v18 .. v21}, Lcom/tencent/open/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/k$a;

    move-result-object v18

    move-object/from16 v14, v18

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/open/utils/k$a;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v18

    move-object/from16 v15, v18

    const/16 v18, 0x0

    move/from16 v16, v18

    move-object/from16 v18, v15

    :try_start_2
    const-string v19, "ret"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result v18

    move/from16 v16, v18

    :goto_1
    move/from16 v18, v16

    if-eqz v18, :cond_2

    move-object/from16 v18, v14

    :try_start_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/open/utils/k$a;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    :cond_2
    const/16 v18, 0x1

    move/from16 v6, v18

    move/from16 v18, v4

    move/from16 v5, v18

    :cond_3
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/tencent/open/utils/k$a;->b:J

    move-wide/from16 v18, v0

    move-wide/from16 v9, v18

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/tencent/open/utils/k$a;->c:J

    move-wide/from16 v18, v0
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-wide/from16 v11, v18

    :goto_2
    move/from16 v18, v5

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    :goto_3
    move-object/from16 v18, v2

    :try_start_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    move-object/from16 v18, v0

    const-string v19, "mapp_apptrace_sdk"

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    move/from16 v26, v13

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v18 .. v28}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    move/from16 v18, v6

    if-eqz v18, :cond_4

    invoke-static {}, Lcom/tencent/open/b/f;->a()Lcom/tencent/open/b/f;

    move-result-object v18

    const-string v19, "report_via"

    invoke-virtual/range {v18 .. v19}, Lcom/tencent/open/b/f;->b(Ljava/lang/String;)V

    :goto_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    const-string v18, "openSDK_LOG.ReportManager"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v29, v19

    move-object/from16 v19, v29

    move-object/from16 v20, v29

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "-->doReportVia, uploadSuccess: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    goto/16 :goto_0

    :catch_0
    move-exception v18

    move-object/from16 v17, v18

    const/16 v18, -0x4

    move/from16 v16, v18

    goto/16 :goto_1

    :catch_1
    move-exception v18

    move-object/from16 v14, v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v7, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v9, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v11, v18

    const/16 v18, -0x7

    move/from16 v13, v18

    goto/16 :goto_2

    :catch_2
    move-exception v18

    move-object/from16 v14, v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v7, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v9, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v11, v18

    const/16 v18, -0x8

    move/from16 v13, v18

    goto/16 :goto_2

    :catch_3
    move-exception v18

    move-object/from16 v14, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v9, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v11, v18

    const/16 v18, -0x4

    move/from16 v13, v18

    goto/16 :goto_2

    :catch_4
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    const-string v18, "openSDK_LOG.ReportManager"

    const-string v19, "doReportVia, NetworkUnavailableException."

    invoke-static/range {v18 .. v19}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    goto/16 :goto_0

    :catch_5
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v18, v14

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v18

    const-string v19, "http status code error:"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, v18

    move-object/from16 v18, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v18

    move/from16 v13, v18

    :goto_6
    goto/16 :goto_3

    :catch_6
    move-exception v18

    move-object/from16 v15, v18

    goto :goto_6

    :catch_7
    move-exception v18

    move-object/from16 v14, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v9, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v11, v18

    move-object/from16 v18, v14

    :try_start_6
    invoke-static/range {v18 .. v18}, Lcom/tencent/open/utils/HttpUtils;->getErrorCodeFromException(Ljava/io/IOException;)I

    move-result v18

    move/from16 v13, v18

    goto/16 :goto_2

    :catch_8
    move-exception v18

    move-object/from16 v14, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v9, v18

    const-wide/16 v18, 0x0

    move-wide/from16 v11, v18

    const/16 v18, -0x6

    move/from16 v13, v18

    move/from16 v18, v4

    move/from16 v5, v18

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/tencent/open/b/f;->a()Lcom/tencent/open/b/f;

    move-result-object v18

    const-string v19, "report_via"

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tencent/open/b/g$5;->a:Lcom/tencent/open/b/g;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/tencent/open/b/f;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    goto/16 :goto_4

    :catch_9
    move-exception v18

    move-object/from16 v3, v18

    const-string v18, "openSDK_LOG.ReportManager"

    const-string v19, "-->doReportVia, exception in serial executor."

    move-object/from16 v20, v3

    invoke-static/range {v18 .. v20}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method
