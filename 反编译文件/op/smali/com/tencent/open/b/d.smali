.class public Lcom/tencent/open/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/open/b/d;


# direct methods
.method protected constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/open/b/d;
    .locals 4

    const-class v2, Lcom/tencent/open/b/d;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/tencent/open/b/d;->a:Lcom/tencent/open/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/open/b/d;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/tencent/open/b/d;-><init>()V

    sput-object v0, Lcom/tencent/open/b/d;->a:Lcom/tencent/open/b/d;

    :cond_0
    sget-object v0, Lcom/tencent/open/b/d;->a:Lcom/tencent/open/b/d;
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
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v14, v14, v16

    move-wide v10, v14

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    move-wide v14, v10

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gez v14, :cond_1

    :cond_0
    const-wide/16 v14, 0x0

    move-wide v10, v14

    :cond_1
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const-string v16, "https://huatuocode.huatuo.qq.com"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v12, v14

    move-object v14, v12

    const-string v15, "?domain=mobile.opensdk.com&cgi=opensdk&type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "&code="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "&time="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-wide v15, v10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "&rate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "&uin="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "&data="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move v14, v1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move v15, v7

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v9

    invoke-static/range {v14 .. v22}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    move-object v13, v14

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v14

    move-object v15, v12

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "GET"

    move-object/from16 v17, v13

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v8, v1

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v2

    move-object v13, v6

    invoke-static/range {v8 .. v13}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v7, v8

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v8

    move-object v9, v7

    move-object v10, v2

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/tencent/open/b/g;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v1

    move-object v11, v4

    move-object v12, v5

    move-object v13, v3

    move-object v14, v2

    move-object v15, v6

    const-string v16, ""

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    invoke-static/range {v10 .. v21}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    move-object v9, v10

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v10

    move-object v11, v9

    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/tencent/open/b/g;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object v12, v1

    move-object v13, v4

    move-object v14, v5

    move-object v15, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    const-string v19, ""

    const-string v20, ""

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    invoke-static/range {v12 .. v23}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    move-object v11, v12

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v12

    move-object v13, v11

    move-object v14, v2

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/tencent/open/b/g;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-void
.end method
