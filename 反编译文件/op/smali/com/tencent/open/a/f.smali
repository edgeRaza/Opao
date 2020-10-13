.class public Lcom/tencent/open/a/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Lcom/tencent/open/a/f;

.field protected static final c:Lcom/tencent/open/a/b;

.field private static d:Z


# instance fields
.field protected b:Lcom/tencent/open/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v4, 0x0

    sput-object v4, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    const/4 v4, 0x0

    sput-boolean v4, Lcom/tencent/open/a/f;->d:Z

    sget v4, Lcom/tencent/open/a/c;->m:I

    move v0, v4

    sget-wide v4, Lcom/tencent/open/a/c;->n:J

    move-wide v1, v4

    invoke-static {}, Lcom/tencent/open/a/f;->c()Ljava/io/File;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lcom/tencent/open/a/b;

    move-object/from16 v17, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v17

    move-object v6, v3

    move v7, v0

    sget v8, Lcom/tencent/open/a/c;->g:I

    sget v9, Lcom/tencent/open/a/c;->h:I

    sget-object v10, Lcom/tencent/open/a/c;->c:Ljava/lang/String;

    sget v11, Lcom/tencent/open/a/c;->i:I

    int-to-long v11, v11

    const/16 v13, 0xa

    sget-object v14, Lcom/tencent/open/a/c;->e:Ljava/lang/String;

    move-wide v15, v1

    invoke-direct/range {v5 .. v16}, Lcom/tencent/open/a/b;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v4, Lcom/tencent/open/a/f;->c:Lcom/tencent/open/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    new-instance v2, Lcom/tencent/open/a/a;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/tencent/open/a/f;->c:Lcom/tencent/open/a/b;

    invoke-direct {v3, v4}, Lcom/tencent/open/a/a;-><init>(Lcom/tencent/open/a/b;)V

    iput-object v2, v1, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/a/a;

    return-void
.end method

.method public static a()Lcom/tencent/open/a/f;
    .locals 5

    sget-object v2, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    if-nez v2, :cond_1

    const-class v2, Lcom/tencent/open/a/f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v0, v3

    monitor-enter v2

    :try_start_0
    sget-object v2, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/open/a/f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/tencent/open/a/f;-><init>()V

    sput-object v2, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/open/a/f;->d:Z

    :cond_0
    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v2, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    move-object v0, v2

    return-object v0

    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    throw v2
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/open/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object v3

    const/4 v4, 0x2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/tencent/open/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b()V
    .locals 5

    const-class v2, Lcom/tencent/open/a/f;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v0, v3

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/open/a/f;->d()V

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/open/a/f;->a:Lcom/tencent/open/a/f;

    :cond_0
    move-object v2, v0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    throw v2
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object v2

    const/4 v3, 0x2

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/open/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object v3

    const/16 v4, 0x10

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/tencent/open/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected static c()Ljava/io/File;
    .locals 8

    const/4 v3, 0x0

    move v0, v3

    sget-object v3, Lcom/tencent/open/a/c;->d:Ljava/lang/String;

    move-object v1, v3

    :try_start_0
    invoke-static {}, Lcom/tencent/open/a/d$b;->b()Lcom/tencent/open/a/d$c;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Lcom/tencent/open/a/d$c;->c()J

    move-result-wide v3

    sget-wide v5, Lcom/tencent/open/a/c;->f:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    :cond_0
    :goto_0
    move v3, v0

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    :goto_1
    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-static {}, Lcom/tencent/open/utils/e;->c()Ljava/io/File;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object v2

    const/4 v3, 0x4

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/open/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object v2

    const/16 v3, 0x8

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/open/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object v2

    const/16 v3, 0x10

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/open/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-boolean v6, Lcom/tencent/open/a/f;->d:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/tencent/open/utils/e;->b()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "default"

    move-object v5, v6

    :cond_0
    :goto_0
    sget-object v6, Lcom/tencent/open/a/e;->a:Lcom/tencent/open/a/e;

    move v7, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-virtual/range {v6 .. v13}, Lcom/tencent/open/a/e;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget v6, Lcom/tencent/open/a/c;->b:I

    move v7, v1

    invoke-static {v6, v7}, Lcom/tencent/open/a/d$a;->a(II)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/a/a;

    if-nez v6, :cond_3

    :goto_1
    return-void

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SDK_VERSION:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "3.3.0.lite"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/a/a;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/tencent/open/a/e;->a:Lcom/tencent/open/a/e;

    const/16 v7, 0x20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v11, "openSDK_LOG"

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/tencent/open/a/e;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/a/a;

    const/16 v7, 0x20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v11, "openSDK_LOG"

    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/tencent/open/a/a;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    sput-boolean v6, Lcom/tencent/open/a/f;->d:Z

    goto :goto_0

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/a/a;

    move v7, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-virtual/range {v6 .. v13}, Lcom/tencent/open/a/a;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    goto :goto_1
.end method

.method protected d()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/a/a;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/a/a;

    invoke-virtual {v1}, Lcom/tencent/open/a/a;->a()V

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/a/a;

    invoke-virtual {v1}, Lcom/tencent/open/a/a;->b()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tencent/open/a/f;->b:Lcom/tencent/open/a/a;

    :cond_0
    return-void
.end method
