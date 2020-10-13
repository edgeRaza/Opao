.class Lcom/tencent/open/b/g$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Z

.field final synthetic h:Lcom/tencent/open/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/g;JLjava/lang/String;Ljava/lang/String;IJJZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lcom/tencent/open/b/g$3;->h:Lcom/tencent/open/b/g;

    move-object v12, v0

    move-wide v13, v2

    iput-wide v13, v12, Lcom/tencent/open/b/g$3;->a:J

    move-object v12, v0

    move-object v13, v4

    iput-object v13, v12, Lcom/tencent/open/b/g$3;->b:Ljava/lang/String;

    move-object v12, v0

    move-object v13, v5

    iput-object v13, v12, Lcom/tencent/open/b/g$3;->c:Ljava/lang/String;

    move-object v12, v0

    move v13, v6

    iput v13, v12, Lcom/tencent/open/b/g$3;->d:I

    move-object v12, v0

    move-wide v13, v7

    iput-wide v13, v12, Lcom/tencent/open/b/g$3;->e:J

    move-object v12, v0

    move-wide v13, v9

    iput-wide v13, v12, Lcom/tencent/open/b/g$3;->f:J

    move-object v12, v0

    move v13, v11

    iput-boolean v13, v12, Lcom/tencent/open/b/g$3;->g:Z

    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object v14, v0

    iget-wide v14, v14, Lcom/tencent/open/b/g$3;->a:J

    sub-long/2addr v12, v14

    move-wide v1, v12

    new-instance v12, Landroid/os/Bundle;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    move-object v3, v12

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/open/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move-object v12, v3

    const-string v13, "apn"

    move-object v14, v4

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    const-string v13, "appid"

    const-string v14, "1000067"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    const-string v13, "commandid"

    move-object v14, v0

    iget-object v14, v14, Lcom/tencent/open/b/g$3;->b:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    const-string v13, "detail"

    move-object v14, v0

    iget-object v14, v14, Lcom/tencent/open/b/g$3;->c:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v12

    move-object v12, v5

    const-string v13, "network="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x26

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v12, v5

    const-string v13, "sdcard="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x26

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v12, v5

    const-string v13, "wifi="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/open/b/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    move-object v12, v3

    const-string v13, "deviceInfo"

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$3;->h:Lcom/tencent/open/b/g;

    move-object v13, v0

    iget v13, v13, Lcom/tencent/open/b/g$3;->d:I

    invoke-virtual {v12, v13}, Lcom/tencent/open/b/g;->a(I)I

    move-result v12

    move v7, v12

    const/16 v12, 0x64

    move v13, v7

    div-int/2addr v12, v13

    move v7, v12

    move v12, v7

    if-gtz v12, :cond_4

    const/4 v12, 0x1

    move v7, v12

    :cond_0
    :goto_1
    move-object v12, v3

    const-string v13, "frequency"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    const-string v13, "reqSize"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    iget-wide v15, v15, Lcom/tencent/open/b/g$3;->e:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    const-string v13, "resultCode"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    iget v15, v15, Lcom/tencent/open/b/g$3;->d:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    const-string v13, "rspSize"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    iget-wide v15, v15, Lcom/tencent/open/b/g$3;->f:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    const-string v13, "timeCost"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v15, v1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    const-string v13, "uin"

    const-string v14, "1000"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/tencent/open/b/b;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v3

    invoke-direct {v13, v14}, Lcom/tencent/open/b/b;-><init>(Landroid/os/Bundle;)V

    move-object v8, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$3;->h:Lcom/tencent/open/b/g;

    iget-object v12, v12, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    move-object v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$3;->h:Lcom/tencent/open/b/g;

    iget-object v12, v12, Lcom/tencent/open/b/g;->c:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v9, v12

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v12

    const-string v13, "Agent_ReportTimeInterval"

    invoke-virtual {v12, v13}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v12

    move v10, v12

    move v12, v10

    if-nez v12, :cond_5

    const/16 v12, 0x2710

    :goto_2
    move v10, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$3;->h:Lcom/tencent/open/b/g;

    const-string v13, "report_cgi"

    move v14, v9

    invoke-virtual {v12, v13, v14}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_1

    move-object v12, v0

    iget-boolean v12, v12, Lcom/tencent/open/b/g$3;->g:Z

    if-eqz v12, :cond_6

    :cond_1
    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$3;->h:Lcom/tencent/open/b/g;

    invoke-virtual {v12}, Lcom/tencent/open/b/g;->b()V

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$3;->h:Lcom/tencent/open/b/g;

    iget-object v12, v12, Lcom/tencent/open/b/g;->f:Landroid/os/Handler;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_4
    move v12, v7

    const/16 v13, 0x64

    if-le v12, v13, :cond_0

    const/16 v12, 0x64

    move v7, v12

    goto/16 :goto_1

    :cond_5
    move v12, v10

    goto :goto_2

    :cond_6
    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$3;->h:Lcom/tencent/open/b/g;

    iget-object v12, v12, Lcom/tencent/open/b/g;->f:Landroid/os/Handler;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    move-object v11, v12

    move-object v12, v11

    const/16 v13, 0x3e8

    iput v13, v12, Landroid/os/Message;->what:I

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/b/g$3;->h:Lcom/tencent/open/b/g;

    iget-object v12, v12, Lcom/tencent/open/b/g;->f:Landroid/os/Handler;

    move-object v13, v11

    move v14, v10

    int-to-long v14, v14

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    goto :goto_3

    :catch_0
    move-exception v12

    move-object v1, v12

    const-string v12, "openSDK_LOG.ReportManager"

    const-string v13, "--> reportCGI, exception in sub thread."

    move-object v14, v1

    invoke-static {v12, v13, v14}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
