.class public Lcom/tencent/open/b/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/open/b/g;


# instance fields
.field protected b:Ljava/util/Random;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Landroid/os/HandlerThread;

.field protected f:Landroid/os/Handler;

.field protected g:Ljava/util/concurrent/Executor;

.field protected h:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 7

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tencent/open/b/g;->e:Landroid/os/HandlerThread;

    move-object v1, v0

    new-instance v2, Ljava/util/Random;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v2, v1, Lcom/tencent/open/b/g;->b:Ljava/util/Random;

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    move-object v1, v0

    invoke-static {}, Lcom/tencent/open/utils/i;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/open/b/g;->g:Ljava/util/concurrent/Executor;

    move-object v1, v0

    invoke-static {}, Lcom/tencent/open/utils/i;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/open/b/g;->h:Ljava/util/concurrent/Executor;

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/b/g;->e:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Landroid/os/HandlerThread;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "opensdk.report.handlerthread"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/tencent/open/b/g;->e:Landroid/os/HandlerThread;

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/b/g;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/b/g;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/b/g;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, v0

    new-instance v2, Lcom/tencent/open/b/g$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/b/g;->e:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/open/b/g$1;-><init>(Lcom/tencent/open/b/g;Landroid/os/Looper;)V

    iput-object v2, v1, Lcom/tencent/open/b/g;->f:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/open/b/g;
    .locals 4

    const-class v2, Lcom/tencent/open/b/g;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/tencent/open/b/g;->a:Lcom/tencent/open/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/open/b/g;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/tencent/open/b/g;-><init>()V

    sput-object v0, Lcom/tencent/open/b/g;->a:Lcom/tencent/open/b/g;

    :cond_0
    sget-object v0, Lcom/tencent/open/b/g;->a:Lcom/tencent/open/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method protected a(I)I
    .locals 5

    move-object v0, p0

    move v1, p1

    const/16 v3, 0x64

    move v2, v3

    move v3, v1

    if-nez v3, :cond_1

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v3

    const-string v4, "Common_CGIReportFrequencySuccess"

    invoke-virtual {v3, v4}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    move v3, v2

    if-nez v3, :cond_0

    const/16 v3, 0xa

    :goto_0
    move v2, v3

    :goto_1
    move v3, v2

    move v0, v3

    return v0

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v3

    const-string v4, "Common_CGIReportFrequencyFailed"

    invoke-virtual {v3, v4}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    move v3, v2

    if-nez v3, :cond_2

    const/16 v3, 0x64

    :goto_2
    move v2, v3

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, "openSDK_LOG.ReportManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->reportVia, bundle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    const-string v5, "report_via"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/b/g;->g:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/tencent/open/b/g$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/tencent/open/b/g$2;-><init>(Lcom/tencent/open/b/g;Landroid/os/Bundle;Z)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JJJI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move/from16 v17, v8

    const-string v18, ""

    const/16 v19, 0x0

    invoke-virtual/range {v9 .. v19}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;JJJILjava/lang/String;Z)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    const-string v12, "openSDK_LOG.ReportManager"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v26, v13

    move-object/from16 v13, v26

    move-object/from16 v14, v26

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-->reportCgi, command: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " | startTime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide v14, v2

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " | reqSize:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide v14, v4

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " | rspSize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide v14, v6

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " | responseCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " | detail: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    move-object v12, v0

    const-string v13, "report_cgi"

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    move v12, v10

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g;->h:Ljava/util/concurrent/Executor;

    new-instance v13, Lcom/tencent/open/b/g$3;

    move-object/from16 v26, v13

    move-object/from16 v13, v26

    move-object/from16 v14, v26

    move-object v15, v0

    move-wide/from16 v16, v2

    move-object/from16 v18, v1

    move-object/from16 v19, v9

    move/from16 v20, v8

    move-wide/from16 v21, v4

    move-wide/from16 v23, v6

    move/from16 v25, v10

    invoke-direct/range {v14 .. v25}, Lcom/tencent/open/b/g$3;-><init>(Lcom/tencent/open/b/g;JLjava/lang/String;Ljava/lang/String;IJJZ)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Lcom/tencent/open/b/g$6;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v3

    move-object v9, v1

    move v10, v4

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/tencent/open/b/g$6;-><init>(Lcom/tencent/open/b/g;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v5}, Lcom/tencent/open/utils/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;I)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v3, v4

    move-object v4, v1

    const-string v5, "report_cgi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v4

    const-string v5, "Common_CGIReportMaxcount"

    invoke-virtual {v4, v5}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move v4, v3

    if-nez v4, :cond_1

    const/4 v4, 0x5

    :goto_0
    move v3, v4

    :cond_0
    :goto_1
    const-string v4, "openSDK_LOG.ReportManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->availableCount, report: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | dataSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | maxcount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    move v5, v3

    if-lt v4, v5, :cond_4

    const/4 v4, 0x1

    move v0, v4

    :goto_2
    return v0

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move-object v4, v1

    const-string v5, "report_via"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v4

    const-string v5, "Agent_ReportBatchCount"

    invoke-virtual {v4, v5}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move v4, v3

    if-nez v4, :cond_3

    const/4 v4, 0x5

    :goto_3
    move v3, v4

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_2
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v7, "openSDK_LOG.ReportManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->availableFrequency, report: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | ext: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const/4 v7, 0x0

    move v3, v7

    const/16 v7, 0x64

    move v4, v7

    move-object v7, v1

    const-string v8, "report_cgi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    move v5, v7

    move-object v7, v2

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    move v5, v7

    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lcom/tencent/open/b/g;->a(I)I

    move-result v7

    move v4, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/b/g;->b:Ljava/util/Random;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    move v8, v4

    if-ge v7, v8, :cond_2

    const/4 v7, 0x1

    move v3, v7

    :cond_1
    :goto_1
    const-string v7, "openSDK_LOG.ReportManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->availableFrequency, result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | frequency: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v3

    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v6, v7

    move v7, v3

    move v0, v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    move v3, v7

    goto :goto_1

    :cond_3
    move-object v7, v1

    const-string v8, "report_via"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-static {v7}, Lcom/tencent/open/b/e;->a(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/b/g;->b:Ljava/util/Random;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    move v8, v4

    if-ge v7, v8, :cond_4

    const/4 v7, 0x1

    move v3, v7

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    move v3, v7

    goto :goto_1
.end method

.method protected b()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/b/g;->h:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/tencent/open/b/g$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/tencent/open/b/g$4;-><init>(Lcom/tencent/open/b/g;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected c()Landroid/os/Bundle;
    .locals 13

    move-object v0, p0

    const/4 v8, 0x0

    move-object v1, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/open/b/b;

    move-object v1, v8

    move-object v8, v1

    if-nez v8, :cond_1

    const-string v8, "openSDK_LOG.ReportManager"

    const-string v9, "-->prepareCgiData, the 0th cgireportitem is null."

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    :cond_1
    move-object v8, v1

    iget-object v8, v8, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v9, "appid"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v2, v8

    invoke-static {}, Lcom/tencent/open/b/f;->a()Lcom/tencent/open/b/f;

    move-result-object v8

    const-string v9, "report_cgi"

    invoke-virtual {v8, v9}, Lcom/tencent/open/b/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    move-object v3, v8

    move-object v8, v3

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    move-object v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v8

    :cond_2
    const-string v8, "openSDK_LOG.ReportManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-->prepareCgiData, mCgiList size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    :cond_3
    new-instance v8, Landroid/os/Bundle;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v4, v8

    move-object v8, v4

    :try_start_0
    const-string v9, "appid"

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    const-string v9, "releaseversion"

    const-string v10, "OpenSdk_3.3.0.lite"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    const-string v9, "device"

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    const-string v9, "qua"

    const-string v10, "V1_AND_OpenSDK_3.3.0.lite_1077_RDM_B"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    const-string v9, "key"

    const-string v10, "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,touin,deviceinfo"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/open/b/b;

    move-object v6, v8

    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v11, "apn"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v11, "frequency"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_3"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v11, "commandid"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_4"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v11, "resultCode"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_5"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v11, "timeCost"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_6"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v11, "reqSize"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_7"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v11, "rspSize"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_8"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v11, "detail"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_9"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v11, "uin"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/open/b/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    iget-object v9, v9, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    const-string v10, "deviceInfo"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_10"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_4
    const-string v8, "openSDK_LOG.ReportManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-->prepareCgiData, end. params: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v10}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    move-object v0, v8

    goto/16 :goto_0

    :catch_0
    move-exception v8

    move-object v5, v8

    const-string v8, "openSDK_LOG.ReportManager"

    const-string v9, "-->prepareCgiData, exception."

    move-object v10, v5

    invoke-static {v8, v9, v10}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0
.end method

.method protected d()Landroid/os/Bundle;
    .locals 14

    move-object v0, p0

    invoke-static {}, Lcom/tencent/open/b/f;->a()Lcom/tencent/open/b/f;

    move-result-object v10

    const-string v11, "report_via"

    invoke-virtual {v10, v11}, Lcom/tencent/open/b/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    move-object v1, v10

    move-object v10, v1

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    move-object v11, v1

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    :cond_0
    const-string v10, "openSDK_LOG.ReportManager"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-->prepareViaData, mViaList size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_1
    new-instance v10, Lorg/json/JSONArray;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v3, v10

    :goto_1
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/Serializable;

    move-object v4, v10

    new-instance v10, Lorg/json/JSONObject;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v10

    move-object v10, v4

    check-cast v10, Lcom/tencent/open/b/b;

    move-object v6, v10

    move-object v10, v6

    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v7, v10

    :goto_2
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v8, v10

    move-object v10, v6

    :try_start_0
    iget-object v10, v10, Lcom/tencent/open/b/b;->a:Ljava/util/HashMap;

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v9, v10

    const/4 v10, 0x0

    move-object v11, v9

    if-ne v10, v11, :cond_2

    const-string v10, ""

    move-object v9, v10

    :cond_2
    move-object v10, v5

    move-object v11, v8

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_2

    :catch_0
    move-exception v10

    move-object v9, v10

    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->prepareViaData, put bundle to json array exception"

    move-object v12, v9

    invoke-static {v10, v11, v12}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move-object v10, v2

    move-object v11, v5

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v10

    goto :goto_1

    :cond_4
    const-string v10, "openSDK_LOG.ReportManager"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-->prepareViaData, JSONArray array: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/os/Bundle;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v3, v10

    new-instance v10, Lorg/json/JSONObject;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v10

    move-object v10, v4

    :try_start_1
    const-string v11, "data"

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    move-object v10, v3

    const-string v11, "data"

    move-object v12, v4

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v3

    move-object v0, v10

    goto/16 :goto_0

    :catch_1
    move-exception v10

    move-object v5, v10

    const-string v10, "openSDK_LOG.ReportManager"

    const-string v11, "-->prepareViaData, put bundle to json array exception"

    move-object v12, v5

    invoke-static {v10, v11, v12}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0
.end method

.method protected e()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/b/g;->g:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/tencent/open/b/g$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/tencent/open/b/g$5;-><init>(Lcom/tencent/open/b/g;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
